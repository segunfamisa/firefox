/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

plugins {
    `kotlin-dsl`
    alias(libs.plugins.android.lint.plugin)
}

val mozconfig = gradle.extra["mozconfig"] as Map<*, *>
val topobjdir = mozconfig["topobjdir"] as String

layout.buildDirectory.set(file("$topobjdir/gradle/build/mobile/android/fenix/plugins/keeprules"))

dependencies {
    implementation(libs.android.gradle.plugin)

    lintChecks(libs.androidx.lint)
}

gradlePlugin {
    plugins.register("AndroidTestKeepRulesPlugin") {
        id = "AndroidTestKeepRulesPlugin"
        implementationClass = "AndroidTestKeepRulesPlugin"
    }
    plugins.register("ObfuscationReportPlugin") {
        id = "ObfuscationReportPlugin"
        implementationClass = "ObfuscationReportPlugin"
    }
}
