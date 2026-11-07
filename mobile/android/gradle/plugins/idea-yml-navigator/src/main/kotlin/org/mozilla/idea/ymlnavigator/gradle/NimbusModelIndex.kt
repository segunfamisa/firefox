/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.components.Service
import java.io.File
import java.util.concurrent.ConcurrentHashMap

/** Stores Nimbus configuration imported during Gradle sync for this IDE project. */
@Service(Service.Level.PROJECT)
class NimbusModelIndex {
    private val modules = ConcurrentHashMap<GradleProjectIdentity, NimbusModuleData>()

    fun replace(module: NimbusModuleData) {
        modules[module.gradleProjectIdentity] = module
    }

    /** Finds the imported module that declares the [inputFile]. */
    fun findOwner(inputFile: File): NimbusModuleData? {
        return modules.values.firstOrNull { module -> inputFile.canonicalFile in module.inputFiles }
    }

    fun all(): Collection<NimbusModuleData> = modules.values
}
