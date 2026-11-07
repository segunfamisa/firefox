/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.appservices.tooling.nimbus.ide

import java.io.File
import java.io.Serializable
import org.gradle.api.Project
import org.gradle.kotlin.dsl.findByType
import org.gradle.kotlin.dsl.withType
import org.gradle.tooling.provider.model.ToolingModelBuilder
import org.mozilla.appservices.tooling.nimbus.NimbusFeaturesTask
import org.mozilla.appservices.tooling.nimbus.NimbusPluginExtension

/** Builds [NimbusIdeModel] instances from a project's Nimbus plugin configuration. */
class NimbusIdeModelBuilder : ToolingModelBuilder {
    override fun canBuild(modelName: String): Boolean {
        return modelName == NimbusIdeModel::class.java.name
    }

    override fun buildAll(modelName: String, project: Project): Any? {
        val extension = project.extensions.findByType<NimbusPluginExtension>() ?: return null
        val manifestFile = project.file(extension.manifestFile.get())
        if (!manifestFile.isFile) return null

        return DefaultNimbusIdeModel(
            rootManifestFile = manifestFile.canonicalFile,
            manifestDependencies =
                extension.manifestDependencies.get().map {
                    project.file(it).canonicalFile
                },
            variants =
                project.tasks
                    .withType<NimbusFeaturesTask>()
                    .map { task ->
                        DefaultNimbusIdeVariant(
                            name = task.variantName.get(),
                            channel = task.channel.get(),
                            generationTaskPath = task.path,
                            generatedKotlinSourceDirectory = task.outputDir.get().asFile.canonicalFile,
                        )
                    }
                    .sortedBy(DefaultNimbusIdeVariant::getName),
        )
    }
}

/** Serializable provider-side implementation returned through the Gradle Tooling API. */
class DefaultNimbusIdeModel(
    private val rootManifestFile: File,
    private val manifestDependencies: List<File>,
    private val variants: List<NimbusIdeVariant>,
) : NimbusIdeModel, Serializable {
    override fun getRootManifestFile(): File = rootManifestFile

    override fun getManifestDependencies(): List<File> = manifestDependencies

    override fun getVariants(): List<NimbusIdeVariant> = variants

    private companion object {
        const val serialVersionUID = 1L
    }
}

/** Serializable provider-side description of a variant's Nimbus generation task. */
class DefaultNimbusIdeVariant(
    private val name: String,
    private val channel: String,
    private val generationTaskPath: String,
    private val generatedKotlinSourceDirectory: File,
) : NimbusIdeVariant, Serializable {
    override fun getName(): String = name

    override fun getChannel(): String = channel

    override fun getGenerationTaskPath(): String = generationTaskPath

    override fun getGeneratedKotlinSourceDirectory(): File = generatedKotlinSourceDirectory

    private companion object {
        const val serialVersionUID = 1L
    }
}
