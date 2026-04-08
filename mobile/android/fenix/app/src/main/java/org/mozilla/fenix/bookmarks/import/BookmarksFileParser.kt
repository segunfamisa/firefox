/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.bookmarks.import

import android.net.Uri

interface BookmarksFileParser {

    suspend fun parse(uri: Uri): Result<Node>

    sealed interface Node {

        val title: String
        val position: UInt

        data class Folder(
            override val title: String,
            override val position: UInt = 0.toUInt(),
            val children: List<Node> = emptyList(),
        ) : Node

        data class Bookmark(
            val url: String,
            val iconUrl: String? = null,
            override val title: String,
            override val position: UInt = 0.toUInt(),
        ) : Node
    }
}

sealed class ImportError(
    override val message: String? = null,
    override val cause: Throwable? = null,
) : RuntimeException(message, cause) {

    class UnableToOpenFile : ImportError()

    class UnexpectedMissingBookmarkLink(val text: String) : ImportError(message = "The href link for $text is missing")

}
