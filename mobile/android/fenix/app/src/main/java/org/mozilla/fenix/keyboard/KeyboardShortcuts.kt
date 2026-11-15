/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.keyboard

import android.view.KeyEvent
import mozilla.components.feature.keyboardshortcut.KeyboardShortcut

object KeyboardShortcuts {
    object Browser {
        val GoBack = KeyboardShortcut(KeyEvent.KEYCODE_LEFT_BRACKET, ctrl = true)
        val GoForward = KeyboardShortcut(KeyEvent.KEYCODE_RIGHT_BRACKET, ctrl = true)
        val Reload = KeyboardShortcut(KeyEvent.KEYCODE_R, ctrl = true)
        val StopLoad = KeyboardShortcut(KeyEvent.KEYCODE_PERIOD, ctrl = true)
        val AddTab = KeyboardShortcut(KeyEvent.KEYCODE_T, ctrl = true)
        val CloseTab = KeyboardShortcut(KeyEvent.KEYCODE_W, ctrl = true)
        val FocusAddressBar = KeyboardShortcut(KeyEvent.KEYCODE_L, ctrl = true)
    }

    object Home {
        val AddTab = KeyboardShortcut(KeyEvent.KEYCODE_T, ctrl = true)
        val CloseTab = KeyboardShortcut(KeyEvent.KEYCODE_W, ctrl = true)
        val FocusAddressBar = KeyboardShortcut(KeyEvent.KEYCODE_L, ctrl = true)
    }
}
