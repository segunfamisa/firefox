/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

import java.nio.file.Paths

// Reads the first line of the canonical version string at $topsrcdir/mobile/android/version.txt.
// The same file is consumed by mobile/android/shared-settings.gradle when computing SDK versions —
// any future move/rename of this file must touch both call sites.
internal fun readNightlyVersion(topsrcdir: String): String {
    val path = Paths.get(topsrcdir, "mobile/android/version.txt").toFile()
    return path.useLines { it.firstOrNull() ?: "" }
}
