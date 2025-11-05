/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.support.base.text

import android.content.res.Resources
import androidx.annotation.PluralsRes
import androidx.annotation.StringRes

/**
 * An abstraction that represents a text value that can be resolved from various sources.
 *
 * This allows for deferring the resolution of strings (e.g., from Android resources)
 * until they are actually needed, which is particularly useful in contexts where a [android.content.Context]
 * or [android.content.res.Resources] object is not immediately available, like in the business logic
 * layers.
 */
sealed interface Text {

    /**
     * Resolves the `Text` into a final `String`.
     *
     * @param resources The `Resources` object to use for resolving resource-based text.
     * @return The resolved `String`.
     */
    fun resolve(resources: Resources): String
}

/**
 * A `Text` implementation that wraps a raw, pre-formatted `String`.
 *
 * @property value The raw string value.
 */
@JvmInline
internal value class Raw(val value: String) : Text {

    /**
     * Returns the raw string value.
     */
    override fun resolve(resources: Resources): String {
        return value
    }
}

/**
 * A `Text` implementation that represents a standard string resource.
 *
 * @property id The resource ID of the string (e.g., `R.string.example`).
 */
@JvmInline
internal value class Resource(@param:StringRes val id: Int) : Text {
    /**
     * Resolves the string resource using the provided `Resources` object.
     */
    override fun resolve(resources: Resources): String {
        return resources.getString(id)
    }
}

/**
 * A `Text` implementation for a formatted string resource.
 *
 * @property id The resource ID of the format string (e.g., `R.string.formatted_string`).
 * @property formatArgs The arguments to be inserted into the format string.
 */
internal class FormattedResource(val id: Int, vararg val formatArgs: Any) : Text {
    /**
     * Resolves and formats the string resource.
     */
    override fun resolve(resources: Resources): String {
        return resources.getString(id, *formatArgs)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as FormattedResource

        if (id != other.id) return false
        if (!formatArgs.contentEquals(other.formatArgs)) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id
        result = 31 * result + formatArgs.contentHashCode()
        return result
    }


}

/**
 * A `Text` implementation for a quantity string (plural) resource.
 *
 * @property id The resource ID of the plurals resource (e.g., `R.plurals.items`).
 * @property count The number used to select the appropriate plural string.
 */
internal data class PluralResource(@param:PluralsRes val id: Int, val count: Int) : Text {
    /**
     * Resolves the correct plural string based on the count.
     */
    override fun resolve(resources: Resources): String {
        return resources.getQuantityString(id, count)
    }
}

/**
 * A `Text` implementation for a formatted quantity string (plural) resource.
 *
 * @property id The resource ID of the plurals resource (e.g., `R.plurals.formatted_items`).
 * @property count The number used to select the appropriate plural string and for formatting.
 * @property formatArgs The arguments to be inserted into the chosen plural string.
 */
internal class FormattedPluralResource(
    @param:PluralsRes val id: Int,
    val count: Int,
    vararg val formatArgs: Any,
) : Text {
    /**
     * Resolves and formats the correct plural string.
     */
    override fun resolve(resources: Resources): String {
        return resources.getQuantityString(id, count, *formatArgs)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as FormattedPluralResource

        if (id != other.id) return false
        if (count != other.count) return false
        if (!formatArgs.contentEquals(other.formatArgs)) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id
        result = 31 * result + count
        result = 31 * result + formatArgs.contentHashCode()
        return result
    }
}

/**
 * Creates a `Text` object from a raw string.
 *
 * @param value The raw string.
 * @return A `Text` instance that wraps the raw string.
 */
fun rawText(value: String): Text = Raw(value)

/**
 * Creates a `Text` object from a string resource ID.
 *
 * @param id The resource ID of the string (e.g., `R.string.example`).
 * @return A `Text` instance for the given resource.
 */
fun resourceText(@StringRes id: Int): Text = Resource(id)

/**
 * Creates a `Text` object from a formatted string resource ID and its arguments.
 *
 * @param id The resource ID of the format string (e.g., `R.string.formatted_string`).
 * @param formatArgs The arguments to be inserted into the format string.
 * @return A `Text` instance for the given formatted resource.
 */
fun resourceText(@StringRes id: Int, vararg formatArgs: Any): Text {
    return FormattedResource(id, formatArgs)
}

/**
 * Creates a `Text` object from a quantity string (plurals) resource.
 * The `count` will also be used as a formatting argument if the string requires it (e.g., "%d items").
 *
 * @param id The resource ID of the plurals resource (e.g., `R.plurals.items`).
 * @param count The number used to select the appropriate plural string.
 * @return A `Text` instance for the given plural resource.
 */
fun quantityText(@PluralsRes id: Int, count: Int): Text {
    return PluralResource(id, count)
}

/**
 * Creates a `Text` object from a formatted quantity string (plurals) resource.
 *
 * @param id The resource ID of the plurals resource (e.g., `R.plurals.formatted_items`).
 * @param count The number used to select the appropriate plural string.
 * @param formatArgs The arguments to be inserted into the chosen plural string. Note that `count` is
 * often one of the format arguments.
 * @return A `Text` instance for the given formatted plural resource.
 */
fun quantityText(@PluralsRes id: Int, count: Int, vararg formatArgs: Any): Text {
    return FormattedPluralResource(id, count, formatArgs)
}
