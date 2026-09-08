/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import com.android.build.api.artifact.ScopedArtifact
import com.android.build.api.variant.ApplicationAndroidComponentsExtension
import com.android.build.api.variant.ScopedArtifacts
import com.android.build.gradle.AppPlugin
import org.gradle.api.DefaultTask
import org.gradle.api.GradleException
import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.file.Directory
import org.gradle.api.file.RegularFile
import org.gradle.api.file.RegularFileProperty
import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.CacheableTask
import org.gradle.api.tasks.Classpath
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.InputFile
import org.gradle.api.tasks.Optional
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.PathSensitive
import org.gradle.api.tasks.PathSensitivity
import org.gradle.api.tasks.TaskAction
import org.gradle.api.tasks.TaskProvider
import org.gradle.kotlin.dsl.withType
import org.gradle.process.ExecOperations
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import java.util.zip.ZipOutputStream
import javax.inject.Inject

/**
 * R8 does not see the `androidTest` APK when it shrinks the app, so any app class or member that
 * only the UI tests reach gets removed, and every remaining one gets renamed. That makes it
 * impossible to run instrumented tests against an obfuscated build (bug 2068070).
 *
 * This plugin closes the gap the same way Slack's Keeper does, but using only public AGP variant
 * APIs: it feeds the app classes and the androidTest classes to R8's `TraceReferences` tool, which
 * emits `-keep` rules for everything the tests reach into, and adds those rules to the app
 * variant's own R8 invocation. AGP already minifies the androidTest APK with `-applymapping`
 * against the app's mapping file, so once nothing the tests need has been removed, the two APKs
 * agree on names.
 *
 * The runner itself is the first casualty when these rules are missing: `AndroidJUnitRunner.onCreate`
 * calls `androidx.tracing.Trace.beginSection`, nothing in the app references it, so R8 deletes it and
 * every test on the matrix dies before it starts with
 *
 *     NoSuchMethodError: No static method beginSection(Ljava/lang/String;)V in class Lcyg;
 *
 * The rules are generated per build rather than checked in. A checked-in copy went stale silently --
 * the failure mode is a runtime NoSuchMethodError on the test matrix, not a build error -- and had to
 * be regenerated from the same project shape the build uses, because Kotlin mangles `internal`
 * members with the module name (`restoreMessaging$app` versus `restoreMessaging$fenix`). Inferring
 * them in place removes both problems.
 *
 * Only wired up for variants that are both minified and have an androidTest component, i.e. it does
 * nothing unless `-PtestBuildType` selects a minified build type. Shipping builds therefore carry
 * none of these test-only keeps.
 */
class AndroidTestKeepRulesPlugin : Plugin<Project> {
    override fun apply(project: Project) {
        project.plugins.withType<AppPlugin>().configureEach {
            val androidComponents =
                project.extensions.getByType(ApplicationAndroidComponentsExtension::class.java)

            val r8 = project.configurations.create(R8_CONFIGURATION).apply {
                isCanBeConsumed = false
                isCanBeResolved = true
                isVisible = false
                description = "R8, used only for its TraceReferences CLI."
                defaultDependencies {
                    add(project.dependencies.create("com.android.tools:r8:$R8_VERSION"))
                }
            }

            androidComponents.onVariants { variant ->
                val androidTest = variant.androidTest ?: return@onVariants
                if (!variant.isMinifyEnabled) return@onVariants

                val name = variant.name.replaceFirstChar { it.uppercase() }
                val outputs = project.layout.buildDirectory.dir("intermediates/keeprules/${variant.name}")

                val appClasses = project.tasks.register(
                    "package${name}ClassesForKeepRules",
                    ClassesJarTask::class.java,
                )
                appClasses.configure {
                    failOnShadowedClasses.set(false)
                    outputJar.set(outputs.map { it.file("app-classes.jar") })
                }
                variant.artifacts.forScope(ScopedArtifacts.Scope.ALL)
                    .use(appClasses)
                    .toGet(ScopedArtifact.CLASSES, ClassesJarTask::inputJars, ClassesJarTask::inputDirs)

                val testClasses = project.tasks.register(
                    "package${name}AndroidTestClassesForKeepRules",
                    ClassesJarTask::class.java,
                )
                testClasses.configure {
                    failOnShadowedClasses.set(!project.hasProperty("allowShadowedAndroidTestClasses"))
                    // The androidTest runtime classpath contains the app's classes too. Leaving them
                    // in would make TraceReferences treat them as test code and emit no rules.
                    excludeClassesFrom.set(appClasses.flatMap { it.outputJar })
                    outputJar.set(outputs.map { it.file("androidtest-classes.jar") })
                }
                androidTest.artifacts.forScope(ScopedArtifacts.Scope.ALL)
                    .use(testClasses)
                    .toGet(ScopedArtifact.CLASSES, ClassesJarTask::inputJars, ClassesJarTask::inputDirs)

                val infer = registerInferTask(project, name, outputs, appClasses, testClasses, r8, androidComponents)
                variant.proguardFiles.add(infer.flatMap { it.outputRules })

                // `proguardFiles.add()` gets the rules into the app's R8 invocation but does not
                // carry a task dependency with them, and R8 skips a keep file that does not exist
                // rather than failing. Building the app on its own -- `assembleNightly`, which is
                // exactly what the build-apk CI task runs -- therefore produced a mapping the
                // androidTest APK was never built against, and every test died before starting on
                // `NoSuchMethodError: No static method beginSection` against the androidx.tracing
                // member the app had shrunk away. Matched by name to avoid AGP's internal R8Task.
                val r8TaskName = "minify${name}WithR8"
                project.tasks.matching { it.name == r8TaskName }.configureEach {
                    dependsOn(infer)
                }
            }
        }
    }

