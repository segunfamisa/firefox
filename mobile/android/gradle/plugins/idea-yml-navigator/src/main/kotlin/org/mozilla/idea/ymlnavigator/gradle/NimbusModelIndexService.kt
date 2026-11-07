/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.components.Service
import java.io.File

/** Stores Nimbus configuration imported during Gradle sync for this IDE project. */
@Service(Service.Level.PROJECT)
class NimbusModelIndexService {
    @Volatile private var modules: Map<GradleProjectIdentity, NimbusModuleData> = emptyMap()

    fun replaceAll(importedModules: Collection<NimbusModuleData>) {
        modules = importedModules.associateBy { module -> module.gradleProjectIdentity }
    }

    /** Finds the imported module that declares the [inputFile]. */
    fun findOwner(inputFile: File): NimbusModuleData? {
        val canonicalInputFile = inputFile.canonicalFile
        return modules.values.firstOrNull { module -> module.rootManifestFile.canonicalFile == canonicalInputFile }
            ?: modules.values.firstOrNull { module ->
                module.manifestDependencies.any { dependency -> dependency.canonicalFile == canonicalInputFile }
            }
    }

    fun all(): Collection<NimbusModuleData> = modules.values
}
