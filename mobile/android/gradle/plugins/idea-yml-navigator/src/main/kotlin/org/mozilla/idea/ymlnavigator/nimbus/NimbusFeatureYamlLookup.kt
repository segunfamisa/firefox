/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.openapi.vfs.VfsUtilCore
import com.intellij.psi.PsiManager
import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLKeyValue
import org.jetbrains.yaml.psi.YAMLMapping
import org.jetbrains.yaml.psi.YAMLSequence

/** Finds feature declarations in a manifest and their source FML manifest. */
object NimbusFeatureYamlLookup {
    fun featureKeys(file: YAMLFile): List<YAMLKeyValue> =
        rootFeatureKeys(file) + importEntries(file).flatMap { featureKeys(it) }

    fun sourceManifest(file: YAMLFile, feature: YAMLKeyValue): YAMLFile? {
        if (rootFeatureKeys(file).any { it === feature }) {
            return file
        }
        val importEntry = importEntries(file).firstOrNull { entry -> featureKeys(entry).any { it === feature } } ?: return null
        val relativePath = importEntry.getKeyValueByKey(PATH_KEY)?.valueText ?: return null
        val importedVirtualFile = VfsUtilCore.findRelativeFile(relativePath, file.virtualFile?.parent ?: return null) ?: return null
        return PsiManager.getInstance(file.project).findFile(importedVirtualFile) as? YAMLFile
    }

    private fun rootFeatureKeys(file: YAMLFile): List<YAMLKeyValue> =
        featuresMapping(file.documents.singleOrNull()?.topLevelValue as? YAMLMapping)?.keyValues?.toList().orEmpty()

    private fun importEntries(file: YAMLFile): List<YAMLMapping> =
        ((file.documents.singleOrNull()?.topLevelValue as? YAMLMapping)
            ?.getKeyValueByKey(IMPORT_KEY)
            ?.value as? YAMLSequence)
            ?.items
            ?.mapNotNull { it.value as? YAMLMapping }
            .orEmpty()

    private fun featureKeys(importEntry: YAMLMapping): List<YAMLKeyValue> = featuresMapping(importEntry)?.keyValues?.toList().orEmpty()

    private fun featuresMapping(mapping: YAMLMapping?): YAMLMapping? =
        mapping?.getKeyValueByKey(FEATURES_KEY)?.value as? YAMLMapping

    private const val FEATURES_KEY = "features"
    private const val IMPORT_KEY = "import"
    private const val PATH_KEY = "path"
}
