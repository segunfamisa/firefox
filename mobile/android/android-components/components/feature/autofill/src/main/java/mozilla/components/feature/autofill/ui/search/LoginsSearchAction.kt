/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

import mozilla.components.concept.storage.Login
import mozilla.components.lib.state.Action

/**
 * Actions of the login search screen
 */
internal sealed interface LoginsSearchAction : Action {

    sealed interface UiAction : LoginsSearchAction {
        /**
         * Initializing the screen
         */
        data object Init : UiAction

        /**
         * Action to perform search
         *
         * @property text The search text
         */
        data class Search(val text: String) : UiAction
    }

}

internal data class LoginListLoaded(val logins: List<Login>) : LoginsSearchAction
internal data class LoginListSearchCompleted(val query: String, val results: List<Login>) : LoginsSearchAction
