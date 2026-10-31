/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard

import android.view.View

/** Set the owner inherited by this view and its descendants. */
fun View.setViewTreeKeyboardShortcutDispatcherOwner(owner: KeyboardShortcutDispatcherOwner?) {
    setTag(R.id.keyboard_shortcut_dispatcher_owner, owner)
}

/** Find the nearest owner on this view or one of its ancestors. */
fun View.findViewTreeKeyboardShortcutDispatcherOwner(): KeyboardShortcutDispatcherOwner? =
    generateSequence(this) { it.parent as? View }
        .mapNotNull { it.getTag(R.id.keyboard_shortcut_dispatcher_owner) as? KeyboardShortcutDispatcherOwner }
        .firstOrNull()
