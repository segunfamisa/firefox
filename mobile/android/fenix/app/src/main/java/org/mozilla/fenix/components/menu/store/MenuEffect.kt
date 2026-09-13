/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.components.menu.store

import android.app.PendingIntent
import org.mozilla.fenix.components.menu.BrowserNavigationParams

/**
 * One-shot side effects emitted by menu middlewares and consumed by the menu UI.
 *
 * These are intentionally kept separate from [MenuAction]/[MenuState] so that middlewares do not need to hold
 * references to the hosting [android.app.Activity]/[androidx.fragment.app.Fragment] to perform view-level side effects.
 */
sealed interface MenuEffect {

    /** Dismiss the menu dialog. */
    data object Dismiss : MenuEffect

    /** Delete browsing data and quit the browser. */
    data object DeleteBrowsingDataAndQuit : MenuEffect

    /**
     * Send the pending intent of a custom menu item with the url of the custom tab and dismiss the menu dialog.
     *
     * @property intent The [PendingIntent] from the custom menu item.
     * @property url The [String] URL of the current custom tab.
     */
    data class SendPendingIntentWithUrl(
        val intent: PendingIntent,
        val url: String?,
    ) : MenuEffect

    /**
     * Open the provided [BrowserNavigationParams] in a new browser tab.
     *
     * @property params The [BrowserNavigationParams] describing the url to open.
     */
    data class OpenToBrowser(val params: BrowserNavigationParams) : MenuEffect
}
