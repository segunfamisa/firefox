/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard

import android.view.KeyEvent

/** A keyboard shortcut. */
sealed interface KeyboardShortcut {
    /** A collection of keycodes for this shortcut. See [android.view.KeyEvent.getKeyCode] */
    val keyCodes: Collection<Int>

    /** Whether the control modifier is required for the shortcut */
    val ctrl: Boolean

    /** Whether the shift modifier is required for the shortcut */
    val shift: Boolean

    /** Whether the alt modifier is required for the shortcut */
    val alt: Boolean

    /** Whether the meta modifier is required for the shortcut. */
    val meta: Boolean
}

/** A simple keyboard shortcut where order of keys does not matter */
data class SimpleKeyboardShortcut(
    val key: Int,
    override val ctrl: Boolean = false,
    override val shift: Boolean = false,
    override val alt: Boolean = false,
    override val meta: Boolean = false,
) : KeyboardShortcut {
    override val keyCodes: Set<Int> = setOf(key)
}

/** Returns true if the [KeyEvent] matches the [shortcut]. */
fun KeyEvent.matches(shortcut: KeyboardShortcut): Boolean {
    return when (shortcut) {
        is SimpleKeyboardShortcut -> {
            shortcut.keyCodes.contains(keyCode) &&
                shortcut.ctrl == isCtrlPressed &&
                shortcut.alt == isAltPressed &&
                shortcut.shift == isShiftPressed &&
                shortcut.meta == isMetaPressed
        }
    }
}
