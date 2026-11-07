/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import org.jetbrains.intellij.platform.gradle.TestFrameworkType

plugins {
    `kotlin-dsl`
    alias(libs.plugins.intellij.platform)
}

repositories {
    mavenCentral()

    intellijPlatform {
        defaultRepositories()
    }
}

dependencies {
    testImplementation(libs.junit4)

    intellijPlatform {
        local("/Users/sf/Applications/Android Studio Stable.app")
        bundledPlugin("com.intellij.gradle")
        bundledPlugin("com.intellij.java")
        bundledPlugin("org.jetbrains.plugins.yaml")
        testFramework(TestFrameworkType.Platform)
    }
}

intellijPlatform {
    pluginConfiguration {
        ideaVersion {
            sinceBuild = "262"
        }
    }
}

tasks.named("testUi").get()
