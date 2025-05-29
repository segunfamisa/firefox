/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

internal fun reducer(state: LoginsSearchState, action: LoginsSearchAction): LoginsSearchState =
    when (action) {
        is LoginListLoaded -> state.copy(logins = action.logins)
        is LoginListSearchCompleted -> state.copy(
            searchText = action.query,
            logins = action.results,
        )

        else -> state
    }
