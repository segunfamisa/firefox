/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.home

import mozilla.components.compose.browser.toolbar.store.BrowserToolbarInteraction.BrowserToolbarEvent.Source
import mozilla.components.compose.browser.toolbar.store.BrowserToolbarStore
import mozilla.components.feature.keyboardshortcut.KeyboardShortcutCallback
import mozilla.components.feature.keyboardshortcut.KeyboardShortcutDispatcher
import mozilla.components.support.base.feature.LifecycleAwareFeature
import org.mozilla.fenix.components.AppStore
import org.mozilla.fenix.components.appstate.AppAction.SearchAction.SearchStarted
import org.mozilla.fenix.home.toolbar.TabCounterInteractions.AddNewTab
import org.mozilla.fenix.keyboard.KeyboardShortcuts

class HomeKeyboardShortcuts(
    private val dispatcher: KeyboardShortcutDispatcher?,
    private val toolbarStore: BrowserToolbarStore,
    private val appStore: AppStore,
) : LifecycleAwareFeature {
    private val callbacks: MutableList<KeyboardShortcutCallback> = mutableListOf()

    override fun start() {
        val dispatcher = dispatcher ?: return
        callbacks +=
            dispatcher.addCallback(KeyboardShortcuts.Home.AddTab) {
                toolbarStore.dispatch(AddNewTab(Source.NavigationBar))
            }
        callbacks +=
            dispatcher.addCallback(KeyboardShortcuts.Home.FocusAddressBar) {
                appStore.dispatch(SearchStarted())
            }
    }

    override fun stop() {
        callbacks.forEach { callback -> dispatcher?.removeCallback(callback) }
        callbacks.clear()
    }
}
