/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

import android.content.Context
import mozilla.appservices.syncmanager.DeviceSettings
import mozilla.components.concept.sync.SyncAuthInfo
import mozilla.components.support.base.utils.SharedPreferencesCache

/**
 * Provides global access to the dependencies needed for sync operations.
 */
object GlobalSyncDependencyProvider {

    private var applicationContext: Context? = null
    private var syncAuthErrorHandler: Lazy<SyncAuthErrorHandler>? = null
    private var deviceSettingsCache: Lazy<SharedPreferencesCache<DeviceSettings>>? = null

    internal val syncAuthInfoCache: SharedPreferencesCache<SyncAuthInfo> by lazy {
        SyncAuthInfoCache(context = requireContext())
    }

    /**
     * Initializes the dependencies used for sync. This function has to be called before sync
     * is used.
     *
     * @param applicationContext Application [Context] for initializing sync components
     * @param syncAuthErrorHandler [Lazy] [SyncAuthErrorHandler] for sync
     * @param deviceSettingsCache [Lazy] [SharedPreferencesCache] for [DeviceSettings]
     */
    fun initialize(
        applicationContext: Context,
        syncAuthErrorHandler: Lazy<SyncAuthErrorHandler>,
        deviceSettingsCache: Lazy<SharedPreferencesCache<DeviceSettings>>,
    ) {
        this.applicationContext = applicationContext
        this.syncAuthErrorHandler = syncAuthErrorHandler
        this.deviceSettingsCache = deviceSettingsCache
    }

    internal fun requireSyncAuthErrorHandler(): SyncAuthErrorHandler {
        return requireNotNull(syncAuthErrorHandler?.value) {
            "GlobalSyncDependencyProvider.syncAuthErrorHandler is unexpectedly null. " +
                "Ensure that you have called GlobalSyncDependencyProvider.initialize() before using sync"
        }
    }

    internal fun requireDeviceSettingsCache(): SharedPreferencesCache<DeviceSettings> {
        return requireNotNull(deviceSettingsCache?.value) {
            "GlobalSyncDependencyProvider.deviceSettingsCache is unexpectedly null. " +
                "Ensure that you have called GlobalSyncDependencyProvider.initialize() before using sync"
        }
    }

    internal fun requireContext(): Context {
        return requireNotNull(applicationContext) {
            "GlobalSyncDependencyProvider.applicationContext is unexpectedly null. " +
                "Ensure that you have called GlobalSyncDependencyProvider.initialize() before using sync"
        }
    }
}
