/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.utils.sorting

import org.junit.Assert.assertEquals
import org.junit.Test

class NaturalStringOrderTest {

    @Test
    fun `natural string ascending order`() {
        val list = listOf("a100", "b1", "a1", "a300", "a30", "a")

        val sortedList = list.sortedWith(naturalStringOrder(ascending = true) { it })

        assertEquals(
            listOf("a", "a1", "a30", "a100", "a300", "b1"),
            sortedList,
        )
    }

    @Test
    fun `natural string ascending order with large values`() {
        val list = listOf("a999999999999999999999999", "a999999999999999999999991")

        val sortedList = list.sortedWith(naturalStringOrder(ascending = true) { it })

        assertEquals(
            listOf("a999999999999999999999991", "a999999999999999999999999"),
            sortedList,
        )
    }

    @Test
    fun `natural string descending order`() {
        val list = listOf("a100", "b1", "a1", "a300", "a30", "a")

        val sortedList = list.sortedWith(naturalStringOrder(ascending = false) { it })

        assertEquals(
            listOf("b1", "a300", "a100", "a30", "a1", "a"),
            sortedList,
        )
    }
}
