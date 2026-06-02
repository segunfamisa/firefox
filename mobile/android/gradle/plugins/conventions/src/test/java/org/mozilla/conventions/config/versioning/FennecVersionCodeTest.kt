/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.conventions.config.versioning

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertThrows
import org.junit.jupiter.api.Test
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class FennecVersionCodeTest {

    private val cutoff: Date = SimpleDateFormat("yyyyMMddHHmmss", Locale.US).parse("20141228000000")
    private val baseMask = 0x78200000

    private fun dateAt(hoursAfterCutoff: Long): Date =
        Date(cutoff.time + hoursAfterCutoff * 3600L * 1000L)

    @Test
    fun `base zero at cutoff sets only base mask for 32-bit ARM`() {
        val code = generateFennecVersionCode("armeabi-v7a") { cutoff }
        assertEquals(baseMask, code)
    }

    @Test
    fun `64-bit ARM sets the p bit only`() {
        val code = generateFennecVersionCode("arm64-v8a") { cutoff }
        assertEquals(baseMask or (1 shl 1), code)
    }

    @Test
    fun `32-bit x86 sets the x bit only`() {
        val code = generateFennecVersionCode("x86") { cutoff }
        assertEquals(baseMask or (1 shl 2), code)
    }

    @Test
    fun `x86_64 sets both x and p bits`() {
        val code = generateFennecVersionCode("x86_64") { cutoff }
        assertEquals(baseMask or (1 shl 2) or (1 shl 1), code)
    }

    @Test
    fun `universal sets x, p, and g bits`() {
        val code = generateFennecVersionCode("universal") { cutoff }
        assertEquals(baseMask or (1 shl 2) or (1 shl 1) or (1 shl 0), code)
    }

    @Test
    fun `unknown abi is treated as 32-bit ARM APK`() {
        val code = generateFennecVersionCode("mips") { cutoff }
        assertEquals(baseMask, code)
    }

    @Test
    fun `base is hours since cutoff shifted left by 3`() {
        val d = dateAt(1000)
        val code = generateFennecVersionCode("armeabi-v7a") { d }
        assertEquals(baseMask or (1000 shl 3), code)
    }

    @Test
    fun `same clock differs across ABIs only in low 3 bits`() {
        val d = dateAt(1234)
        val arm = generateFennecVersionCode("armeabi-v7a") { d }
        val arm64 = generateFennecVersionCode("arm64-v8a") { d }
        val x86 = generateFennecVersionCode("x86") { d }
        val x8664 = generateFennecVersionCode("x86_64") { d }
        val universal = generateFennecVersionCode("universal") { d }
        val highBits = arm and 0x7.inv()
        assertEquals(highBits, arm64 and 0x7.inv())
        assertEquals(highBits, x86 and 0x7.inv())
        assertEquals(highBits, x8664 and 0x7.inv())
        assertEquals(highBits, universal and 0x7.inv())
    }

    @Test
    fun `underflow before cutoff throws`() {
        val before = dateAt(-1)
        assertThrows(RuntimeException::class.java) {
            generateFennecVersionCode("armeabi-v7a") { before }
        }
    }

    @Test
    fun `nearing low-order-bits exhaustion throws`() {
        // 0x20000 = 131072; threshold = 131072 - 366*24 = 122288; one hour past triggers.
        val nearOverflow = dateAt(122289L)
        assertThrows(RuntimeException::class.java) {
            generateFennecVersionCode("armeabi-v7a") { nearOverflow }
        }
    }
}
