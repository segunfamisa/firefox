/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard.compose

import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.focus.onFocusChanged
import androidx.lifecycle.compose.LocalLifecycleOwner
import mozilla.components.support.keyboard.KeyboardShortcut
import mozilla.components.support.keyboard.KeyboardShortcutCallback

/**
 * Register a shortcut while the observed focus target has focus, including focus in its descendants.
 * Place before the target's focus modifier. This modifier does not request focus or add a focus stop.
 */
fun Modifier.keyboardShortcut(
    shortcut: KeyboardShortcut,
    enabled: Boolean = true,
    onShortcut: () -> Unit,
): Modifier = composed {
    val dispatcher = currentKeyboardShortcutDispatcher()
    val owner = LocalLifecycleOwner.current
    val currentOnShortcut = rememberUpdatedState(onShortcut)
    val currentEnabled = rememberUpdatedState(enabled)
    val focus = remember { ShortcutFocusState() }
    val callback = remember(shortcut) {
        object : KeyboardShortcutCallback(shortcut, false) {
            override fun handleKeyboardShortcut() = currentOnShortcut.value.invoke()
        }
    }

    SideEffect { callback.isEnabled = enabled && focus.hasFocus }
    DisposableEffect(dispatcher, owner, callback) {
        dispatcher.addCallback(owner, callback)
        onDispose { dispatcher.removeCallback(callback) }
    }

    Modifier.onFocusChanged {
        focus.hasFocus = it.hasFocus
        callback.isEnabled = currentEnabled.value && it.hasFocus
    }
}

private class ShortcutFocusState {
    var hasFocus = false
}