    private fun registerInferTask(
        project: Project,
        name: String,
        outputs: org.gradle.api.provider.Provider<Directory>,
        appClasses: TaskProvider<ClassesJarTask>,
        testClasses: TaskProvider<ClassesJarTask>,
        r8: org.gradle.api.artifacts.Configuration,
        androidComponents: ApplicationAndroidComponentsExtension,
    ): TaskProvider<InferAndroidTestKeepRulesTask> {
        val infer = project.tasks.register(
            "infer${name}AndroidTestKeepRules",
            InferAndroidTestKeepRulesTask::class.java,
        )
        infer.configure {
            appJar.set(appClasses.flatMap { it.outputJar })
            androidTestJar.set(testClasses.flatMap { it.outputJar })
            bootClasspath.from(androidComponents.sdkComponents.bootClasspath)
            r8Classpath.from(r8)
            outputRules.set(outputs.map { it.file("androidTestKeepRules.pro") })
        }
        return infer
    }

    private companion object {
        const val R8_CONFIGURATION = "androidTestKeepRulesR8"

        // Kept in the same 9.4.x series as the AGP in gradle/libs.versions.toml. TraceReferences
        // only reads class files, so it does not have to be the exact build R8 shrinks the app
        // with, but staying on the same series avoids class file version surprises.
        const val R8_VERSION = "9.4.17"
    }
}

/**
 * Packs a variant's classes -- both the compiled output directories and every jar on its runtime
 * classpath -- into a single jar for TraceReferences to read.
 */
@CacheableTask
abstract class ClassesJarTask : DefaultTask() {
    @get:Classpath
    abstract val inputJars: ListProperty<RegularFile>

    @get:Classpath
    abstract val inputDirs: ListProperty<Directory>

    /** Class entries present in this jar are skipped. */
    @get:Optional
    @get:InputFile
    @get:PathSensitive(PathSensitivity.NONE)
    abstract val excludeClassesFrom: RegularFileProperty

    /** When false, shadowed classes are reported as a warning instead of failing the build. */
    @get:Input
    abstract val failOnShadowedClasses: Property<Boolean>

    @get:OutputFile
    abstract val outputJar: RegularFileProperty

    @TaskAction
    fun createJar() {
        val excluded = excludeClassesFrom.orNull?.asFile?.let { jar ->
            ZipFile(jar).use { zip -> zip.entries().asSequence().map { it.name }.toHashSet() }
        } ?: emptySet<String>()

        // Classes compiled from this component's own sources that the app also defines. Only
        // inputDirs are checked: app classes arriving through inputJars are the androidTest runtime
        // classpath doing its job, not a redeclaration.
        val shadowed = sortedSetOf<String>()
        val written = HashSet<String>()
        val target = outputJar.get().asFile
        target.parentFile.mkdirs()

        ZipOutputStream(target.outputStream().buffered()).use { out ->
            inputJars.get().forEach { jar ->
                val file = jar.asFile
                if (!file.isFile) return@forEach
                ZipFile(file).use { zip ->
                    zip.entries().asSequence()
                        .filter { it.isClassEntry() }
                        .forEach { entry ->
                            if (entry.name in excluded || !written.add(entry.name)) return@forEach
                            out.writeEntry(entry.name) { zip.getInputStream(entry).copyTo(it) }
                        }
                }
            }

            inputDirs.get().forEach { dir ->
                val root = dir.asFile
                root.walkTopDown().filter { it.isFile && it.extension == "class" }.forEach { file ->
                    val name = file.relativeTo(root).invariantSeparatorsPath
                    if (name in excluded) {
                        shadowed += name
                        return@forEach
                    }
                    if (!written.add(name)) return@forEach
                    out.writeEntry(name) { file.inputStream().use { input -> input.copyTo(it) } }
                }
            }
        }

        if (shadowed.isNotEmpty()) reportShadowedClasses(shadowed)
    }

