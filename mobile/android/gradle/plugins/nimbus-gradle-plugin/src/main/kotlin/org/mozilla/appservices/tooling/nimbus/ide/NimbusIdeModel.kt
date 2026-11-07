/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.appservices.tooling.nimbus.ide

import java.io.File

/**
 * Gradle tooling model consumed by IDE integrations that navigate Nimbus FML manifests and their generated Kotlin
 * sources.
 */
interface NimbusIdeModel {
    /** Gets the root manifest file declared in the Nimbus plugin configuration. */
    fun getRootManifestFile(): File

    /** Gets the list of manifest files that the root manifest depends on. */
    fun getManifestDependencies(): List<File>

    /** Gets the Android variants and their Nimbus generation metadata. */
    fun getVariants(): List<NimbusIdeVariant>
}

/** Describes the generated Kotlin output for one configured Android variant. */
interface NimbusIdeVariant {
    /** Gets the name of the Android variant (e.g. "debug", "release"). */
    fun getName(): String

    /** Gets the Nimbus channel for this variant. */
    fun getChannel(): String

    /** Gets the path of the Gradle task that generates the Kotlin sources. */
    fun getGenerationTaskPath(): String

    /** Gets the directory where the generated Kotlin sources are written. */
    fun getGeneratedKotlinSourceDirectory(): File
}
