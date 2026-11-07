/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.openapi.vfs.VirtualFile
import java.io.File
import org.mozilla.idea.ymlnavigator.gradle.NimbusModelIndexService
import org.mozilla.idea.ymlnavigator.gradle.NimbusModuleData

/** Finds the imported Nimbus module that owns a local YAML file. */
class NimbusYamlFileLookup(private val modelIndex: NimbusModelIndexService) {
    fun findOwner(file: VirtualFile): NimbusModuleData? {
        if (!file.isInLocalFileSystem) {
            return null
        }

        return modelIndex.findOwner(inputFile = File(file.path))
    }
}
