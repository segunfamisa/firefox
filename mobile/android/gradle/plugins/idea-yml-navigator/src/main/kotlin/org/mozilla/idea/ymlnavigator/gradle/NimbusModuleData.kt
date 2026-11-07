/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.idea.ymlnavigator.gradle

import com.intellij.openapi.externalSystem.model.Key
import com.intellij.openapi.externalSystem.model.ProjectKeys
import java.io.File
import java.io.Serializable

/** Uniquely identifies a Gradle project, including across composite builds. */
data class GradleProjectIdentity(
    val buildRootDirectory: File,
    val projectPath: String,
) : Serializable

/** Configuration imported for a Gradle project that applies the Nimbus plugin. */
data class NimbusModuleData(
    val gradleProjectIdentity: GradleProjectIdentity,
    val rootManifestFile: File,
    val manifestDependencies: List<File>,
    val variants: List<NimbusVariant>,
) : Serializable {

    companion object {
        val KEY =
            Key.create(
                /* dataClass = */ NimbusModuleData::class.java,
                /* processingWeight = */ ProjectKeys.MODULE.processingWeight + 1,
            )
    }

    val inputFiles: Set<File>
        get() = buildSet {
            add(rootManifestFile)
            addAll(manifestDependencies)
        }
}

/** Describes the Nimbus-generated Kotlin output for one Android variant. */
data class NimbusVariant(
    val name: String,
    val channel: String,
    val generationTaskPath: String,
    val generatedKotlinSourceDirectory: File,
) : Serializable
