/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.service.fxa.sync

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.work.Configuration
import androidx.work.WorkInfo
import androidx.work.WorkManager
import androidx.work.WorkQuery
import androidx.work.WorkerParameters
import androidx.work.impl.utils.taskexecutor.TaskExecutor
import androidx.work.testing.SynchronousExecutor
import androidx.work.testing.WorkManagerTestInitHelper
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertIs
import kotlin.test.assertNotNull
import kotlin.test.assertNull
import kotlin.test.assertTrue
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.launch
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.runCurrent
import kotlinx.coroutines.test.runTest
import mozilla.appservices.sync15.DeviceType
import mozilla.appservices.syncmanager.DeviceSettings
import mozilla.appservices.syncmanager.ServiceStatus
import mozilla.appservices.syncmanager.SyncResult
import mozilla.components.concept.sync.AccessTokenInfo
import mozilla.components.concept.sync.OAuthScopedKey
import mozilla.components.concept.sync.PeriodicSyncConfig
import mozilla.components.concept.sync.SyncConfig
import mozilla.components.concept.sync.SyncEngine
import mozilla.components.concept.sync.SyncableStore
import mozilla.components.service.fxa.FxaDeviceSettingsCache
import mozilla.components.service.fxa.TestOAuthAccount
import mozilla.components.service.fxa.manager.FxaAccountManager
import mozilla.components.service.fxa.manager.GlobalAccountManager
import mozilla.components.service.fxa.manager.SCOPE_SYNC
import mozilla.components.service.fxa.manager.SyncEnginesStorage
import mozilla.components.service.fxa.sync.ConnectResult.AuthRequiredReason
import mozilla.components.service.fxa.sync.WorkManagerSyncWorker.Companion.SYNC_STAGGER_BUFFER_MS
import mozilla.components.service.fxa.sync.WorkManagerSyncWorker.Companion.engineSyncTimestamp
import mozilla.components.service.fxa.sync.helpers.TestSyncStateStorage
import mozilla.components.support.test.mock
import mozilla.components.support.test.robolectric.testContext
import mozilla.components.support.test.whenever
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.`when`

@OptIn(ExperimentalCoroutinesApi::class) // TestScope.runCurrent
@RunWith(AndroidJUnit4::class)
class WorkManagerSyncManagerTest {
    private lateinit var mockParam: WorkerParameters
    private lateinit var mockTags: Set<String>
    private lateinit var mockTaskExecutor: TaskExecutor

    private val defaultSyncConfig =
        SyncConfig(
            supportedEngines = setOf(SyncEngine.Tabs),
            periodicSyncConfig = null,
            syncDecouplingEnabled = false,
        )
    private val syncConfigWithDecoupling =
        SyncConfig(
            supportedEngines = setOf(SyncEngine.Tabs),
            periodicSyncConfig = PeriodicSyncConfig(),
            syncDecouplingEnabled = true,
        )
    private val testDispatcher = StandardTestDispatcher()
    private val accountManager = mock<FxaAccountManager>()

    @Before
    fun setUp() {
        mockParam = mock()
        mockTags = mock()
        mockTaskExecutor = mock()
        `when`(mockParam.taskExecutor).thenReturn(mockTaskExecutor)
        `when`(mockTaskExecutor.serialTaskExecutor).thenReturn(mock())
        `when`(mockParam.tags).thenReturn(mockTags)

        GlobalAccountManager.setInstance(accountManager)

        WorkManagerTestInitHelper.initializeTestWorkManager(
            testContext,
            Configuration.Builder().setExecutor(SynchronousExecutor()).build(),
        )
    }

    @After
    fun tearDown() {
        WorkManagerTestInitHelper.closeWorkDatabase()
    }

