/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.keyboardshortcut

import android.view.KeyEvent

/** A key and its required modifier state. */
data class KeyboardShortcut(
    val keyCode: Int,
    val ctrl: Boolean = false,
    val alt: Boolean = false,
    val shift: Boolean = false,
    val meta: Boolean = false,
)

internal fun KeyEvent.matches(shortcut: KeyboardShortcut): Boolean =
    keyCode == shortcut.keyCode &&
        isCtrlPressed == shortcut.ctrl &&
        isAltPressed == shortcut.alt &&
        isShiftPressed == shortcut.shift &&
        isMetaPressed == shortcut.meta
