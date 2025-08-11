/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package mozilla.components.tooling.detekt.health

import io.gitlab.arturbosch.detekt.api.CodeSmell
import io.gitlab.arturbosch.detekt.api.Config
import io.gitlab.arturbosch.detekt.api.Debt
import io.gitlab.arturbosch.detekt.api.Entity
import io.gitlab.arturbosch.detekt.api.Issue
import io.gitlab.arturbosch.detekt.api.Location
import io.gitlab.arturbosch.detekt.api.Rule
import io.gitlab.arturbosch.detekt.api.Severity
import io.gitlab.arturbosch.detekt.api.config
import org.jetbrains.kotlin.psi.KtAnnotationEntry
import org.jetbrains.kotlin.psi.KtCallExpression
import org.jetbrains.kotlin.psi.KtCollectionLiteralExpression
import org.jetbrains.kotlin.psi.KtExpression
import org.jetbrains.kotlin.psi.KtStringTemplateExpression

/**
 * Detekt rule to report whether a forbidden rule has been suppressed.
 *
 * The goal of this rule is to have some rules that we never want to suppress. This is a bit recursive
 * because we also do not want this rule to be suppressed.
 *
 * Usage:
 *
 * Add these lines to your detekt config yml file:
 *
 * ```
 * mozilla-rules:
 *   ForbiddenSuppression:
 *     active: true
 *     forbiddenSuppressions:
 *       - 'ForbiddenRule1'
 *       - 'ForbiddenRule2'
 * ```
 */
class ForbiddenSuppressionRule(config: Config = Config.empty) : Rule(config) {

    private val forbiddenSuppressions: Set<String> by config(emptyList<String>()) {
        it.toSet() + "ForbiddenSuppression"
    }

    override val issue: Issue
        get() = Issue(
            id = "ForbiddenSuppression",
            severity = Severity.CodeSmell,
            description = "Forbidden suppression has been detected.",
            debt = Debt.TWENTY_MINS,
        )

    override fun visitAnnotationEntry(annotationEntry: KtAnnotationEntry) {
        super.visitAnnotationEntry(annotationEntry)

        val annotation = annotationEntry.shortName?.identifier ?: return

        val supportedAnnotations = setOf("Suppress", "SuppressWarnings")
        if (annotation !in supportedAnnotations) return

        val annotationArgs = annotationEntry.valueArguments.mapNotNull { arg ->
            arg.getArgumentExpression()?.getArguments()
        }.flatten().toSet()

        val violations = annotationArgs.intersect(forbiddenSuppressions)

        if (violations.isNotEmpty()) {
            val location = Location.from(annotationEntry)
            report(
                finding = CodeSmell(
                    issue = issue,
                    entity = Entity.from(
                        annotationEntry,
                        location,
                    ),
                    message = buildString {
                        append("Suppressing ${violations.joinToString(",") { it.trim() }} ")
                        append("has been forbidden. Please consider fixing the issue(s) instead of suppressing it")
                    },
                ),
            )
        }
    }

    private fun KtExpression.getArguments(): List<String>? {
        return when (this) {
            is KtStringTemplateExpression -> {
                this.entries.mapNotNull { it.text }.joinToString("")
                    .removeSurrounding("\"")
                    .split(",")
                    .map { it.trim() }
                    .filter { it.isNotEmpty() }
            }

            is KtCollectionLiteralExpression -> {
                this.innerExpressions.mapNotNull { it.getArguments() }.flatten()
            }

            is KtCallExpression -> {
                valueArguments.mapNotNull { callArgument ->
                    callArgument.getArgumentExpression()?.getArguments()
                }.flatten()
            }

            else -> null
        }
    }
}
