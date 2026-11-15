/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.keyboardshortcut

import android.view.KeyEvent
import androidx.annotation.MainThread
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner

/** Dispatches keyboard shortcuts to lifecycle-bound callbacks. */
@MainThread
class KeyboardShortcutDispatcher {
    private data class KeyPress(
        val deviceId: Int,
        val keyCode: Int,
        val downTime: Long,
    )

    private class Registration(
        val callback: KeyboardShortcutCallback,
        val owner: LifecycleOwner?,
        private val onDestroyed: (Registration) -> Unit,
    ) : LifecycleEventObserver {
        override fun onStateChanged(source: LifecycleOwner, event: Lifecycle.Event) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                onDestroyed(this)
            }
        }
    }

    private val registrations = mutableListOf<Registration>()
    private val consumedPresses = mutableSetOf<KeyPress>()

    fun addCallback(
        shortcut: KeyboardShortcut,
        enabled: Boolean = true,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = addCallbackInternal(null, shortcut, enabled, onShortcut)

    fun addCallback(
        owner: LifecycleOwner,
        shortcut: KeyboardShortcut,
        enabled: Boolean = true,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = addCallbackInternal(owner, shortcut, enabled, onShortcut)

    private fun addCallbackInternal(
        owner: LifecycleOwner?,
        shortcut: KeyboardShortcut,
        enabled: Boolean,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback {
        val callback = KeyboardShortcutCallback(shortcut, enabled, onShortcut)
        if (owner?.lifecycle?.currentState == Lifecycle.State.DESTROYED) {
            return callback
        }

        val registration = Registration(callback, owner, ::removeRegistration)
        registrations += registration
        owner?.lifecycle?.addObserver(registration)
        return callback
    }

    fun removeCallback(callback: KeyboardShortcutCallback) {
        registrations.filter { it.callback === callback }.forEach { removeRegistration(it) }
    }

    fun resetPressedKeys() {
        consumedPresses.clear()
    }

    fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (registrations.isEmpty() && consumedPresses.isEmpty()) return false

        val press = KeyPress(event.deviceId, event.keyCode, event.downTime)
        return when (event.action) {
            KeyEvent.ACTION_DOWN -> dispatchDown(event, press)
            KeyEvent.ACTION_UP -> consumedPresses.remove(press)
            else -> false
        }
    }

    private fun dispatchDown(event: KeyEvent, press: KeyPress): Boolean {
        if (press in consumedPresses) return true
        if (event.repeatCount != 0) return false

        val registration =
            registrations.lastOrNull {
                it.callback.enabled &&
                    (it.owner == null || it.owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) &&
                    event.matches(it.callback.shortcut)
            } ?: return false

        consumedPresses += press
        registration.callback.invoke()
        return true
    }

    private fun removeRegistration(registration: Registration) {
        registrations.remove(registration)
        registration.owner?.lifecycle?.removeObserver(registration)
    }
}

class KeyboardShortcutCallback
internal constructor(
    val shortcut: KeyboardShortcut,
    var enabled: Boolean,
    private val onShortcut: () -> Unit,
) {

    fun invoke() = onShortcut()
}
