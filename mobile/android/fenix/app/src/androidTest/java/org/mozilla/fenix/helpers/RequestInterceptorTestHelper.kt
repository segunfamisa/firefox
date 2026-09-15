/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.fenix.helpers

import android.util.Log
import org.mozilla.fenix.ext.components
import org.mozilla.fenix.helpers.Constants.TAG
import org.mozilla.fenix.helpers.TestHelper.appContext

/**
 * Configures the app's request interceptor for UI tests: routes Firefox Account sign-in through the redirect
 * interceptor, which the staging servers support and the web channel does not, and leaves app-initiated requests
 * un-intercepted so typing a URL does not raise an "open in app" prompt.
 */
fun configureRequestInterceptorForTests() {
    val interceptor = appContext.components.core.requestInterceptor
    val fxaInterceptor = appContext.components.services.accountsAuthFeature.interceptor

    Log.i(TAG, "configureRequestInterceptorForTests: Trying to configure the request interceptor")
    if (!interceptor.additionalInterceptors.contains(fxaInterceptor)) {
        interceptor.additionalInterceptors = interceptor.additionalInterceptors + fxaInterceptor
    }
    interceptor.interceptAppInitiatedRequests = false
    Log.i(TAG, "configureRequestInterceptorForTests: Configured the request interceptor")
}