    @Test
    fun `GIVEN work is not set to be debounced THEN it is not considered to be synced within the buffer`() {
        `when`(mockTags.contains(SyncWorkerTag.Debounce.name)).thenReturn(false)

        engineSyncTimestamp["test"] = System.currentTimeMillis() - SYNC_STAGGER_BUFFER_MS - 100L
        engineSyncTimestamp["test2"] = System.currentTimeMillis()

        val workerManagerSyncWorker = WorkManagerSyncWorker(testContext, mockParam)

        assertFalse(workerManagerSyncWorker.isDebounced())
        assertFalse(workerManagerSyncWorker.lastSyncedWithinStaggerBuffer("test"))
        assertFalse(workerManagerSyncWorker.lastSyncedWithinStaggerBuffer("test2"))
    }

    @Test
    fun `GIVEN work is set to be debounced THEN last synced timestamp is compared to buffer`() {
        `when`(mockTags.contains(SyncWorkerTag.Debounce.name)).thenReturn(true)

        engineSyncTimestamp["test"] = System.currentTimeMillis() - SYNC_STAGGER_BUFFER_MS - 100L
        engineSyncTimestamp["test2"] = System.currentTimeMillis()

        val workerManagerSyncWorker = WorkManagerSyncWorker(testContext, mockParam)

        assert(workerManagerSyncWorker.isDebounced())
        assertFalse(workerManagerSyncWorker.lastSyncedWithinStaggerBuffer("test"))
        assert(workerManagerSyncWorker.lastSyncedWithinStaggerBuffer("test2"))
    }

    @Test
    fun `isWithinStaggerBuffer is true just inside the buffer and false at or beyond it`() {
        val now = 1_000_000L
        assertTrue(isWithinStaggerBuffer(lastSyncedMs = now - (SYNC_STAGGER_BUFFER_MS - 1), now = now))
        assertFalse(isWithinStaggerBuffer(lastSyncedMs = now - SYNC_STAGGER_BUFFER_MS, now = now))
    }

    @Test
    fun `GIVEN work is set to be debounced WHEN there is not a saved time stamp THEN work will not be debounced`() {
        `when`(mockTags.contains(SyncWorkerTag.Debounce.name)).thenReturn(true)

        val workerManagerSyncWorker = WorkManagerSyncWorker(testContext, mockParam)

        assert(workerManagerSyncWorker.isDebounced())
        assertFalse(workerManagerSyncWorker.lastSyncedWithinStaggerBuffer("test"))
    }

    @Test
    fun `WHEN workerStateChanged receives null state THEN nothing happens`() =
        runTest(testDispatcher) {
            val observer = FakeSyncStatusObserver()
            val syncManager = createSyncManager(initialize = false)

            syncManager.syncDispatcher?.workersStateChanged(null)

            assertTrue(observer.events.isEmpty())
            assertFalse(syncManager.isSyncActive())
        }

    @Test
    fun `WHEN workerStateChanged receives empty list THEN nothing happens`() =
        runTest(testDispatcher) {
            val observer = FakeSyncStatusObserver()
            val syncManager = createSyncManager(observer = observer, initialize = false)

            syncManager.syncDispatcher?.workersStateChanged(emptyList())

            assertTrue(observer.events.isEmpty())
            assertFalse(syncManager.isSyncActive())
        }

    @Test
    fun `WHEN workerStateChanged receives ENQUEUED state THEN nothing happens`() =
        runTest(testDispatcher) {
            val observer = FakeSyncStatusObserver()
            val syncManager = createSyncManager(observer = observer, initialize = false)

            syncManager.syncDispatcher?.workersStateChanged(listOf(WorkInfo.State.ENQUEUED))

            assertTrue(observer.events.isEmpty())
            assertFalse(syncManager.isSyncActive())
        }

    @Test
    fun `GIVEN sync decoupling is off, and an authenticated account exists, THEN sync is connected`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager = createSyncManager(syncConfig = defaultSyncConfig, initialize = true)
            runCurrent()

