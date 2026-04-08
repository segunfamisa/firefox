/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.bookmarks.import

import android.content.Context
import android.net.Uri
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import org.jsoup.helper.DataUtil
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser
import org.mozilla.fenix.bookmarks.import.BookmarksFileParser.Node
import java.io.File
import java.nio.charset.StandardCharsets
import java.util.Stack

/**
 * Buffer size for copying the file
 */
private const val BUFFER_SIZE_BYTES = 32 * 1024 // 32kb

/**
 * An Android-based bookmarks importer that will use Jsoup to parse the HTML file from a content URI into a structured
 * [Node]
 */
class DefaultBookmarksFileParser(
    private val appContext: Context,
    private val defaultDispatcher: CoroutineDispatcher = Dispatchers.Default,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO,
) : BookmarksFileParser {

    override suspend fun parse(uri: Uri): Result<Node> = withContext(ioDispatcher) {
        runCatching {
            // create a bookmarks file for processing
            val bookmarksFile = File(appContext.filesDir, "tmp_bookmarks_for_import.html")
            if (bookmarksFile.exists()) bookmarksFile.delete()

            try {
                // copy the [uri] content into the file
                bookmarksFile.copyFromUri(source = uri, context = appContext)

                // parse the file into Node
                bookmarksFile.parse()
            } finally {
                // ensure that we delete the temp file
                bookmarksFile.delete()
            }
        }.onFailure {
            if (it is CancellationException) throw it
        }
    }

    private suspend fun File.parse(): Node = withContext(defaultDispatcher) {
        val root = MutableFolder("root", 0u)
        val folders = Stack<MutableFolder>().apply { push(root) }

        val parser = DataUtil.streamParser(
            /* path = */ this@parse.toPath(),
            /* charset = */ StandardCharsets.UTF_8,
            /* baseUri = */ "",
            /* parser = */ Parser.htmlParser(),
        )

        parser.use { parser ->
            parser.stream().forEach { element ->
                ensureActive()
                val currentFolder = folders.peek()

                when {
                    element.isFolder -> {
                        val newFolder = MutableFolder(
                            title = element.text(),
                            position = currentFolder.children.size.toUInt() + 1u,
                        )
                        folders.push(newFolder)
                    }

                    element.isBookmark -> {
                        val bookmark = Node.Bookmark(
                            url = element.attr("href")
                                .ifBlank { throw ImportError.UnexpectedMissingBookmarkLink(text = element.text()) },
                            iconUrl = element.attr("icon_uri").takeIf { it.isNotBlank() },
                            title = element.text(),
                            position = currentFolder.children.size.toUInt() + 1u,
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

        root.toImmutable()
    }

    // Internal mutable representation to handle the tree building
    private class MutableFolder(
        val title: String,
        val position: UInt,
    ) {
        val children = mutableListOf<Node>()

        fun toImmutable(): Node.Folder = Node.Folder(
            title = title,
            position = position,
            children = children.toList(),
        )
    }

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

    private fun Element.isTag(name: String) = this.tagName().equals(name, ignoreCase = true)

    private suspend fun File.copyFromUri(source: Uri, context: Context) {
        val destination = this
        withContext(ioDispatcher) {
            context.contentResolver.openInputStream(source).use { inputStream ->
                if (inputStream == null) throw ImportError.UnableToOpenFile()

                destination.outputStream().use { outputStream ->
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
    }
}
