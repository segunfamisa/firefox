/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.concept.bookmark.parser

/**
 * Error types related to parsing
 */
sealed class BookmarksParsingError(
    override val message: String? = null,
    override val cause: Throwable? = null,
) : RuntimeException(message, cause) {

    /**
     * Error to return when we are unable to open the file
     */
    class UnableToOpenFile : BookmarksParsingError()

    /**
     * Error to return when the file has an invalid format
     */
    class InvalidFormat(override val message: String?) : BookmarksParsingError(message)

    /**
     * Generic unknown error
     */
    class UnknownError(
        override val message: String?,
        override val cause: Throwable?,
    ) : BookmarksParsingError(message = message, cause = cause)
}
