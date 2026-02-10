/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.ui.richtext.parsing

import mozilla.components.ui.richtext.ir.RichDocument
import org.intellij.markdown.flavours.commonmark.CommonMarkFlavourDescriptor
import org.intellij.markdown.parser.MarkdownParser

/**
 * Parser that delegates to Jetbrains [MarkdownParser]
 */
internal object Parser {

    private val parser by lazy {
        val flavour = CommonMarkFlavourDescriptor()
        MarkdownParser(flavour)
    }

    fun parse(source: String): RichDocument {
        val blocks = parser.buildMarkdownTreeFromString(source)
            .children
            .flatMap { node ->
                node.toBlocks(source)
            }
        return RichDocument(blocks = blocks)
    }
}
