/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

import mozilla.components.concept.storage.Login
import mozilla.components.concept.storage.LoginEntry
import mozilla.components.concept.storage.LoginsStorage
import mozilla.components.support.test.rule.MainCoroutineRule
import mozilla.components.support.test.rule.runTestOnMain
import org.junit.Before
import org.junit.Rule
import org.junit.Test

internal class LoginsSearchMiddlewareTest {

    @get:Rule
    val coroutineTestRule = MainCoroutineRule()

    private val loginStorage = FakeLoginsStorage()

    private lateinit var store: LoginsSearchStore

    @Before
    fun setUp() {
        store = LoginsSearchStore(
            middleware = listOf(
                LoginsSearchMiddleware(
                    loginStorage = loginStorage,
                    scope = coroutineTestRule.scope,
                    ioDispatcher = coroutineTestRule.testDispatcher,
                    mainDispatcher = coroutineTestRule.testDispatcher,
                ),
            ),
        )
    }

    @Test
    fun `init action loads logins`() = runTestOnMain {
        store.init()

        testScheduler.advanceUntilIdle()

        //store.state.logins =
    }

    private class FakeLoginsStorage : LoginsStorage {

        val logins: MutableList<Login> = mutableListOf()

        override suspend fun wipeLocal() = Unit

        override suspend fun delete(guid: String): Boolean {
            return logins.removeIf { it.guid == guid }
        }

        override suspend fun get(guid: String): Login? {
            return logins.find { it.guid == guid }
        }

        override suspend fun touch(guid: String) = Unit

        override suspend fun list(): List<Login> {
            return logins
        }

        override suspend fun findLoginToUpdate(entry: LoginEntry): Login? = null

        override suspend fun add(entry: LoginEntry): Login {
            val login = Login(
                guid = "guid",
                username = entry.username,
                usernameField = entry.usernameField,
                password = entry.password,
                passwordField = entry.passwordField,
                origin = entry.origin,
                formActionOrigin = entry.formActionOrigin,
                httpRealm = entry.httpRealm,
            )
            logins.add(login)
            return login
        }

        override suspend fun update(
            guid: String,
            entry: LoginEntry,
        ): Login {
            TODO("Not yet implemented")
        }

        override suspend fun addOrUpdate(entry: LoginEntry): Login {
            TODO("Not yet implemented")
        }

        override suspend fun getByBaseDomain(origin: String): List<Login> {
            TODO("Not yet implemented")
        }

        override fun close() = Unit

    }
}