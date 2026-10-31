# [android-components](../../../README.md) > Support > Keyboard

Support module for hardware keyboard input and contextual keyboard shortcuts.

Fragments, Views, and Compose share one dispatcher. The last registered enabled
matching callback wins. Screen and pane context is expressed through callback
enablement; this module does not create a hierarchy of scopes.

## Usage

### Setting up the dependency

```Groovy
implementation "org.mozilla.components:support-keyboard:{latest-version}"
```

### Activity ownership

Implement `KeyboardShortcutDispatcherOwner`, attach it to the decor View, and
dispatch shortcuts before normal Android dispatch:

```kotlin
class BrowserActivity : AppCompatActivity(), KeyboardShortcutDispatcherOwner {
    override val keyboardShortcutDispatcher = KeyboardShortcutDispatcher()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.decorView.setViewTreeKeyboardShortcutDispatcherOwner(this)
        setContentView(R.layout.activity_browser)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean =
        keyboardShortcutDispatcher.dispatchKeyEvent(event) ||
            super.dispatchKeyEvent(event)

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (!hasFocus) keyboardShortcutDispatcher.resetPressedKeys()
    }

    override fun onDestroy() {
        keyboardShortcutDispatcher.dispose()
        super.onDestroy()
    }
}
```

Preserve any existing special handling for system keys before this delegation.
All registration and dispatch operations run on the main thread.

### Fragment callbacks

Define a shortcut using one Android key code and exact modifier requirements:

```kotlin
val findShortcut = SimpleKeyboardShortcut(KeyEvent.KEYCODE_F, ctrl = true)
```

Find the View-tree owner in `onViewCreated`, then register using the fragment's
view lifecycle:

```kotlin
val dispatcher = requireNotNull(
    view.findViewTreeKeyboardShortcutDispatcherOwner(),
).keyboardShortcutDispatcher

val callback = dispatcher.addCallback(
    owner = viewLifecycleOwner,
    shortcut = findShortcut,
    enabled = isCurrentScreen,
) {
    openFindInPage()
}

callback.isEnabled = isCurrentScreen && canFindInPage
```

Registrations participate while the owner is at least `STARTED` and are removed
when it is destroyed. Starting or stopping does not change registration order.
Use `isEnabled` to exclude inactive screens, panes, and UI behind overlays.
For stricter visibility requirements, also include the resumed state in
enablement. The lifecycle does not modify the caller's `isEnabled` value.

For manual removal, call `dispatcher.removeCallback(callback)`. Registrations
without a lifecycle owner remain until explicitly removed or the dispatcher is
disposed. An existing `KeyboardShortcutCallback` can also be passed to
`addCallback`, with or without an owner.

### Compose handler

Import the Compose APIs from `mozilla.components.support.keyboard.compose`:

```kotlin
KeyboardShortcutHandler(
    shortcut = findShortcut,
    enabled = isCurrentScreen && canFindInPage,
) {
    openFindInPage()
}
```

Call the handler unconditionally and express availability through `enabled`.
Recomposition updates the action and enablement without changing registration
order. Leaving composition removes the callback.

The dispatcher is resolved from `LocalKeyboardShortcutDispatcher`, then the
View-tree owner, then a context implementing `KeyboardShortcutDispatcherOwner`.
The current `LocalLifecycleOwner` controls lifecycle eligibility. A ComposeView
inside a fragment inherits the host's dispatcher automatically.

To provide a dispatcher explicitly:

```kotlin
CompositionLocalProvider(LocalKeyboardShortcutDispatcher provides dispatcher) {
    BrowserContent()
}
```

The provided dispatcher must also receive the host's key events.
A missing owner produces an error instead of creating a disconnected dispatcher.

### Compose modifier

Use the modifier for a shortcut enabled only while its observed focus target has
focus, including focus in that target's descendants:

```kotlin
Box(
    modifier = Modifier
        .keyboardShortcut(findShortcut, enabled = canFindInPage) {
            openFindInPage()
        }
        .focusable(),
)
```

Place `keyboardShortcut` before the focus target's modifier. The shortcut
modifier does not add a focus stop or request focus. Components with an internal
focus target, such as an editor, can receive it through their `modifier` argument.

The modifier and handler use the same registration order and dispatcher. Focus
controls the modifier callback's enablement; it does not give it a separate
priority over callbacks registered later. Nested contexts are also controlled
through enablement rather than scopes.

### Input handling

Only an initial key-down invokes an action. The dispatcher consumes that press's
repeats and release even if the callback is removed or disabled by the action.
Window focus loss clears this tracking. Unmatched events are forwarded unchanged
through normal Android dispatch; events are never buffered or replayed.

Ctrl, Alt, Shift, and Meta must match exactly. Left and right modifier variants
are equivalent, lock states are ignored, and Meta is not an alias for Ctrl.
Multiple simultaneously held ordinary keys and shortcut sequences are unsupported.

Enabled shortcuts take precedence over text fields and embedded web content.
GeckoView accepts most keys before Gecko processes them, so an Android fallback
cannot reliably discover that a page left a shortcut unhandled. Handle deliberate
browser shortcuts before GeckoView; leave typing, editing, and page-specific
combinations unregistered so normal dispatch receives them.

## License

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at http://mozilla.org/MPL/2.0/
