/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.utils.sorting

import java.math.BigInteger

/**
 * Creates a [Comparator] that compares objects in natural string order. It uses a [selector] to
 * select the string property used to compare.
 *
 * @param ascending Boolean indicating whether to use ascending or descending order. Default value
 * is true
 * @param selector Function selector that is used to select the string property to compare by.
 *
 *
 * Example usage:
 * ```
 * val list = listOf("a100", "b1", "a1", "a300", "a30", "a")
 * val sortedList = list.sortedWith(naturalStringOrder(ascending = true) { it })
 * println(sortedList) // prints "a", "a1", "a30", "a100", "a300", "b1"
 * ```
 */
fun <T> naturalStringOrder(ascending: Boolean = true, selector: (T) -> String): Comparator<T> {
    return NaturalStringComparator(ascending = ascending, selector = selector)
}

@Suppress("Unused")
private fun sampleNaturalStringOrder() {

}

private data class NaturalStringComparator<T>(
    private val ascending: Boolean,
    private val selector: (T) -> String,
) : Comparator<T> {

    override fun compare(first: T, second: T): Int {
        return if (ascending) {
            compare(selector(first), selector(second))
        } else {
            compare(selector(second), selector(first))
        }
    }

    private fun compare(s1: String, s2: String): Int {
        var i1 = 0
        var i2 = 0

        while (i1 < s1.length && i2 < s2.length) {
            val c1 = s1[i1]
            val c2 = s2[i2]

            if (c1.isDigit() && c2.isDigit()) {
                val num1 = extractNumber(s1, i1)
                val num2 = extractNumber(s2, i2)

                val numComparison = num1.value.compareTo(num2.value)
                if (numComparison != 0) {
                    return numComparison
                }

                i1 = num1.endIndex
                i2 = num2.endIndex
            } else {
                val charComparison = c1.lowercaseChar().compareTo(c2.lowercaseChar())
                if (charComparison != 0) {
                    return charComparison
                }
                i1++
                i2++
            }
        }

        return s1.length.compareTo(s2.length)
    }

    private fun extractNumber(str: String, startIndex: Int): NumberResult {
        var endIndex = startIndex
        while (endIndex < str.length && str[endIndex].isDigit()) {
            endIndex++
        }
        val numberStr = str.substring(startIndex, endIndex)
        return NumberResult(BigInteger(numberStr), endIndex)
    }

    private data class NumberResult(val value: BigInteger, val endIndex: Int)
}
