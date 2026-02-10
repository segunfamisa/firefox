/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.ui.richtext

/**
 * Handler for handling link clicks
 */
fun interface LinkClickHandler {

    /**
     * Function invoked when a url is clicked
     */
    fun onClick(url: String)
}
