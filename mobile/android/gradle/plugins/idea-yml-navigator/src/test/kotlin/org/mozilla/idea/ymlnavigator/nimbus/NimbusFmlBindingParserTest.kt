/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.testFramework.fixtures.BasePlatformTestCase
import org.jetbrains.yaml.psi.YAMLFile

class NimbusFmlBindingParserTest : BasePlatformTestCase() {
    fun testParsesAboutKotlinFormat() {
        val file =
            myFixture.configureByText(
                "nimbus.fml.yaml",
                """
                about:
                  kotlin:
                    package: org.mozilla.fenix
                    class: .nimbus.FxNimbus
                """.trimIndent(),
            ) as YAMLFile

        assertEquals(
            NimbusKotlinBinding(
                packageName = "org.mozilla.fenix",
                wrapperClassName = ".nimbus.FxNimbus",
            ),
            NimbusFmlBindingParser.parse(file),
        )
    }

    fun testParsesAboutAndroidFormat() {
        val file =
            myFixture.configureByText(
                "geckoview.fml.yaml",
                """
                about:
                  android:
                    package: mozilla.components.browser.engine.gecko
                    class: .GeckoNimbus
                """.trimIndent(),
            ) as YAMLFile

        assertEquals(
            NimbusKotlinBinding(
                packageName = "mozilla.components.browser.engine.gecko",
                wrapperClassName = ".GeckoNimbus",
            ),
            NimbusFmlBindingParser.parse(file),
        )
    }

    fun testReturnsNullWithoutAnAndroidKotlinBinding() {
        val file =
            myFixture.configureByText(
                "unconfigured.fml.yaml",
                """
                about:
                  description: No generated Android binding
                """.trimIndent(),
            ) as YAMLFile

        assertNull(NimbusFmlBindingParser.parse(file))
    }

    fun testReturnsNullWithBothAndroidAndKotlinBindings() {
        val file =
            myFixture.configureByText(
                "ambiguous.fml.yaml",
                """
                about:
                  android:
                    package: org.mozilla.example
                    class: .AndroidNimbus
                  kotlin:
                    package: org.mozilla.example
                    class: .KotlinNimbus
                """.trimIndent(),
            ) as YAMLFile

        assertNull(NimbusFmlBindingParser.parse(file))
    }
}
