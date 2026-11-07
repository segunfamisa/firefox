/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.appservices.tooling.nimbus.ide

import java.io.File

/**
 * Consumer-side replica of the Nimbus Gradle plugin's tooling-model contract.
 *
 * It is intentionally structurally identical to the provider interface while
 * the two plugins remain separate builds.
 */
interface NimbusIdeModel {
    fun getRootManifestFile(): File
    fun getManifestDependencies(): List<File>
    fun getVariants(): List<NimbusIdeVariant>
}

/** Consumer-side replica of a generated Kotlin source set for one Nimbus variant. */
interface NimbusIdeVariant {
    fun getName(): String
    fun getChannel(): String
    fun getGenerationTaskPath(): String
    fun getGeneratedKotlinSourceDirectory(): File
}
