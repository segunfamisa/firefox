/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

import mozilla.components.concept.storage.Login

/**
 * State driving the login search screen
 *
 * @property logins List of [Login]s
 * @property searchText
 */
internal data class LoginsSearchState(
    val logins: List<Login> = emptyList(),
    val searchText: String,
)
