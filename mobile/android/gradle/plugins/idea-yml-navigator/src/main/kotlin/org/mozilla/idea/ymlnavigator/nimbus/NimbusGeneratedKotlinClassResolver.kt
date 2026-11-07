/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.openapi.project.Project
import com.intellij.openapi.vfs.LocalFileSystem
import com.intellij.openapi.vfs.VfsUtilCore
import com.intellij.psi.JavaPsiFacade
import com.intellij.psi.PsiClass
import com.intellij.psi.search.GlobalSearchScope
import org.mozilla.idea.ymlnavigator.gradle.NimbusVariant

/** Result of locating a Nimbus-generated Kotlin class in the IDE index. */
sealed interface GeneratedKotlinClassLookup {
    /** The generated Kotlin class is indexed under the selected variant root. */
    data class Found(val generatedClass: PsiClass) : GeneratedKotlinClassLookup

    /** No indexed generated Kotlin class exists under the selected variant root. */
    data object Missing : GeneratedKotlinClassLookup

    /** The manifest uses a class declaration form the resolver does not support. */
    data object UnsupportedBinding : GeneratedKotlinClassLookup
}

/** Resolves Nimbus-generated Kotlin classes by fully qualified class identity. */
class NimbusGeneratedKotlinClassResolver(private val project: Project) {
    fun locate(binding: NimbusKotlinBinding, variant: NimbusVariant): GeneratedKotlinClassLookup {
        val classSuffix = binding.wrapperClassName.takeIf { it.startsWith('.') } ?: return GeneratedKotlinClassLookup.UnsupportedBinding
        val root = LocalFileSystem.getInstance().findFileByIoFile(variant.generatedKotlinSourceDirectory)
            ?: return GeneratedKotlinClassLookup.Missing
        val generatedClass =
            JavaPsiFacade
                .getInstance(project)
                .findClasses(binding.packageName + classSuffix, GlobalSearchScope.projectScope(project))
                .firstOrNull { psiClass ->
                    psiClass.containingFile.virtualFile?.let { VfsUtilCore.isAncestor(root, it, false) } == true
                }
                ?: return GeneratedKotlinClassLookup.Missing

        return GeneratedKotlinClassLookup.Found(generatedClass)
    }
}
