/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.codeInsight.codeVision.CodeVisionAnchorKind
import com.intellij.codeInsight.codeVision.CodeVisionEntry
import com.intellij.codeInsight.codeVision.CodeVisionProvider
import com.intellij.codeInsight.codeVision.CodeVisionRelativeOrdering
import com.intellij.codeInsight.codeVision.ui.model.CounterCodeVisionEntry
import com.intellij.find.actions.ShowUsagesAction
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiDocumentManager
import com.intellij.psi.search.searches.ReferencesSearch
import com.intellij.ui.awt.RelativePoint
import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLKeyValue

/** Displays and opens usages of generated Kotlin feature getters from FML feature keys. */
class NimbusFeatureUsageCodeVisionProvider : CodeVisionProvider<List<YAMLKeyValue>> {
    override val id = PROVIDER_ID
    override val name = "Nimbus feature usages"
    override val relativeOrderings: List<CodeVisionRelativeOrdering> = emptyList()
    override val defaultAnchor = CodeVisionAnchorKind.Top

    override fun precomputeOnUiThread(editor: Editor): List<YAMLKeyValue> {
        val project = editor.project ?: return emptyList()
        val file = PsiDocumentManager.getInstance(project).getPsiFile(editor.document) as? YAMLFile ?: return emptyList()
        return NimbusFeatureYamlLookup.featureKeys(file)
    }

    @Deprecated("CodeVisionProvider.computeForEditor is retained for compatibility with Android Studio Stable.")
    override fun computeForEditor(
        editor: Editor,
        uiData: List<YAMLKeyValue>,
    ): List<Pair<TextRange, CodeVisionEntry>> {
        val project = editor.project ?: return emptyList()
        return uiData.mapNotNull { feature ->
            val file = feature.containingFile as? YAMLFile ?: return@mapNotNull null
            val getter = NimbusFeatureUsageResolver(project).resolve(file, feature) ?: return@mapNotNull null
            val count = ReferencesSearch.search(getter).findAll().size
            feature.textRange to
                CounterCodeVisionEntry(
                    count,
                    id,
                    "$count ${if (count == 1) "usage" else "usages"}",
                    null,
                    "Show usages of generated Nimbus feature",
                    "Show usages of generated Nimbus feature",
                    emptyList(),
                )
        }
    }

    override fun handleClick(editor: Editor, textRange: TextRange, entry: CodeVisionEntry) {
        val project = editor.project ?: return
        val file = PsiDocumentManager.getInstance(project).getPsiFile(editor.document) as? YAMLFile ?: return
        val feature = NimbusFeatureYamlLookup.featureKeys(file).firstOrNull { it.textRange == textRange } ?: return
        val getter = NimbusFeatureUsageResolver(project).resolve(file, feature) ?: return
        ShowUsagesAction.startFindUsages(
            getter,
            RelativePoint(editor.contentComponent, editor.offsetToXY(textRange.startOffset)),
            editor,
        )
    }

    private companion object {
        const val PROVIDER_ID = "nimbus.feature.usages"
    }
}
