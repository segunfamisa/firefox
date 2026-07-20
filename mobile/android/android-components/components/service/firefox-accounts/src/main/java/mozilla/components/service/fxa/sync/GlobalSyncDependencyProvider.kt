/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

import mozilla.components.service.fxa.manager.FxaAccountManager
import java.lang.ref.WeakReference

/**
 * Dependency provider for sync related operations
 */
object GlobalSyncDependencyProvider {

    private var accountManager: WeakReference<FxaAccountManager>? = null

    /**
     * Entry point to initialize the sync dependencies
     */
    fun initialize(accountManager: FxaAccountManager) {
        this.accountManager = WeakReference(accountManager)
    }

    internal fun requireAccountManager(): FxaAccountManager {
        return requireNotNull(accountManager?.get()) {
            "GlobalSyncDependencyProvider.initialize must be called before accessing the accountManager"
        }
    }
}
