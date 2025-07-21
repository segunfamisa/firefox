/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.browser.engine.gecko.addressmetadata

import mozilla.components.concept.engine.addressmetadata.AddressField
import mozilla.components.concept.engine.addressmetadata.SelectorAddressField
import mozilla.components.concept.engine.addressmetadata.TextAddressField
import org.mozilla.geckoview.AddressMetadataController.GeckoAddressField
import org.mozilla.geckoview.AddressMetadataController.RuntimeAddressMetadata
import org.mozilla.geckoview.GeckoResult

interface RuntimeAddressMetadataAccessor {

    fun getAddressFields(
        countryCode: String,
        onSuccess: (List<AddressField>) -> Unit,
        onError: (Throwable) -> Unit,
    )
}

internal class DefaultRuntimeAddressMetadataAccessor : RuntimeAddressMetadataAccessor {

    override fun getAddressFields(
        countryCode: String,
        onSuccess: (List<AddressField>) -> Unit,
        onError: (Throwable) -> Unit,
    ) {
        handleGeckoResult(
            geckoResult = RuntimeAddressMetadata.getAddressFields(countryCode)
                .toConceptAddressFields(),
            onSuccess = onSuccess,
            onError = onError,
        )
    }

    fun <T : Any> handleGeckoResult(
        geckoResult: GeckoResult<T>,
        onSuccess: (T) -> Unit,
        onError: (Throwable) -> Unit,
    ) {
        geckoResult.then(
            { res: T? ->
                onSuccess(res!!)
                GeckoResult<Void>()
            },
            { throwable ->
                onError(throwable)
                GeckoResult<Void>()
            },
        )
    }

    private fun GeckoResult<List<GeckoAddressField>>.toConceptAddressFields(): GeckoResult<List<AddressField>> {
        return map { results ->
            results?.mapNotNull { result ->
                when (result) {
                    is GeckoAddressField.SelectorField -> SelectorAddressField(
                        id = result.id,
                        localizationKey = result.localizationKey,
                        defaultSelectionKey = result.defaultValue,
                        options = result.options.map { option ->
                            SelectorAddressField.Option(
                                key = option.key,
                                value = option.value,
                            )
                        },
                    )

                    is GeckoAddressField.TextField -> TextAddressField(
                        id = result.id,
                        localizationKey = result.localizationKey,
                    )

                    else -> null
                }
            } ?: emptyList()
        }
    }
}
