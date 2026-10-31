/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard.compose

import android.content.Context
import android.content.ContextWrapper
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.lifecycle.compose.LocalLifecycleOwner
import mozilla.components.support.keyboard.KeyboardShortcut
import mozilla.components.support.keyboard.KeyboardShortcutCallback
import mozilla.components.support.keyboard.KeyboardShortcutDispatcher
import mozilla.components.support.keyboard.KeyboardShortcutDispatcherOwner
import mozilla.components.support.keyboard.findViewTreeKeyboardShortcutDispatcherOwner

/** Overrides the dispatcher inherited from the host View tree. */
val LocalKeyboardShortcutDispatcher = staticCompositionLocalOf<KeyboardShortcutDispatcher?> { null }

/** Register a shortcut while the current lifecycle is started. Last registered enabled callback wins. */
@Composable
fun KeyboardShortcutHandler(
    shortcut: KeyboardShortcut,
    enabled: Boolean = true,
    onShortcut: () -> Unit,
) {
    val dispatcher = currentKeyboardShortcutDispatcher()
    val owner = LocalLifecycleOwner.current
    val currentOnShortcut = rememberUpdatedState(onShortcut)
    val callback = remember(shortcut) {
        object : KeyboardShortcutCallback(shortcut, enabled) {
            override fun handleKeyboardShortcut() = currentOnShortcut.value.invoke()
        }
    }

    SideEffect { callback.isEnabled = enabled }
    DisposableEffect(dispatcher, owner, callback) {
        dispatcher.addCallback(owner, callback)
        onDispose { dispatcher.removeCallback(callback) }
    }
}

@Composable
internal fun currentKeyboardShortcutDispatcher(): KeyboardShortcutDispatcher {
    val provided = LocalKeyboardShortcutDispatcher.current
    val view = LocalView.current
    val context = LocalContext.current
    return checkNotNull(
        provided ?: view.findViewTreeKeyboardShortcutDispatcherOwner()?.keyboardShortcutDispatcher
            ?: context.findKeyboardShortcutDispatcherOwner()?.keyboardShortcutDispatcher,
    ) { "No KeyboardShortcutDispatcherOwner was provided by the host" }
}

private fun Context.findKeyboardShortcutDispatcherOwner(): KeyboardShortcutDispatcherOwner? =
    generateSequence(this) { (it as? ContextWrapper)?.baseContext }
        .filterIsInstance<KeyboardShortcutDispatcherOwner>()
        .firstOrNull()
