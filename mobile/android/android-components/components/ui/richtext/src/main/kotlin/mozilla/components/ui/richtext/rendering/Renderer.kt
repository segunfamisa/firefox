/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.ui.richtext.rendering

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import mozilla.components.ui.richtext.LinkClickHandler
import mozilla.components.ui.richtext.LocalRichTextColors
import mozilla.components.ui.richtext.LocalRichTextTypography
import mozilla.components.ui.richtext.ir.BlockContent
import mozilla.components.ui.richtext.ir.HeadingLevel

private val BLOCK_QUOTE_INDICATOR_WIDTH = 4.dp
private val INDENTATION_PADDING = 8.dp
private const val LIST_BULLET = "\u2022"
private const val LIST_SPACE = "\u0020\u0020"

@Composable
internal fun BlockContent.Render(linkClickHandler: LinkClickHandler?) {
    RenderRecursively(linkClickHandler = linkClickHandler, indentation = 0)
}

@Composable
internal fun BlockContent.RenderRecursively(linkClickHandler: LinkClickHandler?, indentation: Int) {
    when (this) {
        is BlockContent.Heading -> RenderHeadingBlock(linkClickHandler)

        is BlockContent.ListBlock -> RenderListBlock(linkClickHandler, indentation)

        is BlockContent.Paragraph -> RenderParagraphBlock(linkClickHandler)

        is BlockContent.BlockQuote -> RenderBlockQuote(linkClickHandler, indentation)
    }
}

@Composable
private fun BlockContent.BlockQuote.RenderBlockQuote(
    linkClickHandler: LinkClickHandler?,
    indentation: Int,
) {
    val colors = LocalRichTextColors.current
    Column(
        modifier = Modifier
            .drawBehind {
                drawLine(
                    color = colors.blockQuoteIndicator,
                    start = Offset.Zero,
                    end = Offset(x = 0f, y = size.height),
                    strokeWidth = BLOCK_QUOTE_INDICATOR_WIDTH.value,
                )
            }
            .padding(start = INDENTATION_PADDING),
    ) {
        content.forEach { block ->
            block.RenderRecursively(
                linkClickHandler = linkClickHandler,
                indentation = indentation + 1,
            )
        }
    }
}

@Composable
private fun BlockContent.Paragraph.RenderParagraphBlock(
    linkClickHandler: LinkClickHandler?,
) {
    val typography = LocalRichTextTypography.current
    val mergedStyle = typography.body
    Text(
        text = this.content.asAnnotatedString(
            linkClickHandler = linkClickHandler,
            linkStyle = typography.link.toSpanStyle(),
            codeStyle = typography.code.toSpanStyle(),
        ),
        style = mergedStyle,
    )
}

@Composable
private fun BlockContent.ListBlock.RenderListBlock(
    linkClickHandler: LinkClickHandler?,
    indentation: Int,
) {
    val typography = LocalRichTextTypography.current
    val linkStyle = typography.link
        .merge(color = LocalRichTextColors.current.linkColor)
        .toSpanStyle()
    val codeStyle = typography.code.merge(
        color = LocalRichTextColors.current.onInlineCodeBackground,
        background = LocalRichTextColors.current.inlineCodeBackground,
    ).toSpanStyle()
    Column(
        modifier = Modifier
            .padding(start = INDENTATION_PADDING)
            .semantics(mergeDescendants = true) {},
    ) {
        items.forEachIndexed { index, item ->
            item.content.forEach { listItemContent ->
                if (listItemContent is BlockContent.Paragraph) {
                    val string = buildAnnotatedString {
                        withBulletList(indentation.em) {
                            if (ordered) {
                                append("${index.plus(1)}.")
                            } else {
                                append(LIST_BULLET)
                            }
                            append(LIST_SPACE)
                            append(
                                listItemContent.content.asAnnotatedString(
                                    linkClickHandler = linkClickHandler,
                                    linkStyle = linkStyle,
                                    codeStyle = codeStyle,
                                ),
                            )
                        }
                    }
                    Text(text = string, style = typography.body)
                } else {
                    listItemContent.RenderRecursively(
                        linkClickHandler = linkClickHandler,
                        indentation = indentation + 1,
                    )
                }
            }
        }
    }
}

@Composable
private fun BlockContent.Heading.RenderHeadingBlock(linkClickHandler: LinkClickHandler?) {
    val typography = LocalRichTextTypography.current
    val style = when (level) {
        HeadingLevel.H1 -> typography.h1
        HeadingLevel.H2 -> typography.h2
        HeadingLevel.H3 -> typography.h3
        HeadingLevel.H4 -> typography.h4
        HeadingLevel.H5 -> typography.h5
        else -> typography.h6
    }
    Text(
        text = this.content.asAnnotatedString(
            linkClickHandler = linkClickHandler,
            linkStyle = typography.link.merge(style).toSpanStyle(),
            codeStyle = typography.code.merge(style).toSpanStyle(),
        ),
        style = style,
    )
}
