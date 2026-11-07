/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.openapi.vfs.VirtualFile
import org.jetbrains.yaml.psi.YAMLFile
import org.mozilla.idea.ymlnavigator.gradle.NimbusModuleData
import org.mozilla.idea.ymlnavigator.gradle.NimbusVariant

/** Result of querying generated Kotlin for a Nimbus FML YAML file. */
sealed interface NimbusGeneratedKotlinQueryResult {
    /** The YAML file is not an input owned by the imported Nimbus configuration. */
    data object NotNimbusInput : NimbusGeneratedKotlinQueryResult

    /** The Nimbus FML input does not declare a supported Kotlin binding. */
    data object InvalidBinding : NimbusGeneratedKotlinQueryResult

    /** The selected variant does not belong to the Nimbus module that owns the YAML file. */
    data object VariantNotOwned : NimbusGeneratedKotlinQueryResult

    /** The owned binding and selected variant were resolved to generated Kotlin state. */
    data class Located(
        val owner: NimbusModuleData,
        val binding: NimbusKotlinBinding,
        val generatedKotlin: GeneratedKotlinClassLookup,
    ) : NimbusGeneratedKotlinQueryResult
}

/** Locates generated Kotlin for a given Nimbus FML YAML file. */
class NimbusGeneratedKotlinQuery(
    private val findOwner: (VirtualFile) -> NimbusModuleData?,
    private val locateGeneratedKotlin: (NimbusKotlinBinding, NimbusVariant) -> GeneratedKotlinClassLookup,
) {
    fun locate(file: YAMLFile, variant: NimbusVariant): NimbusGeneratedKotlinQueryResult {
        val owner = file.virtualFile?.let(findOwner) ?: return NimbusGeneratedKotlinQueryResult.NotNimbusInput
        val binding = NimbusFmlBindingParser.parse(file) ?: return NimbusGeneratedKotlinQueryResult.InvalidBinding
        if (variant !in owner.variants) {
            return NimbusGeneratedKotlinQueryResult.VariantNotOwned
        }

        return NimbusGeneratedKotlinQueryResult.Located(
            owner = owner,
            binding = binding,
            generatedKotlin = locateGeneratedKotlin(binding, variant),
        )
    }
}
