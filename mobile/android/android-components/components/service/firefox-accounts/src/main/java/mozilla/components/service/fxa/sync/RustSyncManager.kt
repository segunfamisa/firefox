/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import mozilla.appservices.syncmanager.SyncManager
import mozilla.appservices.syncmanager.SyncParams
import mozilla.appservices.syncmanager.SyncResult

/**
 * An abstract type around application services [SyncManager] that we can use to track calls
 * to it in order to infer whether a sync is actually in progress within the Rust system or not.
 *
 * This need arose because we found out that the state of [androidx.work.WorkManager] does not
 * map correctly & directly to the possible states of our Rust [SyncManager]
 *
 * For example, if we end up in a state where
 * Since all calls to the Rust sync manager are blocking, the fact that we are calling the
 * sync manager from a worker does not mean that the sync call is actually being executed in
 * rust.
 *
 * This interface exists because we are trying to implement support for tracking the active
 *  sync state of the underlying Rust implementation across different components.
 */
internal abstract class RustSyncManager {

    private val syncOperationCounter = MutableStateFlow(0)

    /**
     * Observable [Flow] indicating whether any sync request is currently in progress.
     */

    val isSyncActive: Flow<Boolean> = syncOperationCounter
        .map { it > 0 }
        .distinctUntilChanged()

    /**
     * Performs a sync with [params] and calls [onResult] to process the results
     *
     * This function requires [onResult], since we are using the native sync status to drive the
     * global sync status, we want to ascertain that "post-processing" like updating the last sync
     * time, etc. have been concluded before we update the state
     */
    suspend fun <T> sync(params: SyncParams, onResult: suspend (SyncResult) -> T): T {
        syncOperationCounter.update { it + 1 }
        try {
            return onResult(executeSync(params))
        } finally {
            syncOperationCounter.update { it - 1 }
        }
    }

    /**
     * Actual logic of executing sync operations to enable creating test variants of [RustSyncManager]
     * while sharing the counter logic.
     */
    protected abstract suspend fun executeSync(params: SyncParams): SyncResult
}

/**
 * A singleton implementation of [RustSyncManager] wrapping the Rust-implemented SyncManager.
 */
internal object DefaultRustSyncManager : RustSyncManager() {

    /**
     * The Rust implemented SyncManager. Must be a singleton as it carries some state between
     * syncs. Does no IO at creation time so is safe to call on any thread.
     */
    private val syncManager by lazy { SyncManager() }

    override suspend fun executeSync(params: SyncParams): SyncResult =
        syncManager.sync(params)
}
