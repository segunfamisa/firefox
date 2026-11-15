/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.browser

import android.view.KeyEvent
import android.view.View
import mozilla.components.browser.state.store.BrowserStore
import mozilla.components.concept.engine.EngineView
import mozilla.components.feature.keyboardshortcut.KeyboardShortcutCallback
import mozilla.components.feature.keyboardshortcut.KeyboardShortcutDispatcher
import mozilla.components.feature.session.SessionUseCases
import mozilla.components.feature.tabs.TabsUseCases
import mozilla.components.support.base.feature.LifecycleAwareFeature
import org.mozilla.fenix.components.AppStore
import org.mozilla.fenix.components.appstate.AppAction.SearchAction.SearchStarted
import org.mozilla.fenix.keyboard.KeyboardShortcuts

/** Registers Fenix browser actions on a keyboard shortcut dispatcher. */
class BrowserKeyboardShortcutFeature(
    private val store: BrowserStore,
    private val appStore: AppStore,
    private val dispatcher: KeyboardShortcutDispatcher,
    private val sessionUseCases: SessionUseCases,
    private val tabsUseCases: TabsUseCases,
    private val engineView: EngineView,
    private val addTab: (() -> Unit)?,
) : LifecycleAwareFeature, View.OnKeyListener {
    private val callbacks = mutableListOf<KeyboardShortcutCallback>()

    override fun start() {
        engineView.setOnKeyEventListener(this)

        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.GoBack) { doGoBack() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.GoForward) { doGoForward() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.StopLoad) { doStop() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.AddTab) { addTab?.invoke() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.Reload) { doReload() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.CloseTab) { doCloseTab() }
        callbacks += dispatcher.addCallback(KeyboardShortcuts.Browser.FocusAddressBar) { doFocusAddressBar() }
    }

    override fun stop() {
        engineView.setOnKeyEventListener(null)
        callbacks.forEach(dispatcher::removeCallback)
        callbacks.clear()
    }

    override fun onKey(view: View, keyCode: Int, event: KeyEvent): Boolean {
        return dispatcher.dispatchKeyEvent(event)
    }

    private fun doGoBack() {
        store.state.selectedTabId?.let { sessionUseCases.goBack(it) }
    }

    private fun doGoForward() {
        store.state.selectedTabId?.let { sessionUseCases.goForward(it) }
    }

    private fun doReload() {
        store.state.selectedTabId?.let { sessionUseCases.reload(it) }
    }

    private fun doStop() {
        store.state.selectedTabId?.let { sessionUseCases.stopLoading(it) }
    }

    private fun doCloseTab() {
        store.state.selectedTabId?.let { tabsUseCases.removeTab(it) }
    }

    private fun doFocusAddressBar() {
        appStore.dispatch(SearchStarted())
    }
}
