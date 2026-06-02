/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

import org.gradle.api.Action
import org.gradle.api.DomainObjectCollection
import org.gradle.api.Project
import org.mozilla.conventions.ProjectExtension

// All AGP interaction here is via reflection on `extensions.getByName("android")` because the
// convention plugin's build.gradle.kts declares AGP as compileOnly. A direct `import com.android.*`
// would compile but fail at apply time with NoClassDefFoundError, since AGP isn't on the plugin's
// runtime classloader. Mirrors the pattern in ProjectPlugin.registerPrintVariantsTask.
//
// The `applyVersioning` opt-in is read lazily inside the per-variant action (not in the outer
// withPlugin callback) so that the consumer's `mozilla { applyVersioning = true }` block — which
// executes after the build script body, hence after our withPlugin callback — gets the chance to
// flip it before we check.
@Suppress("UNCHECKED_CAST")
internal fun Project.configureVersioning(mozilla: ProjectExtension) {
    val project = this
    pluginManager.withPlugin("com.android.application") {
        val extraProperties = project.gradle.extensions.extraProperties
        val mozconfig = extraProperties["mozconfig"] as Map<*, *>
        val topsrcdir = mozconfig["topsrcdir"] as String

        val branchBuildKey = "localProperties.branchBuild.fenix.version"
        val branchBuildOverride: String? = if (extraProperties.has(branchBuildKey)) {
            extraProperties[branchBuildKey] as String?
        } else {
            null
        }

        val android = project.extensions.getByName("android")
        val applicationVariants = android.javaClass
            .getMethod("getApplicationVariants").invoke(android) as DomainObjectCollection<Any>

        applicationVariants.configureEach(object : Action<Any> {
            override fun execute(variant: Any) {
                if (!mozilla.applyVersioning.get()) return

                val buildType = variant.javaClass.getMethod("getBuildType").invoke(variant)
                val buildTypeName = buildType.javaClass.getMethod("getName").invoke(buildType) as String
                val channel = releaseChannelOf(buildTypeName)

                val resolvedName = resolveVersionNameFor(
                    project = project,
                    channel = channel,
                    topsrcdir = topsrcdir,
                    branchBuildOverride = branchBuildOverride,
                )

                val outputs = variant.javaClass.getMethod("getOutputs").invoke(variant) as Iterable<Any>
                outputs.forEach { output ->
                    output.javaClass.getMethod("setVersionNameOverride", String::class.java)
                        .invoke(output, resolvedName)
                    if (channel != ReleaseChannel.Developer) {
                        val abi = output.javaClass
                            .getMethod("getFilter", String::class.java).invoke(output, "ABI") as String?
                            ?: "universal"
                        val code = generateFennecVersionCode(abi)
                        output.javaClass.getMethod("setVersionCodeOverride", Integer.TYPE)
                            .invoke(output, code)
                    }
                }
            }
        })
    }
}
