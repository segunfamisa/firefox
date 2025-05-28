/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.compose.base.list

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.platform.LocalHapticFeedback
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.style.TextDirection
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import mozilla.components.compose.base.modifier.thenConditional
import mozilla.components.compose.base.theme.AcornTheme

private val LIST_ITEM_HEIGHT = 56.dp
private val ICON_SIZE = 24.dp

/**
 * List item used to display a label with an optional description text and an optional
 * [androidx.compose.material.IconButton] or [androidx.compose.material.Icon] at the end.
 *
 * @param label The label in the list item.
 * @param modifier [androidx.compose.ui.Modifier] to be applied to the layout.
 * @param maxLabelLines An optional maximum number of lines for the label text to span.
 * @param description An optional description text below the label.
 * @param maxDescriptionLines An optional maximum number of lines for the description text to span.
 * @param minHeight An optional minimum height for the list item.
 * @param onClick Called when the user clicks on the item.
 * @param onLongClick Called when the user long clicks on the item.
 * @param iconPainter [androidx.compose.ui.graphics.painter.Painter] used to display an icon after the list item.
 * @param iconDescription Content description of the icon.
 * @param iconTint Tint applied to [iconPainter].
 * @param onIconClick Called when the user clicks on the icon. An [androidx.compose.material.IconButton] will be
 * displayed if this is provided. Otherwise, an [androidx.compose.material.Icon] will be displayed.
 */
@Composable
fun TextListItem(
    label: String,
    modifier: Modifier = Modifier,
    maxLabelLines: Int = 1,
    description: String? = null,
    maxDescriptionLines: Int = 1,
    minHeight: Dp = LIST_ITEM_HEIGHT,
    onClick: (() -> Unit)? = null,
    onLongClick: (() -> Unit)? = null,
    iconPainter: Painter? = null,
    iconDescription: String? = null,
    iconTint: Color = AcornTheme.colors.iconPrimary,
    onIconClick: (() -> Unit)? = null,
) {
    ListItem(
        label = label,
        maxLabelLines = maxLabelLines,
        modifier = modifier,
        description = description,
        maxDescriptionLines = maxDescriptionLines,
        minHeight = minHeight,
        onClick = onClick,
        onLongClick = onLongClick,
    ) {
        if (iconPainter == null) {
            return@ListItem
        }

        Spacer(modifier = Modifier.width(16.dp))

        if (onIconClick == null) {
            Icon(
                painter = iconPainter,
                contentDescription = iconDescription,
                tint = iconTint,
            )
        } else {
            IconButton(
                onClick = onIconClick,
                modifier = Modifier
                    .size(ICON_SIZE)
                    .clearAndSetSemantics {},
            ) {
                Icon(
                    painter = iconPainter,
                    contentDescription = iconDescription,
                    tint = iconTint,
                )
            }
        }
    }
}

/**
 * Base list item used to display a label with an optional description text and
 * the flexibility to add custom UI to either end of the item.
 *
 * @param label The label in the list item.
 * @param modifier [Modifier] to be applied to the layout.
 * @param labelModifier [Modifier] to be applied to the label.
 * @param labelTextColor [Color] to be applied to the label.
 * @param descriptionTextColor [Color] to be applied to the description.
 * @param maxLabelLines An optional maximum number of lines for the label text to span.
 * @param description An optional description text below the label.
 * @param maxDescriptionLines An optional maximum number of lines for the description text to span.
 * @param enabled Controls the enabled state of the list item. When `false`, the list item will not
 * be clickable.
 * @param minHeight An optional minimum height for the list item.
 * @param onClick Called when the user clicks on the item.
 * @param onLongClick Called when the user long clicks on the item.
 * @param beforeListAction Optional Composable for adding UI before the list item.
 * @param afterListAction Optional Composable for adding UI to the end of the list item.
 */
@OptIn(ExperimentalFoundationApi::class)
@Composable
fun ListItem(
    label: String,
    modifier: Modifier = Modifier,
    labelModifier: Modifier = Modifier,
    labelTextColor: Color = AcornTheme.colors.textPrimary,
    descriptionTextColor: Color = AcornTheme.colors.textSecondary,
    maxLabelLines: Int = 1,
    description: String? = null,
    maxDescriptionLines: Int = 1,
    enabled: Boolean = true,
    minHeight: Dp = LIST_ITEM_HEIGHT,
    onClick: (() -> Unit)? = null,
    onLongClick: (() -> Unit)? = null,
    beforeListAction: @Composable RowScope.() -> Unit = {},
    afterListAction: @Composable RowScope.() -> Unit = {},
) {
    val haptics = LocalHapticFeedback.current
    Row(
        modifier = modifier
            .height(IntrinsicSize.Min)
            .defaultMinSize(minHeight = minHeight)
            .thenConditional(
                modifier = Modifier.combinedClickable(
                    onClick = { onClick?.invoke() },
                    onLongClick = {
                        onLongClick?.let {
                            haptics.performHapticFeedback(HapticFeedbackType.Companion.LongPress)
                            it.invoke()
                        }
                    },
                ),
                predicate = { (onClick != null || onLongClick != null) && enabled },
            )
            .padding(horizontal = 16.dp, vertical = 6.dp),
        verticalAlignment = Alignment.Companion.CenterVertically,
    ) {
        beforeListAction()

        Column(
            modifier = Modifier.weight(1f),
        ) {
            Text(
                text = label,
                modifier = labelModifier,
                color = if (enabled) labelTextColor else AcornTheme.colors.textDisabled,
                overflow = TextOverflow.Companion.Ellipsis,
                style = AcornTheme.typography.subtitle1.merge(
                    platformStyle = PlatformTextStyle(includeFontPadding = true),
                ),
                maxLines = maxLabelLines,
            )

            description?.let {
                Text(
                    text = description,
                    color = if (enabled) descriptionTextColor else AcornTheme.colors.textDisabled,
                    overflow = TextOverflow.Companion.Ellipsis,
                    maxLines = maxDescriptionLines,
                    style = AcornTheme.typography.body2
                        .merge(
                            // Bug 1915867 - We must force the text direction to correctly truncate a LTR
                            // description that is too long when the app in RTL mode - at least until this
                            // bug gets fixed in Compose.
                            // This isn't the most optional solution but it should have less side-effects
                            // than forcing no letter spacing (which would be the best approach here).
                            textDirection = TextDirection.Companion.Content,
                            platformStyle = PlatformTextStyle(includeFontPadding = true),
                        ),
                )
            }
        }

        afterListAction()
    }
}