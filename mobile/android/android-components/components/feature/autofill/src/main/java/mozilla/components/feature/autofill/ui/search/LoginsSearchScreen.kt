/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.feature.autofill.ui.search

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.material.Scaffold
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.material.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextRange
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.tooling.preview.PreviewLightDark
import androidx.compose.ui.unit.dp
import mozilla.components.compose.base.list.ListItem
import mozilla.components.compose.base.theme.AcornTheme
import mozilla.components.concept.storage.Login
import mozilla.components.feature.autofill.R

@Composable
internal fun LoginsSearchScreen(
    state: LoginsSearchState,
    onLoginSelected: (Login) -> Unit = {},
    onSearchTextChanged: (String) -> Unit = {},
    onCloseClicked: () -> Unit = {},
) {
    Scaffold(
        topBar = {
            SearchBar(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp),
                searchText = state.searchText,
                onSearchTextChanged = onSearchTextChanged,
                onCloseClicked = onCloseClicked,
            )
        },
        backgroundColor = AcornTheme.colors.layer1,
    ) { paddingValues ->
        AnimatedVisibility(
            visible = state.logins.isNotEmpty(),
            enter = fadeIn(),
            exit = fadeOut(),
        ) {
            LoginsList(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .animateContentSize(),
                logins = state.logins,
                onLoginSelected = onLoginSelected,
            )
        }
    }
}

@Composable
private fun SearchBar(
    modifier: Modifier = Modifier,
    searchText: String,
    onSearchTextChanged: (String) -> Unit,
    onCloseClicked: () -> Unit,
) {
    Surface(
        modifier = modifier,
        color = AcornTheme.colors.layer1,
    ) {
        Row(
            modifier = Modifier.padding(
                horizontal = AcornTheme.layout.space.dynamic150,
                vertical = AcornTheme.layout.space.dynamic100,
            ),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(AcornTheme.layout.space.dynamic50),
        ) {

            IconButton(onClick = onCloseClicked) {
                Icon(
                    painter = painterResource(R.drawable.mozac_ic_cross_24),
                    contentDescription = stringResource(R.string.mozac_feature_autofill_toolbar_close),
                    tint = AcornTheme.colors.iconPrimary,
                )
            }

            SearchField(
                modifier = Modifier.weight(weight = 1f, fill = true),
                value = searchText,
                onValueChange = onSearchTextChanged,
            )
        }
    }
}

@Composable
private fun SearchField(
    modifier: Modifier,
    value: String,
    onValueChange: (String) -> Unit,
) {
    var textFieldValue by rememberSaveable(stateSaver = TextFieldValue.Saver) {
        mutableStateOf(
            TextFieldValue(
                text = value,
                selection = TextRange(value.length),
            ),
        )
    }
    BasicTextField(
        value = textFieldValue,
        onValueChange = {
            textFieldValue = it
            onValueChange(it.text)
        },
        modifier = modifier
            .fillMaxWidth()
            .defaultMinSize(minWidth = TextFieldDefaults.MinWidth),
        singleLine = true,
        textStyle = AcornTheme.typography.body1.copy(
            color = AcornTheme.colors.textSecondary,
        ),
        keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
        decorationBox = { innerTextField ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(
                        color = AcornTheme.colors.layerSearch,
                        shape = RoundedCornerShape(AcornTheme.layout.corner.large),
                    )
                    .padding(AcornTheme.layout.space.dynamic100),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(AcornTheme.layout.space.dynamic50),
            ) {
                Icon(
                    painter = painterResource(R.drawable.mozac_ic_search_24),
                    contentDescription = null,
                    tint = AcornTheme.colors.iconSecondary,
                )

                Box(modifier = Modifier.weight(1f, fill = true)) {
                    innerTextField()

                    this@Row.AnimatedVisibility(visible = value.isEmpty()) {
                        Text(
                            text = stringResource(R.string.mozac_feature_autofill_search_hint),
                            style = AcornTheme.typography.body1,
                            color = AcornTheme.colors.textSecondary,
                        )
                    }
                }

            }
        },
    )
}

@Composable
private fun LoginsList(
    modifier: Modifier,
    logins: List<Login>,
    onLoginSelected: (Login) -> Unit,
) {
    LazyColumn(modifier = modifier) {
        items(logins) { login ->
            LoginListItem(
                modifier = Modifier
                    .fillMaxWidth()
                    .animateItem(),
                login = login,
                onLoginSelected = onLoginSelected,
            )
        }
    }
}

@Composable
private fun LoginListItem(
    modifier: Modifier = Modifier,
    login: Login,
    onLoginSelected: (Login) -> Unit,
) {
    ListItem(
        modifier = modifier,
        label = login.origin,
        description = login.username,
        onClick = {
            onLoginSelected(login)
        },
    )
}

@Composable
@Preview(showBackground = false)
@PreviewLightDark
private fun PreviewSearchScreen() = AcornTheme {
    var searchText by remember { mutableStateOf("") }
    val state = LoginsSearchState(
        logins = listOf(
            Login(
                guid = "test-guid",
                origin = "origin",
                username = "username",
                password = "password",
            ),
            Login(
                guid = "test-guid-2",
                origin = "origin",
                username = "username",
                password = "password",
            ),
            Login(
                guid = "test-guid-3",
                origin = "origin",
                username = "username",
                password = "password",
            ),
        ),
        searchText = searchText,
    )
    Column {
        LoginsSearchScreen(
            state = state.copy(
                logins = state.logins.filter {
                    it.origin.contains(searchText)
                },
            ),
            onSearchTextChanged = {
                searchText = it
            },
        )
    }
}
