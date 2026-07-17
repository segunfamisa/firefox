/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

/**
 * Provides global access to the dependencies needed for sync operations.
 */
object GlobalSyncDependencyProvider {

    private var syncAuthErrorHandler: Lazy<SyncAuthErrorHandler>? = null

    /**
     * Initializes the dependencies used for sync. This function has to be called before sync
     * is used.
     *
     * @param syncAuthErrorHandler [Lazy] [SyncAuthErrorHandler] for sync
     */
    fun initialize(
        syncAuthErrorHandler: Lazy<SyncAuthErrorHandler>,
    ) {
        this.syncAuthErrorHandler = syncAuthErrorHandler
    }

    internal fun requireSyncAuthErrorHandler(): SyncAuthErrorHandler {
        return requireNotNull(syncAuthErrorHandler?.value) {
            "GlobalSyncDependencyProvider.syncAuthErrorHandler is unexpectedly null. " +
                "Ensure that you have called GlobalSyncDependencyProvider.initialize() before using sync"
        }
    }
}
