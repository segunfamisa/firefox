/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.keyboardshortcut

import android.view.View

interface KeyboardShortcutDispatcherOwner {
    val keyboardShortcutDispatcher: KeyboardShortcutDispatcher
}

fun View.setViewTreeKeyboardShortcutDispatcherOwner(owner: KeyboardShortcutDispatcherOwner?) {
    setTag(R.id.keyboard_shortcut_dispatcher_owner, owner)
}

fun View.findViewTreeKeyboardShortcutDispatcherOwner(): KeyboardShortcutDispatcherOwner? {
    var current: View? = this
    while (current != null) {
        (current.getTag(R.id.keyboard_shortcut_dispatcher_owner) as? KeyboardShortcutDispatcherOwner)?.let {
            return it
        }
        current = current.parent as? View
    }
    return null
}

fun View.findShortcutDispatcher(): KeyboardShortcutDispatcher? =
    findViewTreeKeyboardShortcutDispatcherOwner()?.keyboardShortcutDispatcher
