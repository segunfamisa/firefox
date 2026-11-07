/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.nimbus

import com.intellij.testFramework.fixtures.BasePlatformTestCase
import java.io.File
import org.jetbrains.yaml.psi.YAMLFile
import org.mozilla.idea.ymlnavigator.gradle.GradleProjectIdentity
import org.mozilla.idea.ymlnavigator.gradle.NimbusModuleData
import org.mozilla.idea.ymlnavigator.gradle.NimbusVariant

class NimbusGeneratedKotlinQueryTest : BasePlatformTestCase() {
    fun testReturnsMissingGeneratedKotlinForAnOwnedFenixManifest() {
        val outputRoot = File("/tmp/nimbus-generated")
        val variant = NimbusVariant("debug", "debug", ":app:nimbusFeaturesDebug", outputRoot)
        val owner =
            NimbusModuleData(
                gradleProjectIdentity = GradleProjectIdentity(File("/tmp"), ":app"),
                rootManifestFile = File("/tmp/nimbus.fml.yaml"),
                manifestDependencies = emptyList(),
                variants = listOf(variant),
            )
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
            NimbusGeneratedKotlinQueryResult.Located(
                owner = owner,
                binding = NimbusKotlinBinding("org.mozilla.fenix", ".nimbus.FxNimbus"),
                generatedKotlin =
                    GeneratedKotlinClassLookup.Missing,
            ),
            NimbusGeneratedKotlinQuery({ owner }) { _, _ -> GeneratedKotlinClassLookup.Missing }.locate(file, variant),
        )
    }

    fun testReturnsNotNimbusInputWhenTheYamlFileHasNoOwner() {
        val file =
            myFixture.configureByText(
                "unowned.yaml",
                """
                about:
                  kotlin:
                    package: org.mozilla.fenix
                    class: .nimbus.FxNimbus
                """.trimIndent(),
            ) as YAMLFile

        assertEquals(
            NimbusGeneratedKotlinQueryResult.NotNimbusInput,
            NimbusGeneratedKotlinQuery({ null }) { _, _ -> GeneratedKotlinClassLookup.Missing }.locate(
                file,
                NimbusVariant("debug", "debug", ":app:nimbusFeaturesDebug", File("/tmp/nimbus-generated")),
            ),
        )
    }

    fun testReturnsInvalidBindingForAnOwnedManifestWithoutKotlinBinding() {
        val variant = NimbusVariant("debug", "debug", ":app:nimbusFeaturesDebug", File("/tmp/nimbus-generated"))
        val owner =
            NimbusModuleData(
                gradleProjectIdentity = GradleProjectIdentity(File("/tmp"), ":app"),
                rootManifestFile = File("/tmp/nimbus.fml.yaml"),
                manifestDependencies = emptyList(),
                variants = listOf(variant),
            )
        val file =
            myFixture.configureByText(
                "nimbus.fml.yaml",
                """
                about:
                  description: No generated Android binding
                """.trimIndent(),
            ) as YAMLFile

        assertEquals(
            NimbusGeneratedKotlinQueryResult.InvalidBinding,
            NimbusGeneratedKotlinQuery({ owner }) { _, _ -> GeneratedKotlinClassLookup.Missing }.locate(file, variant),
        )
    }

    fun testReturnsVariantNotOwnedForAVariantFromAnotherModule() {
        val ownerVariant = NimbusVariant("debug", "debug", ":app:nimbusFeaturesDebug", File("/tmp/nimbus-generated"))
        val owner =
            NimbusModuleData(
                gradleProjectIdentity = GradleProjectIdentity(File("/tmp"), ":app"),
                rootManifestFile = File("/tmp/nimbus.fml.yaml"),
                manifestDependencies = emptyList(),
                variants = listOf(ownerVariant),
            )
        val foreignVariant = NimbusVariant("debug", "debug", ":other:nimbusFeaturesDebug", File("/tmp/other-generated"))
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
            NimbusGeneratedKotlinQueryResult.VariantNotOwned,
            NimbusGeneratedKotlinQuery({ owner }) { _, _ -> GeneratedKotlinClassLookup.Missing }.locate(file, foreignVariant),
        )
    }
}
