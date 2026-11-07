/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.externalSystem.model.DataNode
import com.intellij.openapi.externalSystem.model.Key
import com.intellij.openapi.externalSystem.model.project.ProjectData
import com.intellij.openapi.externalSystem.service.project.IdeModifiableModelsProvider
import com.intellij.openapi.externalSystem.service.project.manage.AbstractProjectDataService
import com.intellij.openapi.project.Project

/** Imports Nimbus module data from the Gradle external-system model. */
class NimbusModuleDataService : AbstractProjectDataService<NimbusModuleData, Nothing>() {
    override fun getTargetDataKey(): Key<NimbusModuleData> = NimbusModuleData.KEY

    override fun importData(
        toImport: Collection<DataNode<NimbusModuleData>>,
        projectData: ProjectData?,
        project: Project,
        modelsProvider: IdeModifiableModelsProvider,
    ) {
        project.getService(NimbusModelIndexService::class.java).replaceAll(toImport.map { it.data })
    }
}
