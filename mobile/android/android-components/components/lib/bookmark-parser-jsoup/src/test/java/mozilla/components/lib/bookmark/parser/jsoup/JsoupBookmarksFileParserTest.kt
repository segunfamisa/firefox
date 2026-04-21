/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.lib.bookmark.parser.jsoup

import android.content.Context
import android.net.Uri
import androidx.test.core.app.ApplicationProvider
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.runTest
import mozilla.components.concept.bookmark.parser.BookmarksParsingError
import mozilla.components.concept.storage.bookmarks.InsertableBookmarkNode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows

@RunWith(RobolectricTestRunner::class)
class JsoupBookmarksFileParserTest {

    @get:Rule
    val temporaryFolder = TemporaryFolder()

    private val context = ApplicationProvider.getApplicationContext<Context>()
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var parser: JsoupBookmarksFileParser

    @Before
    fun setup() {
        parser = JsoupBookmarksFileParser(
            appContext = context,
            ioDispatcher = testDispatcher,
            defaultDispatcher = testDispatcher,
        )
    }

    // region parse(uri) — public entry point

    @Test
    fun `GIVEN a valid bookmarks file uri WHEN parse is called THEN result is success`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.MULTIPLE_BOOKMARKS)
            val result = parser.parse(uri)

            assertTrue("Expected that the parsing result is a success", result.isSuccess)

            assertEquals(
                InsertableBookmarkNode.Folder(
                    parentGuid = null,
                    title = "root",
                    dateAddedTimestamp = 0L,
                    lastModifiedTimestamp = 0L,
                    position = 0u,
                    children = listOf(
                        InsertableBookmarkNode.Item(
                            parentGuid = null,
                            title = "One",
                            url = "https://one.com",
                            dateAddedTimestamp = 100,
                            lastModifiedTimestamp = 200,
                            position = 0u,
                        ),
                        InsertableBookmarkNode.Item(
                            parentGuid = null,
                            title = "Two",
                            url = "https://two.com",
                            dateAddedTimestamp = 300,
                            lastModifiedTimestamp = 400,
                            position = 1u,
                        ),
                        InsertableBookmarkNode.Item(
                            parentGuid = null,
                            title = "Three",
                            url = "https://three.com",
                            dateAddedTimestamp = 500,
                            lastModifiedTimestamp = 600,
                            position = 2u,
                        ),
                    ),
                ),
                result.getOrThrow(),
            )
        }

    @Test
    fun `GIVEN an invalid uri WHEN parse is called THEN result is failure`() =
        runTest(testDispatcher) {
            val result = parser.parse("content://invalid/nonexistent")

            assertTrue(
                "Expected result to be a failure but got ${result.getOrNull()}",
                result.isFailure,
            )
        }

    // endregion

    // region Bookmark items

    @Test
    fun `GIVEN a file with a bookmark WHEN parsed THEN item has correct url, title and position`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.SINGLE_BOOKMARK)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val item = root.children.first()

            assertTrue(
                "Expected first child to be an Item but got ${item.javaClass}",
                item is InsertableBookmarkNode.Item,
            )
            item as InsertableBookmarkNode.Item
            assertEquals("https://example.com", item.url)
            assertEquals("Example", item.title)
            assertEquals(0u, item.position)
        }

    @Test
    fun `GIVEN a bookmark with ADD_DATE and LAST_MODIFIED WHEN parsed THEN timestamps are set`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.SINGLE_BOOKMARK)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val item = root.children.first()

            assertEquals(
                "Expected dateAddedTimestamp to be 1000 but got ${item.dateAddedTimestamp}",
                1000L,
                item.dateAddedTimestamp,
            )
            assertEquals(
                "Expected lastModifiedTimestamp to be 2000 but got ${item.lastModifiedTimestamp}",
                2000L,
                item.lastModifiedTimestamp,
            )
        }

    @Test
    fun `GIVEN a bookmark without timestamps WHEN parsed THEN timestamps default to 0`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.BOOKMARK_WITHOUT_TIMESTAMPS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val item = root.children.first()

            assertEquals(
                "Expected dateAddedTimestamp to fallback to 0 but got ${item.dateAddedTimestamp}",
                0L,
                item.dateAddedTimestamp,
            )
            assertEquals(
                "Expected lastModifiedTimestamp to fallback to 0 but got ${item.lastModifiedTimestamp}",
                0L,
                item.lastModifiedTimestamp,
            )
        }

    @Test
    fun `GIVEN a bookmark with empty href WHEN parsed THEN result is failure with InvalidFormat`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.BOOKMARK_EMPTY_HREF)
            val result = parser.parse(uri)

            assertTrue(
                "Expected result to be a failure but got ${result.getOrNull()}",
                result.isFailure,
            )
            assertTrue(
                "Expected failure to be InvalidFormat but got ${result.exceptionOrNull()}",
                result.exceptionOrNull() is BookmarksParsingError.InvalidFormat,
            )
        }

    @Test
    fun `GIVEN a bookmark with empty text WHEN parsed THEN title is empty string`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.BOOKMARK_EMPTY_TEXT)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val item = root.children.first() as InsertableBookmarkNode.Item

            assertEquals(
                "Expected title to be empty but got ${item.title}",
                "",
                item.title,
            )
        }

    @Test
    fun `GIVEN multiple bookmarks WHEN parsed THEN positions are sequential and 0-based`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.MULTIPLE_BOOKMARKS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder

            assertEquals(3, root.children.size)
            assertEquals(0u, root.children[0].position)
            assertEquals(1u, root.children[1].position)
            assertEquals(2u, root.children[2].position)
        }

    // endregion

    // region Folders

    @Test
    fun `GIVEN a folder WHEN parsed THEN folder has correct title, timestamps and children`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.FOLDER_WITH_BOOKMARK)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            assertEquals(1, root.children.size)

            val folder = root.children.first()
            assertTrue(
                "Expected first child to be a Folder but got ${folder.javaClass}",
                folder is InsertableBookmarkNode.Folder,
            )
            folder as InsertableBookmarkNode.Folder
            assertEquals("My Folder", folder.title)
            assertEquals(100L, folder.dateAddedTimestamp)
            assertEquals(200L, folder.lastModifiedTimestamp)
            assertEquals(0u, folder.position)

            assertEquals(1, folder.children.size)
            val item = folder.children.first() as InsertableBookmarkNode.Item
            assertEquals("https://example.com", item.url)
            assertEquals("Example", item.title)
        }

    @Test
    fun `GIVEN nested folders WHEN parsed THEN tree structure is correct`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.NESTED_FOLDERS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            assertEquals(1, root.children.size)

            val outer = root.children.first() as InsertableBookmarkNode.Folder
            assertEquals("Outer", outer.title)
            assertEquals(10L, outer.dateAddedTimestamp)
            assertEquals(20L, outer.lastModifiedTimestamp)
            assertEquals(1, outer.children.size)

            val inner = outer.children.first() as InsertableBookmarkNode.Folder
            assertEquals("Inner", inner.title)
            assertEquals(30L, inner.dateAddedTimestamp)
            assertEquals(40L, inner.lastModifiedTimestamp)
            assertEquals(1, inner.children.size)

            val item = inner.children.first() as InsertableBookmarkNode.Item
            assertEquals("https://deep.com", item.url)
            assertEquals("Deep Link", item.title)
        }

    @Test
    fun `GIVEN deeply nested folders WHEN parsed THEN all levels are represented`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.DEEPLY_NESTED_FOLDERS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder

            val level1 = root.children.first() as InsertableBookmarkNode.Folder
            assertEquals(
                "Expected level 1 title to be Level 1, but got ${level1.title}",
                "Level 1",
                level1.title,
            )

            val level2 = level1.children.first() as InsertableBookmarkNode.Folder
            assertEquals(
                "Expected level 2 title to be Level 2, but got ${level2.title}",
                "Level 2",
                level2.title,
            )

            val level3 = level2.children.first() as InsertableBookmarkNode.Folder
            assertEquals(
                "Expected level 3 title to be Level 3, but got ${level3.title}",
                "Level 3",
                level3.title,
            )

            val item = level3.children.first() as InsertableBookmarkNode.Item
            assertEquals(
                "Expected item url to be https://bottom.com, but got ${item.url}",
                "https://bottom.com",
                item.url,
            )
            assertEquals(
                "Expected item title to be Bottom, but got ${item.title}",
                "Bottom",
                item.title,
            )
        }

    @Test
    fun `GIVEN an empty folder WHEN parsed THEN folder has no children`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.EMPTY_FOLDER)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val folder = root.children.first() as InsertableBookmarkNode.Folder

            assertEquals("Empty", folder.title)
            assertEquals(0, folder.children.size)
        }

    @Test
    fun `GIVEN a folder without timestamps WHEN parsed THEN timestamps default to 0`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.FOLDER_WITHOUT_TIMESTAMPS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val folder = root.children.first() as InsertableBookmarkNode.Folder

            assertEquals(
                "Expected dateAddedTimestamp to fallback to 0 but got ${folder.dateAddedTimestamp}",
                0L,
                folder.dateAddedTimestamp,
            )
            assertEquals(
                "Expected lastModifiedTimestamp to fallback to 0 but got ${folder.lastModifiedTimestamp}",
                0L,
                folder.lastModifiedTimestamp,
            )
        }

    // endregion

    // region Separators

    @Test
    fun `GIVEN a separator between bookmarks WHEN parsed THEN separator has correct position`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.SEPARATOR_BETWEEN_BOOKMARKS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder

            assertEquals(3, root.children.size)
            assertTrue(
                "Child at index 0 should be an Item",
                root.children[0] is InsertableBookmarkNode.Item,
            )
            assertEquals(0u, root.children[0].position)

            assertTrue(
                "Child at index 1 should be a Separator",
                root.children[1] is InsertableBookmarkNode.Separator,
            )
            assertEquals(1u, root.children[1].position)

            assertTrue(
                "Child at index 2 should be an Item",
                root.children[2] is InsertableBookmarkNode.Item,
            )
            assertEquals(2u, root.children[2].position)
        }

    @Test
    fun `GIVEN a separator with timestamps WHEN parsed THEN timestamps are set`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.SEPARATOR_WITH_TIMESTAMPS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder
            val separator = root.children.first()
            assertTrue(
                "Expected the first child to be a separator" +
                    " but got ${separator.javaClass}",
                separator is InsertableBookmarkNode.Separator,
            )
            assertEquals(
                "Expected the date added timestamp to be 1000 " +
                    "but got ${separator.dateAddedTimestamp}",
                1000L,
                separator.dateAddedTimestamp,
            )
            assertEquals(
                "Expected the last modified timestamp to be 2000 " +
                    "but got ${separator.lastModifiedTimestamp}",
                2000L,
                separator.lastModifiedTimestamp,
            )
        }

    @Test
    fun `GIVEN a separator without timestamps WHEN parsed THEN timestamps falls back to 0`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.SEPARATOR_WITHOUT_TIMESTAMPS)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder

            val separator = root.children.first()
            assertEquals(
                "Expected the date added to fallback to 0 " +
                    "but got ${separator.dateAddedTimestamp}",
                0L,
                separator.dateAddedTimestamp,
            )
            assertEquals(
                "Expected the last modified timestamp of to fallback to 0 " +
                    "but got ${separator.lastModifiedTimestamp}",
                0L,
                separator.lastModifiedTimestamp,
            )
        }

    // endregion

    // region Mixed content

    @Test
    fun `GIVEN bookmarks, folders and separators at the same level WHEN parsed THEN positions are sequential`() =
        runTest(testDispatcher) {
            val uri = temporaryFolder.createFileUri(TestData.MIXED_CONTENT)
            val result = parser.parse(uri)

            val root = result.getOrThrow() as InsertableBookmarkNode.Folder

            assertTrue(
                "Child at index 0 should have position 0",
                root.children[0].position == 0u,
            )
            assertTrue(
                "Child at index 1 should have position 1",
                root.children[1].position == 1u,
            )
            assertTrue(
                "Child at index 2 should have position 2",
                root.children[2].position == 2u,
            )
            assertTrue(
                "Child at index 3 should have position 3",
                root.children[3].position == 3u,
            )
        }

    // endregion

    // region Test helpers

    private fun TemporaryFolder.createFileUri(content: String): String {
        val file = newFile("test-file.html")
        file.writeText(content)
        val uri = Uri.fromFile(file)
        val shadow = Shadows.shadowOf(context.contentResolver)
        shadow.registerInputStream(uri, content.byteInputStream())
        return uri.toString()
    }

    private fun assertEquals(expected: UInt, actual: UInt?) {
        assertTrue("Expected $expected, got $actual", actual == expected)
    }

    // endregion
}
