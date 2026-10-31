/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.components.keyboard

import android.view.KeyEvent
import mozilla.components.support.keyboard.SimpleKeyboardShortcut

/** Keyboard bindings shared by the browser's UI integrations. */
internal object BrowserKeyboardShortcuts {
    val FocusAddressBar = SimpleKeyboardShortcut(KeyEvent.KEYCODE_L, ctrl = true)
    val FindInPage = SimpleKeyboardShortcut(KeyEvent.KEYCODE_F, ctrl = true)
}
