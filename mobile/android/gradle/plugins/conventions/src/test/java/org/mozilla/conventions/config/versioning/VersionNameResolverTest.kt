/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

import org.gradle.testfixtures.ProjectBuilder
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class VersionNameResolverTest {

    @TempDir
    lateinit var tempDir: File

    private fun project() = ProjectBuilder.builder().build()

    private fun dateOf(yyyyMMdd: String): Date =
        SimpleDateFormat("yyyyMMdd", Locale.US).parse(yyyyMMdd)

    private fun debugName(clock: Date) =
        SimpleDateFormat("1.0.yyww", Locale.US).format(clock)

    @Test
    fun `Nightly returns first line of version_txt`() {
        File(tempDir, "mobile/android").mkdirs()
        File(tempDir, "mobile/android/version.txt").writeText("142.0a1\nignored second line\n")
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Nightly,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
        )
        assertEquals("142.0a1", name)
    }

    @Test
    fun `Beta with -PversionName uses that property`() {
        val project = project()
        project.extensions.extraProperties["versionName"] = "129.0.1"
        val name = resolveVersionNameFor(
            project = project,
            channel = ReleaseChannel.Beta,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
        )
        assertEquals("129.0.1", name)
    }

    @Test
    fun `Beta without -PversionName falls back to 1_0_yyww`() {
        val clock = dateOf("20260108")
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Beta,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
            clock = { clock },
        )
        assertEquals(debugName(clock), name)
    }

    @Test
    fun `Release with -PversionName uses that property`() {
        val project = project()
        project.extensions.extraProperties["versionName"] = "130.0"
        val name = resolveVersionNameFor(
            project = project,
            channel = ReleaseChannel.Release,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
        )
        assertEquals("130.0", name)
    }

    @Test
    fun `Release without -PversionName falls back to 1_0_yyww`() {
        val clock = dateOf("20260108")
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Release,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
            clock = { clock },
        )
        assertEquals(debugName(clock), name)
    }

    @Test
    fun `Developer without branchBuild override returns 1_0_yyww`() {
        val clock = dateOf("20260108")
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Developer,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = null,
            clock = { clock },
        )
        assertEquals(debugName(clock), name)
    }

    @Test
    fun `Developer with branchBuild override prefers the override`() {
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Developer,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = "my-branch.0",
        )
        assertEquals("my-branch.0", name)
    }

    @Test
    fun `Nightly ignores branchBuild override`() {
        File(tempDir, "mobile/android").mkdirs()
        File(tempDir, "mobile/android/version.txt").writeText("142.0a1\n")
        val name = resolveVersionNameFor(
            project = project(),
            channel = ReleaseChannel.Nightly,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = "my-branch.0",
        )
        assertEquals("142.0a1", name)
    }

    @Test
    fun `Release ignores branchBuild override`() {
        val project = project()
        project.extensions.extraProperties["versionName"] = "130.0"
        val name = resolveVersionNameFor(
            project = project,
            channel = ReleaseChannel.Release,
            topsrcdir = tempDir.absolutePath,
            branchBuildOverride = "my-branch.0",
        )
        assertEquals("130.0", name)
    }
}
