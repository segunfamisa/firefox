/* -*- Mode: Java; c-basic-offset: 4; tab-width: 20; indent-tabs-mode: nil; -*-
 * vim: ts=4 sw=4 expandtab:
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.geckoview;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import org.mozilla.gecko.EventDispatcher;
import org.mozilla.gecko.util.GeckoBundle;
import org.mozilla.thirdparty.com.google.android.exoplayer2.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Manage runtime address data
 */
public final class AddressMetadataController {
    private static final String TAG = "AddressController";

    public static class RuntimeAddressMetadata {
        private static final String GET_FORM_LAYOUT = "GeckoView:AddressMetadata:GetFormLayout";
        private static final String FIELD_ID_KEY = "fieldId";
        private static final String L10N_ID_KEY = "l10nId";

        @AnyThread
        public static @NonNull GeckoResult<List<GeckoAddressField>> getAddressFields(@NonNull String countryCode) {
            final GeckoBundle param = new GeckoBundle();
            param.putString("country", countryCode);
            return EventDispatcher.getInstance().queryBundle(GET_FORM_LAYOUT, param)
                    .map(AddressMetadataController::fromBundle);
        }
    }

    @NonNull
    static List<GeckoAddressField> fromBundle(final GeckoBundle bundle) {
        if (bundle == null)
            throw new IllegalStateException("AddressFormLayout.fromBundle expects non-null bundle, " +
                    "but got null value");

        List<GeckoAddressField> fields = new ArrayList<>();

        GeckoBundle[] bundleFields = bundle.getBundleArray("fields");
        if (bundleFields == null) {
            bundleFields = new GeckoBundle[]{};
        }
        for (GeckoBundle field : bundleFields) {
            GeckoAddressField addressField = GeckoAddressField.fromBundle(field);
            fields.add(addressField);
        }

        return fields;
    }

    public interface GeckoAddressField {
        String getId();

        String getLocalizationKey();

        @NonNull
        static GeckoAddressField fromBundle(final GeckoBundle bundle) {
            if (bundle.containsKey("options")) {
                return SelectorField.fromBundle(bundle);
            } else {
                return TextField.fromBundle(bundle);
            }
        }

        final class TextField implements GeckoAddressField {

            private final String id;
            private final String localizationKey;

            TextField(String id, String localizationKey) {
                this.id = id;
                this.localizationKey = localizationKey;
            }

            @Override
            public String getId() {
                return id;
            }

            @Override
            public String getLocalizationKey() {
                return localizationKey;
            }

            @Override
            public boolean equals(Object o) {
                if (o == null || getClass() != o.getClass()) return false;
                TextField textField = (TextField) o;
                return Objects.equals(id, textField.id) &&
                        Objects.equals(localizationKey, textField.localizationKey);
            }

            @Override
            public int hashCode() {
                return Objects.hash(id, localizationKey);
            }

            @NonNull
            static TextField fromBundle(final GeckoBundle bundle) {
                return new TextField(
                        bundle.getString(RuntimeAddressMetadata.FIELD_ID_KEY),
                        bundle.getString(RuntimeAddressMetadata.L10N_ID_KEY)
                );
            }
        }

        final class SelectorField implements GeckoAddressField {
            private final String id;
            private final String localizationKey;
            public final String defaultValue;
            public final List<GeckoAddressFieldOption> options;

            SelectorField(String id,
                          String localizationKey,
                          String defaultValue,
                          List<GeckoAddressFieldOption> options) {
                this.id = id;
                this.localizationKey = localizationKey;
                this.defaultValue = defaultValue;
                this.options = options;
            }

            @Override
            public String getId() {
                return id;
            }

            @Override
            public String getLocalizationKey() {
                return localizationKey;
            }

            @Override
            public boolean equals(Object o) {
                if (o == null || getClass() != o.getClass()) return false;
                SelectorField that = (SelectorField) o;
                return Objects.equals(id, that.id) &&
                        Objects.equals(localizationKey, that.localizationKey) &&
                        Objects.equals(defaultValue, that.defaultValue) &&
                        Objects.equals(options, that.options);
            }

            @Override
            public int hashCode() {
                return Objects.hash(id, localizationKey, defaultValue, options);
            }

            @NonNull
            static SelectorField fromBundle(final GeckoBundle bundle) {
                String id = bundle.getString(RuntimeAddressMetadata.FIELD_ID_KEY);
                String localizationKey = bundle.getString(RuntimeAddressMetadata.L10N_ID_KEY);
                String defaultValue = bundle.getString("value", "");

                List<GeckoAddressFieldOption> options = new ArrayList<>();
                GeckoBundle[] bundleOptions = bundle.getBundleArray("options");
                if (bundleOptions == null) bundleOptions = new GeckoBundle[]{};

                for (GeckoBundle bundleOption : bundleOptions) {
                    options.add(GeckoAddressFieldOption.fromBundle(bundleOption));
                }

                return new SelectorField(id, localizationKey, defaultValue, options);
            }

            public static final class GeckoAddressFieldOption {
                @NonNull
                public final String key;

                @NonNull
                public final String value;

                GeckoAddressFieldOption(@NonNull String key, @NonNull String value) {
                    this.key = key;
                    this.value = value;
                }

                @Override
                public boolean equals(Object o) {
                    if (o == null || getClass() != o.getClass()) return false;
                    GeckoAddressFieldOption that = (GeckoAddressFieldOption) o;
                    return Objects.equals(key, that.key) && Objects.equals(value, that.value);
                }

                @Override
                public int hashCode() {
                    return Objects.hash(key, value);
                }

                @Nullable
                static GeckoAddressFieldOption fromBundle(final GeckoBundle bundle) {
                    if (bundle == null) return null;
                    try {
                        final String text = bundle.getString("text", "");
                        final String value = bundle.getString("value", "");

                        if (text.isEmpty() || value.isEmpty()) {
                            throw new IllegalStateException("AddressFieldOption text or value should not be null");
                        }

                        return new GeckoAddressFieldOption(value, text);
                    } catch (final Exception e) {
                        Log.e(TAG, "Could not deserialize AddressFieldOption: " + e);
                        return null;
                    }
                }
            }
        }
    }
}