    /**
     * A class declared in both the app and `androidTest` works on a debug build, where neither APK
     * is minified and the test APK's copy simply wins at class-load time. It cannot work under
     * obfuscation. The two bodies compile to different code, R8 runs once per APK, and synthetic
     * lambdas are named positionally after their enclosing class -- so both runs emit their own
     * `$$ExternalSyntheticLambda1`, `-applymapping` gives the two different shapes the same name,
     * and the app calls its own lambda in the test APK and dies:
     *
     *     NoSuchMethodError: No direct method <init>(Ljava/lang/Object;B)V in class Ljd0;
     *
     * No keep rule repairs it -- the synthetics do not exist when keep rules are matched, and
     * `-applymapping` can be forbidden from renaming but never told which name to pick. Failing here
     * turns a runtime failure on the test matrix, hours later and attributed to whichever test ran
     * first, into a build error naming the class.
     */
    private fun reportShadowedClasses(shadowed: Set<String>) {
        val byTopLevel = shadowed
            .map { it.removeSuffix(".class").replace('/', '.') }
            .groupBy { it.substringBefore('$') }
        val detail = byTopLevel.entries.joinToString("\n") { (topLevel, all) ->
            val nested = all.size - 1
            "  $topLevel" + if (nested > 0) " (+$nested nested)" else ""
        }
        val message =
            "androidTest declares ${byTopLevel.size} class(es) that the app also declares:\n\n" +
                detail + "\n\n" +
                "Shadowing an app class from androidTest cannot survive obfuscation; see " +
                "ClassesJarTask.reportShadowedClasses(). Give the test a seam to inject instead of " +
                "redeclaring the class, or delete the duplicate. To keep building meanwhile, pass " +
                "-PallowShadowedAndroidTestClasses."
        if (failOnShadowedClasses.get()) throw GradleException(message) else logger.warn("w: $message")
    }

    private fun ZipEntry.isClassEntry() =
        !isDirectory && name.endsWith(".class") && !name.startsWith("META-INF/")

    private fun ZipOutputStream.writeEntry(name: String, body: (ZipOutputStream) -> Unit) {
        putNextEntry(ZipEntry(name))
        body(this)
        closeEntry()
    }
}

/**
 * Runs R8's TraceReferences over the app and androidTest class jars and writes the `-keep` rules
 * needed for the app to still expose everything the tests use after shrinking.
 */
