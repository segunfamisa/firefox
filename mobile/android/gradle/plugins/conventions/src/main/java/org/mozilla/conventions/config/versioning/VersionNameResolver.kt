/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

import org.gradle.api.Project
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Resolves the versionName the convention plugin should apply for a given variant.
 *
 * Per channel:
 *   - `Nightly` returns the first line of `$topsrcdir/mobile/android/version.txt`.
 *   - `Beta` / `Release` prefer the `-PversionName` project property when present, otherwise
 *     fall back to the debug-style `1.0.yyww` name. Release builds *must* set `versionName`, but
 *     we don't enforce it here — gradle's release-variant validation is ergonomically painful
 *     in IDEs (IDEs often default to a release variant and mysteriously fail), and specifying
 *     project properties is awkward when devs just want a quick release build. So we lean lenient.
 *   - `Developer` (debug, benchmark, anything not classified above) returns the
 *     `localProperties.branchBuild.fenix.version` value when set, otherwise the same `1.0.yyww`
 *     name. Two-digit-year + week-in-year keeps the version stable across a week so we don't
 *     produce a flood of distinct versions in tools like Sentry, while still matching the
 *     changelog's per-week section boundaries.
 *
 * `clock` is injectable for tests.
 */
internal fun resolveVersionNameFor(
    project: Project,
    channel: ReleaseChannel,
    topsrcdir: String,
    branchBuildOverride: String?,
    clock: () -> Date = ::Date,
): String {
    val debugName = SimpleDateFormat("1.0.yyww", Locale.US).format(clock())
    return when (channel) {
        ReleaseChannel.Nightly -> readNightlyVersion(topsrcdir)
        ReleaseChannel.Beta, ReleaseChannel.Release -> {
            if (project.hasProperty("versionName")) project.property("versionName").toString() else debugName
        }
        ReleaseChannel.Developer -> branchBuildOverride ?: debugName
    }
}
