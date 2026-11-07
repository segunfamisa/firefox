/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.appservices.tooling.nimbus.ide

import org.gradle.api.Project
import org.gradle.tooling.provider.model.ToolingModelBuilder

/** A [ToolingModelBuilder] for ides to pick up information about the plugin's configuration and outputs. */
class NimbusIdeModelBuilder : ToolingModelBuilder {
    override fun canBuild(modelName: String): Boolean {
        return modelName == NimbusIdeModel::class.java.name
    }

    override fun buildAll(modelName: String, project: Project): Any? {
        return DefaultNimbusIdeModel(marker = "nimbus-ide-model:${project.path}")
    }
}

class DefaultNimbusIdeModel(private val marker: String) : NimbusIdeModel {
    override fun getMarker(): String = marker
}
