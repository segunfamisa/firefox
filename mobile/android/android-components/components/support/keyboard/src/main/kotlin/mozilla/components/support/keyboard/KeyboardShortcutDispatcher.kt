/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.keyboard

import android.view.KeyEvent
import androidx.annotation.MainThread
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner

/** Dispatches keyboard shortcuts to registered callbacks. */
@MainThread
class KeyboardShortcutDispatcher {
    private data class KeyPress(
        val deviceId: Int,
        val keyCode: Int,
        val downTime: Long,
    )

    /** Associates a callback with an optional lifecycle and reports when that lifecycle is destroyed. */
    private class Registration(
        val callback: KeyboardShortcutCallback,
        val lifecycle: Lifecycle? = null,
        private val onDestroyed: (Registration) -> Unit,
    ) : LifecycleEventObserver {
        val isActive: Boolean
            get() = lifecycle == null || lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)

        override fun onStateChanged(source: LifecycleOwner, event: Lifecycle.Event) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                onDestroyed(this)
            }
        }

        fun detach() {
            lifecycle?.removeObserver(this)
        }
    }

    private val registrations = mutableListOf<Registration>()
    private val consumedPresses = mutableSetOf<KeyPress>()

    /** Add a callback to receive keyboard shortcuts. */
    fun addCallback(callback: KeyboardShortcutCallback) {
        registrations += Registration(callback, onDestroyed = ::removeRegistration)
    }

    /** Add a callback that participates while [owner] is at least started. */
    fun addCallback(owner: LifecycleOwner, callback: KeyboardShortcutCallback) {
        val lifecycle = owner.lifecycle
        if (lifecycle.currentState == Lifecycle.State.DESTROYED) return

        val registration = Registration(callback, lifecycle, onDestroyed = { removeRegistration(it) })
        registrations += registration
        lifecycle.addObserver(registration)
    }

    /** Register [onShortcut] and return its callback for enablement and removal. */
    fun addCallback(
        shortcut: KeyboardShortcut,
        enabled: Boolean = true,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = createCallback(shortcut, enabled, onShortcut).also(::addCallback)

    /** Register [onShortcut] for the lifetime of [owner]. */
    fun addCallback(
        owner: LifecycleOwner,
        shortcut: KeyboardShortcut,
        enabled: Boolean = true,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = createCallback(shortcut, enabled, onShortcut).also { addCallback(owner, it) }

    /** Remove a callback. */
    fun removeCallback(callback: KeyboardShortcutCallback) {
        registrations.filter { it.callback === callback }.forEach { removeRegistration(it) }
    }

    /** Clear consumed presses when window focus is lost. */
    fun resetPressedKeys() {
        consumedPresses.clear()
    }

    /** Remove all registrations and clear consumed presses. */
    fun dispose() {
        registrations.toList().forEach(::removeRegistration)
        resetPressedKeys()
    }

    /** Dispatch a [KeyEvent]. */
    fun dispatchKeyEvent(event: KeyEvent): Boolean {
        val press =
            KeyPress(
                deviceId = event.deviceId,
                keyCode = event.keyCode,
                downTime = event.downTime,
            )

        return when (event.action) {
            KeyEvent.ACTION_UP -> consumedPresses.remove(press)
            KeyEvent.ACTION_DOWN -> event.maybeDispatchKeyPress(press)
            else -> false
        }
    }

    private fun removeRegistration(registration: Registration) {
        registrations.remove(registration)
        registration.detach()
    }

    private fun createCallback(
        shortcut: KeyboardShortcut,
        enabled: Boolean,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = object : KeyboardShortcutCallback(shortcut, enabled) {
        override fun handleKeyboardShortcut() = onShortcut()
    }

    private fun KeyEvent.maybeDispatchKeyPress(press: KeyPress): Boolean {
        val event = this
        if (press in consumedPresses) return true
        if (event.repeatCount != 0) return false

        val callback =
            registrations
                .lastOrNull {
                    it.isActive && it.callback.isEnabled && event.matches(it.callback.shortcut)
                }
                ?.callback ?: return false
        consumedPresses += press
        callback.handleKeyboardShortcut()

        return true
    }
}
