/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard

/**
 * Callback for handling a keyboard shortcut.
 *
 * @property shortcut [KeyboardShortcut] to handle
 * @property isEnabled whether or not the shortcut is enabled in this callback
 */
abstract class KeyboardShortcutCallback(
    val shortcut: KeyboardShortcut,
    var isEnabled: Boolean = true,
) {
    /** Called when the shortcut is detected. */
    abstract fun handleKeyboardShortcut()
}
