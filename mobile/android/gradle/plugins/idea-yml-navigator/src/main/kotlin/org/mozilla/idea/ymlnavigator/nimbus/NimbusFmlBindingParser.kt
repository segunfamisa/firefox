/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import org.jetbrains.yaml.psi.YAMLFile
import org.jetbrains.yaml.psi.YAMLMapping
import org.jetbrains.yaml.psi.YAMLScalar

/** Kotlin wrapper declaration read from a Nimbus FML manifest. */
data class NimbusKotlinBinding(
    val packageName: String,
    val wrapperClassName: String,
)

/** Reads the Android Kotlin wrapper declaration from a Nimbus FML YAML document. */
object NimbusFmlBindingParser {

    fun parse(file: YAMLFile): NimbusKotlinBinding? {
        val root = file.documents.singleOrNull()?.topLevelValue as? YAMLMapping ?: return null
        val about = root.getKeyValueByKey(ABOUT_KEY)?.value as? YAMLMapping ?: return null
        val binding = about.bindingMapping() ?: return null

        val packageName = binding.scalarValue(PACKAGE_KEY) ?: return null
        val wrapperClassName = binding.scalarValue(CLASS_KEY) ?: return null

        return NimbusKotlinBinding(
            packageName = packageName,
            wrapperClassName = wrapperClassName,
        )
    }

    private fun YAMLMapping.scalarValue(key: String): String? =
        (getKeyValueByKey(key)?.value as? YAMLScalar)?.textValue?.trim()?.takeIf { it.isNotEmpty() }

    private fun YAMLMapping.bindingMapping(): YAMLMapping? =
        listOf(ANDROID_KEY, KOTLIN_KEY).mapNotNull { getKeyValueByKey(it)?.value as? YAMLMapping }.singleOrNull()
}

private const val ABOUT_KEY = "about"
private const val ANDROID_KEY = "android"
private const val CLASS_KEY = "class"
private const val KOTLIN_KEY = "kotlin"
private const val PACKAGE_KEY = "package"
