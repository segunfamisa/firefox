/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Test

class NimbusModelIndexServiceTest {
    @Test
    fun prefersTheModuleThatDeclaresTheManifestAsItsRoot() {
        val geckoViewManifest = File("/tmp/geckoview.fml.yaml")
        val fenix = module(":fenix", File("/tmp/nimbus.fml.yaml"), listOf(geckoViewManifest))
        val geckoView = module(":geckoview", geckoViewManifest)
        val index = NimbusModelIndexService()

        index.replaceAll(listOf(fenix, geckoView))

        assertEquals(geckoView, index.findOwner(geckoViewManifest))
    }

    private fun module(
        projectPath: String,
        rootManifestFile: File,
        manifestDependencies: List<File> = emptyList(),
    ) = NimbusModuleData(
        gradleProjectIdentity = GradleProjectIdentity(File("/tmp"), projectPath),
        rootManifestFile = rootManifestFile,
        manifestDependencies = manifestDependencies,
        variants = emptyList(),
    )
}