            assertTrue(syncManager.syncConnected.value)
        }

    @Test
    fun `GIVEN sync decoupling is off, and no authenticated account exists, THEN sync is not connected`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(null)
            val syncManager = createSyncManager(syncConfig = defaultSyncConfig, initialize = false)

            syncManager.initialize()
            runCurrent()

            assertFalse(syncManager.syncConnected.value)
        }

    @Test
    fun `GIVEN sync decoupling is off, and sync was disconnected, THEN the stored state is ignored`() =
        runTest(testDispatcher) {
            val syncStateStorage = TestSyncStateStorage()
            syncStateStorage.storeSyncConnected(connected = false)
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager =
                createSyncManager(
                    syncConfig = defaultSyncConfig,
                    syncStateStorage = syncStateStorage,
                    initialize = true,
                )
            runCurrent()

            assertTrue(syncManager.syncConnected.value, "Sync should be connected without sync decoupling")
        }

    @Test
    fun `GIVEN sync decoupling is on, and no authenticated account exists, THEN sync is not connected`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(null)
            val syncManager = createSyncManager(initialize = false, syncConfig = syncConfigWithDecoupling)

            syncManager.initialize()
            runCurrent()

            assertFalse(syncManager.syncConnected.value)
        }

    @Test
    fun `GIVEN sync decoupling is on, an authenticated account exists, BUT sync state was never set, THEN sync is connected`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager = createSyncManager(initialize = false, syncConfig = syncConfigWithDecoupling)

            syncManager.initialize()
            runCurrent()

            assertTrue(syncManager.syncConnected.value)
        }

    @Test
    fun `GIVEN sync decoupling is on, an authenticated account exists, AND sync was disconnected, THEN sync is not connected`() =
        runTest(testDispatcher) {
            val syncStateStorage = TestSyncStateStorage()
            syncStateStorage.storeSyncConnected(connected = false)
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = syncConfigWithDecoupling,
                    syncStateStorage = syncStateStorage,
                )

            syncManager.initialize()
            runCurrent()

            assertFalse(syncManager.syncConnected.value, "Sync should not be connected")
        }

    @Test
    fun `GIVEN sync decoupling is on, an authenticated account exists, AND sync was connected, THEN sync is connected`() =
        runTest(testDispatcher) {
            val syncStateStorage = TestSyncStateStorage()
            syncStateStorage.storeSyncConnected(connected = true)
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = syncConfigWithDecoupling,
                    syncStateStorage = syncStateStorage,
                )

            syncManager.initialize()
            runCurrent()

            assertTrue(syncManager.syncConnected.value, "Sync should be connected")
        }

    @Test
    fun `GIVEN an initialized manager, WHEN sync is disconnected in storage, THEN syncConnected emits false`() =
        runTest(testDispatcher) {
            val syncStateStorage = TestSyncStateStorage()
            syncStateStorage.storeSyncConnected(connected = true)
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = syncConfigWithDecoupling,
                    syncStateStorage = syncStateStorage,
                )
            syncManager.initialize()
            runCurrent()
            assertTrue(syncManager.syncConnected.value, "Sync should be connected to begin with")

            syncStateStorage.storeSyncConnected(connected = false)
            runCurrent()

            assertFalse(syncManager.syncConnected.value, "Sync should no longer be connected")
        }

    @Test
    fun `GIVEN no connected account exists, WHEN connect is called, THEN authentication is required`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(null)

            val syncManager = createSyncManager(initialize = false)

            val result = syncManager.connect(params = ConnectParams())

            assertAuthRequiredResult(result, AuthRequiredReason.NoAuthenticatedAccount)
        }

    @Test
    fun `GIVEN connected account does not have sync scope, WHEN connect is called, THEN auth is required`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(TestAccount(initialScopes = setOf("random_scope")))

            val syncManager = createSyncManager(initialize = false)

            val result = syncManager.connect(ConnectParams())

            assertAuthRequiredResult(result, AuthRequiredReason.MissingSyncScope)
        }

    @Test
    fun `GIVEN connected account has sync scope, WHEN connect is called, THEN storage reflects that sync is connected`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(TestAccount())

            val syncStateStorage = TestSyncStateStorage()
            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = syncConfigWithDecoupling,
                    syncStateStorage = syncStateStorage,
                )

            syncManager.connect(ConnectParams())

            val syncConnectedInStorage = syncStateStorage.syncConnected
            assertNotNull(syncConnectedInStorage, "Sync connected state in storage should not be null")
            assertTrue(syncConnectedInStorage, "Sync connected should be true in storage")
        }

    @Test
    fun `GIVEN a successful connect, WHEN syncConnected is observed, THEN syncConnected true is emitted`() =
        runTest(testDispatcher) {
            val account = TestAccount()
            whenever(accountManager.connectedAccount()).thenReturn(account)
            whenever(accountManager.authenticatedAccount()).thenReturn(account)

            val syncStateStorage = TestSyncStateStorage()
            val syncManager = createSyncManager(initialize = true, syncStateStorage = syncStateStorage)

            val syncConnectedValues = mutableListOf<Boolean>()
            backgroundScope.launch {
                syncManager.syncConnected.collect { syncConnectedValues.add(it) }
            }

            syncManager.connect(ConnectParams())
            runCurrent()

            assertEquals(1, syncConnectedValues.size)
            assertTrue(syncConnectedValues.last(), "Sync should be connected")
        }

    @Test
    fun `GIVEN sync decoupling and sync disconnected in storage, WHEN connect is called, THEN syncConnected is true`() =
        runTest(testDispatcher) {
            val account = TestAccount()
            whenever(accountManager.connectedAccount()).thenReturn(account)
            whenever(accountManager.authenticatedAccount()).thenReturn(account)

            val syncStateStorage = TestSyncStateStorage()
            syncStateStorage.storeSyncConnected(connected = false)

            val syncManager =
                createSyncManager(
                    syncStateStorage = syncStateStorage,
                    syncConfig = syncConfigWithDecoupling,
                    initialize = false,
                )

            val syncConnectedValues = mutableListOf<Boolean>()
            backgroundScope.launch {
                syncManager.syncConnected.collect { syncConnectedValues.add(it) }
            }

            syncManager.initialize()
            runCurrent()

            syncManager.connect(ConnectParams())
            runCurrent()

            assertEquals(
                listOf(false, true),
                syncConnectedValues,
                "Sync should first be disconnected and then connected",
            )
        }

    @Test
    fun `GIVEN connected account with sync scope, WHEN connect is called with initiateSync=true, THEN immediate sync is initiated`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(TestAccount())

            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = defaultSyncConfig,
                    start = false,
                )

            syncManager.connect(ConnectParams(initiateSync = true))

            val workManager = WorkManager.getInstance(testContext)
            val immediateWork =
                workManager.getWorkInfos(WorkQuery.fromUniqueWorkNames(SyncWorkerName.Immediate.name)).get()
            assertEquals(1, immediateWork.size, "Unexpected count of immediate sync work")
        }

    @Test
    fun `GIVEN connected account with sync scope, WHEN connect is called with initiateSync=false, THEN no immediate sync is initiated`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(TestAccount())

            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = defaultSyncConfig.copy(periodicSyncConfig = PeriodicSyncConfig()),
                    start = false,
                )

            syncManager.connect(ConnectParams(initiateSync = false))

            val workManager = WorkManager.getInstance(testContext)
            val immediateWork =
                workManager.getWorkInfos(WorkQuery.fromUniqueWorkNames(SyncWorkerName.Immediate.name)).get()
            assertEquals(0, immediateWork.size, "Unexpected count of immediate sync work")
        }

    @Test
    fun `GIVEN connected account with sync scope and no periodic sync configured, WHEN connect is called, THEN no periodic sync is initiated`() =
        runTest(testDispatcher) {
            whenever(accountManager.connectedAccount()).thenReturn(TestAccount())

            val syncManager =
                createSyncManager(
                    initialize = false,
                    syncConfig = syncConfigWithDecoupling.copy(periodicSyncConfig = null),
                    start = true,
                )

            syncManager.connect(ConnectParams(initiateSync = false))

            val periodicWork =
                WorkManager.getInstance(testContext)
                    .getWorkInfos(WorkQuery.fromUniqueWorkNames(SyncWorkerName.Periodic.name))
                    .get()
            assertTrue(periodicWork.isEmpty(), "Expected no periodic sync work")
        }

    @Test
    fun `GIVEN sync decoupling is on, WHEN disconnect is called, THEN rust sync manager is disconnected`() =
        runTest(testDispatcher) {
            val testRustSyncManager = TestRustSyncManager()
            val syncManager =
                createSyncManager(syncConfig = syncConfigWithDecoupling, testRustSyncManager = testRustSyncManager)
            syncManager.connect(ConnectParams(initiateSync = false))

            assertTrue(
                testRustSyncManager.isConnected,
                "Rust sync manager should be connected before we call disconnect",
            )

            syncManager.disconnect()

            assertFalse(testRustSyncManager.isConnected, "Rust sync manager should be disconnected")
        }

    @Test
    fun `GIVEN sync decoupling is on, and sync is previously connected, WHEN disconnect is called, THEN all sync work is cancelled`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())
            val syncManager = createSyncManager(syncConfig = syncConfigWithDecoupling, start = true)
            syncManager.connect(ConnectParams(initiateSync = true))

            syncManager.disconnect()

            val syncWorkInfos =
                WorkManager.getInstance(testContext)
                    .getWorkInfos(WorkQuery.Builder.fromTags(listOf(SyncWorkerTag.Common.name)).build())
                    .get()

            assertFalse(syncWorkInfos.isEmpty(), "Expected some sync work")

            val notCancelled = syncWorkInfos.filter { it.state != WorkInfo.State.CANCELLED }
            assertEquals(emptyList(), notCancelled, "Expected no uncancelled sync work")
        }

    @Test
    fun `GIVEN sync decoupling is on, and sync is previously connected, WHEN disconnect is called, THEN sync engines storage is cleared`() =
        runTest(testDispatcher) {
            whenever(accountManager.authenticatedAccount()).thenReturn(TestAccount())

            val syncEnginesStorage = SyncEnginesStorage(testContext)
            val syncManager =
                createSyncManager(
                    syncEnginesStorage = syncEnginesStorage,
                    syncConfig = syncConfigWithDecoupling,
                    start = true,
                )
            syncManager.connect(ConnectParams(initiateSync = true))
            syncManager.setEngineEnabled(engine = SyncEngine.Tabs, enabled = true)

            syncManager.disconnect()

            val engines = syncEnginesStorage.getStatus()
            assertTrue(engines.isEmpty(), "Expected no sync engines after disconnect. Got: $engines")
        }

    @Test
    fun `GIVEN sync decoupling is on, and sync is previously connected, WHEN disconnect is called, THEN sync storage is reset`() =
        runTest(testDispatcher) {
            val account = TestAccount()
            whenever(accountManager.authenticatedAccount()).thenReturn(account)
            whenever(accountManager.connectedAccount()).thenReturn(account)

            val testRustSyncManager = TestRustSyncManager()
            val syncStateStorage = TestSyncStateStorage()
            val syncConfig = syncConfigWithDecoupling
            val syncManager =
                createSyncManager(
                        syncConfig = syncConfig,
                        syncStateStorage = syncStateStorage,
                        testRustSyncManager = testRustSyncManager,
                        start = false,
                    )
                    .apply {
                        testRustSyncManager.expectedResult =
                            SyncResult(
                                status = ServiceStatus.OK,
                                successful = listOf(SyncEngine.Tabs.nativeName),
                                failures = emptyMap(),
                                persistedState = "{\"foo\": \"bar\"}",
                                declined = null,
                                nextSyncAllowedAt = null,
                                telemetryJson = null,
                            )
                        connect(ConnectParams(initiateSync = false))
                    }

            WorkManagerTestInitHelper.getTestDriver(testContext)?.let { driver ->
                val workIds =
                    WorkManager.getInstance(testContext)
                        .getWorkInfos(WorkQuery.Builder.fromTags(listOf(SyncWorkerTag.Common.name)).build())
                        .get()
                        .map { it.id }

                workIds.forEach { workId ->
                    driver.setAllConstraintsMet(workId)
                }
            }

            testDispatcher.scheduler.advanceUntilIdle()

            syncManager.disconnect()

            assertNull(
                syncStateStorage.persistedSyncState,
                "Persisted sync state should be null",
            )
            assertNull(syncStateStorage.lastSynced, "Last synced should be null")
            assertFalse(syncStateStorage.syncEnabled!!, "Sync enabled should be false")
        }

    @Test
    fun `GIVEN sync decoupling is on, WHEN disconnected, THEN sync is not considered enabled`() =
        runTest(testDispatcher) {
            val account = TestAccount()
            whenever(accountManager.authenticatedAccount()).thenReturn(account)
            whenever(accountManager.connectedAccount()).thenReturn(account)

            val testRustSyncManager = TestRustSyncManager()
            val syncStateStorage = TestSyncStateStorage()
            val syncManager =
                createSyncManager(
                        syncConfig = syncConfigWithDecoupling,
                        syncStateStorage = syncStateStorage,
                        testRustSyncManager = testRustSyncManager,
                        start = false,
                    )
                    .apply {
                        testRustSyncManager.expectedResult =
                            SyncResult(
                                status = ServiceStatus.OK,
                                successful = listOf(SyncEngine.Tabs.nativeName),
                                failures = emptyMap(),
                                persistedState = "{\"foo\": \"bar\"}",
                                declined = null,
                                nextSyncAllowedAt = null,
                                telemetryJson = null,
                            )
                        connect(ConnectParams(initiateSync = false))
                    }

            WorkManagerTestInitHelper.getTestDriver(testContext)?.let { driver ->
                val workIds =
                    WorkManager.getInstance(testContext)
                        .getWorkInfos(WorkQuery.Builder.fromTags(listOf(SyncWorkerTag.Common.name)).build())
                        .get()
                        .map { it.id }

                workIds.forEach { workId ->
                    driver.setAllConstraintsMet(workId)
                }
            }

            assertTrue(syncManager.isSyncEnabled())

            syncManager.disconnect()

            assertFalse(syncManager.isSyncEnabled())
        }

    @Test
    fun `GIVEN sync decoupling is off, and an authenticated account exists, WHEN disconnect is called, THEN sync remains`() =
        runTest(testDispatcher) {
            val account = TestAccount()
            whenever(accountManager.authenticatedAccount()).thenReturn(account)
            whenever(accountManager.connectedAccount()).thenReturn(account)

            val testRustSyncManager = TestRustSyncManager()
            val syncStateStorage = TestSyncStateStorage()
            val syncManager =
                createSyncManager(
                        syncConfig = defaultSyncConfig,
                        syncStateStorage = syncStateStorage,
                        testRustSyncManager = testRustSyncManager,
                        start = false,
                    )
                    .apply {
                        testRustSyncManager.expectedResult =
                            SyncResult(
                                status = ServiceStatus.OK,
                                successful = listOf(SyncEngine.Tabs.nativeName),
                                failures = emptyMap(),
                                persistedState = "{\"foo\": \"bar\"}",
                                declined = null,
                                nextSyncAllowedAt = null,
                                telemetryJson = null,
                            )
                        connect(ConnectParams(initiateSync = false))
                    }

            WorkManagerTestInitHelper.getTestDriver(testContext)?.let { driver ->
                val workIds =
                    WorkManager.getInstance(testContext)
                        .getWorkInfos(WorkQuery.Builder.fromTags(listOf(SyncWorkerTag.Common.name)).build())
                        .get()
                        .map { it.id }

                workIds.forEach { workId ->
                    driver.setAllConstraintsMet(workId)
                }
            }

            assertTrue(syncManager.isSyncEnabled(), "Sync should be enabled before we call disconnect")

            syncManager.disconnect()

            assertTrue(syncManager.isSyncEnabled(), "Sync should be enabled after we call disconnect")
        }

    /** Asserts the [result] is a [ConnectResult.AuthRequired] carrying [expectedReason] */
    private fun assertAuthRequiredResult(result: ConnectResult, expectedReason: AuthRequiredReason) {
        assertIs<ConnectResult.AuthRequired>(result)
        assertEquals("sync", result.service)
        assertEquals(setOf(SCOPE_SYNC), result.scopes)
        assertEquals(expectedReason, result.reason)
    }

    private suspend fun createSyncManager(
        initialize: Boolean,
        observer: FakeSyncStatusObserver = FakeSyncStatusObserver(),
        syncStateStorage: SyncStateStorage = TestSyncStateStorage(),
        syncEnginesStorage: SyncEnginesStorage = SyncEnginesStorage(testContext),
        testRustSyncManager: RustSyncManager = TestRustSyncManager(),
        syncConfig: SyncConfig = defaultSyncConfig,
        syncStateStorageProvider: SyncStateStorage.Provider = SyncStateStorage.Provider { syncStateStorage },
        start: Boolean = true,
    ): WorkManagerSyncManager {
        val syncStateStorageProvider = SyncStateStorage.Provider { syncStateStorage }

        GlobalAccountManager.syncIoDispatcher = testDispatcher
        GlobalAccountManager.setRustSyncManager(testRustSyncManager)
        GlobalAccountManager.setSyncStateStorageProvider(syncStateStorageProvider)
        GlobalSyncableStoreProvider.registerTestSyncStores(syncConfig)

        FxaDeviceSettingsCache(testContext)
            .setToCache(
                DeviceSettings(
                    fxaDeviceId = "test-device",
                    name = "test device",
                    kind = DeviceType.MOBILE,
                )
            )

        return WorkManagerSyncManager(
                context = testContext,
                syncConfig = syncConfig,
                rustSyncManager = testRustSyncManager,
                syncStateStorageProvider = syncStateStorageProvider,
                syncEnginesStorage = syncEnginesStorage,
                coroutineContext = testDispatcher,
            )
            .apply {
                registerSyncStatusObserver(observer)
                if (initialize) initialize()
                if (start) start()
            }
    }

    private fun GlobalSyncableStoreProvider.registerTestSyncStores(syncConfig: SyncConfig) {
        syncConfig.supportedEngines.forEach { engine ->
            configureStore(
                storePair =
                    engine to
                        lazy {
                            object : SyncableStore {
                                override fun registerWithSyncManager() {}
                            }
                        }
            )
        }
    }

    private class TestAccount(initialScopes: Set<String> = setOf(SCOPE_SYNC)) : TestOAuthAccount() {
        private val grantedScopes: MutableSet<String> = initialScopes.toMutableSet()

        override suspend fun getAccessToken(singleScope: String): AccessTokenInfo {
            return AccessTokenInfo(
                scope = SCOPE_SYNC,
                token = "token",
                key =
                    OAuthScopedKey(
                        kty = "kty",
                        scope = SCOPE_SYNC,
                        kid = "kid",
                        k = "k",
                    ),
                expiresAt = 15L,
            )
        }

        override suspend fun getTokenServerEndpointURL(): String {
            return "token server url"
        }

        override fun hasScope(scope: String): Boolean {
            return grantedScopes.contains(scope)
        }
    }
}
