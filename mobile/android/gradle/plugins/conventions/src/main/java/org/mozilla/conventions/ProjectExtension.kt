/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions

import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.Property

interface ProjectExtension {
    val androidComponentsProject: Property<Boolean>
    val ktlintSourcePaths: ListProperty<String>

    // Opt-in for the Fenix-style versioning convention (Fennec versionCode + per-channel
    // versionName). Today only `mobile/android/fenix/app` sets this — Focus and the
    // android-components library modules deliberately leave it false.
    val applyVersioning: Property<Boolean>
}
