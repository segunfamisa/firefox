/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

/**
 * Handler for authentication errors encountered during sync operations.
 */
interface SyncAuthErrorHandler {

    /**
     * Function invoked when an authentication error is encountered during sync operations.
     */
    suspend fun onSyncAuthError()
}
