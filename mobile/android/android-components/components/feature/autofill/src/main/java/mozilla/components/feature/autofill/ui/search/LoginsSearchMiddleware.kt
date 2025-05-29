/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import mozilla.components.concept.storage.Login
import mozilla.components.concept.storage.LoginsStorage
import mozilla.components.feature.autofill.facts.emitLoginPasswordDetectedFact
import mozilla.components.lib.state.Middleware
import mozilla.components.lib.state.MiddlewareContext

/**
 * Middleware to respond to [LoginsSearchAction]
 */
internal class LoginsSearchMiddleware(
    private val loginStorage: LoginsStorage,
    private val scope: CoroutineScope,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO,
    private val mainDispatcher: CoroutineDispatcher = Dispatchers.Main,
) : Middleware<LoginsSearchState, LoginsSearchAction> {

    override fun invoke(
        context: MiddlewareContext<LoginsSearchState, LoginsSearchAction>,
        next: (LoginsSearchAction) -> Unit,
        action: LoginsSearchAction,
    ) {
        next(action)
        when (action) {
            is LoginsSearchAction.UiAction.Init -> context.loadLogins()
            is LoginsSearchAction.UiAction.Search -> context.performSearch(action.text)
            else -> Unit
        }
    }

    private fun MiddlewareContext<LoginsSearchState, LoginsSearchAction>.loadLogins() {
        scope.launch(ioDispatcher) {
            val logins = loginStorage.list()
            store.dispatch(LoginListLoaded(logins = logins))
        }
    }

    private fun MiddlewareContext<LoginsSearchState, LoginsSearchAction>.performSearch(query: String) {
        scope.launch(ioDispatcher) {
            val logins = loginStorage.list()
            val filteredLogins = logins.filter { login ->
                login.username.contains(query) ||
                    login.origin.contains(query)
            }.map {
                it.copy(origin = it.simplifiedOrigin())
            }

            // TODO consider moving to another middleware
            if (filteredLogins.isNotEmpty() &&
                filteredLogins[0].password.isNotEmpty()
            ) {
                emitLoginPasswordDetectedFact()
            }

            withContext(mainDispatcher) {
                store.dispatch(LoginListSearchCompleted(query = query, results = filteredLogins))
            }
        }
    }

    /**
     * Simplify the origin
     */
    private fun Login.simplifiedOrigin(): String {
        val afterScheme = this.origin.substringAfter("://")
        for (prefix in listOf("www.", "m.", "mobile.")) {
            if (afterScheme.startsWith(prefix)) {
                return afterScheme.substring(prefix.length)
            }
        }
        return afterScheme
    }
}
