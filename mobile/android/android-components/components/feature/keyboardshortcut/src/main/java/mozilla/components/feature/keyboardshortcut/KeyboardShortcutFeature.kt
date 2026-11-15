/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.keyboardshortcut

import android.view.KeyEvent
import android.view.View
import androidx.lifecycle.LifecycleOwner
import mozilla.components.concept.engine.EngineView
import mozilla.components.support.base.feature.LifecycleAwareFeature

/** Receives hardware keyboard events from an [EngineView]. */
class KeyboardShortcutFeature(
    private val engineView: EngineView,
    val dispatcher: KeyboardShortcutDispatcher = KeyboardShortcutDispatcher(),
) : LifecycleAwareFeature, View.OnKeyListener {
    override fun start() {
        engineView.setOnKeyEventListener(this)
    }

    override fun stop() {
        engineView.setOnKeyEventListener(null)
        dispatcher.resetPressedKeys()
    }

    override fun onKey(view: View, keyCode: Int, event: KeyEvent): Boolean {
        return dispatcher.dispatchKeyEvent(event)
    }

    fun register(
        owner: LifecycleOwner,
        shortcut: KeyboardShortcut,
        enabled: Boolean = true,
        onShortcut: () -> Unit,
    ): KeyboardShortcutCallback = dispatcher.addCallback(owner, shortcut, enabled, onShortcut)

    fun remove(callback: KeyboardShortcutCallback) = dispatcher.removeCallback(callback)
}