@CacheableTask
abstract class InferAndroidTestKeepRulesTask @Inject constructor(
    private val execOperations: ExecOperations,
) : DefaultTask() {
    @get:Classpath
    abstract val appJar: RegularFileProperty

    @get:Classpath
    abstract val androidTestJar: RegularFileProperty

    @get:Classpath
    abstract val bootClasspath: ConfigurableFileCollection

    @get:Classpath
    abstract val r8Classpath: ConfigurableFileCollection

    @get:OutputFile
    abstract val outputRules: RegularFileProperty

    @TaskAction
    fun infer() {
        val output = outputRules.get().asFile
        output.parentFile.mkdirs()

        // `-keep` without `allowobfuscation` would pin these names in the app while their
        // subclasses got renamed and repackaged, which breaks package-private access
        // (IllegalAccessError at runtime). AGP applies the app's mapping to the test APK, so the
        // tests only need these references to survive shrinking, not to keep their names.
        val arguments = mutableListOf("--keep-rules", "--allowobfuscation")
        bootClasspath.files.forEach { arguments += listOf("--lib", it.absolutePath) }
        androidTestBaseJar()?.let { arguments += listOf("--lib", it.absolutePath) }
        arguments += listOf("--target", appJar.get().asFile.absolutePath)
        arguments += listOf("--source", androidTestJar.get().asFile.absolutePath)
        arguments += listOf("--output", output.absolutePath)
        // The androidTest classpath legitimately references classes that are not in either APK
        // (test-only optional dependencies). Without this TraceReferences treats them as fatal.
        arguments += listOf("--map-diagnostics:MissingDefinitionsDiagnostic", "error", "warning")

        execOperations.javaexec {
            classpath(r8Classpath)
            mainClass.set("com.android.tools.r8.tracereferences.TraceReferences")
            args(arguments)
        }

        output.appendText(pinMemberNames(output.readText()))
        output.appendText(FUNCTION_INVOKE_RULE)
        output.appendText(DUPLICATE_CLASS_RULE)
        output.writeText(BANNER + output.readText())
    }

    /**
     * Re-emits every generated rule as `-keepclassmembernames` so the members keep their source
     * names while their classes stay free to be renamed.
     *
     * A member that R8 both keeps and inlines into is written to mapping.txt as an inlined frame
     * rather than a plain member rename (`kotlin.coroutines.ContinuationInterceptor$DefaultImpls
     * .releaseInterceptedContinuation`, for one). `-applymapping` cannot read those back, so the
     * androidTest APK is left calling the source name of a member the app renamed, and the test
     * dies on NoSuchMethodError. Pinning the names sidesteps the round-trip entirely and costs
     * nothing that Play measures, which is dominated by class names.
     */
    private fun pinMemberNames(rules: String): String =
        rules
            .lineSequence()
            .joinToString("\n", prefix = "\n# Member names for the same references, see pinMemberNames().\n") {
                it.replace(KEEP_DIRECTIVE, "-keepclassmembernames ")
            }

    private companion object {
        const val KEEP_DIRECTIVE = "-keep,allowobfuscation "

        val BANNER = """
            # GENERATED by :app:infer<Variant>AndroidTestKeepRules (AndroidTestKeepRulesPlugin).
            # Do not edit, and do not check this file in -- it is inferred from the androidTest
            # classpath on every build and added to the variant's R8 invocation directly.
            # See the plugin's KDoc for why each reference is emitted twice.

        """.trimIndent()

        /**
         * Renaming under `-applymapping` splits override sets that straddle the app/test boundary.
         * `ReflectProperties$LazySoftVal`, which mockk drags into the androidTest APK via
         * kotlin-reflect, overrides both the abstract `ReflectProperties$Val.invoke()` and the
         * mapped `Function0.invoke()`. R8 renames it to follow the mapping and leaves the abstract
         * declaration behind, so `Val.getValue()` dispatches to nothing and the app dies on startup
         * with `AbstractMethodError`.
         *
         * No keep rule can repair that from the test side: `-applymapping` outranks keep rules, and
         * ProGuard syntax can forbid a rename but never dictate one. Removing the entry from the
         * mapping in the first place is the one lever that works, so the app leaves these names
         * alone. They are all called `invoke` regardless, and this only pins member names -- class
         * names, which dominate Play's obfuscation metric, are untouched.
         *
         * Contributed here rather than in proguard-rules-obfuscation.pro because it is only needed
         * when an androidTest APK is built against this variant. Shipping builds have no second R8
         * run and no mapping to apply, so they keep renaming these.
         */
        const val FUNCTION_INVOKE_RULE =
            "\n# Keep kotlin.jvm.functions out of the mapping; see FUNCTION_INVOKE_RULE.\n" +
                "-keepclassmembernames class kotlin.jvm.functions.** { *; }\n"

        /**
         * `org.mozilla.fenix.AppRequestInterceptor` is declared in both `src/main` and
         * `src/androidTest`, and the test copy shadows the app's at runtime. Its constructor takes a
         * `(EngineSession) -> Boolean`, so once R8 is allowed to optimize the app it strengthens that
         * parameter to the concrete lambda it sees at the only call site --
         * `Core$$ExternalSyntheticLambda11` -- and rewrites the signature. The shadowing copy is
         * compiled without that optimization and keeps `Function1`, so the app's call site finds no
         * matching constructor:
         *
         *     NoSuchMethodError: No direct method <init>(Landroid/content/Context;Lz62;)V
         *       in class Lorg/mozilla/fenix/AppRequestInterceptor;
         *
         * A plain `-keep` restores all three protections for this one class -- keep rules are a
         * union and the most restrictive wins -- which stops the signature being rewritten. Only the
         * top-level class is named: the synthetic lambdas R8 generates under it do not exist when
         * rules are matched, and its `RiskLevel`/`WhenMappings` members are not in the signature.
         *
         * Contributed here rather than in proguard-rules-obfuscation.pro for the same reason as
         * FUNCTION_INVOKE_RULE: shipping builds have no shadowing copy, so they should stay
         * optimizable. Deleting the duplicate class behind a DI seam would remove the need for this.
         */
        const val DUPLICATE_CLASS_RULE =
            "\n# The androidTest copy shadows the app's; see DUPLICATE_CLASS_RULE.\n" +
                "-keep class org.mozilla.fenix.AppRequestInterceptor { *; }\n"
    }

    /** `android.test.base` is not on the boot classpath but Espresso's JUnit3 shims reference it. */
    private fun androidTestBaseJar(): File? =
        bootClasspath.files.firstOrNull { it.name == "android.jar" }
            ?.resolveSibling("optional")
            ?.resolve("android.test.base.jar")
            ?.takeIf { it.isFile }
}
