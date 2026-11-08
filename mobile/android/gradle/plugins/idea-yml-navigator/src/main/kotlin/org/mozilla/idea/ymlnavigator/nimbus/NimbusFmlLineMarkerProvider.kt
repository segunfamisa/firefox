/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.codeInsight.daemon.GutterIconNavigationHandler
import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.icons.AllIcons
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.openapi.fileEditor.OpenFileDescriptor
import com.intellij.find.actions.ShowUsagesAction
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.ui.popup.JBPopupFactory
import com.intellij.psi.PsiElement
import com.intellij.ui.awt.RelativePoint
import java.awt.Component
import java.awt.event.MouseEvent
import javax.swing.DefaultListCellRenderer
import javax.swing.JList
import org.jetbrains.yaml.psi.YAMLDocument
import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLKeyValue
import org.mozilla.idea.ymlnavigator.gradle.NimbusModelIndexService
import org.mozilla.idea.ymlnavigator.gradle.NimbusVariant

/** Provides variant-aware generated-Kotlin navigation for Nimbus FML manifests. */
class NimbusFmlLineMarkerProvider : LineMarkerProvider {
    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        if (element !is YAMLKeyValue) {
            return null
        }
        if (element.keyText == ABOUT_KEY && element.parent?.parent is YAMLDocument) {
            val file = element.containingFile as? YAMLFile ?: return null
            if (findOwner(file)?.variants?.isNotEmpty() != true) {
                return null
            }
            return LineMarkerInfo(
                element,
                element.textRange,
                AllIcons.Gutter.ImplementedMethod,
                { TOOLTIP },
                navigationHandler,
                GutterIconRenderer.Alignment.RIGHT,
                { TOOLTIP },
            )
        }
        return if (element.containingFile.let { it as? YAMLFile }?.let(NimbusFeatureYamlLookup::featureKeys)?.any { it === element } == true) {
            featureUsageMarker(element)
        } else {
            null
        }
    }

    private fun showVariants(event: MouseEvent, element: YAMLKeyValue) {
        val file = element.containingFile as? YAMLFile ?: return
        val query = query(file.project)
        val owner = findOwner(file) ?: return
        val popup =
            JBPopupFactory
                .getInstance()
                .createPopupChooserBuilder(owner.variants)
                .setTitle(POPUP_TITLE)
                .setRenderer(VariantRenderer())
                .setItemChosenCallback { variant -> openGeneratedKotlin(file, query, variant) }
                .createPopup()
        popup.show(RelativePoint(event))
    }

    private fun openGeneratedKotlin(file: YAMLFile, query: NimbusGeneratedKotlinQuery, variant: NimbusVariant) {
        when (val result = query.locate(file, variant)) {
            is NimbusGeneratedKotlinQueryResult.Located ->
                when (val lookup = result.generatedKotlin) {
                    is GeneratedKotlinClassLookup.Found -> {
                        val virtualFile = lookup.generatedClass.containingFile.virtualFile ?: return
                        OpenFileDescriptor(file.project, virtualFile).navigate(true)
                    }
                    GeneratedKotlinClassLookup.Missing -> {
                        Messages.showInfoMessage(
                            file.project,
                            "Run ${variant.generationTaskPath} to generate the selected Nimbus Kotlin class.",
                            GENERATION_MISSING_TITLE,
                        )
                    }
                    GeneratedKotlinClassLookup.UnsupportedBinding ->
                        Messages.showInfoMessage(file.project, UNSUPPORTED_BINDING_MESSAGE, POPUP_TITLE)
                }
            NimbusGeneratedKotlinQueryResult.InvalidBinding ->
                Messages.showInfoMessage(file.project, INVALID_BINDING_MESSAGE, POPUP_TITLE)
            NimbusGeneratedKotlinQueryResult.NotNimbusInput,
            NimbusGeneratedKotlinQueryResult.VariantNotOwned,
            -> Unit
        }
    }

    private fun query(project: Project): NimbusGeneratedKotlinQuery {
        val fileLookup = NimbusYamlFileLookup(project.getService(NimbusModelIndexService::class.java))
        return NimbusGeneratedKotlinQuery(
            findOwner = fileLookup::findOwner,
            locateGeneratedKotlin = NimbusGeneratedKotlinClassResolver(project)::locate,
        )
    }

    private fun findOwner(file: YAMLFile) =
        file.virtualFile?.let { virtualFile ->
            NimbusYamlFileLookup(file.project.getService(NimbusModelIndexService::class.java))
                .findOwner(virtualFile)
        }

    private fun featureUsageMarker(element: YAMLKeyValue): LineMarkerInfo<YAMLKeyValue>? {
        val file = element.containingFile as? YAMLFile ?: return null
        if (NimbusFeatureUsageResolver(file.project).resolve(file, element) == null) {
            return null
        }
        return LineMarkerInfo(
            element,
            element.textRange,
            AllIcons.Actions.Find,
            { FEATURE_USAGE_TOOLTIP },
            featureUsageNavigationHandler,
            GutterIconRenderer.Alignment.RIGHT,
            { FEATURE_USAGE_TOOLTIP },
        )
    }

    private class VariantRenderer : DefaultListCellRenderer() {
        override fun getListCellRendererComponent(
            list: JList<*>?,
            value: Any?,
            index: Int,
            isSelected: Boolean,
            cellHasFocus: Boolean,
        ): Component {
            super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus)
            val variant = value as NimbusVariant
            text = "${variant.name} (${variant.channel})"
            return this
        }
    }

    private companion object {
        const val ABOUT_KEY = "about"
        const val FEATURE_USAGE_TOOLTIP = "Find usages of generated Nimbus feature"
        const val GENERATION_MISSING_TITLE = "Nimbus code has not been generated"
        const val INVALID_BINDING_MESSAGE = "This Nimbus manifest does not declare a supported Kotlin binding."
        const val POPUP_TITLE = "Show generated Nimbus Kotlin"
        const val TOOLTIP = "Show generated Nimbus Kotlin"
        const val UNSUPPORTED_BINDING_MESSAGE = "This Nimbus binding uses an unsupported class declaration."

        val navigationHandler = GutterIconNavigationHandler<YAMLKeyValue> { event, element ->
            NimbusFmlLineMarkerProvider().showVariants(event, element)
        }

        val featureUsageNavigationHandler = GutterIconNavigationHandler<YAMLKeyValue> { event, element ->
            val file = element.containingFile as? YAMLFile ?: return@GutterIconNavigationHandler
            val target = NimbusFeatureUsageResolver(file.project).resolve(file, element) ?: return@GutterIconNavigationHandler
            ShowUsagesAction.startFindUsages(target, RelativePoint(event), null)
        }
    }
}
