/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.externalSystem.model.DataNode
import com.intellij.openapi.externalSystem.model.project.ModuleData
import org.gradle.tooling.model.idea.IdeaModule
import org.jetbrains.plugins.gradle.service.project.AbstractProjectResolverExtension
import org.mozilla.appservices.tooling.nimbus.ide.NimbusIdeModel

/** Imports [NimbusIdeModel] instances into the IDE during Gradle project sync. */
class NimbusGradleProjectResolverExtension : AbstractProjectResolverExtension() {

    override fun getExtraProjectModelClasses(): Set<Class<*>> = setOf(NimbusIdeModel::class.java)

    override fun populateModuleExtraModels(gradleModule: IdeaModule, moduleDataNode: DataNode<ModuleData>) {
        val model = resolverCtx.getExtraProject(gradleModule, NimbusIdeModel::class.java)
        if (model != null) {
            // attach the Nimbus configuration to the module
            moduleDataNode.createChild(
                /* key= */ NimbusModuleData.KEY,
                /* data= */ NimbusModuleData(
                    gradleProjectIdentity =
                        GradleProjectIdentity(
                            buildRootDirectory =
                                gradleModule.gradleProject.projectIdentifier.buildIdentifier.rootDir.canonicalFile,
                            projectPath = gradleModule.gradleProject.projectIdentifier.projectPath,
                        ),
                    rootManifestFile = model.getRootManifestFile(),
                    manifestDependencies = model.getManifestDependencies(),
                    variants =
                        model.getVariants().map { variant ->
                            NimbusVariant(
                                name = variant.getName(),
                                channel = variant.getChannel(),
                                generationTaskPath = variant.getGenerationTaskPath(),
                                generatedKotlinSourceDirectory = variant.getGeneratedKotlinSourceDirectory(),
                            )
                        },
                ),
            )
        }

        super.populateModuleExtraModels(gradleModule, moduleDataNode)
    }
}
