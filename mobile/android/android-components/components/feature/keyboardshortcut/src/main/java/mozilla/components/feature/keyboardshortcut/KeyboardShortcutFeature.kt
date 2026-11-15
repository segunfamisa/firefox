/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.keyboardshortcut

import android.view.KeyEvent
import android.view.View
import mozilla.components.browser.state.store.BrowserStore
import mozilla.components.concept.engine.EngineView
import mozilla.components.feature.session.SessionUseCases
import mozilla.components.feature.tabs.TabsUseCases
import mozilla.components.support.base.feature.LifecycleAwareFeature

/**
 * Feature implementation to handle keyboard shortcut for browsers.
 */
@Suppress("LongParameterList")
class KeyboardShortcutFeature(
    private val store: BrowserStore,
    private val engineView: EngineView,
    private val sessionUseCases: SessionUseCases,
    private val tabsUseCases: TabsUseCases,
) : LifecycleAwareFeature, View.OnKeyListener {
    override fun start() {
        engineView.setOnKeyListener(this)
    }

    override fun stop() {
        engineView.setOnKeyListener(null)
    }

    override fun onKey(view: View, keyCode: Int, event: KeyEvent): Boolean {
        if (event.getAction() != KeyEvent.ACTION_DOWN || !event.isCtrlPressed() || event.getRepeatCount() != 0) {
            return false
        }

        val handled = when (keyCode) {
            KeyEvent.KEYCODE_LEFT_BRACKET -> doGoBack()
            KeyEvent.KEYCODE_RIGHT_BRACKET -> doGoForward()
            KeyEvent.KEYCODE_PERIOD -> doStop()
            KeyEvent.KEYCODE_N -> doAddTab()
            KeyEvent.KEYCODE_R -> doReload()
            KeyEvent.KEYCODE_W -> doCloseTab()
            else -> false
        }

        return handled
    }

    private fun doGoBack(): Boolean {
        val sessionId = store.state.selectedTabId ?: return false
        sessionUseCases.goBack(sessionId)
        return true
    }

    private fun doGoForward(): Boolean {
        val sessionId = store.state.selectedTabId ?: return false
        sessionUseCases.goForward(sessionId)
        return true
    }

    private fun doReload(): Boolean {
        val sessionId = store.state.selectedTabId ?: return false
        sessionUseCases.reload(sessionId)
        return true
    }

    private fun doStop(): Boolean {
        val sessionId = store.state.selectedTabId ?: return false
        sessionUseCases.stopLoading(sessionId)
        return true
    }

    private fun doAddTab(): Boolean {
        tabsUseCases.addTab(url = "https://www.firefox.com", selectTab = true)
        return true
    }

    private fun doCloseTab(): Boolean {
        val sessionId = store.state.selectedTabId ?: return false
        tabsUseCases.removeTab(sessionId)
        return true
    }
}
