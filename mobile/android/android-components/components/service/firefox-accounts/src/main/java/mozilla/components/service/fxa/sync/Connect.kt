/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

import mozilla.components.concept.sync.SyncEngine

/** The result of calling [SyncManager.connect] */
sealed interface ConnectResult {

    /** Sync was successfully connected */
    data object Success : ConnectResult

    /**
     * Sync was not configured successfully, and requires authentication
     *
     * See [mozilla.components.service.fxa.manager.FxaAccountManager.beginAuthentication] to see more details of what is
     * required to perform authentication.
     *
     * @property scopes The scopes to request authentication for.
     * @property service The service to request authentication for.
     * @property reason The reason for authentication being required.
     */
    data class AuthRequired(
        val scopes: Set<String>,
        val service: String,
        val reason: AuthRequiredReason,
    ) : ConnectResult

    /** The reason for authentication being required when connecting sync. */
    sealed interface AuthRequiredReason {

        /**
         * Authentication is required because there is no authenticated account.
         *
         * It means [mozilla.components.service.fxa.manager.FxaAccountManager.authenticatedAccount] returned `null`.
         */
        data object NoAuthenticatedAccount : AuthRequiredReason

        /** Authentication is required because the authenticated account has not been granted the sync scope. */
        data object MissingSyncScope : AuthRequiredReason
    }
}

/**
 * Parameters for [SyncManager.connect].
 *
 * @property engines The engines to sync when [initiateSync] is `true`. If empty, all supported engines are synced. Has
 *   no effect when [initiateSync] is `false`.
 * @property initiateSync Whether to initiate a sync immediately after connecting.
 * @property reason The [SyncReason] reported for the sync initiated by [initiateSync].
 */
data class ConnectParams(
    val engines: Set<SyncEngine> = emptySet(),
    val initiateSync: Boolean = false,
    val reason: SyncReason = SyncReason.User,
)
