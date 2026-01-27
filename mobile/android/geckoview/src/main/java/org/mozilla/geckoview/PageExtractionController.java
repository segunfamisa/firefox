/* -*- Mode: Java; c-basic-offset: 4; tab-width: 20; indent-tabs-mode: nil; -*-
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package org.mozilla.geckoview;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

/** Manges the page content extraction */
public class PageExtractionController {

  /**
   * Session page extractor coordinates session messaging between the page extractor actor and
   * GeckoView.
   *
   * <p>Performs page extraction actions that are dependent on the page.
   */
  public static class SessionPageExtractor {

    // Events dispatched to Toolkit Page Extractor
    private static final String GET_TEXT_CONTENT_EVENT = "GeckoView:PageExtractor:GetTextContent";

    private final GeckoSession mSession;

    /**
     * Construct a new page extractor session.
     *
     * @param session that will be dispatching and receiving events.
     */
    public SessionPageExtractor(final GeckoSession session) {
      mSession = session;
    }

    /**
     * Gets the page content for the current page.
     *
     * @return the content of the current page as a {@link PageContent} object
     */
    @AnyThread
    public @NonNull GeckoResult<PageContent> getPageContent() {
      return mSession
          .getEventDispatcher()
          .queryBundle(GET_TEXT_CONTENT_EVENT)
          .map(
              result -> {
                final String textContent = result != null ? result.getString("text") : null;
                return new PageContent(textContent);
              },
              exception -> new PageExtractionException("Unable to fetch text content", exception));
    }
  }

  /** The result of a page extraction */
  public static class PageContent {

    @Nullable private final String mText;

    /**
     * Construct a new page extraction result.
     *
     * @param textContent the text content of the page
     */
    public PageContent(@Nullable final String textContent) {
      this.mText = textContent;
    }

    /**
     * Gets the text content of the page.
     *
     * @return the text content of the page
     */
    @AnyThread
    @Nullable
    public String getText() {
      return mText;
    }

    @Override
    public final boolean equals(final Object o) {
      if (!(o instanceof PageContent)) return false;
      return Objects.equals(mText, ((PageContent) o).mText);
    }

    @Override
    public int hashCode() {
      return Objects.hashCode(mText);
    }
  }

  /** The exception thrown when a page extraction fails */
  public static class PageExtractionException extends Exception {

    /**
     * Construct a new page extraction exception.
     *
     * @param message the error message
     * @param cause the cause of the error
     */
    public PageExtractionException(final String message, final Throwable cause) {
      super(message, cause);
    }
  }
}
