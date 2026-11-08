/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.PsiReference
import com.intellij.psi.PsiReferenceBase
import com.intellij.psi.PsiReferenceContributor
import com.intellij.psi.PsiReferenceProvider
import com.intellij.psi.PsiReferenceRegistrar
import com.intellij.openapi.util.TextRange
import com.intellij.util.ProcessingContext
import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLKeyValue

/** Contributes generated-Kotlin navigation from supported FML feature keys. */
class NimbusFeatureReferenceContributor : PsiReferenceContributor() {
    override fun registerReferenceProviders(registrar: PsiReferenceRegistrar) {
        registrar.registerReferenceProvider(
            PlatformPatterns.psiElement(YAMLKeyValue::class.java),
            object : PsiReferenceProvider() {
                override fun getReferencesByElement(element: com.intellij.psi.PsiElement, context: ProcessingContext): Array<PsiReference> {
                    val feature = element as YAMLKeyValue
                    if (!NimbusFeatureYamlLookup.featureKeys(feature.containingFile as? YAMLFile ?: return PsiReference.EMPTY_ARRAY).any { it === feature }) {
                        return PsiReference.EMPTY_ARRAY
                    }
                    val file = feature.containingFile as? YAMLFile ?: return PsiReference.EMPTY_ARRAY
                    val reference =
                        object : PsiReferenceBase<YAMLKeyValue>(feature, TextRange(0, feature.keyText.length), false) {
                            override fun resolve() = NimbusFeatureUsageResolver(feature.project).resolve(file, feature)
                        }
                    return arrayOf(reference)
                }
            },
        )
    }
}
