/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.components.keyboard

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.compose.currentStateAsState
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import mozilla.components.compose.browser.toolbar.store.BrowserToolbarStore
import mozilla.components.lib.state.ext.observeAsComposableState
import mozilla.components.support.keyboard.compose.KeyboardShortcutHandler

/** Register address-bar editing and return the editor's focus request counter. */
@Composable
internal fun rememberAddressBarShortcutFocusRequest(
    toolbarStore: BrowserToolbarStore,
    navController: NavController,
    destinationId: Int,
    enabled: Boolean = true,
): Int {
    val entry by navController.currentBackStackEntryAsState()
    val lifecycleState by LocalLifecycleOwner.current.lifecycle.currentStateAsState()
    val toolbarState by toolbarStore.observeAsComposableState { it }
    var focusRequest by remember { mutableIntStateOf(0) }

    KeyboardShortcutHandler(
        shortcut = BrowserKeyboardShortcuts.FocusAddressBar,
        enabled =
            enabled &&
                entry?.destination?.id == destinationId &&
                lifecycleState.isAtLeast(Lifecycle.State.RESUMED) &&
                (toolbarState.isEditMode() || toolbarState.displayState.pageOrigin.onClick != null),
    ) {
        if (!toolbarStore.state.isEditMode()) {
            toolbarStore.state.displayState.pageOrigin.onClick?.let { toolbarStore.dispatch(it) }
        }
        focusRequest++
    }

    return focusRequest
}
