package mozilla.components.feature.autofill.ui.search

import mozilla.components.lib.state.Middleware
import mozilla.components.lib.state.Reducer
import mozilla.components.lib.state.UiStore

/**
 * A Store for handling [LoginsSearchState] and dispatching [LoginsSearchAction]
 *
 * @param initialState The initial state for the Store.
 * @param reducer Reducer to handle state updates based on dispatched actions
 * @param middleware middlewares to handle side-effects in response to dispatched actions
 */
internal class LoginsSearchStore(
    initialState: LoginsSearchState = LoginsSearchState.Default,
    reducer: Reducer<LoginsSearchState, LoginsSearchAction> = ::reducer,
    middleware: List<Middleware<LoginsSearchState, LoginsSearchAction>> = listOf(),
) : UiStore<LoginsSearchState, LoginsSearchAction>(
    initialState = initialState,
    reducer = reducer,
    middleware = middleware,
) {

    fun init() {
        dispatch(LoginsSearchAction.UiAction.Init)
    }
}
