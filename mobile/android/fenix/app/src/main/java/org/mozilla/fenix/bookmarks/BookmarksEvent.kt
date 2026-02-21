/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.bookmarks

import mozilla.components.lib.state.Event

sealed interface BookmarksEvent : Event {
    sealed interface Navigate : BookmarksEvent {
        data object AddFolder : Navigate
        data object SelectFolder : Navigate

        data object EditBookmark: Navigate

        data object PopToEditBookmark: Navigate
        data object PopToBookmarkList: Navigate

        data object GoBack: Navigate
        data object GoBackOrExitBookmarks: Navigate
    }
}
