/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.diagnostic.Logger
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
            logger.info(
                "Received Nimbus inputs: ${model.getRootManifestFile()}, " +
                    model.getManifestDependencies().joinToString()
            )
            model.getVariants().forEach { variant ->
                logger.info(
                    "Received Nimbus variant: ${variant.getName()} (${variant.getChannel()}), " +
                        "${variant.getGenerationTaskPath()} -> ${variant.getGeneratedKotlinSourceDirectory()}"
                )
            }
        }
        super.populateModuleExtraModels(gradleModule, moduleDataNode)
    }

    private companion object {
        val logger = Logger.getInstance(NimbusGradleProjectResolverExtension::class.java)
    }
}
