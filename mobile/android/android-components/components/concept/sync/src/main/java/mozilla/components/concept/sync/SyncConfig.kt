/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.concept.sync

/**
 * @property periodMinutes How frequently periodic sync should happen.
 * @property initialDelayMinutes What should the initial delay for the periodic sync be.
 */
data class PeriodicSyncConfig(
    val periodMinutes: Int = 240,
    val initialDelayMinutes: Int = 5,
)

/**
 * Configuration for sync.
 *
 * @property supportedEngines A set of supported sync engines.
 * @property periodicSyncConfig Optional configuration for running sync periodically.
 * Periodic sync is disabled if this is `null`.
 * @property useNativeSyncStatus Whether to use the native sync status based on the Rust component
 *  instead of the WorkManager status.
 *
 *
 *  - In [bug 2041554](https://bugzilla.mozilla.org/show_bug.cgi?id=2041554),
 *  we are attempting to fix this by keeping track of invocations into the rust sync manager to
 *  know if there's an actual sync process that is running.
 *
 *  - We found that the peculiarities of the Rust SyncManager - particularly the fact that it does not
 *  support parallel calls, it is not cancellable, among others means that even if a work manager
 *  task is canceled for instance, the rust SyncManager request will continue on. Subsequent requests
 *  therefore will remain queued up until that suceeds.
 *  - Essentially, that means that the work manager states do not translate well to the real
 *  "is sync happening" state.
 *  - We are trying out a solution that will infer "sync status" from whether or not we have completed
 *  a call to the rust sync manager.
 *
 */
data class SyncConfig(
    val supportedEngines: Set<SyncEngine>,
    val periodicSyncConfig: PeriodicSyncConfig?,
    val useNativeSyncStatus: Boolean = false,
)
