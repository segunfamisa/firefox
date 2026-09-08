/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import com.android.build.api.artifact.SingleArtifact
import com.android.build.api.variant.ApplicationAndroidComponentsExtension
import com.android.build.gradle.AppPlugin
import org.gradle.api.DefaultTask
import org.gradle.api.GradleException
import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.file.RegularFileProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.InputFile
import org.gradle.api.tasks.InputFiles
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.PathSensitive
import org.gradle.api.tasks.PathSensitivity
import org.gradle.api.tasks.TaskAction
import org.gradle.kotlin.dsl.withType
import java.io.File

/**
 * Reports how much of a minified variant R8 actually renamed, broken down by package root, and
 * fails when a package that is supposed to be obfuscated is not.
 *
 * This exists to make the migration in bug 1987619 falsifiable. Deleting an entry from
 * proguard-rules-obfuscation-exemptions.pro and watching the UI tests stay green proves nothing on
 * its own: the package may still be held un-renamed by an aapt rule, a consumer rule from an AAR,
 * or another keep that happens to overlap. The evidence that an area is obfuscation-safe is a green
 * test *plus* this report showing the area moved from kept to renamed.
 *
 * `-PupdateObfuscationBaseline` rewrites the checked-in baseline instead of checking against it.
 */
class ObfuscationReportPlugin : Plugin<Project> {
    override fun apply(project: Project) {
        project.plugins.withType<AppPlugin>().configureEach {
            val androidComponents =
                project.extensions.getByType(ApplicationAndroidComponentsExtension::class.java)

            androidComponents.onVariants { variant ->
                if (!variant.isMinifyEnabled) return@onVariants

                val task = project.tasks.register(
                    "${variant.name}ObfuscationReport",
                    ObfuscationReportTask::class.java,
                )
                task.configure {
                    mappingFile.set(variant.artifacts.get(SingleArtifact.OBFUSCATION_MAPPING_FILE))
                    baselineFile.from(project.layout.projectDirectory.file(BASELINE))
                    updateBaseline.set(project.hasProperty("updateObfuscationBaseline"))
                    report.set(
                        project.layout.buildDirectory.file("reports/obfuscation/${variant.name}.txt"),
                    )
                }
            }
        }
    }

    private companion object {
        const val BASELINE = "obfuscation-baseline.txt"
    }
}

abstract class ObfuscationReportTask : DefaultTask() {
    @get:InputFile
    @get:PathSensitive(PathSensitivity.NONE)
    abstract val mappingFile: RegularFileProperty

    // A FileCollection rather than an InputFile: the baseline legitimately does not exist yet on a
    // first run, and @InputFile rejects that at configuration time.
    @get:InputFiles
    @get:PathSensitive(PathSensitivity.NONE)
    abstract val baselineFile: ConfigurableFileCollection

    @get:Input
    abstract val updateBaseline: Property<Boolean>

    @get:OutputFile
    abstract val report: RegularFileProperty

    @TaskAction
    fun run() {
        val counts = countByRoot(mappingFile.get().asFile)
        val rendered = render(counts)

        report.get().asFile.apply { parentFile.mkdirs() }.writeText(rendered)
        logger.lifecycle(rendered)

        val baseline = baselineFile.singleFile
        if (updateBaseline.get()) {
            baseline.writeText(renderBaseline(counts))
            logger.lifecycle("Wrote ${baseline.name}. Commit it alongside the rule change.")
            return
        }
        if (baseline.exists()) compareToBaseline(baseline, counts)
    }

    /**
     * Class-level lines in mapping.txt look like `com.example.Foo -> a.b:`; a source name equal to
     * its obfuscated name means R8 left it alone. Members are indented and irrelevant here, since
     * Play's obfuscation metric is dominated by class names.
     */
    private fun countByRoot(mapping: File): Map<String, Counts> {
        val counts = sortedMapOf<String, Counts>()
        mapping.useLines { lines ->
            for (line in lines) {
                if (line.isEmpty() || line[0].isWhitespace() || line.startsWith('#')) continue
                if (!line.endsWith(':')) continue
                val arrow = line.indexOf(" -> ")
                if (arrow < 0) continue
                val source = line.substring(0, arrow)
                val target = line.substring(arrow + 4, line.length - 1)
                if (REMOVED_MARKER in target) continue
                val root = source.split('.').take(ROOT_SEGMENTS).joinToString(".")
                val entry = counts.getOrPut(root) { Counts() }
                if (source == target) entry.kept++ else entry.renamed++
            }
        }
        return counts
    }

    private fun render(counts: Map<String, Counts>): String = buildString {
        val kept = counts.values.sumOf { it.kept }
        val renamed = counts.values.sumOf { it.renamed }
        appendLine("Obfuscation report: $renamed renamed, $kept kept (${percent(renamed, renamed + kept)}% renamed)")
        appendLine()
        appendLine("%-46s %8s %8s %6s".format("package root", "renamed", "kept", "%"))
        counts.entries
            .sortedByDescending { it.value.kept }
            .filter { it.value.kept > 0 }
            .take(TOP_N)
            .forEach { (root, c) ->
                appendLine("%-46s %8d %8d %5d%%".format(root, c.renamed, c.kept, percent(c.renamed, c.total)))
            }
    }

    private fun renderBaseline(counts: Map<String, Counts>): String = buildString {
        appendLine("# Package roots R8 leaves un-renamed, and how many classes each keeps.")
        appendLine("# Regenerate with -PupdateObfuscationBaseline. Numbers should only ever go down;")
        appendLine("# see the safety net and its exclusions in proguard-rules-obfuscation.pro.")
        counts.entries
            .filter { it.value.kept >= REPORTABLE }
            .sortedBy { it.key }
            .forEach { (root, c) -> appendLine("$root ${c.kept}") }
    }

    private fun compareToBaseline(baseline: File, counts: Map<String, Counts>) {
        val expected = baseline.readLines()
            .filter { it.isNotBlank() && !it.startsWith('#') }
            .associate { it.substringBeforeLast(' ') to it.substringAfterLast(' ').toInt() }

        val regressions = counts
            .filterValues { it.kept >= REPORTABLE }
            .mapNotNull { (root, c) ->
                val was = expected[root]
                when {
                    was == null -> "$root is newly un-renamed (${c.kept} classes)"
                    c.kept > was + (was * TOLERANCE_PERCENT / 100) -> "$root kept $was -> ${c.kept}"
                    else -> null
                }
            }

        if (regressions.isNotEmpty()) {
            throw GradleException(
                buildString {
                    appendLine("Obfuscation coverage regressed:")
                    regressions.forEach { appendLine("  $it") }
                    appendLine()
                    appendLine("A new broad keep rule usually causes this. If it is intentional, record it in")
                    appendLine("proguard-rules-obfuscation-exemptions.pro and rerun with -PupdateObfuscationBaseline.")
                },
            )
        }
    }

    private fun percent(part: Int, whole: Int) = if (whole == 0) 100 else part * 100 / whole

    private class Counts(var renamed: Int = 0, var kept: Int = 0) {
        val total get() = renamed + kept
    }

    private companion object {
        const val REMOVED_MARKER = "R8\$\$REMOVED"
        const val ROOT_SEGMENTS = 3
        const val TOP_N = 30
        const val REPORTABLE = 25
        const val TOLERANCE_PERCENT = 10
    }
}
