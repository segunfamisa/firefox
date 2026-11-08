/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.testFramework.fixtures.BasePlatformTestCase
import org.jetbrains.yaml.psi.YAMLFile

class NimbusFeatureYamlLookupTest : BasePlatformTestCase() {
    fun testFindsRootAndImportFeatureKeys() {
        val imported = myFixture.addFileToProject("geckoview.fml.yaml", "about: {}")
        val file =
            myFixture.configureByText(
                "nimbus.fml.yaml",
                """
                import:
                  - path: geckoview.fml.yaml
                    features:
                      pdfjs:
                        - value: {}
                features:
                  homescreen:
                    variables: {}
                """.trimIndent(),
            ) as YAMLFile

        assertEquals(listOf("homescreen", "pdfjs"), NimbusFeatureYamlLookup.featureKeys(file).map { it.keyText })
        assertSame(file, NimbusFeatureYamlLookup.sourceManifest(file, NimbusFeatureYamlLookup.featureKeys(file).first()))
        assertEquals(
            imported.virtualFile,
            NimbusFeatureYamlLookup.sourceManifest(file, NimbusFeatureYamlLookup.featureKeys(file).last())?.virtualFile,
        )
    }
}
