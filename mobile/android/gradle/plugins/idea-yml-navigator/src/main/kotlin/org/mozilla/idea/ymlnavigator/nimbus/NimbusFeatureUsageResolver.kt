/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.openapi.project.Project
import com.intellij.psi.PsiMethod
import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLKeyValue
import org.mozilla.idea.ymlnavigator.gradle.NimbusModelIndexService

/** Resolves an FML feature key to its generated Kotlin getter for usage search. */
class NimbusFeatureUsageResolver(private val project: Project) {
    fun resolve(file: YAMLFile, feature: YAMLKeyValue): PsiMethod? {
        val sourceManifest = NimbusFeatureYamlLookup.sourceManifest(file, feature) ?: return null
        val owner =
            NimbusYamlFileLookup(project.getService(NimbusModelIndexService::class.java))
                .findOwner(sourceManifest.virtualFile ?: return null)
                ?: return null
        val binding = NimbusFmlBindingParser.parse(sourceManifest) ?: return null
        val generatedClass =
            owner.variants
                .asSequence()
                .map { NimbusGeneratedKotlinClassResolver(project).locate(binding, it) }
                .filterIsInstance<GeneratedKotlinClassLookup.Found>()
                .map { it.generatedClass }
                .firstOrNull()
                ?: return null
        val featuresClass = generatedClass.findInnerClassByName(FEATURES_CLASS_NAME, false) ?: return null
        val getterName = "get${feature.keyText.toLowerCamelCase().replaceFirstChar { it.titlecase() }}"
        return featuresClass.findMethodsByName(getterName, false).singleOrNull()
    }

    private fun String.toLowerCamelCase(): String {
        val parts = split('-', '_').filter(String::isNotEmpty)
        return parts.firstOrNull().orEmpty() + parts.drop(1).joinToString("") { it.replaceFirstChar(Char::titlecase) }
    }

    private companion object {
        const val FEATURES_CLASS_NAME = "Features"
    }
}
