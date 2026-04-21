/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.lib.bookmark.parser.jsoup

import android.annotation.SuppressLint
import android.content.Context
import android.net.Uri
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import mozilla.components.concept.bookmark.parser.BookmarksFileParser
import mozilla.components.concept.bookmark.parser.BookmarksParsingError
import mozilla.components.concept.storage.bookmarks.InsertableBookmarkNode
import org.jsoup.helper.DataUtil
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser
import java.io.File
import java.nio.charset.StandardCharsets
import java.util.Stack
import kotlin.coroutines.cancellation.CancellationException

/**
 * A [BookmarksFileParser] that uses jsoup to parse HTML bookmark files in the
 * Netscape Bookmark format.
 *
 * @param appContext Used to open the content resolver for the given URI.
 * @param defaultDispatcher Dispatcher used for Parsing work.
 * @param ioDispatcher Dispatcher used for I/O work.
 */
internal class JsoupBookmarksFileParser(
    private val appContext: Context,
    private val defaultDispatcher: CoroutineDispatcher = Dispatchers.Default,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO,
) : BookmarksFileParser {

    override suspend fun parse(uri: String): Result<InsertableBookmarkNode> =
        withContext(ioDispatcher) {
            runCatching {
                // create a bookmarks file for processing
                val bookmarksFile = File(appContext.filesDir, "tmp_bookmarks_for_import.html")
                if (bookmarksFile.exists()) bookmarksFile.delete()

                try {
                    // copy the uri content into the tmp file.
                    @SuppressLint("UseKtx")
                    val sourceUri = Uri.parse(uri)
                    sourceUri.copyTo(bookmarksFile, appContext)

                    return@runCatching bookmarksFile.parse()
                } finally {
                    bookmarksFile.delete()
                }
            }.onFailure {
                // rethrow cancellation exception, so we don't swallow it here.
                if (it is CancellationException) throw it
            }
        }

    private suspend fun Uri.copyTo(file: File, context: Context) = withContext(ioDispatcher) {
        context.contentResolver.openInputStream(this@copyTo).use { inputStream ->
            if (inputStream == null) throw BookmarksParsingError.UnableToOpenFile()

            file.outputStream().use { outputStream ->
                val buffer = ByteArray(BUFFER_SIZE_BYTES)
                var bytes = inputStream.read(buffer)
                while (bytes >= 0) {
                    ensureActive()
                    outputStream.write(buffer, 0, bytes)
                    ensureActive()
                    bytes = inputStream.read(buffer)
                }
            }
        }
    }

    private suspend fun File.parse(): InsertableBookmarkNode = withContext(defaultDispatcher) {
        val root = MutableFolder(
            parentGuid = null,
            title = "root",
            position = 0u,
            dateAddedTimestamp = 0L,
            lastModifiedTimestamp = 0L,
        )

        val folders = Stack<MutableFolder>().apply { push(root) }

        val parser = DataUtil.streamParser(
            // path =
            this@parse.toPath(),
            // charset =
            StandardCharsets.UTF_8,
            // baseUri =
            "",
            // parser =
            Parser.htmlParser(),
        )

        parser.use { parser ->
            parser.stream().forEach { element ->
                ensureActive()
                val currentFolder = folders.peek()

                when {
                    element.isFolder -> {
                        val newFolder = MutableFolder(
                            title = element.text(),
                            position = currentFolder.children.size.toUInt(),
                            parentGuid = "",
                            dateAddedTimestamp = element.dateAdded ?: 0L,
                            lastModifiedTimestamp = element.lastModified ?: 0L,
                        )
                        folders.push(newFolder)
                    }

                    element.isBookmark -> {
                        val bookmark = InsertableBookmarkNode.Item(
                            url = element.attr("href")
                                .ifBlank {
                                    throw BookmarksParsingError.InvalidFormat(
                                        message = "Expected href for ${element.text()} but an empty text",
                                    )
                                },
                            title = element.text(),
                            position = currentFolder.children.size.toUInt(),
                            parentGuid = currentFolder.parentGuid,
                            dateAddedTimestamp = element.dateAdded ?: 0L,
                            lastModifiedTimestamp = element.lastModified ?: 0L,
                        )

                        currentFolder.children.add(bookmark)
                    }

                    element.isSeparator -> {
                        val bookmark = InsertableBookmarkNode.Separator(
                            position = currentFolder.children.size.toUInt(),
                            dateAddedTimestamp = element.dateAdded ?: 0L,
                            lastModifiedTimestamp = element.lastModified ?: 0L,
                        )

                        currentFolder.children.add(bookmark)
                    }

                    // DL closing tag marks the end of a folder scope in Netscape HTML
                    // We check for the end of the list to pop the stack
                    element.tagName() == "dl" && element.tag().isSelfClosing.not() -> {
                        if (folders.size > 1) {
                            val completed = folders.pop()

                            // link the just-completed folder to its parent
                            val newParent = folders.peek()
                            newParent.children.add(completed.toImmutable())
                        }
                    }
                }
            }
        }
        ensureActive()
        root.toImmutable()
    }

    private val Element.dateAdded: Long?
        get() = attr("ADD_DATE").toLongOrNull()

    private val Element.lastModified: Long?
        get() = attr("LAST_MODIFIED").toLongOrNull()

    /**
     * In netscape bookmark format, a folder is denoted by H3 tag
     *
     * See https://learn.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa753582(v=vs.85)
     */
    private val Element.isFolder get() = this.isTag("h3")

    /**
     * In netscape bookmark format, a bookmark is denoted by an A (anchor) tag.
     *
     * See https://learn.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa753582(v=vs.85)
     */
    private val Element.isBookmark get() = this.isTag("a")

    /**
     * hr represents a separator
     */
    private val Element.isSeparator get() = this.isTag("hr")

    private fun Element.isTag(name: String) = this.tagName().equals(name, ignoreCase = true)

    // Internal mutable representation to handle the tree building
    private class MutableFolder(
        val parentGuid: String?,
        val title: String,
        val position: UInt,
        val dateAddedTimestamp: Long,
        val lastModifiedTimestamp: Long,
    ) {
        val children = mutableListOf<InsertableBookmarkNode>()

        fun toImmutable(): InsertableBookmarkNode.Folder = InsertableBookmarkNode.Folder(
            title = title,
            position = position,
            children = children.toList(),
            parentGuid = parentGuid,
            dateAddedTimestamp = dateAddedTimestamp,
            lastModifiedTimestamp = lastModifiedTimestamp,
        )
    }
}

/**
 * Buffer size for copying the file
 */
private const val BUFFER_SIZE_BYTES = 32 * 1024 // 32kb

/**
 * API to create a [BookmarksFileParser] that uses jsoup to parse HTML bookmark files in the
 * Netscape Bookmark format.
 *
 * @param appContext Used to open the content resolver for the given URI.
 * @param defaultDispatcher Dispatcher used for Parsing work.
 * @param ioDispatcher Dispatcher used for I/O work.
 */
fun BookmarksFileParser.Companion.jsoupParser(
    appContext: Context,
    ioDispatcher: CoroutineDispatcher = Dispatchers.IO,
    defaultDispatcher: CoroutineDispatcher = Dispatchers.Default,
): BookmarksFileParser {
    return JsoupBookmarksFileParser(
        appContext = appContext,
        defaultDispatcher = ioDispatcher,
        ioDispatcher = defaultDispatcher,
    )
}
