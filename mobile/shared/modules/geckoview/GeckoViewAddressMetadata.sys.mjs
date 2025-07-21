/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

const lazy = {};
import { GeckoViewUtils } from "resource://gre/modules/GeckoViewUtils.sys.mjs";

ChromeUtils.defineESModuleGetters(lazy, {
  FormAutofillUtils: "resource://gre/modules/shared/FormAutofillUtils.sys.mjs",
});

export const GeckoViewAddressMetadata = {
  async onEvent(aEvent, aData, aCallback) {
    debug`onEvent: event=${aEvent}, data=${aData}`;

    switch (aEvent) {
      case "GeckoView:AddressMetadata:GetFormLayout": {
        debug`onEvent: event=${aEvent}, data=${aData}`;
        const country = aData.country ? aData.country : "US";
        const layout = lazy.FormAutofillUtils.getFormLayout( { country: `${country}`})
        aCallback.onSuccess({
          fields: layout
        });
        break;
      }
    }
  },
};

const { debug, warn } = GeckoViewUtils.initLogging("GeckoViewAddressMetadata");
