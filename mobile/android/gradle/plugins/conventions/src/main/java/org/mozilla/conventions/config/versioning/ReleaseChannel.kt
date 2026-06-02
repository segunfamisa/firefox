/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

internal enum class ReleaseChannel {
    Developer,
    Nightly,
    Beta,
    Release,
}

internal fun releaseChannelOf(buildTypeName: String?): ReleaseChannel = when (buildTypeName) {
    "nightly" -> ReleaseChannel.Nightly
    "beta" -> ReleaseChannel.Beta
    "release" -> ReleaseChannel.Release
    else -> ReleaseChannel.Developer
}
