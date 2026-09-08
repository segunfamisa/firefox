-keep,allowobfuscation class androidx.activity.ComponentActivity {
}
-keep,allowobfuscation class androidx.activity.compose.ComponentActivityKt {
  public static void setContent(androidx.activity.ComponentActivity, androidx.compose.runtime.CompositionContext, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation @interface androidx.annotation.AnyThread {
}
-keep,allowobfuscation @interface androidx.annotation.CallSuper {
}
-keep,allowobfuscation @interface androidx.annotation.CheckResult {
}
-keep,allowobfuscation @interface androidx.annotation.ChecksSdkIntAtLeast {
  public int api();
  public int extension();
}
-keep,allowobfuscation @interface androidx.annotation.DoNotInline {
}
-keep,allowobfuscation @interface androidx.annotation.FloatRange {
  public double from();
  public boolean fromInclusive();
  public double to();
}
-keep,allowobfuscation @interface androidx.annotation.GuardedBy {
  public java.lang.String value();
}
-keep,allowobfuscation @interface androidx.annotation.IntRange {
  public long from();
}
-keep,allowobfuscation @interface androidx.annotation.NonNull {
}
-keep,allowobfuscation @interface androidx.annotation.Nullable {
}
-keep,allowobfuscation @interface androidx.annotation.Px {
}
-keep,allowobfuscation @interface androidx.annotation.RequiresApi {
  public int value();
}
-keep enum androidx.annotation.RestrictTo$Scope {
  androidx.annotation.RestrictTo$Scope LIBRARY;
  androidx.annotation.RestrictTo$Scope LIBRARY_GROUP;
}
-keep,allowobfuscation @interface androidx.annotation.RestrictTo {
  public androidx.annotation.RestrictTo$Scope[] value();
}
-keep,allowobfuscation @interface androidx.annotation.StringRes {
}
-keep,allowobfuscation @interface androidx.annotation.VisibleForTesting {
}
-keep,allowobfuscation @interface androidx.annotation.WorkerThread {
}
-keep,allowobfuscation class androidx.appcompat.R$id {
  int search_close_btn;
}
-keep,allowobfuscation class androidx.appcompat.R {
}
-keep,allowobfuscation class androidx.appcompat.app.AppCompatActivity {
  public android.view.View findViewById(int);
  public android.content.res.Resources getResources();
}
-keep,allowobfuscation class androidx.appcompat.app.AppCompatDelegate {
  public static void setApplicationLocales(androidx.core.os.LocaleListCompat);
}
-keep,allowobfuscation class androidx.arch.core.executor.ArchTaskExecutor {
  public static java.util.concurrent.Executor getIOThreadExecutor();
}
-keep,allowobfuscation class androidx.browser.customtabs.CustomTabsIntent$Builder {
  public <init>();
  public androidx.browser.customtabs.CustomTabsIntent$Builder addMenuItem(java.lang.String, android.app.PendingIntent);
  public androidx.browser.customtabs.CustomTabsIntent build();
  public androidx.browser.customtabs.CustomTabsIntent$Builder setActionButton(android.graphics.Bitmap, java.lang.String, android.app.PendingIntent, boolean);
  public androidx.browser.customtabs.CustomTabsIntent$Builder setShareState(int);
}
-keep,allowobfuscation class androidx.browser.customtabs.CustomTabsIntent {
  android.content.Intent intent;
}
-keep,allowobfuscation class androidx.collection.IntObjectMapKt {
  public static androidx.collection.MutableIntObjectMap mutableIntObjectMapOf();
}
-keep,allowobfuscation class androidx.collection.IntSet {
  public boolean contains(int);
}
-keep,allowobfuscation class androidx.collection.IntSetKt {
  public static androidx.collection.IntSet intSetOf(int[]);
}
-keep,allowobfuscation class androidx.collection.MutableIntObjectMap {
  public java.lang.Object remove(int);
  public void set(int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.animation.ExitTransition {
}
-keep,allowobfuscation interface androidx.compose.animation.core.Easing {
}
-keep,allowobfuscation class androidx.compose.foundation.BackgroundKt {
  public static androidx.compose.ui.Modifier background-bw27NRU$default(androidx.compose.ui.Modifier, long, androidx.compose.ui.graphics.Shape, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.foundation.BorderStroke {
}
-keep,allowobfuscation interface androidx.compose.foundation.OverscrollEffect {
}
-keep,allowobfuscation interface androidx.compose.foundation.gestures.FlingBehavior {
}
-keep,allowobfuscation interface androidx.compose.foundation.layout.Arrangement$Vertical {
}
-keep,allowobfuscation class androidx.compose.foundation.layout.Arrangement {
  public androidx.compose.foundation.layout.Arrangement$Vertical getTop();
  androidx.compose.foundation.layout.Arrangement INSTANCE;
}
-keep,allowobfuscation class androidx.compose.foundation.layout.ColumnKt {
  public static androidx.compose.ui.layout.MeasurePolicy columnMeasurePolicy(androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation interface androidx.compose.foundation.layout.ColumnScope {
}
-keep,allowobfuscation class androidx.compose.foundation.layout.ColumnScopeInstance {
  androidx.compose.foundation.layout.ColumnScopeInstance INSTANCE;
}
-keep,allowobfuscation class androidx.compose.foundation.layout.PaddingKt {
  public static androidx.compose.ui.Modifier padding-3ABfNKs(androidx.compose.ui.Modifier, float);
}
-keep,allowobfuscation interface androidx.compose.foundation.layout.PaddingValues {
}
-keep,allowobfuscation class androidx.compose.foundation.layout.SizeKt {
  public static androidx.compose.ui.Modifier fillMaxWidth$default(androidx.compose.ui.Modifier, float, int, java.lang.Object);
  public static androidx.compose.ui.Modifier height-3ABfNKs(androidx.compose.ui.Modifier, float);
}
-keep,allowobfuscation class androidx.compose.foundation.lazy.LazyDslKt {
  public static void LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.OverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation interface androidx.compose.foundation.lazy.LazyItemScope {
}
-keep,allowobfuscation interface androidx.compose.foundation.lazy.LazyListScope {
  public static void items$default(androidx.compose.foundation.lazy.LazyListScope, int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function4, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.foundation.lazy.LazyListState {
}
-keep,allowobfuscation interface androidx.compose.foundation.text.TextAutoSize {
}
-keep,allowobfuscation class androidx.compose.material3.ColorScheme {
  public long getSurfaceBright-0d7_KjU();
}
-keep,allowobfuscation class androidx.compose.material3.ListItemColors {
}
-keep,allowobfuscation class androidx.compose.material3.MaterialTheme {
  public androidx.compose.material3.ColorScheme getColorScheme(androidx.compose.runtime.Composer, int);
  androidx.compose.material3.MaterialTheme INSTANCE;
}
-keep,allowobfuscation class androidx.compose.material3.SurfaceKt {
  public static void Surface-T9BRK9s(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, float, float, androidx.compose.foundation.BorderStroke, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class androidx.compose.material3.SwipeToDismissBoxKt {
  public static androidx.compose.material3.SwipeToDismissBoxState rememberSwipeToDismissBoxState(androidx.compose.material3.SwipeToDismissBoxValue, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class androidx.compose.material3.SwipeToDismissBoxState {
  int $stable;
}
-keep enum androidx.compose.material3.SwipeToDismissBoxValue {
}
-keep,allowobfuscation class androidx.compose.material3.TextKt {
  public static void Text-Nvy7gAk(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.foundation.text.TextAutoSize, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int);
}
-keep,allowobfuscation interface androidx.compose.runtime.Applier {
}
-keep,allowobfuscation @interface androidx.compose.runtime.Composable {
}
-keep,allowobfuscation @interface androidx.compose.runtime.ComposableInferredTarget {
  public java.lang.String scheme();
}
-keep,allowobfuscation @interface androidx.compose.runtime.ComposableTarget {
  public java.lang.String applier();
}
-keep,allowobfuscation class androidx.compose.runtime.ComposablesKt {
  public static long getCurrentCompositeKeyHashCode(androidx.compose.runtime.Composer, int);
  public static void invalidApplier();
}
-keep,allowobfuscation class androidx.compose.runtime.Composer$Companion {
  public java.lang.Object getEmpty();
}
-keep,allowobfuscation interface androidx.compose.runtime.Composer {
  public boolean changed(int);
  public boolean changed(long);
  public boolean changed(java.lang.Object);
  public boolean changed(boolean);
  public boolean changedInstance(java.lang.Object);
  public java.lang.Object consume(androidx.compose.runtime.CompositionLocal);
  public void createNode(kotlin.jvm.functions.Function0);
  public void endDefaults();
  public void endNode();
  public void endReplaceGroup();
  public androidx.compose.runtime.ScopeUpdateScope endRestartGroup();
  public androidx.compose.runtime.Applier getApplier();
  public androidx.compose.runtime.CompositionLocalMap getCurrentCompositionLocalMap();
  public boolean getDefaultsInvalid();
  public boolean getInserting();
  public java.lang.Object rememberedValue();
  public boolean shouldExecute(boolean, int);
  public void skipToGroupEnd();
  public void startDefaults();
  public void startReplaceGroup(int);
  public androidx.compose.runtime.Composer startRestartGroup(int);
  public void startReusableNode();
  public void updateRememberedValue(java.lang.Object);
  public void useNode();
  androidx.compose.runtime.Composer$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.runtime.ComposerKt {
  public static boolean isTraceInProgress();
  public static void sourceInformation(androidx.compose.runtime.Composer, java.lang.String);
  public static void sourceInformationMarkerEnd(androidx.compose.runtime.Composer);
  public static void sourceInformationMarkerStart(androidx.compose.runtime.Composer, int, java.lang.String);
  public static void traceEventEnd();
  public static void traceEventStart(int, int, int, java.lang.String);
}
-keep,allowobfuscation class androidx.compose.runtime.CompositionContext {
}
-keep,allowobfuscation class androidx.compose.runtime.CompositionLocal {
}
-keep,allowobfuscation class androidx.compose.runtime.CompositionLocalKt {
  public static void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
  public static void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[], kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation interface androidx.compose.runtime.CompositionLocalMap {
}
-keep,allowobfuscation interface androidx.compose.runtime.DisposableEffectResult {
  public void dispose();
}
-keep,allowobfuscation class androidx.compose.runtime.DisposableEffectScope$onDispose$1 {
}
-keep,allowobfuscation class androidx.compose.runtime.DisposableEffectScope {
}
-keep,allowobfuscation class androidx.compose.runtime.EffectsKt {
  public static void DisposableEffect(java.lang.Object, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class androidx.compose.runtime.MonotonicFrameClock$DefaultImpls {
  public static java.lang.Object fold(androidx.compose.runtime.MonotonicFrameClock, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface androidx.compose.runtime.MonotonicFrameClock {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
  public java.lang.Object withFrameNanos(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface androidx.compose.runtime.MutableState {
  public void setValue(java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.runtime.ProvidableCompositionLocal {
  public androidx.compose.runtime.ProvidedValue provides(java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.runtime.ProvidedValue {
  int $stable;
}
-keep,allowobfuscation class androidx.compose.runtime.RecomposeScopeImplKt {
  public static int updateChangedFlags(int);
}
-keep,allowobfuscation class androidx.compose.runtime.Recomposer {
  public <init>(kotlin.coroutines.CoroutineContext);
  public void cancel();
  public kotlin.coroutines.CoroutineContext getEffectCoroutineContext();
  public boolean getHasPendingWork();
  public java.lang.Object runRecomposeAndApplyChanges(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface androidx.compose.runtime.ScopeUpdateScope {
  public void updateScope(kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation interface androidx.compose.runtime.SnapshotMutationPolicy {
}
-keep,allowobfuscation class androidx.compose.runtime.SnapshotStateKt {
  public static androidx.compose.runtime.State collectAsState(kotlinx.coroutines.flow.StateFlow, kotlin.coroutines.CoroutineContext, androidx.compose.runtime.Composer, int, int);
  public static androidx.compose.runtime.MutableState mutableStateOf$default(java.lang.Object, androidx.compose.runtime.SnapshotMutationPolicy, int, java.lang.Object);
  public static androidx.compose.runtime.State rememberUpdatedState(java.lang.Object, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation @interface androidx.compose.runtime.Stable {
}
-keep,allowobfuscation interface androidx.compose.runtime.State {
  public java.lang.Object getValue();
}
-keep,allowobfuscation class androidx.compose.runtime.Updater {
  public static androidx.compose.runtime.Composer constructor-impl(androidx.compose.runtime.Composer);
  public static void reconcile-impl(androidx.compose.runtime.Composer, kotlin.jvm.functions.Function1);
  public static void set-impl(androidx.compose.runtime.Composer, java.lang.Object, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation interface androidx.compose.runtime.internal.ComposableLambda {
}
-keep,allowobfuscation class androidx.compose.runtime.internal.ComposableLambdaKt {
  public static androidx.compose.runtime.internal.ComposableLambda composableLambdaInstance(int, boolean, java.lang.Object);
  public static androidx.compose.runtime.internal.ComposableLambda rememberComposableLambda(int, boolean, java.lang.Object, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation @interface androidx.compose.runtime.internal.FunctionKeyMeta {
  public int endOffset();
  public int key();
  public int startOffset();
}
-keep,allowobfuscation @interface androidx.compose.runtime.internal.StabilityInferred {
  public int parameters();
}
-keep,allowobfuscation interface androidx.compose.runtime.saveable.SaveableStateRegistry$Entry {
}
-keep,allowobfuscation interface androidx.compose.runtime.saveable.SaveableStateRegistry {
  public boolean canBeSaved(java.lang.Object);
  public java.lang.Object consumeRestored(java.lang.String);
  public java.util.Map performSave();
  public androidx.compose.runtime.saveable.SaveableStateRegistry$Entry registerProvider(java.lang.String, kotlin.jvm.functions.Function0);
}
-keep,allowobfuscation class androidx.compose.runtime.saveable.SaveableStateRegistryKt {
  public static androidx.compose.runtime.saveable.SaveableStateRegistry SaveableStateRegistry(java.util.Map, kotlin.jvm.functions.Function1);
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalSaveableStateRegistry();
}
-keep,allowobfuscation class androidx.compose.runtime.snapshots.Snapshot$Companion {
  public androidx.compose.runtime.snapshots.Snapshot getCurrent();
  public void sendApplyNotifications();
}
-keep,allowobfuscation class androidx.compose.runtime.snapshots.Snapshot {
  public boolean hasPendingChanges();
  androidx.compose.runtime.snapshots.Snapshot$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.Alignment$Companion {
  public androidx.compose.ui.Alignment$Horizontal getStart();
}
-keep,allowobfuscation interface androidx.compose.ui.Alignment$Horizontal {
}
-keep,allowobfuscation interface androidx.compose.ui.Alignment {
  androidx.compose.ui.Alignment$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.ComposedModifierKt {
  public static androidx.compose.ui.Modifier materializeModifier(androidx.compose.runtime.Composer, androidx.compose.ui.Modifier);
}
-keep,allowobfuscation class androidx.compose.ui.Modifier$Companion {
  public androidx.compose.ui.Modifier then(androidx.compose.ui.Modifier);
}
-keep,allowobfuscation interface androidx.compose.ui.Modifier {
  androidx.compose.ui.Modifier$Companion Companion;
}
-keep,allowobfuscation @interface androidx.compose.ui.UiComposable {
}
-keep,allowobfuscation class androidx.compose.ui.geometry.Offset$Companion {
  public long getUnspecified-F1C5BW0();
  public long getZero-F1C5BW0();
}
-keep,allowobfuscation class androidx.compose.ui.geometry.Offset {
  public static androidx.compose.ui.geometry.Offset box-impl(long);
  public static long constructor-impl(long);
  public static long copy-dBAh8RU$default(long, float, float, int, java.lang.Object);
  public static boolean equals-impl0(long, long);
  public static float getDistance-impl(long);
  public static long minus-MK-Hz9U(long, long);
  public static long plus-MK-Hz9U(long, long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  androidx.compose.ui.geometry.Offset$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.geometry.OffsetKt {
  public static long lerp-Wko1d7g(long, long, float);
}
-keep,allowobfuscation class androidx.compose.ui.geometry.Rect {
  public <init>(float, float, float, float);
  public boolean contains-k-4lQ0M(long);
  public float getBottom();
  public float getLeft();
  public float getRight();
  public long getSize-NH-jbRc();
  public float getTop();
  public long getTopLeft-F1C5BW0();
  public androidx.compose.ui.geometry.Rect intersect(androidx.compose.ui.geometry.Rect);
  public boolean isEmpty();
  public boolean overlaps(androidx.compose.ui.geometry.Rect);
  public androidx.compose.ui.geometry.Rect translate-k-4lQ0M(long);
}
-keep,allowobfuscation class androidx.compose.ui.geometry.RectKt {
  public static androidx.compose.ui.geometry.Rect Rect-tz77jQw(long, long);
}
-keep,allowobfuscation class androidx.compose.ui.geometry.Size {
}
-keep,allowobfuscation class androidx.compose.ui.graphics.AndroidImageBitmap_androidKt {
  public static android.graphics.Bitmap asAndroidBitmap(androidx.compose.ui.graphics.ImageBitmap);
  public static androidx.compose.ui.graphics.ImageBitmap asImageBitmap(android.graphics.Bitmap);
}
-keep,allowobfuscation class androidx.compose.ui.graphics.Color$Companion {
  public long getUnspecified-0d7_KjU();
}
-keep,allowobfuscation class androidx.compose.ui.graphics.Color {
  androidx.compose.ui.graphics.Color$Companion Companion;
}
-keep,allowobfuscation interface androidx.compose.ui.graphics.ImageBitmap {
  public boolean getHasAlpha();
  public int getHeight();
  public int getWidth();
  public static void readPixels$default(androidx.compose.ui.graphics.ImageBitmap, int[], int, int, int, int, int, int, int, java.lang.Object);
}
-keep,allowobfuscation interface androidx.compose.ui.graphics.Shape {
}
-keep,allowobfuscation class androidx.compose.ui.graphics.painter.Painter {
  int $stable;
}
-keep,allowobfuscation class androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt {
  public static androidx.compose.ui.input.indirect.IndirectPointerEvent IndirectPointerEvent-ixkH3tc(java.util.List, int, int, android.view.MotionEvent);
}
-keep,allowobfuscation interface androidx.compose.ui.input.indirect.IndirectPointerEvent {
}
-keep,allowobfuscation class androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis {
}
-keep,allowobfuscation class androidx.compose.ui.input.indirect.IndirectPointerEventType$Companion {
  public int getMove-4ZHQPSE();
  public int getPress-4ZHQPSE();
  public int getRelease-4ZHQPSE();
  public int getUnknown-4ZHQPSE();
}
-keep,allowobfuscation class androidx.compose.ui.input.indirect.IndirectPointerEventType {
  androidx.compose.ui.input.indirect.IndirectPointerEventType$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.input.indirect.IndirectPointerInputChange {
  public <init>(long, long, long, boolean, float, long, long, boolean, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class androidx.compose.ui.input.key.Key$Companion {
  public long getAltLeft-EK5gGoQ();
  public long getAltRight-EK5gGoQ();
  public long getCapsLock-EK5gGoQ();
  public long getCtrlLeft-EK5gGoQ();
  public long getCtrlRight-EK5gGoQ();
  public long getFunction-EK5gGoQ();
  public long getMetaLeft-EK5gGoQ();
  public long getMetaRight-EK5gGoQ();
  public long getNumLock-EK5gGoQ();
  public long getScrollLock-EK5gGoQ();
  public long getShiftLeft-EK5gGoQ();
  public long getShiftRight-EK5gGoQ();
}
-keep,allowobfuscation class androidx.compose.ui.input.key.Key {
  public static androidx.compose.ui.input.key.Key box-impl(long);
  public static boolean equals-impl(long, java.lang.Object);
  public static boolean equals-impl0(long, long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  androidx.compose.ui.input.key.Key$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.input.key.KeyEvent {
}
-keep,allowobfuscation class androidx.compose.ui.input.key.KeyEvent_androidKt {
  public static long getKey-ZmokQxo(android.view.KeyEvent);
}
-keep,allowobfuscation class androidx.compose.ui.input.key.Key_androidKt {
  public static int getNativeKeyCode-YVgTNJs(long);
}
-keep,allowobfuscation class androidx.compose.ui.input.pointer.PointerId {
  public static long constructor-impl(long);
}
-keep,allowobfuscation class androidx.compose.ui.input.pointer.PointerKeyboardModifiers {
}
-keep,allowobfuscation class androidx.compose.ui.input.pointer.util.VelocityTracker {
  public <init>();
  public void addPosition-Uv8p0NA(long, long);
  public long calculateVelocity-9UxMQ8M();
}
-keep,allowobfuscation class androidx.compose.ui.layout.AlignmentLine {
}
-keep,allowobfuscation interface androidx.compose.ui.layout.LayoutCoordinates {
  public androidx.compose.ui.layout.LayoutCoordinates getParentLayoutCoordinates();
}
-keep,allowobfuscation class androidx.compose.ui.layout.LayoutCoordinatesKt {
  public static androidx.compose.ui.geometry.Rect boundsInParent(androidx.compose.ui.layout.LayoutCoordinates);
  public static long positionInRoot(androidx.compose.ui.layout.LayoutCoordinates);
}
-keep,allowobfuscation interface androidx.compose.ui.layout.LayoutInfo {
  public androidx.compose.ui.layout.LayoutCoordinates getCoordinates();
  public androidx.compose.ui.unit.Density getDensity();
  public androidx.compose.ui.unit.LayoutDirection getLayoutDirection();
  public androidx.compose.ui.layout.LayoutInfo getParentInfo();
  public androidx.compose.ui.platform.ViewConfiguration getViewConfiguration();
  public boolean isDeactivated();
  public boolean isPlaced();
}
-keep,allowobfuscation class androidx.compose.ui.layout.LayoutModifierKt {
  public static androidx.compose.ui.Modifier layout(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3);
}
-keep,allowobfuscation interface androidx.compose.ui.layout.Measurable {
  public androidx.compose.ui.layout.Placeable measure-BRTryo0(long);
}
-keep,allowobfuscation interface androidx.compose.ui.layout.MeasurePolicy {
  public androidx.compose.ui.layout.MeasureResult measure-3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long);
}
-keep,allowobfuscation interface androidx.compose.ui.layout.MeasureResult {
}
-keep,allowobfuscation interface androidx.compose.ui.layout.MeasureScope {
  public static androidx.compose.ui.layout.MeasureResult layout$default(androidx.compose.ui.layout.MeasureScope, int, int, java.util.Map, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.ui.layout.Placeable$PlacementScope {
  public static void placeRelative$default(androidx.compose.ui.layout.Placeable$PlacementScope, androidx.compose.ui.layout.Placeable, int, int, float, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.ui.layout.Placeable {
  public int getHeight();
  public int getWidth();
}
-keep,allowobfuscation class androidx.compose.ui.layout.SubcomposeLayoutKt {
  public static void SubcomposeLayout(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation interface androidx.compose.ui.layout.SubcomposeMeasureScope {
  public java.util.List subcompose(java.lang.Object, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation class androidx.compose.ui.node.ComposeUiNode$Companion {
  public kotlin.jvm.functions.Function1 getApplyOnDeactivatedNodeAssertion();
  public kotlin.jvm.functions.Function0 getConstructor();
  public kotlin.jvm.functions.Function2 getSetCompositeKeyHash();
  public kotlin.jvm.functions.Function2 getSetMeasurePolicy();
  public kotlin.jvm.functions.Function2 getSetModifier();
  public kotlin.jvm.functions.Function2 getSetResolvedCompositionLocals();
}
-keep,allowobfuscation interface androidx.compose.ui.node.ComposeUiNode {
  androidx.compose.ui.node.ComposeUiNode$Companion Companion;
}
-keep,allowobfuscation interface androidx.compose.ui.node.RootForTest$UncaughtExceptionHandler {
  public void onUncaughtException(java.lang.Throwable);
}
-keep,allowobfuscation interface androidx.compose.ui.node.RootForTest {
  public androidx.compose.ui.semantics.SemanticsOwner getSemanticsOwner();
  public void measureAndLayoutForTest();
  public boolean sendIndirectPointerEvent(androidx.compose.ui.input.indirect.IndirectPointerEvent);
  public boolean sendKeyEvent-ZmokQxo(android.view.KeyEvent);
  public void setUncaughtExceptionHandler(androidx.compose.ui.node.RootForTest$UncaughtExceptionHandler);
}
-keep,allowobfuscation class androidx.compose.ui.platform.AbstractComposeView {
  public <init>(android.content.Context, android.util.AttributeSet, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public void Content(androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class androidx.compose.ui.platform.AndroidCompositionLocals_androidKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalConfiguration();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalContext();
}
-keep,allowobfuscation class androidx.compose.ui.platform.CompositionLocalsKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalDensity();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalFontFamilyResolver();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalLayoutDirection();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalProvidableLocaleList();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalWindowInfo();
}
-keep,allowobfuscation class androidx.compose.ui.platform.InfiniteAnimationPolicy$DefaultImpls {
  public static java.lang.Object fold(androidx.compose.ui.platform.InfiniteAnimationPolicy, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.InfiniteAnimationPolicy {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public java.lang.Object onInfiniteOperation(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.PlatformTextInputInterceptor {
  public java.lang.Object interceptStartInputMethod(androidx.compose.ui.platform.PlatformTextInputMethodRequest, androidx.compose.ui.platform.PlatformTextInputSession, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.PlatformTextInputMethodRequest {
}
-keep,allowobfuscation class androidx.compose.ui.platform.PlatformTextInputModifierNodeKt {
  public static void InterceptPlatformTextInput(androidx.compose.ui.platform.PlatformTextInputInterceptor, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.PlatformTextInputSession {
  public java.lang.Object startInputMethod(androidx.compose.ui.platform.PlatformTextInputMethodRequest, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class androidx.compose.ui.platform.TestTagKt {
  public static androidx.compose.ui.Modifier testTag(androidx.compose.ui.Modifier, java.lang.String);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.ViewConfiguration {
  public long getDoubleTapMinTimeMillis();
  public long getDoubleTapTimeoutMillis();
  public long getLongPressTimeoutMillis();
}
-keep,allowobfuscation class androidx.compose.ui.platform.ViewRootForTest$Companion {
  public kotlin.jvm.functions.Function1 getOnViewCreatedCallback();
  public void setOnViewCreatedCallback(kotlin.jvm.functions.Function1);
}
-keep,allowobfuscation interface androidx.compose.ui.platform.ViewRootForTest {
  public boolean getHasPendingMeasureOrLayout();
  public android.view.View getView();
  androidx.compose.ui.platform.ViewRootForTest$Companion Companion;
}
-keep,allowobfuscation interface androidx.compose.ui.platform.WindowInfo {
  public long getContainerDpSize-MYxV2XQ();
  public long getContainerSize-YbymL2g();
  public int getKeyboardModifiers-k7X9c1A();
  public boolean isWindowFocused();
}
-keep,allowobfuscation interface androidx.compose.ui.platform.WindowRecomposerFactory {
  public androidx.compose.runtime.Recomposer createRecomposer(android.view.View);
}
-keep,allowobfuscation class androidx.compose.ui.platform.WindowRecomposerPolicy {
  public boolean compareAndSetFactory(androidx.compose.ui.platform.WindowRecomposerFactory, androidx.compose.ui.platform.WindowRecomposerFactory);
  public androidx.compose.ui.platform.WindowRecomposerFactory getAndSetFactory(androidx.compose.ui.platform.WindowRecomposerFactory);
  androidx.compose.ui.platform.WindowRecomposerPolicy INSTANCE;
}
-keep,allowobfuscation class androidx.compose.ui.res.PainterResources_androidKt {
  public static androidx.compose.ui.graphics.painter.Painter painterResource(int, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class androidx.compose.ui.semantics.AccessibilityAction {
  public kotlin.Function getAction();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.CollectionItemInfo {
}
-keep,allowobfuscation class androidx.compose.ui.semantics.CustomAccessibilityAction {
  public kotlin.jvm.functions.Function0 getAction();
  public java.lang.String getLabel();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.ProgressBarRangeInfo {
  public float getCurrent();
  public kotlin.ranges.ClosedFloatingPointRange getRange();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.ScrollAxisRange {
  public kotlin.jvm.functions.Function0 getMaxValue();
  public boolean getReverseScrolling();
  public kotlin.jvm.functions.Function0 getValue();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsActions {
  public androidx.compose.ui.semantics.SemanticsPropertyKey getCustomActions();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getGetTextLayoutResult();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getInsertTextAtCursor();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getOnClick();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getOnImeAction();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getRequestFocus();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getScrollBy();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getScrollToIndex();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetProgress();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetSelection();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetText();
  androidx.compose.ui.semantics.SemanticsActions INSTANCE;
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsConfiguration {
  public boolean contains(androidx.compose.ui.semantics.SemanticsPropertyKey);
  public java.lang.Object get(androidx.compose.ui.semantics.SemanticsPropertyKey);
  public java.lang.Object getOrElseNullable(androidx.compose.ui.semantics.SemanticsPropertyKey, kotlin.jvm.functions.Function0);
  public boolean isClearingSemantics();
  public boolean isMergingSemanticsOfDescendants();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsConfigurationKt {
  public static java.lang.Object getOrNull(androidx.compose.ui.semantics.SemanticsConfiguration, androidx.compose.ui.semantics.SemanticsPropertyKey);
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsNode {
  public int getAlignmentLinePosition(androidx.compose.ui.layout.AlignmentLine);
  public androidx.compose.ui.geometry.Rect getBoundsInRoot();
  public androidx.compose.ui.geometry.Rect getBoundsInWindow();
  public java.util.List getChildren();
  public androidx.compose.ui.semantics.SemanticsConfiguration getConfig();
  public int getId();
  public androidx.compose.ui.layout.LayoutInfo getLayoutInfo();
  public androidx.compose.ui.semantics.SemanticsNode getParent();
  public long getPositionInRoot-F1C5BW0();
  public long getPositionInWindow-F1C5BW0();
  public androidx.compose.ui.node.RootForTest getRoot();
  public long getSize-YbymL2g();
  public androidx.compose.ui.geometry.Rect getTouchBoundsInRoot();
  public boolean isRoot();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsOwner {
  public androidx.compose.ui.semantics.SemanticsNode getRootSemanticsNode();
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsOwnerKt {
  public static java.util.List getAllSemanticsNodes(androidx.compose.ui.semantics.SemanticsOwner, boolean, boolean);
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsProperties {
  public androidx.compose.ui.semantics.SemanticsPropertyKey getContentDescription();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getDisabled();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getEditableText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getFocused();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHeading();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHideFromAccessibility();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHorizontalScrollAxisRange();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getImeAction();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIndexForKey();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getInputText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsDialog();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsEditable();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsPopup();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getLinkTestMarker();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getProgressBarRangeInfo();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSelected();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getStateDescription();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getTestTag();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getToggleableState();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getVerticalScrollAxisRange();
  androidx.compose.ui.semantics.SemanticsProperties INSTANCE;
}
-keep,allowobfuscation class androidx.compose.ui.semantics.SemanticsPropertyKey {
  public java.lang.String getName();
}
-keep enum androidx.compose.ui.state.ToggleableState {
  androidx.compose.ui.state.ToggleableState Off;
  androidx.compose.ui.state.ToggleableState On;
}
-keep,allowobfuscation class androidx.compose.ui.text.AnnotatedString$Range {
  public int getEnd();
  public int getStart();
}
-keep,allowobfuscation class androidx.compose.ui.text.AnnotatedString {
  public <init>(java.lang.String, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.List getLinkAnnotations(int, int);
  public java.util.List getParagraphStyles();
  public java.util.List getSpanStyles();
  public java.util.List getStringAnnotations(int, int);
  public java.lang.String getText();
  public int length();
}
-keep,allowobfuscation class androidx.compose.ui.text.LinkAnnotation {
}
-keep,allowobfuscation class androidx.compose.ui.text.TextLayoutInput {
  public androidx.compose.ui.text.AnnotatedString getText();
}
-keep,allowobfuscation class androidx.compose.ui.text.TextLayoutResult {
  public androidx.compose.ui.geometry.Rect getBoundingBox(int);
  public androidx.compose.ui.text.TextLayoutInput getLayoutInput();
  public static int getLineEnd$default(androidx.compose.ui.text.TextLayoutResult, int, boolean, int, java.lang.Object);
  public int getLineForOffset(int);
}
-keep,allowobfuscation class androidx.compose.ui.text.TextRange {
  public static int getMax-impl(long);
  public static int getMin-impl(long);
}
-keep,allowobfuscation class androidx.compose.ui.text.TextStyle {
}
-keep,allowobfuscation interface androidx.compose.ui.text.font.FontFamily$Resolver {
}
-keep,allowobfuscation class androidx.compose.ui.text.font.FontFamily {
}
-keep,allowobfuscation class androidx.compose.ui.text.font.FontFamilyResolver_androidKt {
  public static androidx.compose.ui.text.font.FontFamily$Resolver createFontFamilyResolver(android.content.Context);
}
-keep,allowobfuscation class androidx.compose.ui.text.font.FontStyle {
}
-keep,allowobfuscation class androidx.compose.ui.text.font.FontWeight {
}
-keep,allowobfuscation class androidx.compose.ui.text.input.ImeAction$Companion {
  public int getDefault-eUduSuo();
}
-keep,allowobfuscation class androidx.compose.ui.text.input.ImeAction {
  public static androidx.compose.ui.text.input.ImeAction box-impl(int);
  androidx.compose.ui.text.input.ImeAction$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.text.intl.Locale {
  public <init>(java.util.Locale);
  public java.lang.String toLanguageTag();
}
-keep,allowobfuscation class androidx.compose.ui.text.intl.LocaleList {
  public <init>(java.util.List);
  public java.util.List getLocaleList();
}
-keep,allowobfuscation class androidx.compose.ui.text.style.TextAlign {
}
-keep,allowobfuscation class androidx.compose.ui.text.style.TextDecoration {
}
-keep,allowobfuscation class androidx.compose.ui.unit.AndroidDensity_androidKt {
  public static androidx.compose.ui.unit.Density Density(android.content.Context);
}
-keep,allowobfuscation class androidx.compose.ui.unit.Constraints$Companion {
  public long fixed-JhjzzOo(int, int);
}
-keep,allowobfuscation class androidx.compose.ui.unit.Constraints {
  public static int getMaxHeight-impl(long);
  public static int getMaxWidth-impl(long);
  public long unbox-impl();
  androidx.compose.ui.unit.Constraints$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.unit.ConstraintsKt {
  public static long constrain-N9IONVI(long, long);
}
-keep,allowobfuscation interface androidx.compose.ui.unit.Density {
  public float getDensity();
  public float getFontScale();
  public int roundToPx--R2X_6o(long);
  public int roundToPx-0680j_4(float);
  public float toDp-GaN1DYA(long);
  public float toDp-u2uoSUM(float);
  public float toDp-u2uoSUM(int);
  public long toDpSize-k-rfVVM(long);
  public float toPx--R2X_6o(long);
  public float toPx-0680j_4(float);
  public androidx.compose.ui.geometry.Rect toRect(androidx.compose.ui.unit.DpRect);
  public long toSize-XkaWNTQ(long);
  public long toSp-0xMU5do(float);
  public long toSp-kPz2Gy4(float);
  public long toSp-kPz2Gy4(int);
}
-keep,allowobfuscation class androidx.compose.ui.unit.DensityKt {
  public static androidx.compose.ui.unit.Density Density(float, float);
}
-keep,allowobfuscation class androidx.compose.ui.unit.Dp$Companion {
  public float getUnspecified-D9Ej5fM();
}
-keep,allowobfuscation class androidx.compose.ui.unit.Dp {
  public static androidx.compose.ui.unit.Dp box-impl(float);
  public static int compareTo-0680j_4(float, float);
  public static float constructor-impl(float);
  public static java.lang.String toString-impl(float);
  public float unbox-impl();
  androidx.compose.ui.unit.Dp$Companion Companion;
}
-keep,allowobfuscation class androidx.compose.ui.unit.DpKt {
  public static long DpSize-YgX7TsA(float, float);
}
-keep,allowobfuscation class androidx.compose.ui.unit.DpRect {
  public <init>(float, float, float, float, kotlin.jvm.internal.DefaultConstructorMarker);
  public float getBottom-D9Ej5fM();
  public float getLeft-D9Ej5fM();
  public float getRight-D9Ej5fM();
  public float getTop-D9Ej5fM();
}
-keep,allowobfuscation class androidx.compose.ui.unit.DpSize {
  public static androidx.compose.ui.unit.DpSize box-impl(long);
  public static float getHeight-D9Ej5fM(long);
  public static float getWidth-D9Ej5fM(long);
  public long unbox-impl();
}
-keep,allowobfuscation interface androidx.compose.ui.unit.FontScaling {
  public float getFontScale();
  public float toDp-GaN1DYA(long);
  public long toSp-0xMU5do(float);
}
-keep,allowobfuscation class androidx.compose.ui.unit.IntSize {
  public static androidx.compose.ui.unit.IntSize box-impl(long);
  public static long constructor-impl(long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
}
-keep,allowobfuscation class androidx.compose.ui.unit.IntSizeKt {
  public static long roundToIntSize-uvyYCjk(long);
  public static long toSize-ozmzZPI(long);
}
-keep enum androidx.compose.ui.unit.LayoutDirection {
  public static androidx.compose.ui.unit.LayoutDirection[] values();
  androidx.compose.ui.unit.LayoutDirection Ltr;
  androidx.compose.ui.unit.LayoutDirection Rtl;
}
-keep,allowobfuscation class androidx.compose.ui.unit.TextUnit {
}
-keep,allowobfuscation class androidx.compose.ui.unit.Velocity {
  public static float getX-impl(long);
}
-keep,allowobfuscation class androidx.compose.ui.util.ListUtilsKt {
  public static java.lang.String fastJoinToString$default(java.util.List, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.compose.ui.util.MathHelpersKt {
  public static float lerp(float, float, float);
  public static long lerp(long, long, float);
}
-keep,allowobfuscation class androidx.compose.ui.viewinterop.AndroidView_androidKt {
  public static void AndroidView(kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation interface androidx.compose.ui.window.DialogWindowProvider {
  public android.view.Window getWindow();
}
-keep,allowobfuscation class androidx.concurrent.futures.CallbackToFutureAdapter$Completer {
  public boolean set(java.lang.Object);
  public boolean setException(java.lang.Throwable);
}
-keep,allowobfuscation interface androidx.concurrent.futures.CallbackToFutureAdapter$Resolver {
  public java.lang.Object attachCompleter(androidx.concurrent.futures.CallbackToFutureAdapter$Completer);
}
-keep,allowobfuscation class androidx.concurrent.futures.CallbackToFutureAdapter {
  public static com.google.common.util.concurrent.ListenableFuture getFuture(androidx.concurrent.futures.CallbackToFutureAdapter$Resolver);
}
-keep,allowobfuscation class androidx.concurrent.futures.SuspendToFutureAdapter {
  public static com.google.common.util.concurrent.ListenableFuture launchFuture$default(androidx.concurrent.futures.SuspendToFutureAdapter, kotlin.coroutines.CoroutineContext, boolean, kotlin.jvm.functions.Function2, int, java.lang.Object);
  androidx.concurrent.futures.SuspendToFutureAdapter INSTANCE;
}
-keep,allowobfuscation class androidx.constraintlayout.widget.ConstraintLayout {
}
-keep,allowobfuscation class androidx.core.content.ContextCompat {
  public static android.graphics.drawable.Drawable getDrawable(android.content.Context, int);
  public static java.lang.Object getSystemService(android.content.Context, java.lang.Class);
}
-keep,allowobfuscation class androidx.core.content.pm.PackageInfoCompat {
  public static long getLongVersionCode(android.content.pm.PackageInfo);
}
-keep,allowobfuscation class androidx.core.os.ConfigurationCompat {
  public static androidx.core.os.LocaleListCompat getLocales(android.content.res.Configuration);
  public static void setLocales(android.content.res.Configuration, androidx.core.os.LocaleListCompat);
}
-keep,allowobfuscation class androidx.core.os.LocaleListCompat {
  public static androidx.core.os.LocaleListCompat forLanguageTags(java.lang.String);
  public java.util.Locale get(int);
  public static androidx.core.os.LocaleListCompat getEmptyLocaleList();
  public int size();
}
-keep,allowobfuscation class androidx.core.text.HtmlCompat {
  public static android.text.Spanned fromHtml(java.lang.String, int);
}
-keep,allowobfuscation class androidx.core.view.ViewConfigurationCompat {
  public static float getScaledHorizontalScrollFactor(android.view.ViewConfiguration, android.content.Context);
  public static float getScaledVerticalScrollFactor(android.view.ViewConfiguration, android.content.Context);
}
-keep,allowobfuscation class androidx.core.view.ViewGroupKt {
  public static kotlin.sequences.Sequence getChildren(android.view.ViewGroup);
}
-keep,allowobfuscation class androidx.core.view.WindowInsetsCompat {
  public android.view.WindowInsets toWindowInsets();
  androidx.core.view.WindowInsetsCompat CONSUMED;
}
-keep,allowobfuscation interface androidx.datastore.core.DataStore {
}
-keep,allowobfuscation interface androidx.drawerlayout.widget.DrawerLayout$DrawerListener {
}
-keep,allowobfuscation class androidx.drawerlayout.widget.DrawerLayout$SimpleDrawerListener {
  public <init>();
  public void onDrawerClosed(android.view.View);
  public void onDrawerStateChanged(int);
}
-keep,allowobfuscation class androidx.drawerlayout.widget.DrawerLayout {
  public void addDrawerListener(androidx.drawerlayout.widget.DrawerLayout$DrawerListener);
  public void closeDrawer(int);
  public boolean isDrawerOpen(int);
  public boolean isDrawerVisible(int);
  public void openDrawer(int);
  public void removeDrawerListener(androidx.drawerlayout.widget.DrawerLayout$DrawerListener);
}
-keep,allowobfuscation class androidx.fragment.app.DialogFragment {
  public void show(androidx.fragment.app.FragmentManager, java.lang.String);
}
-keep,allowobfuscation class androidx.fragment.app.Fragment {
  public androidx.fragment.app.FragmentManager getChildFragmentManager();
  public android.view.View getView();
}
-keep,allowobfuscation class androidx.fragment.app.FragmentActivity {
  public androidx.fragment.app.FragmentManager getSupportFragmentManager();
}
-keep,allowobfuscation class androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks {
  public <init>();
  public void onFragmentCreated(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment, android.os.Bundle);
  public void onFragmentDestroyed(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment);
  public void onFragmentViewDestroyed(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment);
}
-keep,allowobfuscation class androidx.fragment.app.FragmentManager {
  public androidx.fragment.app.Fragment findFragmentById(int);
  public java.util.List getFragments();
  public void registerFragmentLifecycleCallbacks(androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks, boolean);
}
-keep enum androidx.lifecycle.Lifecycle$Event {
  androidx.lifecycle.Lifecycle$Event ON_RESUME;
}
-keep enum androidx.lifecycle.Lifecycle$State {
  public static androidx.lifecycle.Lifecycle$State[] values();
  androidx.lifecycle.Lifecycle$State CREATED;
  androidx.lifecycle.Lifecycle$State DESTROYED;
  androidx.lifecycle.Lifecycle$State RESUMED;
  androidx.lifecycle.Lifecycle$State STARTED;
}
-keep,allowobfuscation class androidx.lifecycle.Lifecycle {
  public void addObserver(androidx.lifecycle.LifecycleObserver);
  public void removeObserver(androidx.lifecycle.LifecycleObserver);
}
-keep,allowobfuscation interface androidx.lifecycle.LifecycleEventObserver {
  public void onStateChanged(androidx.lifecycle.LifecycleOwner, androidx.lifecycle.Lifecycle$Event);
}
-keep,allowobfuscation interface androidx.lifecycle.LifecycleObserver {
}
-keep,allowobfuscation interface androidx.lifecycle.LifecycleOwner {
  public androidx.lifecycle.Lifecycle getLifecycle();
}
-keep,allowobfuscation class androidx.lifecycle.ViewModel {
  public <init>();
  protected void onCleared();
}
-keep,allowobfuscation interface androidx.lifecycle.ViewModelProvider$Factory {
  public androidx.lifecycle.ViewModel create(java.lang.Class);
}
-keep,allowobfuscation class androidx.lifecycle.ViewModelProvider {
  public <init>(androidx.lifecycle.ViewModelStoreOwner, androidx.lifecycle.ViewModelProvider$Factory);
  public androidx.lifecycle.ViewModel get(java.lang.Class);
}
-keep,allowobfuscation class androidx.lifecycle.ViewModelStore {
}
-keep,allowobfuscation interface androidx.lifecycle.ViewModelStoreOwner {
  public androidx.lifecycle.ViewModelStore getViewModelStore();
}
-keep,allowobfuscation class androidx.lifecycle.ViewTreeLifecycleOwner {
  public static androidx.lifecycle.LifecycleOwner get(android.view.View);
}
-keep,allowobfuscation class androidx.navigation.NavController {
  public void navigate(androidx.navigation.NavDirections);
}
-keep,allowobfuscation interface androidx.navigation.NavDirections {
}
-keep,allowobfuscation class androidx.navigation.fragment.NavHostFragment {
  public androidx.navigation.NavController getNavController();
}
-keep,allowobfuscation class androidx.preference.R$id {
  int recycler_view;
}
-keep,allowobfuscation class androidx.preference.R {
}
-keep,allowobfuscation class androidx.recyclerview.widget.RecyclerView$Adapter {
  public void bindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int);
  public androidx.recyclerview.widget.RecyclerView$ViewHolder createViewHolder(android.view.ViewGroup, int);
  public int getItemCount();
  public int getItemViewType(int);
  public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int);
  public void onViewRecycled(androidx.recyclerview.widget.RecyclerView$ViewHolder);
}
-keep,allowobfuscation class androidx.recyclerview.widget.RecyclerView$ViewHolder {
  android.view.View itemView;
}
-keep,allowobfuscation class androidx.recyclerview.widget.RecyclerView {
  public androidx.recyclerview.widget.RecyclerView$ViewHolder findViewHolderForAdapterPosition(int);
  public androidx.recyclerview.widget.RecyclerView$Adapter getAdapter();
  public void scrollToPosition(int);
}
-keep,allowobfuscation class androidx.room.BaseRoomConnectionManager$DriverWrapper {
  public <init>(androidx.room.BaseRoomConnectionManager, androidx.sqlite.SQLiteDriver);
  public androidx.sqlite.SQLiteConnection open(java.lang.String);
}
-keep,allowobfuscation class androidx.room.BaseRoomConnectionManager {
  public <init>();
  protected java.util.List getCallbacks();
  protected androidx.room.DatabaseConfiguration getConfiguration();
  protected androidx.room.RoomOpenDelegate getOpenDelegate();
  protected void onCreate(androidx.sqlite.SQLiteConnection);
  protected void onMigrate(androidx.sqlite.SQLiteConnection, int, int);
  protected void onOpen(androidx.sqlite.SQLiteConnection);
  public java.lang.Object useConnection(boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class androidx.room.DatabaseConfiguration {
  public <init>(android.content.Context, java.lang.String, androidx.sqlite.db.SupportSQLiteOpenHelper$Factory, androidx.room.RoomDatabase$MigrationContainer, java.util.List, boolean, androidx.room.RoomDatabase$JournalMode, java.util.concurrent.Executor, java.util.concurrent.Executor, android.content.Intent, boolean, boolean, java.util.Set, java.lang.String, java.io.File, java.util.concurrent.Callable, androidx.room.RoomDatabase$PrepackagedDatabaseCallback, java.util.List, java.util.List, boolean, androidx.sqlite.SQLiteDriver, kotlin.coroutines.CoroutineContext);
  public static androidx.room.DatabaseConfiguration copy$default(androidx.room.DatabaseConfiguration, android.content.Context, java.lang.String, androidx.sqlite.db.SupportSQLiteOpenHelper$Factory, androidx.room.RoomDatabase$MigrationContainer, java.util.List, boolean, androidx.room.RoomDatabase$JournalMode, java.util.concurrent.Executor, java.util.concurrent.Executor, android.content.Intent, boolean, boolean, java.util.Set, java.lang.String, java.io.File, java.util.concurrent.Callable, androidx.room.RoomDatabase$PrepackagedDatabaseCallback, java.util.List, java.util.List, boolean, androidx.sqlite.SQLiteDriver, kotlin.coroutines.CoroutineContext, int, java.lang.Object);
  android.content.Context context;
  java.lang.String name;
  androidx.sqlite.SQLiteDriver sqliteDriver;
  androidx.sqlite.db.SupportSQLiteOpenHelper$Factory sqliteOpenHelperFactory;
}
-keep,allowobfuscation class androidx.room.InvalidationTracker {
  public <init>(androidx.room.RoomDatabase, java.util.Map, java.util.Map, java.lang.String[]);
}
-keep,allowobfuscation class androidx.room.RoomDatabase$Callback {
}
-keep enum androidx.room.RoomDatabase$JournalMode {
  androidx.room.RoomDatabase$JournalMode WRITE_AHEAD_LOGGING;
}
-keep,allowobfuscation class androidx.room.RoomDatabase$MigrationContainer {
  public <init>();
  public void addMigration(androidx.room.migration.Migration);
  public void addMigrations(java.util.List);
  public boolean contains(int, int);
}
-keep,allowobfuscation class androidx.room.RoomDatabase$PrepackagedDatabaseCallback {
}
-keep,allowobfuscation class androidx.room.RoomDatabase {
  public <init>();
  public void clearAllTables();
  public void close();
  public java.util.List createAutoMigrations(java.util.Map);
  protected androidx.room.InvalidationTracker createInvalidationTracker();
  public java.util.Set getRequiredAutoMigrationSpecClasses();
}
-keep,allowobfuscation class androidx.room.RoomOpenDelegate$ValidationResult {
  public <init>(boolean, java.lang.String);
}
-keep,allowobfuscation class androidx.room.RoomOpenDelegate {
  public <init>(int, java.lang.String, java.lang.String);
  public void createAllTables(androidx.sqlite.SQLiteConnection);
  public void dropAllTables(androidx.sqlite.SQLiteConnection);
  public int getVersion();
  public void onCreate(androidx.sqlite.SQLiteConnection);
  public void onOpen(androidx.sqlite.SQLiteConnection);
  public void onPostMigrate(androidx.sqlite.SQLiteConnection);
  public void onPreMigrate(androidx.sqlite.SQLiteConnection);
  public androidx.room.RoomOpenDelegate$ValidationResult onValidateSchema(androidx.sqlite.SQLiteConnection);
}
-keep,allowobfuscation interface androidx.room.Transactor {
}
-keep,allowobfuscation interface androidx.room.migration.AutoMigrationSpec {
}
-keep,allowobfuscation class androidx.room.migration.Migration {
  int endVersion;
  int startVersion;
}
-keep,allowobfuscation class androidx.room.util.FtsTableInfo$Companion {
  public androidx.room.util.FtsTableInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keep,allowobfuscation class androidx.room.util.FtsTableInfo {
  public <init>(java.lang.String, java.util.Set, java.lang.String);
  androidx.room.util.FtsTableInfo$Companion Companion;
  java.lang.String name;
}
-keep,allowobfuscation class androidx.room.util.KClassUtil {
  public static java.lang.Object findAndInstantiateDatabaseImpl$default(java.lang.Class, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.room.util.TableInfo$Column {
  public <init>(java.lang.String, java.lang.String, boolean, int, java.lang.String, int);
  java.lang.String name;
}
-keep,allowobfuscation class androidx.room.util.TableInfo$Companion {
  public androidx.room.util.TableInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keep,allowobfuscation class androidx.room.util.TableInfo$ForeignKey {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.util.List, java.util.List);
}
-keep,allowobfuscation class androidx.room.util.TableInfo$Index {
  public <init>(java.lang.String, boolean, java.util.List, java.util.List);
}
-keep,allowobfuscation class androidx.room.util.TableInfo {
  public <init>(java.lang.String, java.util.Map, java.util.Set, java.util.Set);
  androidx.room.util.TableInfo$Companion Companion;
  java.lang.String name;
}
-keep,allowobfuscation class androidx.room.util.ViewInfo$Companion {
  public androidx.room.util.ViewInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keep,allowobfuscation class androidx.room.util.ViewInfo {
  public <init>(java.lang.String, java.lang.String);
  androidx.room.util.ViewInfo$Companion Companion;
  java.lang.String name;
}
-keep,allowobfuscation class androidx.sqlite.SQLite {
  public static void execSQL(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keep,allowobfuscation interface androidx.sqlite.SQLiteConnection {
  public void close();
  public androidx.sqlite.SQLiteStatement prepare(java.lang.String);
}
-keep,allowobfuscation interface androidx.sqlite.SQLiteDriver {
  public androidx.sqlite.SQLiteConnection open(java.lang.String);
}
-keep,allowobfuscation interface androidx.sqlite.SQLiteStatement {
  public void bindText(int, java.lang.String);
  public java.lang.String getText(int);
  public boolean step();
}
-keep,allowobfuscation interface androidx.sqlite.db.SupportSQLiteDatabase {
  public void execSQL(java.lang.String);
  public android.database.Cursor query(java.lang.String);
}
-keep,allowobfuscation class androidx.sqlite.db.SupportSQLiteOpenHelper$Callback {
  public <init>(int);
  public void onCreate(androidx.sqlite.db.SupportSQLiteDatabase);
  public void onDowngrade(androidx.sqlite.db.SupportSQLiteDatabase, int, int);
  public void onOpen(androidx.sqlite.db.SupportSQLiteDatabase);
  public void onUpgrade(androidx.sqlite.db.SupportSQLiteDatabase, int, int);
}
-keep,allowobfuscation class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder {
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration build();
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder callback(androidx.sqlite.db.SupportSQLiteOpenHelper$Callback);
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder name(java.lang.String);
}
-keep,allowobfuscation class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Companion {
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder builder(android.content.Context);
}
-keep,allowobfuscation class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration {
  androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Companion Companion;
}
-keep,allowobfuscation interface androidx.sqlite.db.SupportSQLiteOpenHelper$Factory {
  public androidx.sqlite.db.SupportSQLiteOpenHelper create(androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration);
}
-keep,allowobfuscation interface androidx.sqlite.db.SupportSQLiteOpenHelper {
}
-keep,allowobfuscation class androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory {
  public <init>();
}
-keep,allowobfuscation class androidx.sqlite.driver.SupportSQLiteConnection {
  public <init>(androidx.sqlite.db.SupportSQLiteDatabase);
  public androidx.sqlite.db.SupportSQLiteDatabase getDb();
}
-keep,allowobfuscation class androidx.sqlite.driver.SupportSQLiteDriver {
  public <init>(androidx.sqlite.db.SupportSQLiteOpenHelper);
}
-keep,allowobfuscation interface androidx.startup.Initializer {
  public java.lang.Object create(android.content.Context);
  public java.util.List dependencies();
}
-keep,allowobfuscation class androidx.tracing.Trace {
  public static void beginSection(java.lang.String);
  public static void endSection();
  public static void forceEnableAppTracing();
}
-keep,allowobfuscation class androidx.viewpager.widget.PagerAdapter {
  public int getCount();
}
-keep,allowobfuscation class androidx.viewpager.widget.PagerTitleStrip {
}
-keep,allowobfuscation interface androidx.viewpager.widget.ViewPager$OnPageChangeListener {
  public void onPageScrollStateChanged(int);
  public void onPageScrolled(int, float, int);
  public void onPageSelected(int);
}
-keep,allowobfuscation class androidx.viewpager.widget.ViewPager {
  public void addOnPageChangeListener(androidx.viewpager.widget.ViewPager$OnPageChangeListener);
  public androidx.viewpager.widget.PagerAdapter getAdapter();
  public int getCurrentItem();
  public void removeOnPageChangeListener(androidx.viewpager.widget.ViewPager$OnPageChangeListener);
  public void setCurrentItem(int, boolean);
}
-keep,allowobfuscation interface androidx.work.Clock {
  public long currentTimeMillis();
}
-keep,allowobfuscation class androidx.work.Configuration$Builder {
  public <init>();
  public <init>(androidx.work.Configuration);
  public androidx.work.Configuration build();
  public androidx.work.Configuration$Builder setExecutor(java.util.concurrent.Executor);
  public androidx.work.Configuration$Builder setTaskExecutor(java.util.concurrent.Executor);
}
-keep,allowobfuscation class androidx.work.Configuration {
  public androidx.work.Clock getClock();
  public androidx.work.RunnableScheduler getRunnableScheduler();
  public java.util.concurrent.Executor getTaskExecutor();
  public boolean isUsingDefaultTaskExecutor();
}
-keep,allowobfuscation class androidx.work.Data$Builder {
  public <init>();
  public androidx.work.Data build();
  public androidx.work.Data$Builder putByteArray(java.lang.String, byte[]);
  public androidx.work.Data$Builder putString(java.lang.String, java.lang.String);
}
-keep,allowobfuscation class androidx.work.Data {
  public byte[] getByteArray(java.lang.String);
  androidx.work.Data EMPTY;
}
-keep,allowobfuscation class androidx.work.DefaultWorkerFactory {
  androidx.work.DefaultWorkerFactory INSTANCE;
}
-keep,allowobfuscation class androidx.work.ForegroundInfo {
  public <init>(int, android.app.Notification);
}
-keep,allowobfuscation interface androidx.work.ForegroundUpdater {
  public com.google.common.util.concurrent.ListenableFuture setForegroundAsync(android.content.Context, java.util.UUID, androidx.work.ForegroundInfo);
}
-keep,allowobfuscation class androidx.work.ListenableWorker$Result {
  public static androidx.work.ListenableWorker$Result success();
}
-keep,allowobfuscation class androidx.work.ListenableWorker {
  public android.content.Context getApplicationContext();
  public androidx.work.Data getInputData();
}
-keep,allowobfuscation class androidx.work.Logger {
  public static androidx.work.Logger get();
  public void info(java.lang.String, java.lang.String);
  public static java.lang.String tagWithPrefix(java.lang.String);
}
-keep,allowobfuscation class androidx.work.OneTimeWorkRequest$Builder {
  public <init>(java.lang.Class);
}
-keep,allowobfuscation class androidx.work.OneTimeWorkRequest {
}
-keep,allowobfuscation interface androidx.work.Operation {
}
-keep enum androidx.work.OutOfQuotaPolicy {
  androidx.work.OutOfQuotaPolicy RUN_AS_NON_EXPEDITED_WORK_REQUEST;
}
-keep,allowobfuscation interface androidx.work.ProgressUpdater {
  public com.google.common.util.concurrent.ListenableFuture updateProgress(android.content.Context, java.util.UUID, androidx.work.Data);
}
-keep,allowobfuscation interface androidx.work.RunnableScheduler {
}
-keep,allowobfuscation class androidx.work.WorkManager {
  public androidx.work.Operation enqueue(androidx.work.WorkRequest);
  public static androidx.work.WorkManager getInstance(android.content.Context);
}
-keep,allowobfuscation class androidx.work.WorkRequest$Builder {
  public androidx.work.WorkRequest build();
  public androidx.work.WorkRequest$Builder setExpedited(androidx.work.OutOfQuotaPolicy);
  public androidx.work.WorkRequest$Builder setInputData(androidx.work.Data);
}
-keep,allowobfuscation class androidx.work.WorkRequest {
  public java.util.UUID getId();
  public java.util.Set getTags();
  public androidx.work.impl.model.WorkSpec getWorkSpec();
}
-keep,allowobfuscation class androidx.work.Worker {
  public <init>(android.content.Context, androidx.work.WorkerParameters);
  public androidx.work.ListenableWorker$Result doWork();
  public com.google.common.util.concurrent.ListenableFuture getForegroundInfoAsync();
}
-keep,allowobfuscation class androidx.work.WorkerFactory {
  public androidx.work.ListenableWorker createWorkerWithDefaultFallback(android.content.Context, java.lang.String, androidx.work.WorkerParameters);
}
-keep,allowobfuscation class androidx.work.WorkerParameters$RuntimeExtras {
  public <init>();
  android.net.Network network;
  java.util.List triggeredContentAuthorities;
  java.util.List triggeredContentUris;
}
-keep,allowobfuscation class androidx.work.WorkerParameters {
  public <init>(java.util.UUID, androidx.work.Data, java.util.Collection, androidx.work.WorkerParameters$RuntimeExtras, int, int, java.util.concurrent.Executor, kotlin.coroutines.CoroutineContext, androidx.work.impl.utils.taskexecutor.TaskExecutor, androidx.work.WorkerFactory, androidx.work.ProgressUpdater, androidx.work.ForegroundUpdater);
  public androidx.work.WorkerFactory getWorkerFactory();
}
-keep,allowobfuscation class androidx.work.impl.Processor {
}
-keep,allowobfuscation interface androidx.work.impl.Scheduler {
  public void cancel(java.lang.String);
  public boolean hasLimitedSchedulingSlots();
  public void schedule(androidx.work.impl.model.WorkSpec[]);
}
-keep,allowobfuscation class androidx.work.impl.StartStopToken {
}
-keep,allowobfuscation class androidx.work.impl.StartStopTokens$Companion {
  public static androidx.work.impl.StartStopTokens create$default(androidx.work.impl.StartStopTokens$Companion, boolean, int, java.lang.Object);
}
-keep,allowobfuscation interface androidx.work.impl.StartStopTokens {
  public java.util.List remove(java.lang.String);
  public androidx.work.impl.StartStopToken tokenFor(androidx.work.impl.model.WorkGenerationalId);
  androidx.work.impl.StartStopTokens$Companion Companion;
}
-keep,allowobfuscation class androidx.work.impl.WorkDatabase$Companion {
  public androidx.work.impl.WorkDatabase create(android.content.Context, java.util.concurrent.Executor, androidx.work.Clock, boolean);
}
-keep,allowobfuscation class androidx.work.impl.WorkDatabase {
  public androidx.work.impl.model.WorkSpecDao workSpecDao();
  androidx.work.impl.WorkDatabase$Companion Companion;
}
-keep,allowobfuscation interface androidx.work.impl.WorkLauncher {
  public void startWork(androidx.work.impl.StartStopToken);
  public void stopWork(androidx.work.impl.StartStopToken);
  public void stopWork(androidx.work.impl.StartStopToken, int);
}
-keep,allowobfuscation class androidx.work.impl.WorkLauncherImpl {
  public <init>(androidx.work.impl.Processor, androidx.work.impl.utils.taskexecutor.TaskExecutor);
}
-keep,allowobfuscation class androidx.work.impl.WorkManagerImpl {
  public void closeDatabase();
  public static androidx.work.impl.WorkManagerImpl getInstance();
  public static androidx.work.impl.WorkManagerImpl getInstance(android.content.Context);
  public java.util.List getSchedulers();
  public static void setDelegate(androidx.work.impl.WorkManagerImpl);
}
-keep,allowobfuscation class androidx.work.impl.WorkManagerImplExtKt {
  public static androidx.work.impl.WorkManagerImpl createWorkManager$default(android.content.Context, androidx.work.Configuration, androidx.work.impl.utils.taskexecutor.TaskExecutor, androidx.work.impl.WorkDatabase, androidx.work.impl.constraints.trackers.Trackers, androidx.work.impl.Processor, kotlin.jvm.functions.Function6, int, java.lang.Object);
}
-keep,allowobfuscation class androidx.work.impl.background.greedy.DelayedWorkTracker {
  public <init>(androidx.work.impl.Scheduler, androidx.work.RunnableScheduler, androidx.work.Clock);
  public void schedule(androidx.work.impl.model.WorkSpec, long);
  public void unschedule(java.lang.String);
}
-keep,allowobfuscation class androidx.work.impl.constraints.trackers.Trackers {
}
-keep,allowobfuscation class androidx.work.impl.model.WorkGenerationalId {
  public java.lang.String getWorkSpecId();
}
-keep,allowobfuscation class androidx.work.impl.model.WorkSpec {
  public long calculateNextRunTime();
  public long getNextScheduleTimeOverride();
  public int getPeriodCount();
  public boolean hasConstraints();
  public boolean isBackedOff();
  public boolean isPeriodic();
  java.lang.String id;
  long initialDelay;
  androidx.work.Data input;
  long lastEnqueueTime;
  int runAttemptCount;
  java.lang.String workerClassName;
}
-keep,allowobfuscation interface androidx.work.impl.model.WorkSpecDao {
  public androidx.work.impl.model.WorkSpec getWorkSpec(java.lang.String);
  public void setLastEnqueueTime(java.lang.String, long);
  public void setNextScheduleTimeOverride(java.lang.String, long);
}
-keep,allowobfuscation class androidx.work.impl.model.WorkSpecKt {
  public static androidx.work.impl.model.WorkGenerationalId generationalId(androidx.work.impl.model.WorkSpec);
}
-keep,allowobfuscation class androidx.work.impl.utils.SerialExecutorImpl {
  public <init>(java.util.concurrent.Executor);
}
-keep,allowobfuscation class androidx.work.impl.utils.SynchronousExecutor {
  public <init>();
}
-keep,allowobfuscation class androidx.work.impl.utils.futures.AbstractFuture {
  public boolean isCancelled();
}
-keep,allowobfuscation class androidx.work.impl.utils.futures.SettableFuture {
  public static androidx.work.impl.utils.futures.SettableFuture create();
  public boolean set(java.lang.Object);
}
-keep,allowobfuscation interface androidx.work.impl.utils.taskexecutor.SerialExecutor {
  public boolean hasPendingTasks();
}
-keep,allowobfuscation interface androidx.work.impl.utils.taskexecutor.TaskExecutor {
  public java.util.concurrent.Executor getMainThreadExecutor();
  public androidx.work.impl.utils.taskexecutor.SerialExecutor getSerialTaskExecutor();
}
-keep,allowobfuscation class androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor {
  public <init>(java.util.concurrent.Executor);
  public androidx.work.impl.utils.SerialExecutorImpl getSerialTaskExecutor();
}
-keep,allowobfuscation class com.google.android.material.bottomsheet.BottomSheetBehavior$BottomSheetCallback {
  public <init>();
  public void onSlide(android.view.View, float);
  public void onStateChanged(android.view.View, int);
}
-keep,allowobfuscation class com.google.android.material.bottomsheet.BottomSheetBehavior {
  public void addBottomSheetCallback(com.google.android.material.bottomsheet.BottomSheetBehavior$BottomSheetCallback);
  public static com.google.android.material.bottomsheet.BottomSheetBehavior from(android.view.View);
  public float getHalfExpandedRatio();
  public int getState();
}
-keep,allowobfuscation class com.google.android.material.button.MaterialButton {
  public boolean isCheckable();
}
-keep,allowobfuscation class com.google.android.material.navigation.NavigationView {
  public android.view.Menu getMenu();
}
-keep,allowobfuscation @interface com.google.common.annotations.Beta {
}
-keep,allowobfuscation @interface com.google.common.annotations.VisibleForTesting {
}
-keep,allowobfuscation class com.google.common.base.Ascii {
  public static boolean equalsIgnoreCase(java.lang.CharSequence, java.lang.CharSequence);
}
-keep,allowobfuscation interface com.google.common.base.Function {
  public java.lang.Object apply(java.lang.Object);
}
-keep,allowobfuscation class com.google.common.base.Optional {
  public static com.google.common.base.Optional absent();
  public static com.google.common.base.Optional fromNullable(java.lang.Object);
  public java.lang.Object or(java.lang.Object);
}
-keep,allowobfuscation class com.google.common.base.Preconditions {
  public static void checkArgument(boolean);
  public static void checkArgument(boolean, java.lang.Object);
  public static void checkArgument(boolean, java.lang.String, int);
  public static void checkArgument(boolean, java.lang.String, java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object, java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object, java.lang.String, java.lang.Object);
  public static void checkState(boolean, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.base.Splitter {
  public static com.google.common.base.Splitter on(char);
  public java.util.List splitToList(java.lang.CharSequence);
}
-keep enum com.google.common.base.StandardSystemProperty {
  public java.lang.String value();
  com.google.common.base.StandardSystemProperty LINE_SEPARATOR;
}
-keep,allowobfuscation class com.google.common.base.Strings {
  public static java.lang.String nullToEmpty(java.lang.String);
}
-keep,allowobfuscation interface com.google.common.collect.BiMap {
  public com.google.common.collect.BiMap inverse();
  public java.lang.Object put(java.lang.Object, java.lang.Object);
  public java.util.Set values();
}
-keep,allowobfuscation class com.google.common.collect.EnumBiMap {
  public static com.google.common.collect.EnumBiMap create(java.util.Map);
  public com.google.common.collect.BiMap inverse();
}
-keep,allowobfuscation class com.google.common.collect.FluentIterable {
  public static com.google.common.collect.FluentIterable from(java.lang.Iterable);
  public com.google.common.collect.ImmutableList toList();
  public com.google.common.collect.FluentIterable transform(com.google.common.base.Function);
}
-keep,allowobfuscation class com.google.common.collect.ForwardingMap {
  public java.util.Set entrySet();
  public java.lang.Object get(java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.HashBiMap {
  public static com.google.common.collect.HashBiMap create();
}
-keep,allowobfuscation class com.google.common.collect.ImmutableBiMap$Builder {
  public com.google.common.collect.ImmutableBiMap build();
  public com.google.common.collect.ImmutableBiMap$Builder put(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.ImmutableBiMap {
  public static com.google.common.collect.ImmutableBiMap$Builder builder();
  public static com.google.common.collect.ImmutableBiMap copyOf(java.util.Map);
  public com.google.common.collect.ImmutableBiMap inverse();
  public static com.google.common.collect.ImmutableBiMap of(java.lang.Object, java.lang.Object);
  public com.google.common.collect.ImmutableSet values();
}
-keep,allowobfuscation class com.google.common.collect.ImmutableClassToInstanceMap$Builder {
  public <init>();
  public com.google.common.collect.ImmutableClassToInstanceMap build();
  public com.google.common.collect.ImmutableClassToInstanceMap$Builder put(java.lang.Class, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.ImmutableClassToInstanceMap {
}
-keep,allowobfuscation class com.google.common.collect.ImmutableList$Builder {
  public <init>();
  public com.google.common.collect.ImmutableList$Builder add(java.lang.Object);
  public com.google.common.collect.ImmutableList$Builder addAll(java.lang.Iterable);
  public com.google.common.collect.ImmutableList build();
}
-keep,allowobfuscation class com.google.common.collect.ImmutableList {
  public static com.google.common.collect.ImmutableList$Builder builder();
  public static com.google.common.collect.ImmutableList copyOf(java.util.Collection);
  public boolean equals(java.lang.Object);
  public com.google.common.collect.UnmodifiableIterator iterator();
  public static com.google.common.collect.ImmutableList of();
  public static com.google.common.collect.ImmutableList of(java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.ImmutableMap$Builder {
  public com.google.common.collect.ImmutableMap build();
  public com.google.common.collect.ImmutableMap$Builder put(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.ImmutableMap {
  public static com.google.common.collect.ImmutableMap$Builder builder();
  public boolean containsValue(java.lang.Object);
  public static com.google.common.collect.ImmutableMap copyOf(java.util.Map);
  public com.google.common.collect.ImmutableSet entrySet();
  public java.lang.Object get(java.lang.Object);
  public com.google.common.collect.ImmutableSet keySet();
  public static com.google.common.collect.ImmutableMap of();
  public static com.google.common.collect.ImmutableMap of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class com.google.common.collect.ImmutableSet$Builder {
  public <init>();
  public com.google.common.collect.ImmutableSet$Builder add(java.lang.Object);
  public com.google.common.collect.ImmutableSet$Builder addAll(java.lang.Iterable);
  public com.google.common.collect.ImmutableSet build();
}
-keep,allowobfuscation class com.google.common.collect.ImmutableSet {
  public static com.google.common.collect.ImmutableSet$Builder builder();
  public com.google.common.collect.UnmodifiableIterator iterator();
  public static com.google.common.collect.ImmutableSet of();
  public static com.google.common.collect.ImmutableSet of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]);
}
-keep,allowobfuscation class com.google.common.collect.Lists {
  public static java.util.ArrayList newArrayList(java.lang.Object[]);
  public static java.util.List transform(java.util.List, com.google.common.base.Function);
}
-keep,allowobfuscation class com.google.common.collect.UnmodifiableIterator {
}
-keep,allowobfuscation interface com.google.common.util.concurrent.ListenableFuture {
  public void addListener(java.lang.Runnable, java.util.concurrent.Executor);
}
-keep,allowobfuscation @interface com.google.errorprone.annotations.CanIgnoreReturnValue {
}
-keep,allowobfuscation @interface com.google.errorprone.annotations.CheckReturnValue {
}
-keep,allowobfuscation @interface com.google.errorprone.annotations.InlineMe {
  public java.lang.String replacement();
}
-keep,allowobfuscation @interface com.google.errorprone.annotations.MustBeClosed {
}
-keep,allowobfuscation class com.google.protobuf.AbstractMessageLite {
}
-keep,allowobfuscation class com.google.protobuf.ByteString {
  public java.nio.ByteBuffer asReadOnlyByteBuffer();
  public static com.google.protobuf.ByteString copyFrom(java.nio.ByteBuffer);
  public static com.google.protobuf.ByteString copyFromUtf8(java.lang.String);
  public java.lang.String toStringUtf8();
  com.google.protobuf.ByteString EMPTY;
}
-keep,allowobfuscation class com.google.protobuf.CodedInputStream {
  public int getBytesUntilLimit();
  public void popLimit(int);
  public int pushLimit(int);
  public boolean readBool();
  public com.google.protobuf.ByteString readBytes();
  public double readDouble();
  public int readEnum();
  public float readFloat();
  public int readInt32();
  public long readInt64();
  public com.google.protobuf.MessageLite readMessage(com.google.protobuf.Parser, com.google.protobuf.ExtensionRegistryLite);
  public int readRawVarint32();
  public java.lang.String readString();
  public int readTag();
}
-keep,allowobfuscation class com.google.protobuf.CodedOutputStream {
  public static int computeBoolSize(int, boolean);
  public static int computeBytesSize(int, com.google.protobuf.ByteString);
  public static int computeDoubleSize(int, double);
  public static int computeEnumSize(int, int);
  public static int computeFloatSize(int, float);
  public static int computeInt32Size(int, int);
  public static int computeInt32SizeNoTag(int);
  public static int computeInt64Size(int, long);
  public static int computeMessageSize(int, com.google.protobuf.MessageLite);
  public static int computeStringSize(int, java.lang.String);
  public static int computeStringSizeNoTag(java.lang.String);
  public void writeBool(int, boolean);
  public void writeBytes(int, com.google.protobuf.ByteString);
  public void writeDouble(int, double);
  public void writeEnum(int, int);
  public void writeFloat(int, float);
  public void writeInt32(int, int);
  public void writeInt64(int, long);
  public void writeMessage(int, com.google.protobuf.MessageLite);
  public void writeString(int, java.lang.String);
}
-keep,allowobfuscation class com.google.protobuf.ExtensionRegistryLite {
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite$Builder {
  protected <init>(com.google.protobuf.GeneratedMessageLite);
  public com.google.protobuf.GeneratedMessageLite build();
  public com.google.protobuf.GeneratedMessageLite buildPartial();
  protected void copyOnWrite();
  public com.google.protobuf.GeneratedMessageLite$Builder mergeFrom(com.google.protobuf.GeneratedMessageLite);
  com.google.protobuf.GeneratedMessageLite instance;
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite$DefaultInstanceBasedParser {
  public <init>(com.google.protobuf.GeneratedMessageLite);
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite$ExtendableBuilder {
  protected <init>(com.google.protobuf.GeneratedMessageLite$ExtendableMessage);
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite$ExtendableMessage$ExtensionWriter {
  public void writeUntil(int, com.google.protobuf.CodedOutputStream);
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite$ExtendableMessage {
  public <init>();
  protected java.lang.Object dynamicMethod(com.google.protobuf.GeneratedMessageLite$MethodToInvoke, java.lang.Object, java.lang.Object);
  protected boolean extensionsAreInitialized();
  protected int extensionsSerializedSize();
  public int getSerializedSize();
  protected com.google.protobuf.GeneratedMessageLite$ExtendableMessage$ExtensionWriter newExtensionWriter();
  protected boolean parseUnknownField(com.google.protobuf.MessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite, int);
  public void writeTo(com.google.protobuf.CodedOutputStream);
}
-keep,allowobfuscation interface com.google.protobuf.GeneratedMessageLite$ExtendableMessageOrBuilder {
}
-keep enum com.google.protobuf.GeneratedMessageLite$MethodToInvoke {
  public static com.google.protobuf.GeneratedMessageLite$MethodToInvoke[] values();
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke GET_DEFAULT_INSTANCE;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke GET_PARSER;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke NEW_BUILDER;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke NEW_MUTABLE_INSTANCE;
}
-keep,allowobfuscation class com.google.protobuf.GeneratedMessageLite {
  public <init>();
  protected java.lang.Object dynamicMethod(com.google.protobuf.GeneratedMessageLite$MethodToInvoke, java.lang.Object, java.lang.Object);
  protected static com.google.protobuf.Internal$IntList emptyIntList();
  protected static com.google.protobuf.Internal$ProtobufList emptyProtobufList();
  public com.google.protobuf.GeneratedMessageLite getDefaultInstanceForType();
  public com.google.protobuf.Parser getParserForType();
  public int getSerializedSize();
  public boolean isInitialized();
  protected void makeImmutable();
  protected void mergeVarintField(int, int);
  protected static com.google.protobuf.Internal$IntList mutableCopy(com.google.protobuf.Internal$IntList);
  protected static com.google.protobuf.Internal$ProtobufList mutableCopy(com.google.protobuf.Internal$ProtobufList);
  protected static com.google.protobuf.GeneratedMessageLite parseDelimitedFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseDelimitedFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.ByteString);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.ByteString, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.CodedInputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, byte[]);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, byte[], com.google.protobuf.ExtensionRegistryLite);
  protected boolean parseUnknownField(int, com.google.protobuf.CodedInputStream);
  public com.google.protobuf.GeneratedMessageLite$Builder toBuilder();
  public void writeTo(com.google.protobuf.CodedOutputStream);
  int memoizedSerializedSize;
  com.google.protobuf.UnknownFieldSetLite unknownFields;
}
-keep,allowobfuscation interface com.google.protobuf.Internal$EnumLite {
  public int getNumber();
}
-keep,allowobfuscation interface com.google.protobuf.Internal$EnumLiteMap {
  public com.google.protobuf.Internal$EnumLite findValueByNumber(int);
}
-keep,allowobfuscation interface com.google.protobuf.Internal$IntList {
  public void addInt(int);
  public int getInt(int);
  public int setInt(int, int);
}
-keep,allowobfuscation interface com.google.protobuf.Internal$ProtobufList {
  public boolean isModifiable();
  public void makeImmutable();
}
-keep,allowobfuscation class com.google.protobuf.Internal {
}
-keep,allowobfuscation class com.google.protobuf.InvalidProtocolBufferException {
  public <init>(java.lang.String);
  public com.google.protobuf.InvalidProtocolBufferException setUnfinishedMessage(com.google.protobuf.MessageLite);
}
-keep,allowobfuscation class com.google.protobuf.MapEntryLite {
  public int computeMessageSize(int, java.lang.Object, java.lang.Object);
  public static com.google.protobuf.MapEntryLite newDefaultInstance(com.google.protobuf.WireFormat$FieldType, java.lang.Object, com.google.protobuf.WireFormat$FieldType, java.lang.Object);
  public void parseInto(com.google.protobuf.MapFieldLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite);
  public void serializeTo(com.google.protobuf.CodedOutputStream, int, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class com.google.protobuf.MapFieldLite {
  public static com.google.protobuf.MapFieldLite emptyMapField();
  public java.util.Set entrySet();
  public boolean isMutable();
  public void makeImmutable();
  public com.google.protobuf.MapFieldLite mutableCopy();
}
-keep,allowobfuscation interface com.google.protobuf.MessageLite {
}
-keep,allowobfuscation interface com.google.protobuf.MessageLiteOrBuilder {
}
-keep,allowobfuscation interface com.google.protobuf.Parser {
}
-keep,allowobfuscation class com.google.protobuf.UnknownFieldSetLite {
  public int getSerializedSize();
  public void writeTo(com.google.protobuf.CodedOutputStream);
}
-keep enum com.google.protobuf.WireFormat$FieldType {
  com.google.protobuf.WireFormat$FieldType INT32;
  com.google.protobuf.WireFormat$FieldType MESSAGE;
  com.google.protobuf.WireFormat$FieldType STRING;
}
-keep,allowobfuscation class com.google.protobuf.WireFormat {
}
-keep,allowobfuscation interface com.sun.jna.FunctionMapper {
  public java.lang.String getFunctionName(com.sun.jna.NativeLibrary, java.lang.reflect.Method);
}
-keep,allowobfuscation class com.sun.jna.JNIEnv {
  com.sun.jna.JNIEnv CURRENT;
}
-keep,allowobfuscation class com.sun.jna.LastErrorException {
}
-keep,allowobfuscation interface com.sun.jna.Library {
}
-keep,allowobfuscation class com.sun.jna.Memory {
  public <init>(long);
  public long size();
  public void write(long, byte[], int, int);
}
-keep,allowobfuscation class com.sun.jna.Native {
  public static int getLastError();
  public static int getNativeSize(java.lang.Class, java.lang.Object);
  public static java.lang.Object loadLibrary(java.lang.String, java.lang.Class);
  public static java.lang.Object loadLibrary(java.lang.String, java.lang.Class, java.util.Map);
  public static java.lang.String toString(char[]);
}
-keep,allowobfuscation class com.sun.jna.NativeLibrary {
}
-keep,allowobfuscation class com.sun.jna.Platform {
  public static boolean is64Bit();
  public static boolean isAIX();
  public static boolean isLinux();
  public static boolean isMac();
  public static boolean isSolaris();
  public static boolean isWindows();
}
-keep,allowobfuscation class com.sun.jna.Pointer {
  public int getInt(long);
  public java.lang.String getString(long);
}
-keep,allowobfuscation class com.sun.jna.Structure {
  protected <init>();
  protected java.util.List getFieldOrder();
  public int size();
}
-keep,allowobfuscation class com.sun.jna.ptr.IntByReference {
  public <init>();
  public <init>(int);
  public int getValue();
}
-keep,allowobfuscation interface com.sun.jna.win32.StdCallLibrary {
}
-keep,allowobfuscation interface com.sun.jna.win32.W32APIOptions {
  java.util.Map DEFAULT_OPTIONS;
}
-keep,allowobfuscation @interface javax.inject.Inject {
}
-keep,allowobfuscation interface javax.inject.Provider {
  public java.lang.Object get();
}
-keep,allowobfuscation @interface javax.inject.Qualifier {
}
-keep,allowobfuscation @interface javax.inject.Scope {
}
-keep,allowobfuscation @interface javax.inject.Singleton {
}
-keep,allowobfuscation @interface kotlin.Deprecated {
  public kotlin.DeprecationLevel level();
  public java.lang.String message();
  public kotlin.ReplaceWith replaceWith();
}
-keep enum kotlin.DeprecationLevel {
  public static kotlin.DeprecationLevel[] values();
  kotlin.DeprecationLevel ERROR;
  kotlin.DeprecationLevel HIDDEN;
  kotlin.DeprecationLevel WARNING;
}
-keep,allowobfuscation class kotlin.ExceptionsKt {
}
-keep,allowobfuscation class kotlin.ExceptionsKt__ExceptionsKt {
  public static void addSuppressed(java.lang.Throwable, java.lang.Throwable);
  public static java.lang.String stackTraceToString(java.lang.Throwable);
}
-keep,allowobfuscation @interface kotlin.ExperimentalContextParameters {
}
-keep,allowobfuscation @interface kotlin.ExperimentalStdlibApi {
}
-keep,allowobfuscation @interface kotlin.ExtensionFunctionType {
}
-keep,allowobfuscation interface kotlin.Function {
}
-keep,allowobfuscation @interface kotlin.IgnorableReturnValue {
}
-keep,allowobfuscation class kotlin.KotlinNothingValueException {
  public <init>();
}
-keep,allowobfuscation class kotlin.KotlinVersion {
  public <init>(int, int);
  public int compareTo(kotlin.KotlinVersion);
  public int hashCode();
}
-keep,allowobfuscation interface kotlin.Lazy {
  public java.lang.Object getValue();
}
-keep,allowobfuscation class kotlin.LazyKt {
}
-keep,allowobfuscation class kotlin.LazyKt__LazyJVMKt {
  public static kotlin.Lazy lazy(kotlin.LazyThreadSafetyMode, kotlin.jvm.functions.Function0);
  public static kotlin.Lazy lazy(kotlin.jvm.functions.Function0);
}
-keep,allowobfuscation class kotlin.LazyKt__LazyKt {
  public static kotlin.Lazy lazyOf(java.lang.Object);
}
-keep enum kotlin.LazyThreadSafetyMode {
  kotlin.LazyThreadSafetyMode NONE;
  kotlin.LazyThreadSafetyMode PUBLICATION;
}
-keep,allowobfuscation @interface kotlin.Metadata {
  public int[] bv();
  public java.lang.String[] d1();
  public java.lang.String[] d2();
  public int k();
  public int[] mv();
  public java.lang.String pn();
  public int xi();
  public java.lang.String xs();
}
-keep,allowobfuscation class kotlin.NoWhenBranchMatchedException {
  public <init>();
}
-keep,allowobfuscation class kotlin.NotImplementedError {
  public <init>(java.lang.String);
}
-keep,allowobfuscation class kotlin.Pair {
  public <init>(java.lang.Object, java.lang.Object);
  public java.lang.Object component1();
  public java.lang.Object component2();
  public java.lang.Object getFirst();
  public java.lang.Object getSecond();
  public int hashCode();
}
-keep,allowobfuscation @interface kotlin.ParameterName {
}
-keep,allowobfuscation @interface kotlin.PublishedApi {
}
-keep enum kotlin.RequiresOptIn$Level {
  kotlin.RequiresOptIn$Level ERROR;
  kotlin.RequiresOptIn$Level WARNING;
}
-keep,allowobfuscation @interface kotlin.RequiresOptIn {
  public kotlin.RequiresOptIn$Level level();
  public java.lang.String message();
}
-keep,allowobfuscation class kotlin.Result$Companion {
}
-keep,allowobfuscation class kotlin.Result {
  public static kotlin.Result box-impl(java.lang.Object);
  public static java.lang.Object constructor-impl(java.lang.Object);
  public static java.lang.Throwable exceptionOrNull-impl(java.lang.Object);
  public static boolean isFailure-impl(java.lang.Object);
  public static boolean isSuccess-impl(java.lang.Object);
  public java.lang.Object unbox-impl();
  kotlin.Result$Companion Companion;
}
-keep,allowobfuscation class kotlin.ResultKt {
  public static java.lang.Object createFailure(java.lang.Throwable);
  public static void throwOnFailure(java.lang.Object);
}
-keep,allowobfuscation @interface kotlin.SinceKotlin {
  public java.lang.String version();
}
-keep,allowobfuscation class kotlin.Triple {
  public <init>(java.lang.Object, java.lang.Object, java.lang.Object);
  public java.lang.Object component1();
  public java.lang.Object component2();
  public java.lang.Object component3();
  public java.lang.Object getThird();
}
-keep,allowobfuscation class kotlin.TuplesKt {
  public static kotlin.Pair to(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class kotlin.TypeCastException {
  public <init>(java.lang.String);
}
-keep,allowobfuscation class kotlin.UByte {
  public static kotlin.UByte box-impl(byte);
  public static byte constructor-impl(byte);
  public static int hashCode-impl(byte);
  public byte unbox-impl();
}
-keep,allowobfuscation class kotlin.UByteArray {
  public static kotlin.UByteArray box-impl(byte[]);
  public static boolean contains-7apg3OU(byte[], byte);
  public static byte get-w2LRezQ(byte[], int);
  public static int getSize-impl(byte[]);
  public byte[] unbox-impl();
}
-keep,allowobfuscation class kotlin.UInt {
  public static kotlin.UInt box-impl(int);
  public static int constructor-impl(int);
  public static int hashCode-impl(int);
  public static java.lang.String toString-impl(int);
  public int unbox-impl();
}
-keep,allowobfuscation class kotlin.UIntArray {
  public static kotlin.UIntArray box-impl(int[]);
  public static boolean contains-WZ4Q5Ns(int[], int);
  public static int get-pVg5ArA(int[], int);
  public static int getSize-impl(int[]);
  public int[] unbox-impl();
}
-keep,allowobfuscation class kotlin.ULong {
  public static kotlin.ULong box-impl(long);
  public static long constructor-impl(long);
  public static int hashCode-impl(long);
  public long unbox-impl();
}
-keep,allowobfuscation class kotlin.ULongArray {
  public static kotlin.ULongArray box-impl(long[]);
  public static boolean contains-VKZWuLQ(long[], long);
  public static long get-s-VKNKU(long[], int);
  public static int getSize-impl(long[]);
  public long[] unbox-impl();
}
-keep,allowobfuscation class kotlin.UShort {
  public static kotlin.UShort box-impl(short);
  public static short constructor-impl(short);
  public static int hashCode-impl(short);
  public short unbox-impl();
}
-keep,allowobfuscation class kotlin.UShortArray {
  public static kotlin.UShortArray box-impl(short[]);
  public static boolean contains-xj2QHRw(short[], short);
  public static short get-Mh2AYeg(short[], int);
  public static int getSize-impl(short[]);
  public short[] unbox-impl();
}
-keep,allowobfuscation class kotlin.UninitializedPropertyAccessException {
}
-keep,allowobfuscation class kotlin.Unit {
  kotlin.Unit INSTANCE;
}
-keep,allowobfuscation @interface kotlin.WasExperimental {
  public java.lang.Class[] markerClass();
}
-keep,allowobfuscation class kotlin._Assertions {
  boolean ENABLED;
}
-keep enum kotlin.annotation.AnnotationRetention {
  kotlin.annotation.AnnotationRetention BINARY;
  kotlin.annotation.AnnotationRetention RUNTIME;
  kotlin.annotation.AnnotationRetention SOURCE;
}
-keep enum kotlin.annotation.AnnotationTarget {
  kotlin.annotation.AnnotationTarget ANNOTATION_CLASS;
  kotlin.annotation.AnnotationTarget CLASS;
  kotlin.annotation.AnnotationTarget CONSTRUCTOR;
  kotlin.annotation.AnnotationTarget FIELD;
  kotlin.annotation.AnnotationTarget FUNCTION;
  kotlin.annotation.AnnotationTarget LOCAL_VARIABLE;
  kotlin.annotation.AnnotationTarget PROPERTY;
  kotlin.annotation.AnnotationTarget PROPERTY_GETTER;
  kotlin.annotation.AnnotationTarget PROPERTY_SETTER;
  kotlin.annotation.AnnotationTarget TYPEALIAS;
  kotlin.annotation.AnnotationTarget VALUE_PARAMETER;
}
-keep,allowobfuscation @interface kotlin.annotation.MustBeDocumented {
}
-keep,allowobfuscation @interface kotlin.annotation.Retention {
  public kotlin.annotation.AnnotationRetention value();
}
-keep,allowobfuscation @interface kotlin.annotation.Target {
  public kotlin.annotation.AnnotationTarget[] allowedTargets();
}
-keep,allowobfuscation class kotlin.collections.AbstractCollection {
  public boolean contains(java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.AbstractIterator {
  public <init>();
  protected void computeNext();
  protected void done();
  protected void setNext(java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.AbstractList {
  protected <init>();
  public java.lang.Object get(int);
  public int getSize();
  public java.lang.Object[] toArray();
}
-keep,allowobfuscation class kotlin.collections.AbstractMutableList {
  protected <init>();
  public void add(int, java.lang.Object);
  public int getSize();
  public java.lang.Object removeAt(int);
  public java.lang.Object set(int, java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.AbstractMutableSet {
  protected <init>();
  public boolean add(java.lang.Object);
  public int getSize();
  public int size();
}
-keep,allowobfuscation class kotlin.collections.ArrayDeque {
  public <init>();
  public <init>(java.util.Collection);
  public boolean add(java.lang.Object);
  public void addFirst(java.lang.Object);
  public void addLast(java.lang.Object);
  public boolean isEmpty();
  public java.lang.Object removeFirst();
  public java.lang.Object removeFirstOrNull();
}
-keep,allowobfuscation class kotlin.collections.ArraysKt {
}
-keep,allowobfuscation class kotlin.collections.ArraysKt__ArraysKt {
  public static boolean contentDeepEquals(java.lang.Object[], java.lang.Object[]);
  public static java.lang.String contentDeepToString(java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.collections.ArraysKt___ArraysJvmKt {
  public static java.util.List asList(int[]);
  public static java.util.List asList(java.lang.Object[]);
  public static int binarySearch$default(int[], int, int, int, int, java.lang.Object);
  public static byte[] copyInto(byte[], byte[], int, int, int);
  public static char[] copyOfRange(char[], int, int);
  public static java.lang.Object[] copyOfRange(java.lang.Object[], int, int);
  public static void fill$default(int[], int, int, int, int, java.lang.Object);
  public static void fill$default(java.lang.Object[], java.lang.Object, int, int, int, java.lang.Object);
  public static void fill(byte[], byte, int, int);
  public static void fill(java.lang.Object[], java.lang.Object, int, int);
  public static java.lang.Object[] plus(java.lang.Object[], java.lang.Object);
  public static java.lang.Object[] plus(java.lang.Object[], java.lang.Object[]);
  public static java.lang.Byte[] toTypedArray(byte[]);
  public static java.lang.Character[] toTypedArray(char[]);
  public static java.lang.Double[] toTypedArray(double[]);
  public static java.lang.Float[] toTypedArray(float[]);
  public static java.lang.Integer[] toTypedArray(int[]);
  public static java.lang.Long[] toTypedArray(long[]);
  public static java.lang.Short[] toTypedArray(short[]);
  public static java.lang.Boolean[] toTypedArray(boolean[]);
}
-keep,allowobfuscation class kotlin.collections.ArraysKt___ArraysKt {
  public static java.lang.Iterable asIterable(java.lang.Object[]);
  public static kotlin.sequences.Sequence asSequence(long[]);
  public static kotlin.sequences.Sequence asSequence(java.lang.Object[]);
  public static boolean contains(byte[], byte);
  public static boolean contains(char[], char);
  public static boolean contains(int[], int);
  public static boolean contains(long[], long);
  public static boolean contains(java.lang.Object[], java.lang.Object);
  public static boolean contains(short[], short);
  public static boolean contains(boolean[], boolean);
  public static java.util.List drop(java.lang.Object[], int);
  public static java.lang.Object first(java.lang.Object[]);
  public static java.lang.Object firstOrNull(java.lang.Object[]);
  public static int getLastIndex(long[]);
  public static int getLastIndex(java.lang.Object[]);
  public static java.lang.Integer getOrNull(int[], int);
  public static java.lang.Object getOrNull(java.lang.Object[], int);
  public static int indexOf(java.lang.Object[], java.lang.Object);
  public static java.lang.String joinToString$default(byte[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(char[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(java.lang.Object[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static long last(long[]);
  public static java.lang.Object last(java.lang.Object[]);
  public static java.lang.Object lastOrNull(java.lang.Object[]);
  public static java.lang.Object[] requireNoNulls(java.lang.Object[]);
  public static void reverse(java.lang.Object[]);
  public static java.lang.Object single(java.lang.Object[]);
  public static byte[] sliceArray(byte[], kotlin.ranges.IntRange);
  public static java.util.List sorted(java.lang.Comparable[]);
  public static java.util.List sortedWith(java.lang.Object[], java.util.Comparator);
  public static java.util.List take(byte[], int);
  public static boolean[] toBooleanArray(java.lang.Boolean[]);
  public static byte[] toByteArray(java.lang.Byte[]);
  public static char[] toCharArray(java.lang.Character[]);
  public static double[] toDoubleArray(java.lang.Double[]);
  public static float[] toFloatArray(java.lang.Float[]);
  public static int[] toIntArray(java.lang.Integer[]);
  public static java.util.List toList(byte[]);
  public static java.util.List toList(char[]);
  public static java.util.List toList(double[]);
  public static java.util.List toList(float[]);
  public static java.util.List toList(int[]);
  public static java.util.List toList(long[]);
  public static java.util.List toList(java.lang.Object[]);
  public static java.util.List toList(short[]);
  public static java.util.List toList(boolean[]);
  public static long[] toLongArray(java.lang.Long[]);
  public static java.util.Set toSet(java.lang.Object[]);
  public static short[] toShortArray(java.lang.Short[]);
  public static java.lang.Iterable withIndex(java.lang.Object[]);
  public static java.util.List zip(java.lang.Object[], java.lang.Iterable);
  public static java.util.List zip(java.lang.Object[], java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt {
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__CollectionsJVMKt {
  public static java.util.List build(java.util.List);
  public static java.util.List createListBuilder();
  public static java.util.List createListBuilder(int);
  public static java.util.List listOf(java.lang.Object);
  public static java.util.List shuffled(java.lang.Iterable);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__CollectionsKt {
  public static java.util.ArrayList arrayListOf(java.lang.Object[]);
  public static java.util.List emptyList();
  public static kotlin.ranges.IntRange getIndices(java.util.Collection);
  public static int getLastIndex(java.util.List);
  public static java.util.List listOf(java.lang.Object[]);
  public static java.util.List listOfNotNull(java.lang.Object);
  public static java.util.List listOfNotNull(java.lang.Object[]);
  public static java.util.List mutableListOf(java.lang.Object[]);
  public static void throwCountOverflow();
  public static void throwIndexOverflow();
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__IterablesKt {
  public static int collectionSizeOrDefault(java.lang.Iterable, int);
  public static java.util.List flatten(java.lang.Iterable);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__IteratorsJVMKt {
  public static java.util.Iterator iterator(java.util.Enumeration);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__MutableCollectionsJVMKt {
  public static void sortWith(java.util.List, java.util.Comparator);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__MutableCollectionsKt {
  public static boolean addAll(java.util.Collection, java.lang.Iterable);
  public static boolean addAll(java.util.Collection, kotlin.sequences.Sequence);
  public static boolean addAll(java.util.Collection, java.lang.Object[]);
  public static boolean retainAll(java.util.List, kotlin.jvm.functions.Function1);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt__ReversedViewsKt {
  public static java.util.List asReversedMutable(java.util.List);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt___CollectionsJvmKt {
  public static java.util.List filterIsInstance(java.lang.Iterable, java.lang.Class);
  public static java.lang.Comparable max(java.lang.Iterable);
}
-keep,allowobfuscation class kotlin.collections.CollectionsKt___CollectionsKt {
  public static boolean all(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence asSequence(java.lang.Iterable);
  public static double averageOfDouble(java.lang.Iterable);
  public static java.util.List chunked(java.lang.Iterable, int);
  public static boolean contains(java.lang.Iterable, java.lang.Object);
  public static int count(java.lang.Iterable);
  public static java.util.List distinct(java.lang.Iterable);
  public static java.util.List drop(java.lang.Iterable, int);
  public static java.util.List dropLast(java.util.List, int);
  public static java.util.List filter(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static java.util.List filterNotNull(java.lang.Iterable);
  public static java.lang.Object first(java.lang.Iterable);
  public static java.lang.Object first(java.util.List);
  public static java.lang.Object firstOrNull(java.lang.Iterable);
  public static java.lang.Object firstOrNull(java.util.List);
  public static java.lang.Object getOrNull(java.util.List, int);
  public static java.util.Set intersect(java.lang.Iterable, java.lang.Iterable);
  public static java.lang.Appendable joinTo$default(java.lang.Iterable, java.lang.Appendable, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(java.lang.Iterable, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.Object last(java.lang.Iterable);
  public static java.lang.Object last(java.util.List);
  public static java.lang.Object lastOrNull(java.lang.Iterable);
  public static java.lang.Object lastOrNull(java.util.List);
  public static java.util.List map(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static java.lang.Comparable minOrNull(java.lang.Iterable);
  public static java.util.List minus(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List minus(java.lang.Iterable, java.lang.Object);
  public static java.util.List plus(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List plus(java.lang.Iterable, java.lang.Object);
  public static java.util.List plus(java.util.Collection, java.lang.Iterable);
  public static java.util.List plus(java.util.Collection, java.lang.Object);
  public static java.util.List plus(java.util.Collection, java.lang.Object[]);
  public static java.lang.Object random(java.util.Collection, kotlin.random.Random);
  public static java.util.List reversed(java.lang.Iterable);
  public static java.lang.Object single(java.lang.Iterable);
  public static java.lang.Object single(java.util.List);
  public static java.lang.Object singleOrNull(java.lang.Iterable);
  public static java.lang.Object singleOrNull(java.util.List);
  public static java.util.List slice(java.util.List, kotlin.ranges.IntRange);
  public static java.util.List sorted(java.lang.Iterable);
  public static java.util.List sortedWith(java.lang.Iterable, java.util.Comparator);
  public static double sumOfDouble(java.lang.Iterable);
  public static int sumOfInt(java.lang.Iterable);
  public static java.util.List take(java.lang.Iterable, int);
  public static java.util.List takeLast(java.util.List, int);
  public static java.util.HashSet toHashSet(java.lang.Iterable);
  public static int[] toIntArray(java.util.Collection);
  public static java.util.List toList(java.lang.Iterable);
  public static java.util.List toMutableList(java.util.Collection);
  public static java.util.Set toMutableSet(java.lang.Iterable);
  public static java.util.Set toSet(java.lang.Iterable);
  public static java.util.Set union(java.lang.Iterable, java.lang.Iterable);
  public static java.lang.Iterable withIndex(java.lang.Iterable);
  public static java.util.List zip(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List zipWithNext(java.lang.Iterable);
}
-keep,allowobfuscation class kotlin.collections.IndexedValue {
  public int component1();
  public java.lang.Object component2();
  public int getIndex();
  public java.lang.Object getValue();
}
-keep,allowobfuscation class kotlin.collections.IntIterator {
  public int nextInt();
}
-keep,allowobfuscation class kotlin.collections.MapsKt {
}
-keep,allowobfuscation class kotlin.collections.MapsKt__MapsJVMKt {
  public static java.util.Map build(java.util.Map);
  public static java.util.Map createMapBuilder();
  public static int mapCapacity(int);
  public static java.util.Map mapOf(kotlin.Pair);
  public static java.util.SortedMap toSortedMap(java.util.Map);
  public static java.util.SortedMap toSortedMap(java.util.Map, java.util.Comparator);
}
-keep,allowobfuscation class kotlin.collections.MapsKt__MapsKt {
  public static java.util.Map emptyMap();
  public static java.lang.Object getValue(java.util.Map, java.lang.Object);
  public static java.util.HashMap hashMapOf(kotlin.Pair[]);
  public static java.util.Map mapOf(kotlin.Pair[]);
  public static java.util.Map minus(java.util.Map, java.lang.Object);
  public static java.util.Map mutableMapOf(kotlin.Pair[]);
  public static java.util.Map plus(java.util.Map, java.util.Map);
  public static java.util.Map plus(java.util.Map, kotlin.Pair);
  public static void putAll(java.util.Map, kotlin.Pair[]);
  public static java.util.Map toMap(java.lang.Iterable);
  public static java.util.Map toMap(java.util.Map);
  public static java.util.Map toMap(kotlin.sequences.Sequence);
  public static java.util.Map toMap(kotlin.Pair[]);
  public static java.util.Map toMutableMap(java.util.Map);
}
-keep,allowobfuscation class kotlin.collections.MapsKt___MapsKt {
  public static java.util.List toList(java.util.Map);
}
-keep,allowobfuscation class kotlin.collections.SetsKt {
}
-keep,allowobfuscation class kotlin.collections.SetsKt__SetsJVMKt {
  public static java.util.Set build(java.util.Set);
  public static java.util.Set createSetBuilder();
  public static java.util.Set setOf(java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.SetsKt__SetsKt {
  public static java.util.Set emptySet();
  public static java.util.LinkedHashSet linkedSetOf(java.lang.Object[]);
  public static java.util.Set setOf(java.lang.Object[]);
  public static java.util.Set setOfNotNull(java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.SetsKt___SetsKt {
  public static java.util.Set minus(java.util.Set, java.lang.Iterable);
  public static java.util.Set minus(java.util.Set, java.lang.Object);
  public static java.util.Set plus(java.util.Set, java.lang.Iterable);
  public static java.util.Set plus(java.util.Set, java.lang.Object);
}
-keep,allowobfuscation class kotlin.collections.unsigned.UArraysKt {
}
-keep,allowobfuscation class kotlin.collections.unsigned.UArraysKt___UArraysKt {
  public static boolean contentEquals-FGO6Aew(short[], short[]);
  public static boolean contentEquals-KJPZfPQ(int[], int[]);
  public static boolean contentEquals-kV0jMPg(byte[], byte[]);
  public static boolean contentEquals-lec5QzE(long[], long[]);
  public static java.lang.String contentToString-2csIQuQ(byte[]);
  public static java.lang.String contentToString-XUkPCBk(int[]);
  public static java.lang.String contentToString-d-6D3K8(short[]);
  public static java.lang.String contentToString-uLth9ew(long[]);
}
-keep,allowobfuscation class kotlin.comparisons.ComparisonsKt {
}
-keep,allowobfuscation class kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$2 {
}
-keep,allowobfuscation class kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareByDescending$1 {
}
-keep,allowobfuscation class kotlin.comparisons.ComparisonsKt__ComparisonsKt {
  public static java.util.Comparator compareBy(kotlin.jvm.functions.Function1[]);
  public static int compareValues(java.lang.Comparable, java.lang.Comparable);
  public static int compareValuesBy(java.lang.Object, java.lang.Object, kotlin.jvm.functions.Function1[]);
  public static java.util.Comparator naturalOrder();
}
-keep,allowobfuscation class kotlin.concurrent.ThreadsKt {
  public static java.lang.Thread thread$default(boolean, boolean, java.lang.ClassLoader, java.lang.String, int, kotlin.jvm.functions.Function0, int, java.lang.Object);
}
-keep,allowobfuscation @interface kotlin.contracts.ExperimentalContracts {
}
-keep,allowobfuscation class kotlin.coroutines.AbstractCoroutineContextElement {
  public <init>(kotlin.coroutines.CoroutineContext$Key);
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface kotlin.coroutines.Continuation {
  public kotlin.coroutines.CoroutineContext getContext();
  public void resumeWith(java.lang.Object);
}
-keep,allowobfuscation class kotlin.coroutines.ContinuationInterceptor$DefaultImpls {
  public static kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext$Key);
  public static void releaseInterceptedContinuation(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlin.coroutines.ContinuationInterceptor$Key {
}
-keep,allowobfuscation interface kotlin.coroutines.ContinuationInterceptor {
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.Continuation interceptContinuation(kotlin.coroutines.Continuation);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public void releaseInterceptedContinuation(kotlin.coroutines.Continuation);
  kotlin.coroutines.ContinuationInterceptor$Key Key;
}
-keep,allowobfuscation class kotlin.coroutines.CoroutineContext$Element$DefaultImpls {
  public static java.lang.Object fold(kotlin.coroutines.CoroutineContext$Element, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface kotlin.coroutines.CoroutineContext$Element {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation interface kotlin.coroutines.CoroutineContext$Key {
}
-keep,allowobfuscation interface kotlin.coroutines.CoroutineContext {
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation class kotlin.coroutines.EmptyCoroutineContext {
  kotlin.coroutines.EmptyCoroutineContext INSTANCE;
}
-keep,allowobfuscation class kotlin.coroutines.intrinsics.IntrinsicsKt {
}
-keep,allowobfuscation class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt {
  public static kotlin.coroutines.Continuation createCoroutineUnintercepted(kotlin.jvm.functions.Function2, java.lang.Object, kotlin.coroutines.Continuation);
  public static kotlin.coroutines.Continuation intercepted(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt {
  public static java.lang.Object getCOROUTINE_SUSPENDED();
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.Boxing {
  public static java.lang.Integer boxInt(int);
  public static java.lang.Long boxLong(long);
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.ContinuationImpl {
  public <init>(kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keep,allowobfuscation @interface kotlin.coroutines.jvm.internal.DebugMetadata {
  public java.lang.String c();
  public java.lang.String f();
  public int[] i();
  public int[] l();
  public java.lang.String m();
  public java.lang.String[] n();
  public int[] nl();
  public java.lang.String[] s();
  public int v();
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.DebugProbesKt {
  public static void probeCoroutineSuspended(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.RestrictedSuspendLambda {
  public <init>(int, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(java.lang.Object, kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.SpillingKt {
  public static java.lang.Object nullOutSpilledVariable(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.coroutines.jvm.internal.SuspendFunction {
}
-keep,allowobfuscation class kotlin.coroutines.jvm.internal.SuspendLambda {
  public <init>(int, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(java.lang.Object, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.enums.EnumEntries {
}
-keep,allowobfuscation class kotlin.enums.EnumEntriesKt {
  public static kotlin.enums.EnumEntries enumEntries(java.lang.Enum[]);
}
-keep,allowobfuscation @interface kotlin.internal.InlineOnly {
}
-keep,allowobfuscation @interface kotlin.internal.NoInfer {
}
-keep,allowobfuscation @interface kotlin.internal.OnlyInputTypes {
}
-keep,allowobfuscation class kotlin.internal.ProgressionUtilKt {
  public static int getProgressionLastElement(int, int, int);
}
-keep,allowobfuscation class kotlin.io.ByteStreamsKt {
  public static long copyTo$default(java.io.InputStream, java.io.OutputStream, int, int, java.lang.Object);
  public static long copyTo(java.io.InputStream, java.io.OutputStream, int);
  public static byte[] readBytes(java.io.InputStream);
}
-keep,allowobfuscation class kotlin.io.CloseableKt {
  public static void closeFinally(java.io.Closeable, java.lang.Throwable);
}
-keep,allowobfuscation class kotlin.io.FilesKt {
}
-keep,allowobfuscation class kotlin.io.FilesKt__FileReadWriteKt {
  public static void appendText$default(java.io.File, java.lang.String, java.nio.charset.Charset, int, java.lang.Object);
  public static java.util.List readLines$default(java.io.File, java.nio.charset.Charset, int, java.lang.Object);
  public static java.lang.String readText$default(java.io.File, java.nio.charset.Charset, int, java.lang.Object);
  public static void writeText$default(java.io.File, java.lang.String, java.nio.charset.Charset, int, java.lang.Object);
}
-keep,allowobfuscation class kotlin.io.FilesKt__UtilsKt {
  public static java.io.File copyTo$default(java.io.File, java.io.File, boolean, int, int, java.lang.Object);
  public static boolean deleteRecursively(java.io.File);
  public static java.lang.String getExtension(java.io.File);
  public static java.lang.String getNameWithoutExtension(java.io.File);
  public static java.io.File resolve(java.io.File, java.lang.String);
}
-keep,allowobfuscation class kotlin.io.TextStreamsKt {
  public static kotlin.sequences.Sequence lineSequence(java.io.BufferedReader);
  public static byte[] readBytes(java.net.URL);
  public static java.lang.String readText(java.io.Reader);
}
-keep,allowobfuscation class kotlin.io.path.PathsKt {
}
-keep,allowobfuscation class kotlin.io.path.PathsKt__PathUtilsKt {
  public static java.nio.file.Path createTempDirectory(java.nio.file.Path, java.lang.String, java.nio.file.attribute.FileAttribute[]);
}
-keep,allowobfuscation class kotlin.jdk7.AutoCloseableKt {
  public static void closeFinally(java.lang.AutoCloseable, java.lang.Throwable);
}
-keep,allowobfuscation class kotlin.jvm.JvmClassMappingKt {
  public static kotlin.reflect.KClass getAnnotationClass(java.lang.annotation.Annotation);
  public static java.lang.Class getJavaClass(kotlin.reflect.KClass);
  public static java.lang.Class getJavaObjectType(kotlin.reflect.KClass);
  public static java.lang.Class getJavaPrimitiveType(kotlin.reflect.KClass);
  public static kotlin.reflect.KClass getKotlinClass(java.lang.Class);
}
-keep,allowobfuscation @interface kotlin.jvm.JvmDefaultWithCompatibility {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmField {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmInline {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmName {
  public java.lang.String name();
}
-keep,allowobfuscation @interface kotlin.jvm.JvmOverloads {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmStatic {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmSuppressWildcards {
}
-keep,allowobfuscation @interface kotlin.jvm.JvmSynthetic {
}
-keep,allowobfuscation class kotlin.jvm.KotlinReflectionNotSupportedError {
  public <init>(java.lang.String);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function0 {
  public java.lang.Object invoke();
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function10 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function11 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function12 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function13 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function14 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function15 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function16 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function17 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function18 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function19 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function1 {
  public java.lang.Object invoke(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function20 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function21 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function22 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function2 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function3 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function4 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function5 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function6 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function7 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function8 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.Function9 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.jvm.functions.FunctionN {
  public java.lang.Object invoke(java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.jvm.internal.AdaptedFunctionReference {
  public <init>(int, java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
  java.lang.Object receiver;
}
-keep,allowobfuscation class kotlin.jvm.internal.ArrayIteratorKt {
  public static java.util.Iterator iterator(java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.jvm.internal.CallableReference {
  public kotlin.reflect.KCallable compute();
  public java.lang.Object getBoundReceiver();
  public java.lang.String getName();
  public kotlin.reflect.KDeclarationContainer getOwner();
  public java.lang.String getSignature();
  java.lang.Object NO_RECEIVER;
  java.lang.Object receiver;
}
-keep,allowobfuscation interface kotlin.jvm.internal.ClassBasedDeclarationContainer {
  public java.lang.Class getJClass();
}
-keep,allowobfuscation class kotlin.jvm.internal.CollectionToArray {
  public static java.lang.Object[] toArray(java.util.Collection);
  public static java.lang.Object[] toArray(java.util.Collection, java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.jvm.internal.DefaultConstructorMarker {
}
-keep,allowobfuscation class kotlin.jvm.internal.DoubleCompanionObject {
  kotlin.jvm.internal.DoubleCompanionObject INSTANCE;
}
-keep,allowobfuscation class kotlin.jvm.internal.FloatCompanionObject {
  kotlin.jvm.internal.FloatCompanionObject INSTANCE;
}
-keep,allowobfuscation interface kotlin.jvm.internal.FunctionBase {
  public int getArity();
}
-keep,allowobfuscation class kotlin.jvm.internal.FunctionReference {
}
-keep,allowobfuscation class kotlin.jvm.internal.FunctionReferenceImpl {
  public <init>(int, java.lang.Class, java.lang.String, java.lang.String, int);
  public <init>(int, java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
}
-keep,allowobfuscation class kotlin.jvm.internal.InlineMarker {
  public static void finallyEnd(int);
  public static void finallyStart(int);
  public static void mark(int);
}
-keep,allowobfuscation class kotlin.jvm.internal.Intrinsics$Kotlin {
}
-keep,allowobfuscation class kotlin.jvm.internal.Intrinsics {
  public static boolean areEqual(java.lang.Double, java.lang.Double);
  public static boolean areEqual(java.lang.Float, float);
  public static boolean areEqual(java.lang.Float, java.lang.Float);
  public static boolean areEqual(java.lang.Object, java.lang.Object);
  public static void checkExpressionValueIsNotNull(java.lang.Object, java.lang.String);
  public static void checkNotNull(java.lang.Object);
  public static void checkNotNull(java.lang.Object, java.lang.String);
  public static void checkNotNullExpressionValue(java.lang.Object, java.lang.String);
  public static void checkNotNullParameter(java.lang.Object, java.lang.String);
  public static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
  public static int compare(int, int);
  public static void needClassReification();
  public static void reifiedOperationMarker(int, java.lang.String);
  public static java.lang.String stringPlus(java.lang.String, java.lang.Object);
  public static void throwNpe();
  public static void throwUninitializedPropertyAccessException(java.lang.String);
}
-keep,allowobfuscation interface kotlin.jvm.internal.KTypeBase {
  public java.lang.reflect.Type getJavaType();
}
-keep,allowobfuscation class kotlin.jvm.internal.Lambda {
  public <init>(int);
}
-keep,allowobfuscation class kotlin.jvm.internal.MutablePropertyReference0 {
  public <init>(java.lang.Object);
  public java.lang.Object get();
  public java.lang.String getName();
  public kotlin.reflect.KDeclarationContainer getOwner();
  public java.lang.String getSignature();
  public void set(java.lang.Object);
}
-keep,allowobfuscation class kotlin.jvm.internal.MutablePropertyReference0Impl {
  public <init>(java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
}
-keep,allowobfuscation class kotlin.jvm.internal.MutablePropertyReference1 {
}
-keep,allowobfuscation class kotlin.jvm.internal.MutablePropertyReference1Impl {
  public <init>(java.lang.Class, java.lang.String, java.lang.String, int);
  public java.lang.Object get(java.lang.Object);
  public void set(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation class kotlin.jvm.internal.MutablePropertyReference2 {
}
-keep,allowobfuscation class kotlin.jvm.internal.PropertyReference0 {
}
-keep,allowobfuscation class kotlin.jvm.internal.PropertyReference1 {
}
-keep,allowobfuscation class kotlin.jvm.internal.PropertyReference1Impl {
  public <init>(java.lang.Class, java.lang.String, java.lang.String, int);
  public <init>(kotlin.reflect.KDeclarationContainer, java.lang.String, java.lang.String);
  public java.lang.Object get(java.lang.Object);
}
-keep,allowobfuscation class kotlin.jvm.internal.PropertyReference2 {
}
-keep,allowobfuscation class kotlin.jvm.internal.PropertyReference {
  public kotlin.reflect.KCallable compute();
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref$BooleanRef {
  public <init>();
  boolean element;
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref$FloatRef {
  public <init>();
  float element;
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref$IntRef {
  public <init>();
  int element;
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref$LongRef {
  public <init>();
  long element;
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref$ObjectRef {
  public <init>();
  java.lang.Object element;
}
-keep,allowobfuscation class kotlin.jvm.internal.Ref {
}
-keep,allowobfuscation class kotlin.jvm.internal.Reflection {
  public static kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class);
  public static kotlin.reflect.KMutableProperty1 mutableProperty1(kotlin.jvm.internal.MutablePropertyReference1);
  public static kotlin.reflect.KProperty1 property1(kotlin.jvm.internal.PropertyReference1);
  public static kotlin.reflect.KType typeOf(java.lang.Class);
}
-keep,allowobfuscation class kotlin.jvm.internal.ReflectionFactory {
  public <init>();
  public kotlin.reflect.KClass createKotlinClass(java.lang.Class);
  public kotlin.reflect.KClass createKotlinClass(java.lang.Class, java.lang.String);
  public kotlin.reflect.KFunction function(kotlin.jvm.internal.FunctionReference);
  public kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class);
  public kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class, java.lang.String);
  public kotlin.reflect.KDeclarationContainer getOrCreateKotlinPackage(java.lang.Class, java.lang.String);
  public kotlin.reflect.KType mutableCollectionType(kotlin.reflect.KType);
  public kotlin.reflect.KMutableProperty0 mutableProperty0(kotlin.jvm.internal.MutablePropertyReference0);
  public kotlin.reflect.KMutableProperty1 mutableProperty1(kotlin.jvm.internal.MutablePropertyReference1);
  public kotlin.reflect.KMutableProperty2 mutableProperty2(kotlin.jvm.internal.MutablePropertyReference2);
  public kotlin.reflect.KType nothingType(kotlin.reflect.KType);
  public kotlin.reflect.KType platformType(kotlin.reflect.KType, kotlin.reflect.KType);
  public kotlin.reflect.KProperty0 property0(kotlin.jvm.internal.PropertyReference0);
  public kotlin.reflect.KProperty1 property1(kotlin.jvm.internal.PropertyReference1);
  public kotlin.reflect.KProperty2 property2(kotlin.jvm.internal.PropertyReference2);
  public java.lang.String renderLambdaToString(kotlin.jvm.internal.FunctionBase);
  public java.lang.String renderLambdaToString(kotlin.jvm.internal.Lambda);
  public void setUpperBounds(kotlin.reflect.KTypeParameter, java.util.List);
  public kotlin.reflect.KType typeOf(kotlin.reflect.KClassifier, java.util.List, boolean);
  public kotlin.reflect.KTypeParameter typeParameter(java.lang.Object, java.lang.String, kotlin.reflect.KVariance, boolean);
}
-keep,allowobfuscation @interface kotlin.jvm.internal.RepeatableContainer {
}
-keep,allowobfuscation @interface kotlin.jvm.internal.SourceDebugExtension {
  public java.lang.String[] value();
}
-keep,allowobfuscation class kotlin.jvm.internal.SpreadBuilder {
  public <init>(int);
  public void add(java.lang.Object);
  public void addSpread(java.lang.Object);
  public int size();
  public java.lang.Object[] toArray(java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.jvm.internal.StringCompanionObject {
  kotlin.jvm.internal.StringCompanionObject INSTANCE;
}
-keep,allowobfuscation class kotlin.jvm.internal.TypeIntrinsics {
  public static java.util.List asMutableList(java.lang.Object);
  public static java.util.Map asMutableMap(java.lang.Object);
  public static java.util.Set asMutableSet(java.lang.Object);
  public static java.lang.Object beforeCheckcastToFunctionOfArity(java.lang.Object, int);
  public static boolean isFunctionOfArity(java.lang.Object, int);
  public static boolean isMutableList(java.lang.Object);
  public static boolean isMutableMap(java.lang.Object);
}
-keep,allowobfuscation class kotlin.jvm.internal.TypeParameterReference$Companion {
  public java.lang.String toString(kotlin.reflect.KTypeParameter);
}
-keep,allowobfuscation class kotlin.jvm.internal.TypeParameterReference {
  kotlin.jvm.internal.TypeParameterReference$Companion Companion;
}
-keep,allowobfuscation interface kotlin.jvm.internal.markers.KMappedMarker {
}
-keep,allowobfuscation interface kotlin.jvm.internal.markers.KMutableIterator {
}
-keep,allowobfuscation interface kotlin.jvm.internal.markers.KMutableMap {
}
-keep,allowobfuscation class kotlin.math.MathKt {
}
-keep,allowobfuscation class kotlin.math.MathKt__MathJVMKt {
  public static int roundToInt(float);
  public static long roundToLong(float);
}
-keep,allowobfuscation class kotlin.properties.Delegates {
  kotlin.properties.Delegates INSTANCE;
}
-keep,allowobfuscation class kotlin.properties.ObservableProperty {
  public <init>(java.lang.Object);
  protected boolean beforeChange(kotlin.reflect.KProperty, java.lang.Object, java.lang.Object);
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
}
-keep,allowobfuscation interface kotlin.properties.ReadOnlyProperty {
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
}
-keep,allowobfuscation interface kotlin.properties.ReadWriteProperty {
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
  public void setValue(java.lang.Object, kotlin.reflect.KProperty, java.lang.Object);
}
-keep,allowobfuscation class kotlin.random.Random$Default {
  public double nextDouble(double, double);
  public int nextInt(int, int);
}
-keep,allowobfuscation class kotlin.random.Random {
  kotlin.random.Random$Default Default;
}
-keep,allowobfuscation class kotlin.random.URandomKt {
  public static int nextUInt(kotlin.random.Random);
}
-keep,allowobfuscation class kotlin.ranges.CharRange {
  public <init>(char, char);
  public boolean contains(char);
}
-keep,allowobfuscation interface kotlin.ranges.ClosedFloatingPointRange {
}
-keep,allowobfuscation interface kotlin.ranges.ClosedRange {
  public boolean contains(java.lang.Comparable);
  public java.lang.Comparable getEndInclusive();
}
-keep,allowobfuscation class kotlin.ranges.IntProgression {
  public int getFirst();
  public int getLast();
  public int getStep();
}
-keep,allowobfuscation class kotlin.ranges.IntRange$Companion {
  public kotlin.ranges.IntRange getEMPTY();
}
-keep,allowobfuscation class kotlin.ranges.IntRange {
  public <init>(int, int);
  public boolean contains(int);
  public boolean isEmpty();
  kotlin.ranges.IntRange$Companion Companion;
}
-keep,allowobfuscation class kotlin.ranges.LongProgression {
  public long getFirst();
  public long getLast();
  public long getStep();
}
-keep,allowobfuscation class kotlin.ranges.LongRange {
  public <init>(long, long);
  public boolean contains(long);
}
-keep,allowobfuscation interface kotlin.ranges.OpenEndRange {
  public boolean contains(java.lang.Comparable);
}
-keep,allowobfuscation class kotlin.ranges.RangesKt {
}
-keep,allowobfuscation class kotlin.ranges.RangesKt___RangesKt {
  public static int coerceAtLeast(int, int);
  public static long coerceAtLeast(long, long);
  public static java.lang.Comparable coerceAtLeast(java.lang.Comparable, java.lang.Comparable);
  public static int coerceAtMost(int, int);
  public static long coerceAtMost(long, long);
  public static int coerceIn(int, int, int);
  public static java.lang.Comparable coerceIn(java.lang.Comparable, java.lang.Comparable, java.lang.Comparable);
  public static kotlin.ranges.IntProgression step(kotlin.ranges.IntProgression, int);
  public static kotlin.ranges.LongProgression step(kotlin.ranges.LongProgression, long);
  public static kotlin.ranges.IntRange until(int, int);
  public static kotlin.ranges.LongRange until(int, long);
  public static kotlin.ranges.LongRange until(long, int);
}
-keep,allowobfuscation class kotlin.ranges.UIntRange {
  public boolean contains-WZ4Q5Ns(int);
}
-keep,allowobfuscation class kotlin.ranges.ULongRange {
  public boolean contains-VKZWuLQ(long);
}
-keep,allowobfuscation interface kotlin.reflect.KAnnotatedElement {
  public java.util.List getAnnotations();
}
-keep,allowobfuscation interface kotlin.reflect.KCallable {
  public java.lang.Object call(java.lang.Object[]);
  public java.lang.Object callBy(java.util.Map);
  public java.util.List getAnnotations();
  public java.lang.String getName();
  public java.util.List getParameters();
  public kotlin.reflect.KType getReturnType();
  public java.util.List getTypeParameters();
  public kotlin.reflect.KVisibility getVisibility();
  public boolean isAbstract();
  public boolean isFinal();
  public boolean isOpen();
  public boolean isSuspend();
}
-keep,allowobfuscation interface kotlin.reflect.KClass {
  public boolean equals(java.lang.Object);
  public java.util.List getAnnotations();
  public java.util.Collection getConstructors();
  public java.util.Collection getMembers();
  public java.util.Collection getNestedClasses();
  public java.lang.Object getObjectInstance();
  public java.lang.String getQualifiedName();
  public java.util.List getSealedSubclasses();
  public java.lang.String getSimpleName();
  public java.util.List getSupertypes();
  public java.util.List getTypeParameters();
  public kotlin.reflect.KVisibility getVisibility();
  public int hashCode();
  public boolean isAbstract();
  public boolean isCompanion();
  public boolean isData();
  public boolean isFinal();
  public boolean isFun();
  public boolean isInner();
  public boolean isInstance(java.lang.Object);
  public boolean isOpen();
  public boolean isSealed();
  public boolean isValue();
}
-keep,allowobfuscation class kotlin.reflect.KClasses {
  public static java.lang.Object cast(kotlin.reflect.KClass, java.lang.Object);
  public static java.lang.Object safeCast(kotlin.reflect.KClass, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KClassifier {
}
-keep,allowobfuscation interface kotlin.reflect.KDeclarationContainer {
  public java.util.Collection getMembers();
}
-keep,allowobfuscation interface kotlin.reflect.KFunction {
  public java.lang.String getName();
  public boolean isExternal();
  public boolean isInfix();
  public boolean isInline();
  public boolean isOperator();
  public boolean isSuspend();
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty$Setter {
  public java.lang.String getName();
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty0$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty0 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty0$Setter getSetter();
  public void set(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty1$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty1 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty1$Setter getSetter();
  public void set(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty2$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty2 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty2$Setter getSetter();
  public void set(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KMutableProperty {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
}
-keep enum kotlin.reflect.KParameter$Kind {
  public static kotlin.reflect.KParameter$Kind[] values();
  kotlin.reflect.KParameter$Kind CONTEXT;
  kotlin.reflect.KParameter$Kind EXTENSION_RECEIVER;
  kotlin.reflect.KParameter$Kind INSTANCE;
  kotlin.reflect.KParameter$Kind VALUE;
}
-keep,allowobfuscation interface kotlin.reflect.KParameter {
  public java.util.List getAnnotations();
  public int getIndex();
  public kotlin.reflect.KParameter$Kind getKind();
  public java.lang.String getName();
  public kotlin.reflect.KType getType();
  public boolean isOptional();
  public boolean isVararg();
}
-keep,allowobfuscation interface kotlin.reflect.KProperty$Accessor {
  public kotlin.reflect.KProperty getProperty();
}
-keep,allowobfuscation interface kotlin.reflect.KProperty$Getter {
  public java.lang.String getName();
}
-keep,allowobfuscation interface kotlin.reflect.KProperty0$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke();
}
-keep,allowobfuscation interface kotlin.reflect.KProperty0 {
  public java.lang.Object get();
  public java.lang.Object getDelegate();
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty0$Getter getGetter();
  public java.lang.Object invoke();
}
-keep,allowobfuscation interface kotlin.reflect.KProperty1$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KProperty1 {
  public java.lang.Object get(java.lang.Object);
  public java.lang.Object getDelegate(java.lang.Object);
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty1$Getter getGetter();
  public java.lang.Object invoke(java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KProperty2$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KProperty2 {
  public java.lang.Object get(java.lang.Object, java.lang.Object);
  public java.lang.Object getDelegate(java.lang.Object, java.lang.Object);
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty2$Getter getGetter();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keep,allowobfuscation interface kotlin.reflect.KProperty {
  public kotlin.reflect.KProperty$Getter getGetter();
  public java.lang.String getName();
  public boolean isConst();
  public boolean isLateinit();
  public boolean isSuspend();
}
-keep,allowobfuscation interface kotlin.reflect.KType {
  public java.util.List getArguments();
  public kotlin.reflect.KClassifier getClassifier();
  public boolean isMarkedNullable();
}
-keep,allowobfuscation interface kotlin.reflect.KTypeParameter {
  public java.lang.String getName();
  public java.util.List getUpperBounds();
  public kotlin.reflect.KVariance getVariance();
  public boolean isReified();
}
-keep,allowobfuscation class kotlin.reflect.KTypeProjection$Companion {
  public kotlin.reflect.KTypeProjection contravariant(kotlin.reflect.KType);
  public kotlin.reflect.KTypeProjection covariant(kotlin.reflect.KType);
  public kotlin.reflect.KTypeProjection getSTAR();
  public kotlin.reflect.KTypeProjection invariant(kotlin.reflect.KType);
}
-keep,allowobfuscation class kotlin.reflect.KTypeProjection {
  public <init>(kotlin.reflect.KVariance, kotlin.reflect.KType);
  public kotlin.reflect.KVariance component1();
  public kotlin.reflect.KType component2();
  public kotlin.reflect.KType getType();
  public kotlin.reflect.KVariance getVariance();
  kotlin.reflect.KTypeProjection$Companion Companion;
}
-keep enum kotlin.reflect.KVariance {
  public static kotlin.reflect.KVariance[] values();
  kotlin.reflect.KVariance IN;
  kotlin.reflect.KVariance INVARIANT;
  kotlin.reflect.KVariance OUT;
}
-keep enum kotlin.reflect.KVisibility {
  kotlin.reflect.KVisibility INTERNAL;
  kotlin.reflect.KVisibility PRIVATE;
  kotlin.reflect.KVisibility PROTECTED;
  kotlin.reflect.KVisibility PUBLIC;
}
-keep,allowobfuscation class kotlin.reflect.TypesJVMKt {
  public static java.lang.reflect.Type getJavaType(kotlin.reflect.KType);
}
-keep,allowobfuscation interface kotlin.sequences.Sequence {
  public java.util.Iterator iterator();
}
-keep,allowobfuscation class kotlin.sequences.SequenceScope {
  public java.lang.Object yield(java.lang.Object, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt {
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt__SequenceBuilderKt {
  public static kotlin.sequences.Sequence sequence(kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt__SequencesKt$Sequence$1 {
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt__SequencesKt {
  public static kotlin.sequences.Sequence asSequence(java.util.Iterator);
  public static kotlin.sequences.Sequence emptySequence();
  public static kotlin.sequences.Sequence flatten(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence generateSequence(java.lang.Object, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence generateSequence(kotlin.jvm.functions.Function0);
  public static kotlin.sequences.Sequence sequenceOf(java.lang.Object);
  public static kotlin.sequences.Sequence sequenceOf(java.lang.Object[]);
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt___SequencesJvmKt {
  public static java.lang.Comparable max(kotlin.sequences.Sequence);
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt___SequencesKt$filterIsInstance$1 {
}
-keep,allowobfuscation class kotlin.sequences.SequencesKt___SequencesKt {
  public static java.lang.Iterable asIterable(kotlin.sequences.Sequence);
  public static boolean contains(kotlin.sequences.Sequence, java.lang.Object);
  public static int count(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence drop(kotlin.sequences.Sequence, int);
  public static kotlin.sequences.Sequence filter(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence filterIndexed(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
  public static kotlin.sequences.Sequence filterNot(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence filterNotNull(kotlin.sequences.Sequence);
  public static java.lang.Object firstOrNull(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence flatMap(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence flatMapIterable(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static java.lang.String joinToString$default(kotlin.sequences.Sequence, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static kotlin.sequences.Sequence map(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence mapIndexed(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
  public static kotlin.sequences.Sequence mapNotNull(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, java.lang.Iterable);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, java.lang.Object);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence sortedWith(kotlin.sequences.Sequence, java.util.Comparator);
  public static kotlin.sequences.Sequence take(kotlin.sequences.Sequence, int);
  public static kotlin.sequences.Sequence takeWhile(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static java.util.Collection toCollection(kotlin.sequences.Sequence, java.util.Collection);
  public static java.util.List toList(kotlin.sequences.Sequence);
  public static java.util.List toMutableList(kotlin.sequences.Sequence);
  public static java.util.Set toSet(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence withIndex(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence zipWithNext(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation class kotlin.text.CharsKt {
}
-keep,allowobfuscation class kotlin.text.CharsKt__CharJVMKt {
  public static int checkRadix(int);
  public static boolean isWhitespace(char);
  public static java.lang.String lowercase(char, java.util.Locale);
}
-keep,allowobfuscation class kotlin.text.CharsKt__CharKt {
  public static boolean isSurrogate(char);
  public static java.lang.String titlecase(char);
}
-keep,allowobfuscation class kotlin.text.Charsets {
  public java.nio.charset.Charset UTF32_BE();
  public java.nio.charset.Charset UTF32_LE();
  kotlin.text.Charsets INSTANCE;
  java.nio.charset.Charset ISO_8859_1;
  java.nio.charset.Charset UTF_16BE;
  java.nio.charset.Charset UTF_16LE;
  java.nio.charset.Charset UTF_8;
}
-keep,allowobfuscation class kotlin.text.MatchGroup {
  public java.lang.String getValue();
}
-keep,allowobfuscation interface kotlin.text.MatchGroupCollection {
  public kotlin.text.MatchGroup get(int);
}
-keep,allowobfuscation class kotlin.text.MatchResult$Destructured {
  public kotlin.text.MatchResult getMatch();
}
-keep,allowobfuscation interface kotlin.text.MatchResult {
  public kotlin.text.MatchResult$Destructured getDestructured();
  public java.util.List getGroupValues();
  public kotlin.text.MatchGroupCollection getGroups();
  public kotlin.ranges.IntRange getRange();
  public java.lang.String getValue();
}
-keep,allowobfuscation class kotlin.text.Regex {
  public <init>(java.lang.String);
  public <init>(java.lang.String, kotlin.text.RegexOption);
  public boolean containsMatchIn(java.lang.CharSequence);
  public static kotlin.text.MatchResult find$default(kotlin.text.Regex, java.lang.CharSequence, int, int, java.lang.Object);
  public static kotlin.sequences.Sequence findAll$default(kotlin.text.Regex, java.lang.CharSequence, int, int, java.lang.Object);
  public java.lang.String getPattern();
  public kotlin.text.MatchResult matchAt(java.lang.CharSequence, int);
  public kotlin.text.MatchResult matchEntire(java.lang.CharSequence);
  public boolean matches(java.lang.CharSequence);
  public java.lang.String replace(java.lang.CharSequence, java.lang.String);
  public java.lang.String replace(java.lang.CharSequence, kotlin.jvm.functions.Function1);
  public java.util.List split(java.lang.CharSequence, int);
}
-keep enum kotlin.text.RegexOption {
  kotlin.text.RegexOption DOT_MATCHES_ALL;
}
-keep,allowobfuscation class kotlin.text.StringsKt {
}
-keep,allowobfuscation class kotlin.text.StringsKt__IndentKt {
  public static java.lang.String prependIndent$default(java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String trimIndent(java.lang.String);
  public static java.lang.String trimMargin$default(java.lang.String, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class kotlin.text.StringsKt__StringBuilderKt {
  public static java.lang.StringBuilder append(java.lang.StringBuilder, java.lang.String[]);
}
-keep,allowobfuscation class kotlin.text.StringsKt__StringNumberConversionsJVMKt {
  public static java.lang.Float toFloatOrNull(java.lang.String);
}
-keep,allowobfuscation class kotlin.text.StringsKt__StringNumberConversionsKt {
  public static java.lang.Integer toIntOrNull(java.lang.String);
  public static java.lang.Long toLongOrNull(java.lang.String);
}
-keep,allowobfuscation class kotlin.text.StringsKt__StringsJVMKt {
  public static java.lang.String decodeToString$default(byte[], int, int, boolean, int, java.lang.Object);
  public static java.lang.String decodeToString(byte[]);
  public static boolean endsWith$default(java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean equals(java.lang.String, java.lang.String, boolean);
  public static java.util.Comparator getCASE_INSENSITIVE_ORDER(kotlin.jvm.internal.StringCompanionObject);
  public static boolean regionMatches$default(java.lang.String, int, java.lang.String, int, int, boolean, int, java.lang.Object);
  public static boolean regionMatches(java.lang.String, int, java.lang.String, int, int, boolean);
  public static java.lang.String repeat(java.lang.CharSequence, int);
  public static java.lang.String replace$default(java.lang.String, char, char, boolean, int, java.lang.Object);
  public static java.lang.String replace$default(java.lang.String, java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.String, java.lang.String, int, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean startsWith(java.lang.String, java.lang.String, int, boolean);
  public static boolean startsWith(java.lang.String, java.lang.String, boolean);
}
-keep,allowobfuscation class kotlin.text.StringsKt__StringsKt {
  public static boolean contains$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static boolean contains$default(java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object);
  public static boolean contains(java.lang.CharSequence, char, boolean);
  public static boolean contains(java.lang.CharSequence, java.lang.CharSequence, boolean);
  public static boolean endsWith$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static kotlin.ranges.IntRange getIndices(java.lang.CharSequence);
  public static int getLastIndex(java.lang.CharSequence);
  public static int indexOf$default(java.lang.CharSequence, char, int, boolean, int, java.lang.Object);
  public static int indexOf$default(java.lang.CharSequence, java.lang.String, int, boolean, int, java.lang.Object);
  public static boolean isBlank(java.lang.CharSequence);
  public static int lastIndexOf$default(java.lang.CharSequence, char, int, boolean, int, java.lang.Object);
  public static int lastIndexOf$default(java.lang.CharSequence, java.lang.String, int, boolean, int, java.lang.Object);
  public static kotlin.sequences.Sequence lineSequence(java.lang.CharSequence);
  public static java.util.List lines(java.lang.CharSequence);
  public static java.lang.String padEnd$default(java.lang.String, int, char, int, java.lang.Object);
  public static java.lang.String padStart$default(java.lang.String, int, char, int, java.lang.Object);
  public static java.lang.String padStart(java.lang.String, int, char);
  public static java.lang.String removePrefix(java.lang.String, java.lang.CharSequence);
  public static java.lang.String removeSuffix(java.lang.String, java.lang.CharSequence);
  public static java.lang.String removeSurrounding(java.lang.String, java.lang.CharSequence);
  public static java.util.List split$default(java.lang.CharSequence, char[], boolean, int, int, java.lang.Object);
  public static java.util.List split$default(java.lang.CharSequence, java.lang.String[], boolean, int, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object);
  public static java.lang.String substringAfter$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfter$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfterLast$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfterLast$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBefore$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBefore$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBeforeLast(java.lang.String, char, java.lang.String);
  public static java.lang.String substringBeforeLast(java.lang.String, java.lang.String, java.lang.String);
  public static java.lang.Boolean toBooleanStrictOrNull(java.lang.String);
  public static java.lang.CharSequence trim(java.lang.CharSequence);
  public static java.lang.CharSequence trimEnd(java.lang.CharSequence);
}
-keep,allowobfuscation class kotlin.text.StringsKt___StringsKt {
  public static java.lang.String drop(java.lang.String, int);
  public static java.lang.String dropLast(java.lang.String, int);
  public static java.lang.Character getOrNull(java.lang.CharSequence, int);
  public static char last(java.lang.CharSequence);
  public static java.lang.String take(java.lang.String, int);
  public static java.lang.String takeLast(java.lang.String, int);
}
-keep,allowobfuscation class kotlin.time.AbstractLongTimeSource {
  public <init>(kotlin.time.DurationUnit);
  protected long read();
}
-keep,allowobfuscation interface kotlin.time.ComparableTimeMark {
  public int compareTo(kotlin.time.ComparableTimeMark);
  public int hashCode();
  public kotlin.time.ComparableTimeMark plus-LRDsOJo(long);
}
-keep,allowobfuscation class kotlin.time.Duration$Companion {
  public long getINFINITE-UwyO8pc();
  public long parse-UwyO8pc(java.lang.String);
}
-keep,allowobfuscation class kotlin.time.Duration {
  public static kotlin.time.Duration box-impl(long);
  public static int compareTo-LRDsOJo(long, long);
  public static long getInWholeMilliseconds-impl(long);
  public static long getInWholeSeconds-impl(long);
  public static boolean isNegative-impl(long);
  public static boolean isPositive-impl(long);
  public static long minus-LRDsOJo(long, long);
  public static long plus-LRDsOJo(long, long);
  public static long toLong-impl(long, kotlin.time.DurationUnit);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  kotlin.time.Duration$Companion Companion;
}
-keep,allowobfuscation class kotlin.time.DurationKt {
  public static long toDuration(int, kotlin.time.DurationUnit);
  public static long toDuration(long, kotlin.time.DurationUnit);
}
-keep enum kotlin.time.DurationUnit {
  kotlin.time.DurationUnit MILLISECONDS;
  kotlin.time.DurationUnit SECONDS;
}
-keep,allowobfuscation class kotlin.time.TimeSource$Monotonic {
  kotlin.time.TimeSource$Monotonic INSTANCE;
}
-keep,allowobfuscation interface kotlin.time.TimeSource$WithComparableMarks {
  public kotlin.time.ComparableTimeMark markNow();
}
-keep,allowobfuscation interface kotlin.time.TimeSource {
}
-keep,allowobfuscation class kotlinx.coroutines.AbstractCoroutine {
  public <init>(kotlin.coroutines.CoroutineContext, boolean, boolean);
  public kotlin.coroutines.CoroutineContext getContext();
  public kotlin.coroutines.CoroutineContext getCoroutineContext();
  public void start(kotlinx.coroutines.CoroutineStart, java.lang.Object, kotlin.jvm.functions.Function2);
  public java.lang.String toString();
}
-keep,allowobfuscation class kotlinx.coroutines.BuildersKt {
  public static kotlinx.coroutines.Job launch$default(kotlinx.coroutines.CoroutineScope, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object runBlocking$default(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object runBlocking(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2);
  public static java.lang.Object runBlockingK$default(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object withContext(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface kotlinx.coroutines.CancellableContinuation {
  public void invokeOnCancellation(kotlin.jvm.functions.Function1);
  public void resume(java.lang.Object, kotlin.jvm.functions.Function1);
  public void resumeUndispatched(kotlinx.coroutines.CoroutineDispatcher, java.lang.Object);
}
-keep,allowobfuscation class kotlinx.coroutines.CancellableContinuationImpl {
  public <init>(kotlin.coroutines.Continuation, int);
  public java.lang.Object getResult();
  public void initCancellability();
}
-keep,allowobfuscation class kotlinx.coroutines.CancellableContinuationKt {
  public static void disposeOnCancellation(kotlinx.coroutines.CancellableContinuation, kotlinx.coroutines.DisposableHandle);
}
-keep,allowobfuscation interface kotlinx.coroutines.CompletableJob {
  public boolean complete();
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineDispatcher$Key {
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineDispatcher {
  public <init>();
  public void dispatch(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public void dispatchYield(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public kotlin.coroutines.Continuation interceptContinuation(kotlin.coroutines.Continuation);
  public boolean isDispatchNeeded(kotlin.coroutines.CoroutineContext);
  public java.lang.String toString();
  kotlinx.coroutines.CoroutineDispatcher$Key Key;
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineExceptionHandler$Key {
}
-keep,allowobfuscation interface kotlinx.coroutines.CoroutineExceptionHandler {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public void handleException(kotlin.coroutines.CoroutineContext, java.lang.Throwable);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
  kotlinx.coroutines.CoroutineExceptionHandler$Key Key;
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1 {
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineExceptionHandlerKt {
  public static void handleCoroutineException(kotlin.coroutines.CoroutineContext, java.lang.Throwable);
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineName {
  public <init>(java.lang.String);
}
-keep,allowobfuscation interface kotlinx.coroutines.CoroutineScope {
  public kotlin.coroutines.CoroutineContext getCoroutineContext();
}
-keep,allowobfuscation class kotlinx.coroutines.CoroutineScopeKt {
  public static kotlinx.coroutines.CoroutineScope CoroutineScope(kotlin.coroutines.CoroutineContext);
  public static void cancel$default(kotlinx.coroutines.CoroutineScope, java.util.concurrent.CancellationException, int, java.lang.Object);
  public static boolean isActive(kotlinx.coroutines.CoroutineScope);
}
-keep enum kotlinx.coroutines.CoroutineStart {
  kotlinx.coroutines.CoroutineStart DEFAULT;
  kotlinx.coroutines.CoroutineStart UNDISPATCHED;
}
-keep,allowobfuscation class kotlinx.coroutines.DebugKt {
  public static boolean getRECOVER_STACK_TRACES();
}
-keep,allowobfuscation class kotlinx.coroutines.DefaultExecutorKt {
  public static kotlinx.coroutines.Delay getDefaultDelay();
}
-keep,allowobfuscation interface kotlinx.coroutines.Delay {
  public java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public kotlinx.coroutines.DisposableHandle invokeOnTimeout(long, java.lang.Runnable, kotlin.coroutines.CoroutineContext);
  public void scheduleResumeAfterDelay(long, kotlinx.coroutines.CancellableContinuation);
}
-keep,allowobfuscation class kotlinx.coroutines.DelayKt {
  public static java.lang.Object awaitCancellation(kotlin.coroutines.Continuation);
  public static java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public static java.lang.Object delay-VtjQ1oo(long, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface kotlinx.coroutines.DelayWithTimeoutDiagnostics {
  public java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public kotlinx.coroutines.DisposableHandle invokeOnTimeout(long, java.lang.Runnable, kotlin.coroutines.CoroutineContext);
  public void scheduleResumeAfterDelay(long, kotlinx.coroutines.CancellableContinuation);
  public java.lang.String timeoutMessage-LRDsOJo(long);
}
-keep,allowobfuscation class kotlinx.coroutines.Dispatchers {
  public static kotlinx.coroutines.CoroutineDispatcher getDefault();
  public static kotlinx.coroutines.CoroutineDispatcher getIO();
  public static kotlinx.coroutines.MainCoroutineDispatcher getMain();
}
-keep,allowobfuscation interface kotlinx.coroutines.DisposableHandle {
  public void dispose();
}
-keep,allowobfuscation class kotlinx.coroutines.ExecutorsKt {
  public static kotlinx.coroutines.CoroutineDispatcher from(java.util.concurrent.Executor);
}
-keep,allowobfuscation @interface kotlinx.coroutines.ExperimentalCoroutinesApi {
}
-keep,allowobfuscation class kotlinx.coroutines.Job$Key {
}
-keep,allowobfuscation interface kotlinx.coroutines.Job {
  public void cancel(java.util.concurrent.CancellationException);
  public static kotlinx.coroutines.DisposableHandle invokeOnCompletion$default(kotlinx.coroutines.Job, boolean, boolean, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public boolean isActive();
  public boolean isCompleted();
  public java.lang.Object join(kotlin.coroutines.Continuation);
  kotlinx.coroutines.Job$Key Key;
}
-keep,allowobfuscation class kotlinx.coroutines.JobImpl {
  public <init>(kotlinx.coroutines.Job);
  public boolean childCancelled(java.lang.Throwable);
}
-keep,allowobfuscation class kotlinx.coroutines.JobKt {
  public static kotlinx.coroutines.CompletableJob Job$default(kotlinx.coroutines.Job, int, java.lang.Object);
  public static java.lang.Object cancelAndJoin(kotlinx.coroutines.Job, kotlin.coroutines.Continuation);
  public static kotlinx.coroutines.Job getJob(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation class kotlinx.coroutines.JobSupport {
  public kotlin.sequences.Sequence getChildren();
  protected java.lang.Throwable getCompletionCause();
  public java.lang.Throwable getCompletionExceptionOrNull();
  public kotlinx.coroutines.selects.SelectClause0 getOnJoin();
  public boolean isCancelled();
  public boolean isCompleted();
  public java.lang.Object join(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlinx.coroutines.MainCoroutineDispatcher {
  public <init>();
  public void dispatch(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public void dispatchYield(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public kotlinx.coroutines.MainCoroutineDispatcher getImmediate();
  public boolean isDispatchNeeded(kotlin.coroutines.CoroutineContext);
}
-keep,allowobfuscation class kotlinx.coroutines.TimeoutCancellationException {
}
-keep,allowobfuscation class kotlinx.coroutines.TimeoutKt {
  public static java.lang.Object withTimeout(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
  public static java.lang.Object withTimeout-KLykuaI(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlinx.coroutines.YieldContext$Key {
}
-keep,allowobfuscation class kotlinx.coroutines.YieldContext {
  kotlinx.coroutines.YieldContext$Key Key;
  boolean dispatcherWasUnconfined;
}
-keep,allowobfuscation class kotlinx.coroutines.YieldKt {
  public static java.lang.Object yield(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class kotlinx.coroutines.android.HandlerDispatcher {
}
-keep,allowobfuscation class kotlinx.coroutines.android.HandlerDispatcherKt {
  public static kotlinx.coroutines.android.HandlerDispatcher from$default(android.os.Handler, java.lang.String, int, java.lang.Object);
}
-keep enum kotlinx.coroutines.channels.BufferOverflow {
}
-keep,allowobfuscation interface kotlinx.coroutines.channels.Channel {
}
-keep,allowobfuscation class kotlinx.coroutines.channels.ChannelKt {
  public static kotlinx.coroutines.channels.Channel Channel$default(int, kotlinx.coroutines.channels.BufferOverflow, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keep,allowobfuscation interface kotlinx.coroutines.channels.ReceiveChannel {
  public kotlinx.coroutines.selects.SelectClause1 getOnReceive();
  public java.lang.Object receive(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface kotlinx.coroutines.channels.SendChannel {
  public java.lang.Object trySend-JP2dKIU(java.lang.Object);
}
-keep,allowobfuscation class kotlinx.coroutines.debug.internal.DebugProbesImpl {
  public void dumpCoroutines(java.io.PrintStream);
  public void install$kotlinx_coroutines_core();
  public boolean isInstalled$kotlinx_coroutines_debug();
  public void uninstall$kotlinx_coroutines_core();
  kotlinx.coroutines.debug.internal.DebugProbesImpl INSTANCE;
}
-keep,allowobfuscation interface kotlinx.coroutines.flow.Flow {
}
-keep,allowobfuscation class kotlinx.coroutines.flow.FlowKt {
  public static java.lang.Object first(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface kotlinx.coroutines.flow.StateFlow {
}
-keep,allowobfuscation class kotlinx.coroutines.internal.CoroutineExceptionHandlerImplKt {
  public static void ensurePlatformExceptionHandlerLoaded(kotlinx.coroutines.CoroutineExceptionHandler);
}
-keep,allowobfuscation class kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed {
  kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed INSTANCE;
}
-keep,allowobfuscation interface kotlinx.coroutines.internal.MainDispatcherFactory {
  public kotlinx.coroutines.MainCoroutineDispatcher createDispatcher(java.util.List);
  public int getLoadPriority();
  public java.lang.String hintOnError();
}
-keep,allowobfuscation class kotlinx.coroutines.internal.MainDispatchersKt {
  public static boolean isMissing(kotlinx.coroutines.MainCoroutineDispatcher);
  public static kotlinx.coroutines.MainCoroutineDispatcher tryCreateDispatcher(kotlinx.coroutines.internal.MainDispatcherFactory, java.util.List);
}
-keep,allowobfuscation class kotlinx.coroutines.internal.MissingMainCoroutineDispatcherFactory {
  kotlinx.coroutines.internal.MissingMainCoroutineDispatcherFactory INSTANCE;
}
-keep,allowobfuscation class kotlinx.coroutines.internal.StackTraceRecoveryKt {
  public static java.lang.Throwable unwrapImpl(java.lang.Throwable);
}
-keep,allowobfuscation class kotlinx.coroutines.internal.ThreadSafeHeap {
  public <init>();
  public void addLast(kotlinx.coroutines.internal.ThreadSafeHeapNode);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode find(kotlin.jvm.functions.Function1);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode firstImpl();
  public boolean isEmpty();
  public boolean remove(kotlinx.coroutines.internal.ThreadSafeHeapNode);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode removeAtImpl(int);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode removeFirstOrNull();
}
-keep,allowobfuscation interface kotlinx.coroutines.internal.ThreadSafeHeapNode {
  public kotlinx.coroutines.internal.ThreadSafeHeap getHeap();
  public int getIndex();
  public void setHeap(kotlinx.coroutines.internal.ThreadSafeHeap);
  public void setIndex(int);
}
-keep,allowobfuscation class kotlinx.coroutines.selects.OnTimeoutKt {
  public static void onTimeout-8Mi8wO0(kotlinx.coroutines.selects.SelectBuilder, long, kotlin.jvm.functions.Function1);
}
-keep,allowobfuscation interface kotlinx.coroutines.selects.SelectBuilder {
  public void invoke(kotlinx.coroutines.selects.SelectClause0, kotlin.jvm.functions.Function1);
  public void invoke(kotlinx.coroutines.selects.SelectClause1, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation interface kotlinx.coroutines.selects.SelectClause0 {
}
-keep,allowobfuscation interface kotlinx.coroutines.selects.SelectClause1 {
}
-keep,allowobfuscation class kotlinx.coroutines.selects.SelectImplementation {
  public <init>(kotlin.coroutines.CoroutineContext);
  public java.lang.Object doSelect(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation interface kotlinx.serialization.DeserializationStrategy {
}
-keep,allowobfuscation interface kotlinx.serialization.KSerializer {
}
-keep,allowobfuscation class kotlinx.serialization.SealedClassSerializer {
  public <init>(java.lang.String, kotlin.reflect.KClass, kotlin.reflect.KClass[], kotlinx.serialization.KSerializer[], java.lang.annotation.Annotation[]);
}
-keep,allowobfuscation @interface kotlinx.serialization.SerialName {
  public java.lang.String value();
}
-keep,allowobfuscation @interface kotlinx.serialization.Serializable {
}
-keep,allowobfuscation interface kotlinx.serialization.SerializationStrategy {
}
-keep,allowobfuscation class kotlinx.serialization.UnknownFieldException {
  public <init>(int);
}
-keep,allowobfuscation class kotlinx.serialization.builtins.BuiltinSerializersKt {
  public static kotlinx.serialization.KSerializer getNullable(kotlinx.serialization.KSerializer);
}
-keep,allowobfuscation interface kotlinx.serialization.descriptors.SerialDescriptor {
}
-keep,allowobfuscation interface kotlinx.serialization.encoding.CompositeDecoder {
  public boolean decodeBooleanElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor);
  public int decodeIntElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public java.lang.Object decodeNullableSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.DeserializationStrategy, java.lang.Object);
  public boolean decodeSequentially();
  public java.lang.Object decodeSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.DeserializationStrategy, java.lang.Object);
  public java.lang.String decodeStringElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public void endStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keep,allowobfuscation interface kotlinx.serialization.encoding.CompositeEncoder {
  public void encodeBooleanElement(kotlinx.serialization.descriptors.SerialDescriptor, int, boolean);
  public void encodeIntElement(kotlinx.serialization.descriptors.SerialDescriptor, int, int);
  public void encodeNullableSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.SerializationStrategy, java.lang.Object);
  public void encodeSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.SerializationStrategy, java.lang.Object);
  public void encodeStringElement(kotlinx.serialization.descriptors.SerialDescriptor, int, java.lang.String);
  public void endStructure(kotlinx.serialization.descriptors.SerialDescriptor);
  public boolean shouldEncodeElementDefault(kotlinx.serialization.descriptors.SerialDescriptor, int);
}
-keep,allowobfuscation interface kotlinx.serialization.encoding.Decoder {
  public kotlinx.serialization.encoding.CompositeDecoder beginStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keep,allowobfuscation interface kotlinx.serialization.encoding.Encoder {
  public kotlinx.serialization.encoding.CompositeEncoder beginStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keep,allowobfuscation class kotlinx.serialization.internal.ArrayListSerializer {
  public <init>(kotlinx.serialization.KSerializer);
}
-keep,allowobfuscation class kotlinx.serialization.internal.BooleanSerializer {
  kotlinx.serialization.internal.BooleanSerializer INSTANCE;
}
-keep,allowobfuscation interface kotlinx.serialization.internal.GeneratedSerializer {
  public kotlinx.serialization.KSerializer[] childSerializers();
  public java.lang.Object deserialize(kotlinx.serialization.encoding.Decoder);
  public kotlinx.serialization.descriptors.SerialDescriptor getDescriptor();
  public void serialize(kotlinx.serialization.encoding.Encoder, java.lang.Object);
}
-keep,allowobfuscation class kotlinx.serialization.internal.IntSerializer {
  kotlinx.serialization.internal.IntSerializer INSTANCE;
}
-keep,allowobfuscation class kotlinx.serialization.internal.PluginExceptionsKt {
  public static void throwMissingFieldException(int, int, kotlinx.serialization.descriptors.SerialDescriptor);
}
-keep,allowobfuscation class kotlinx.serialization.internal.PluginGeneratedSerialDescriptor {
  public <init>(java.lang.String, kotlinx.serialization.internal.GeneratedSerializer, int);
  public void addElement(java.lang.String, boolean);
}
-keep,allowobfuscation class kotlinx.serialization.internal.SerializationConstructorMarker {
}
-keep,allowobfuscation class kotlinx.serialization.internal.StringSerializer {
  kotlinx.serialization.internal.StringSerializer INSTANCE;
}
-keep enum kotlinx.serialization.json.ClassDiscriminatorMode {
  kotlinx.serialization.json.ClassDiscriminatorMode NONE;
}
-keep,allowobfuscation class kotlinx.serialization.json.Json {
  public java.lang.Object decodeFromString(kotlinx.serialization.DeserializationStrategy, java.lang.String);
  public kotlinx.serialization.modules.SerializersModule getSerializersModule();
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonBuilder {
  public void setClassDiscriminatorMode(kotlinx.serialization.json.ClassDiscriminatorMode);
  public void setPrettyPrint(boolean);
  public void setPrettyPrintIndent(java.lang.String);
  public void setSerializersModule(kotlinx.serialization.modules.SerializersModule);
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonContentPolymorphicSerializer {
  public <init>(kotlin.reflect.KClass);
  protected kotlinx.serialization.DeserializationStrategy selectDeserializer(kotlinx.serialization.json.JsonElement);
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonElement {
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonElementKt {
  public static java.lang.Boolean getBooleanOrNull(kotlinx.serialization.json.JsonPrimitive);
  public static kotlinx.serialization.json.JsonObject getJsonObject(kotlinx.serialization.json.JsonElement);
  public static kotlinx.serialization.json.JsonPrimitive getJsonPrimitive(kotlinx.serialization.json.JsonElement);
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonKt {
  public static kotlinx.serialization.json.Json Json$default(kotlinx.serialization.json.Json, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonObject {
  public java.lang.Object get(java.lang.Object);
}
-keep,allowobfuscation class kotlinx.serialization.json.JsonPrimitive {
  public boolean isString();
}
-keep,allowobfuscation class kotlinx.serialization.json.JvmStreamsKt {
  public static void encodeToStream(kotlinx.serialization.json.Json, kotlinx.serialization.SerializationStrategy, java.lang.Object, java.io.OutputStream);
}
-keep,allowobfuscation class kotlinx.serialization.modules.SerializersModule {
}
-keep,allowobfuscation class kotlinx.serialization.modules.SerializersModuleBuilder {
  public <init>();
  public kotlinx.serialization.modules.SerializersModule build();
  public void polymorphicDefaultDeserializer(kotlin.reflect.KClass, kotlin.jvm.functions.Function1);
}
-keep enum mozilla.appservices.places.BookmarkRoot {
  public java.lang.String getId();
  mozilla.appservices.places.BookmarkRoot Mobile;
}
-keep,allowobfuscation class mozilla.components.browser.engine.gecko.GeckoResultKt {
  public static java.lang.Object await(org.mozilla.geckoview.GeckoResult, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.browser.engine.gecko.permission.GeckoSitePermissionsStorage {
  public java.lang.Object all(kotlin.coroutines.Continuation);
  public void clearTemporaryPermissions();
}
-keep,allowobfuscation class mozilla.components.browser.errorpages.R$string {
  int mozac_browser_errorpages_connection_failure_title;
  int mozac_browser_errorpages_no_internet_title_2;
  int mozac_browser_errorpages_safe_browsing_malware_uri_title;
  int mozac_browser_errorpages_safe_browsing_unwanted_uri_title;
  int mozac_browser_errorpages_safe_harmful_uri_title;
  int mozac_browser_errorpages_safe_phishing_uri_title;
  int mozac_browser_errorpages_unknown_host_title;
}
-keep,allowobfuscation class mozilla.components.browser.errorpages.R {
}
-keep,allowobfuscation class mozilla.components.browser.icons.Icon {
  public android.graphics.Bitmap getBitmap();
}
-keep enum mozilla.components.browser.icons.IconRequest$Size {
}
-keep,allowobfuscation class mozilla.components.browser.icons.IconRequest {
  public <init>(java.lang.String, mozilla.components.browser.icons.IconRequest$Size, java.util.List, java.lang.Integer, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class mozilla.components.browser.icons.generator.DefaultIconGenerator {
  public <init>(java.lang.Integer, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public mozilla.components.browser.icons.Icon generate(android.content.Context, mozilla.components.browser.icons.IconRequest);
}
-keep,allowobfuscation class mozilla.components.browser.menu.R$id {
  int mozac_browser_menu_recyclerView;
  int simple_text;
}
-keep,allowobfuscation class mozilla.components.browser.menu.R {
}
-keep,allowobfuscation class mozilla.components.browser.session.storage.RecoverableBrowserState {
  public java.util.List getTabs();
}
-keep,allowobfuscation class mozilla.components.browser.session.storage.SessionStorage {
  public void clear();
  public static mozilla.components.browser.session.storage.RecoverableBrowserState restore$default(mozilla.components.browser.session.storage.SessionStorage, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.browser.session.storage.serialize.BrowserStateWriter {
}
-keep,allowobfuscation class mozilla.components.browser.state.action.DownloadAction$AddDownloadAction {
  public <init>(mozilla.components.browser.state.state.content.DownloadState);
}
-keep,allowobfuscation class mozilla.components.browser.state.action.DownloadAction$RemoveAllDownloadsAction {
  mozilla.components.browser.state.action.DownloadAction$RemoveAllDownloadsAction INSTANCE;
}
-keep,allowobfuscation class mozilla.components.browser.state.action.DownloadAction {
}
-keep,allowobfuscation class mozilla.components.browser.state.action.RecentlyClosedAction$ReplaceTabsAction {
  public <init>(java.util.List);
}
-keep,allowobfuscation class mozilla.components.browser.state.action.RecentlyClosedAction {
}
-keep,allowobfuscation class mozilla.components.browser.state.action.SearchAction$SetSearchEnginesAction {
  public <init>(java.util.List, java.util.List, java.util.List, java.util.List, java.util.List, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List, java.lang.Integer);
}
-keep,allowobfuscation class mozilla.components.browser.state.action.SearchAction {
}
-keep,allowobfuscation class mozilla.components.browser.state.action.UndoAction$ClearRecoverableTabs {
  public <init>(java.lang.String);
}
-keep,allowobfuscation class mozilla.components.browser.state.action.UndoAction {
}
-keep,allowobfuscation class mozilla.components.browser.state.search.SearchEngine {
  public java.lang.String getId();
  public java.lang.String getName();
}
-keep,allowobfuscation class mozilla.components.browser.state.selector.SelectorsKt {
  public static mozilla.components.browser.state.state.TabSessionState getSelectedTab(mozilla.components.browser.state.state.BrowserState);
}
-keep,allowobfuscation class mozilla.components.browser.state.state.BrowserState {
  public java.util.List getClosedTabs();
  public java.util.Map getDownloads();
  public mozilla.components.browser.state.state.SearchState getSearch();
  public java.util.List getTabs();
  public mozilla.components.browser.state.state.UndoHistoryState getUndoHistory();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.ContentState {
  public boolean getLoading();
  public boolean getPrivate();
  public int getProgress();
  public java.lang.String getTitle();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.LastMediaAccessState {
}
-keep,allowobfuscation class mozilla.components.browser.state.state.MediaSessionState {
  public mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState getPlaybackState();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.ReaderState {
}
-keep,allowobfuscation class mozilla.components.browser.state.state.SearchState {
  public java.util.List getAdditionalAvailableSearchEngines();
  public java.util.List getAdditionalSearchEngines();
  public boolean getComplete();
  public java.util.List getCustomSearchEngines();
  public java.util.List getDisabledSearchEngineIds();
  public java.util.List getHiddenSearchEngines();
  public java.lang.String getRegionDefaultSearchEngineId();
  public java.util.List getRegionSearchEngines();
  public java.util.List getRegionSearchEnginesOrder();
  public java.lang.Integer getSearchEnvironmentId();
  public java.lang.String getUserSelectedPrivateSearchEngineId();
  public java.lang.String getUserSelectedPrivateSearchEngineName();
  public java.lang.String getUserSelectedSearchEngineId();
  public java.lang.String getUserSelectedSearchEngineName();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.SearchStateKt {
  public static java.util.List getAvailableSearchEngines(mozilla.components.browser.state.state.SearchState);
  public static mozilla.components.browser.state.search.SearchEngine getSelectedOrDefaultPrivateSearchEngine(mozilla.components.browser.state.state.SearchState);
  public static mozilla.components.browser.state.search.SearchEngine getSelectedOrDefaultSearchEngine(mozilla.components.browser.state.state.SearchState);
}
-keep,allowobfuscation class mozilla.components.browser.state.state.SecurityInfo {
}
-keep,allowobfuscation class mozilla.components.browser.state.state.SessionState$Source {
}
-keep,allowobfuscation interface mozilla.components.browser.state.state.SessionState {
}
-keep,allowobfuscation class mozilla.components.browser.state.state.TabSessionState {
  public mozilla.components.browser.state.state.ContentState getContent();
  public mozilla.components.browser.state.state.MediaSessionState getMediaSessionState();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.TabSessionStateKt {
  public static mozilla.components.browser.state.state.TabSessionState createTab$default(java.lang.String, boolean, java.lang.String, mozilla.components.browser.state.state.TabSessionState, java.lang.String, java.util.Map, mozilla.components.browser.state.state.ReaderState, java.lang.String, java.lang.String, long, long, long, mozilla.components.browser.state.state.LastMediaAccessState, mozilla.components.browser.state.state.SessionState$Source, boolean, mozilla.components.concept.engine.EngineSession, mozilla.components.concept.engine.EngineSessionState, boolean, mozilla.components.browser.state.state.MediaSessionState, mozilla.components.concept.storage.HistoryMetadataKey, mozilla.components.concept.engine.manifest.WebAppManifest, java.lang.String, mozilla.components.concept.engine.EngineSession$LoadUrlFlags, java.util.Map, boolean, java.lang.String, boolean, java.lang.String, boolean, mozilla.components.browser.state.state.TrackingProtectionState, mozilla.components.browser.state.state.SecurityInfo, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.browser.state.state.TrackingProtectionState {
}
-keep,allowobfuscation class mozilla.components.browser.state.state.UndoHistoryState {
  public java.util.List getTabs();
  public java.lang.String getTag();
}
-keep enum mozilla.components.browser.state.state.content.DownloadState$Status {
  mozilla.components.browser.state.state.content.DownloadState$Status CANCELLED;
}
-keep,allowobfuscation class mozilla.components.browser.state.state.content.DownloadState {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.Long, long, mozilla.components.browser.state.state.content.DownloadState$Status, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, java.lang.String, java.lang.String, boolean, long, mozilla.components.concept.fetch.Response, java.lang.Integer, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public mozilla.components.browser.state.state.content.DownloadState$Status getStatus();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.recover.RecoverableTab {
  public mozilla.components.browser.state.state.recover.TabState getState();
}
-keep,allowobfuscation class mozilla.components.browser.state.state.recover.TabState {
  public java.lang.String getId();
  public boolean getPrivate();
}
-keep,allowobfuscation class mozilla.components.browser.state.store.BrowserStore {
}
-keep,allowobfuscation class mozilla.components.browser.storage.sync.PlacesBookmarksStorage {
  public <init>(android.content.Context, int, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object addFolder-q6nJvHc(java.lang.String, java.lang.String, kotlin.UInt, kotlin.coroutines.Continuation);
  public java.lang.Object addItem-ZzzReZE(java.lang.String, java.lang.String, java.lang.String, kotlin.UInt, kotlin.coroutines.Continuation);
  public java.lang.Object deleteNode-gIAlu-s(java.lang.String, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.browser.storage.sync.PlacesHistoryStorage {
  public <init>(android.content.Context, mozilla.components.concept.base.crash.CrashReporting, int, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object deleteEverything(kotlin.coroutines.Continuation);
  public java.lang.Object getVisited(kotlin.coroutines.Continuation);
  public java.lang.Object recordVisit(java.lang.String, mozilla.components.concept.storage.PageVisit, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.browser.storage.sync.Tab {
  public <init>(java.util.List, int, long, boolean);
}
-keep,allowobfuscation class mozilla.components.browser.storage.sync.TabEntry {
  public <init>(java.lang.String, java.lang.String, java.lang.String);
}
-keep,allowobfuscation class mozilla.components.browser.toolbar.R$id {
  int mozac_browser_toolbar_url_view;
}
-keep,allowobfuscation class mozilla.components.browser.toolbar.R$string {
  int mozac_browser_toolbar_content_description_site_info;
  int mozac_clear_button_description;
}
-keep,allowobfuscation class mozilla.components.browser.toolbar.R {
}
-keep,allowobfuscation class mozilla.components.compose.base.R$string {
  int mozac_compose_base_link_text_links_available;
  int text_field_cross_trailing_icon_default_content_description;
}
-keep,allowobfuscation class mozilla.components.compose.base.R {
}
-keep,allowobfuscation class mozilla.components.compose.base.modifier.ModifierKt {
  public static androidx.compose.ui.Modifier onShown$default(androidx.compose.ui.Modifier, float, int, kotlin.jvm.functions.Function0, android.graphics.Rect, kotlin.jvm.functions.Function0, int, java.lang.Object);
}
-keep enum mozilla.components.compose.base.theme.Theme {
  mozilla.components.compose.base.theme.Theme Dark;
  mozilla.components.compose.base.theme.Theme Light;
  mozilla.components.compose.base.theme.Theme Private;
}
-keep,allowobfuscation class mozilla.components.compose.base.theme.layout.AcornLayout {
  public mozilla.components.compose.base.theme.layout.AcornSpace getSpace();
}
-keep,allowobfuscation class mozilla.components.compose.base.theme.layout.AcornSpace {
  public float getStatic200-D9Ej5fM();
}
-keep,allowobfuscation interface mozilla.components.concept.base.crash.CrashReporting {
}
-keep,allowobfuscation interface mozilla.components.concept.engine.Engine {
  public mozilla.components.concept.engine.Settings getSettings();
}
-keep,allowobfuscation class mozilla.components.concept.engine.EngineSession$LoadUrlFlags {
}
-keep,allowobfuscation class mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy {
}
-keep,allowobfuscation class mozilla.components.concept.engine.EngineSession {
}
-keep,allowobfuscation interface mozilla.components.concept.engine.EngineSessionState {
}
-keep,allowobfuscation class mozilla.components.concept.engine.Settings {
  public java.lang.Float getFontSizeFactor();
  public void setAutomaticFontSizeAdjustment(boolean);
  public void setFontInflationEnabled(java.lang.Boolean);
  public void setFontSizeFactor(java.lang.Float);
}
-keep,allowobfuscation class mozilla.components.concept.engine.manifest.WebAppManifest {
}
-keep enum mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState {
  mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState PAUSED;
  mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState PLAYING;
}
-keep,allowobfuscation class mozilla.components.concept.engine.mediasession.MediaSession {
}
-keep,allowobfuscation interface mozilla.components.concept.engine.permission.SitePermissionsStorage {
}
-keep,allowobfuscation interface mozilla.components.concept.engine.webextension.MessageHandler {
  public java.lang.Object onMessage(java.lang.Object, mozilla.components.concept.engine.EngineSession);
  public void onPortConnected(mozilla.components.concept.engine.webextension.Port);
  public void onPortDisconnected(mozilla.components.concept.engine.webextension.Port);
  public void onPortMessage(java.lang.Object, mozilla.components.concept.engine.webextension.Port);
}
-keep,allowobfuscation class mozilla.components.concept.engine.webextension.Metadata {
  public java.lang.String getOptionsPageUrl();
}
-keep,allowobfuscation class mozilla.components.concept.engine.webextension.Port {
}
-keep,allowobfuscation class mozilla.components.concept.engine.webextension.WebExtension {
  public mozilla.components.concept.engine.webextension.Metadata getMetadata();
  public void registerBackgroundMessageHandler(java.lang.String, mozilla.components.concept.engine.webextension.MessageHandler);
}
-keep,allowobfuscation interface mozilla.components.concept.engine.webextension.WebExtensionRuntime {
  public void uninstallWebExtension(mozilla.components.concept.engine.webextension.WebExtension, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation class mozilla.components.concept.fetch.Client {
}
-keep,allowobfuscation class mozilla.components.concept.fetch.Response {
}
-keep,allowobfuscation class mozilla.components.concept.storage.Address {
  public java.lang.String getGuid();
}
-keep,allowobfuscation class mozilla.components.concept.storage.BookmarkNode {
  public java.util.List getChildren();
  public java.lang.String getGuid();
}
-keep,allowobfuscation interface mozilla.components.concept.storage.BookmarksStorage {
  public static java.lang.Object getTree-0E7RQCE$default(mozilla.components.concept.storage.BookmarksStorage, java.lang.String, boolean, kotlin.coroutines.Continuation, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.concept.storage.CreditCard {
  public java.lang.String getGuid();
}
-keep,allowobfuscation interface mozilla.components.concept.storage.CreditCardsAddressesStorage {
}
-keep,allowobfuscation class mozilla.components.concept.storage.HistoryMetadataKey {
}
-keep,allowobfuscation interface mozilla.components.concept.storage.LoginsStorage {
}
-keep,allowobfuscation class mozilla.components.concept.storage.PageVisit {
  public <init>(mozilla.components.concept.storage.VisitType, mozilla.components.concept.storage.RedirectSource, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum mozilla.components.concept.storage.RedirectSource {
}
-keep enum mozilla.components.concept.storage.VisitType {
  mozilla.components.concept.storage.VisitType LINK;
}
-keep,allowobfuscation class mozilla.components.concept.sync.AuthType$Signin {
  mozilla.components.concept.sync.AuthType$Signin INSTANCE;
}
-keep,allowobfuscation class mozilla.components.concept.sync.AuthType {
}
-keep,allowobfuscation interface mozilla.components.concept.sync.OAuthAccount {
}
-keep,allowobfuscation class mozilla.components.feature.addons.Addon$LocalizedPermission {
  public <init>(java.lang.String, mozilla.components.feature.addons.Addon$Permission);
}
-keep,allowobfuscation class mozilla.components.feature.addons.Addon$Permission {
  public <init>(java.lang.String, boolean);
}
-keep,allowobfuscation class mozilla.components.feature.addons.Addon {
}
-keep,allowobfuscation class mozilla.components.feature.addons.AddonManager {
  public java.lang.Object getAddonByID(java.lang.String, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.feature.addons.R$id {
  int add_button;
  int add_on_icon;
  int add_on_item;
  int add_on_name;
  int allow_in_private_browsing;
  int deny_button;
  int details_container;
  int rating;
  int review_count;
  int title;
}
-keep,allowobfuscation class mozilla.components.feature.addons.R$string {
  int mozac_extension_install_progress_caption;
  int mozac_feature_addons_enabled;
  int mozac_feature_addons_permissions_dialog_add;
  int mozac_feature_addons_permissions_dialog_cancel;
  int mozac_feature_addons_permissions_dialog_heading_optional_settings;
  int mozac_feature_addons_permissions_dialog_learn_more;
  int mozac_feature_addons_settings_allow_in_private_browsing_2;
}
-keep,allowobfuscation class mozilla.components.feature.addons.R {
}
-keep,allowobfuscation class mozilla.components.feature.addons.ui.AddonInstallationDialogFragment {
}
-keep,allowobfuscation class mozilla.components.feature.app.links.R$string {
  int mozac_feature_applinks_confirm_dialog_checkbox_label;
  int mozac_feature_applinks_confirm_dialog_confirm_2;
  int mozac_feature_applinks_normal_confirm_dialog_title_with_app_name_2;
}
-keep,allowobfuscation class mozilla.components.feature.app.links.R {
}
-keep,allowobfuscation class mozilla.components.feature.contextmenu.R$string {
  int mozac_feature_contextmenu_copy_link;
  int mozac_feature_contextmenu_download_link;
  int mozac_feature_contextmenu_open_link_in_external_app;
  int mozac_feature_contextmenu_open_link_in_new_tab;
  int mozac_feature_contextmenu_open_link_in_private_tab;
  int mozac_feature_contextmenu_share_link;
}
-keep,allowobfuscation class mozilla.components.feature.contextmenu.R {
}
-keep,allowobfuscation class mozilla.components.feature.customtabs.R$string {
  int mozac_feature_customtabs_exit_button;
  int mozac_feature_customtabs_share_link;
}
-keep,allowobfuscation class mozilla.components.feature.customtabs.R {
}
-keep,allowobfuscation class mozilla.components.feature.downloads.R$string {
  int mozac_feature_downloads_button_cancel;
  int mozac_feature_downloads_button_pause;
  int mozac_feature_downloads_button_resume;
  int mozac_feature_downloads_cancel_active_downloads_accept;
  int mozac_feature_downloads_cancel_active_downloads_warning_content_title;
  int mozac_feature_downloads_cancel_active_private_downloads_deny;
  int mozac_feature_downloads_dialog_cancel;
  int mozac_feature_downloads_dialog_download;
  int mozac_feature_downloads_dialog_title_with_unknown_size;
  int mozac_feature_downloads_paused_notification_text;
}
-keep,allowobfuscation class mozilla.components.feature.downloads.R {
}
-keep,allowobfuscation class mozilla.components.feature.findinpage.R$id {
  int find_in_page_close_btn;
  int find_in_page_next_btn;
  int find_in_page_prev_btn;
  int find_in_page_query_text;
}
-keep,allowobfuscation class mozilla.components.feature.findinpage.R {
}
-keep,allowobfuscation class mozilla.components.feature.prompts.R$id {
  int save_cancel;
}
-keep,allowobfuscation class mozilla.components.feature.prompts.R$string {
  int mozac_feature_prompt_before_unload_dialog_body;
}
-keep,allowobfuscation class mozilla.components.feature.prompts.R {
}
-keep,allowobfuscation class mozilla.components.feature.qr.R$string {
  int mozac_feature_qr_scanner;
}
-keep,allowobfuscation class mozilla.components.feature.qr.R {
}
-keep,allowobfuscation class mozilla.components.feature.readerview.R$id {
  int mozac_feature_readerview_color_dark;
  int mozac_feature_readerview_color_light;
  int mozac_feature_readerview_color_scheme_group;
  int mozac_feature_readerview_color_sepia;
  int mozac_feature_readerview_font_group;
  int mozac_feature_readerview_font_sans_serif;
  int mozac_feature_readerview_font_serif;
  int mozac_feature_readerview_font_size_decrease;
  int mozac_feature_readerview_font_size_increase;
}
-keep,allowobfuscation class mozilla.components.feature.readerview.R {
}
-keep,allowobfuscation class mozilla.components.feature.recentlyclosed.RecentlyClosedTabsStorage {
  public java.lang.Object getTabs(kotlin.coroutines.Continuation);
  public java.lang.Object removeAllTabs(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.feature.search.SearchUseCases$AddNewSearchEngineUseCase {
  public void invoke(mozilla.components.browser.state.search.SearchEngine);
}
-keep,allowobfuscation class mozilla.components.feature.search.SearchUseCases$NewTabSearchUseCase {
}
-keep,allowobfuscation interface mozilla.components.feature.search.SearchUseCases$SearchUseCase {
  public static void invoke$default(mozilla.components.feature.search.SearchUseCases$SearchUseCase, java.lang.String, mozilla.components.browser.state.search.SearchEngine, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.feature.search.SearchUseCases$SelectSearchEngineUseCase {
  public void invoke(mozilla.components.browser.state.search.SearchEngine);
}
-keep,allowobfuscation class mozilla.components.feature.search.SearchUseCases {
  public mozilla.components.feature.search.SearchUseCases$AddNewSearchEngineUseCase getAddSearchEngine();
  public mozilla.components.feature.search.SearchUseCases$NewTabSearchUseCase getNewTabSearch();
  public mozilla.components.feature.search.SearchUseCases$SelectSearchEngineUseCase getSelectSearchEngine();
}
-keep,allowobfuscation class mozilla.components.feature.search.ext.SearchEngineKt {
  public static mozilla.components.browser.state.search.SearchEngine createSearchEngine$default(java.lang.String, java.lang.String, android.graphics.Bitmap, java.lang.String, java.lang.String, java.lang.String, boolean, int, java.lang.Object);
}
-keep,allowobfuscation interface mozilla.components.feature.session.SessionUseCases$LoadUrlUseCase {
  public static void invoke$default(mozilla.components.feature.session.SessionUseCases$LoadUrlUseCase, java.lang.String, mozilla.components.concept.engine.EngineSession$LoadUrlFlags, java.util.Map, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.feature.session.SessionUseCases {
}
-keep,allowobfuscation class mozilla.components.feature.session.SettingsUseCases$UpdateTrackingProtectionUseCase {
  public void invoke(mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy);
}
-keep,allowobfuscation class mozilla.components.feature.session.SettingsUseCases {
  public mozilla.components.feature.session.SettingsUseCases$UpdateTrackingProtectionUseCase getUpdateTrackingProtection();
}
-keep,allowobfuscation class mozilla.components.feature.sitepermissions.R$id {
  int do_not_ask_again;
}
-keep,allowobfuscation class mozilla.components.feature.sitepermissions.R$string {
  int mozac_feature_sitepermissions_storage_access_message;
}
-keep,allowobfuscation class mozilla.components.feature.sitepermissions.R {
}
-keep enum mozilla.components.feature.sitepermissions.SitePermissionsRules$Action {
  mozilla.components.feature.sitepermissions.SitePermissionsRules$Action BLOCKED;
}
-keep,allowobfuscation class mozilla.components.feature.sitepermissions.SitePermissionsRules {
}
-keep,allowobfuscation class mozilla.components.feature.summarize.R$string {
  int mozac_summarize_settings_gestures;
  int mozac_summarize_settings_learn_more;
  int mozac_summarize_settings_shake_to_summarize;
  int mozac_summarize_settings_summarize_pages;
}
-keep,allowobfuscation class mozilla.components.feature.summarize.R {
}
-keep,allowobfuscation interface mozilla.components.feature.tab.collections.TabCollection {
}
-keep,allowobfuscation class mozilla.components.feature.tab.collections.TabCollectionStorage {
  public <init>(android.content.Context, mozilla.components.browser.session.storage.serialize.BrowserStateWriter, java.io.File, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Long createCollection(java.lang.String, java.util.List);
}
-keep,allowobfuscation class mozilla.components.feature.tabs.TabsUseCases$AddNewTabUseCase {
}
-keep,allowobfuscation class mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase {
  public static void invoke$default(mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase, boolean, int, java.lang.Object);
  public void invoke(boolean);
}
-keep,allowobfuscation class mozilla.components.feature.tabs.TabsUseCases {
  public mozilla.components.feature.tabs.TabsUseCases$AddNewTabUseCase getAddTab();
  public mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase getRemoveAllTabs();
}
-keep,allowobfuscation class mozilla.components.feature.top.sites.PinnedSiteStorage {
  public java.lang.Object getPinnedSites(kotlin.coroutines.Continuation);
  public java.lang.Object removePinnedSite(mozilla.components.feature.top.sites.TopSite, kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.feature.top.sites.TopSite$Pinned {
}
-keep,allowobfuscation class mozilla.components.feature.top.sites.TopSite {
}
-keep,allowobfuscation class mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase {
  public static java.lang.Object invoke$default(mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase, java.lang.String, java.lang.String, boolean, kotlin.coroutines.Continuation, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.components.feature.top.sites.TopSitesUseCases {
  public mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase getAddPinnedSites();
}
-keep,allowobfuscation class mozilla.components.lib.crash.R$string {
  int crash_reporting_ask;
  int crash_reporting_auto;
  int crash_reporting_never;
}
-keep,allowobfuscation class mozilla.components.lib.crash.R {
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$CancelForEverTapped {
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$CancelTapped {
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$CheckDeferred {
  public <init>(java.util.List);
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$CheckForCrashes {
  public <init>(java.util.List);
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$ReportTapped {
  public boolean getAutomaticallySendChecked();
  public java.util.List getCrashIDs();
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction$ShowPrompt {
  public <init>(java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class mozilla.components.lib.crash.store.CrashAction {
}
-keep enum mozilla.components.lib.crash.store.CrashReportOption {
  public java.lang.String getLabel();
  public static mozilla.components.lib.crash.store.CrashReportOption[] values();
  mozilla.components.lib.crash.store.CrashReportOption Ask;
  mozilla.components.lib.crash.store.CrashReportOption Auto;
  mozilla.components.lib.crash.store.CrashReportOption Never;
}
-keep,allowobfuscation interface mozilla.components.lib.state.Action {
}
-keep,allowobfuscation interface mozilla.components.lib.state.State {
}
-keep,allowobfuscation class mozilla.components.lib.state.Store {
  public void dispatch(mozilla.components.lib.state.Action);
  public mozilla.components.lib.state.State getState();
  public kotlinx.coroutines.flow.StateFlow getStateFlow();
}
-keep,allowobfuscation class mozilla.components.service.fxa.FirefoxAccount {
}
-keep,allowobfuscation interface mozilla.components.service.nimbus.NimbusApi {
}
-keep,allowobfuscation class mozilla.components.service.nimbus.NimbusUtilsKt {
  public static boolean evalJexlSafe(org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface, java.lang.String);
}
-keep enum mozilla.components.service.nimbus.messaging.ControlMessageBehavior {
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.FxNimbusMessaging$Features {
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getMessaging();
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.FxNimbusMessaging {
  public mozilla.components.service.nimbus.messaging.FxNimbusMessaging$Features getFeatures();
  mozilla.components.service.nimbus.messaging.FxNimbusMessaging INSTANCE;
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.Message {
  public java.lang.String getId();
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.MessageData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.lang.String, java.util.Map, org.mozilla.experiments.nimbus.StringHolder, java.util.List, java.lang.String, boolean, mozilla.components.service.nimbus.messaging.MicrosurveyConfig, java.lang.String, java.lang.String, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.String getButtonLabel();
  public java.lang.String getText();
  public java.lang.String getTitle();
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.Messaging {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.lang.String, java.util.List, java.util.Map, java.lang.String, java.util.Map, mozilla.components.service.nimbus.messaging.NotificationConfig, mozilla.components.service.nimbus.messaging.ControlMessageBehavior, java.util.Map, java.util.Map, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.Map getMessages();
  public java.util.Map getTriggers();
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.MicrosurveyConfig {
}
-keep,allowobfuscation interface mozilla.components.service.nimbus.messaging.NimbusMessagingControllerInterface {
  public java.lang.Object getMessages(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.NotificationConfig {
}
-keep,allowobfuscation class mozilla.components.service.nimbus.messaging.StyleData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class mozilla.components.service.sync.autofill.AutofillCreditCardsAddressesStorage {
  public java.lang.Object deleteAddress(java.lang.String, kotlin.coroutines.Continuation);
  public java.lang.Object deleteCreditCard(java.lang.String, kotlin.coroutines.Continuation);
  public java.lang.Object getAllAddresses(kotlin.coroutines.Continuation);
  public java.lang.Object getAllCreditCards(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.service.sync.logins.SyncableLoginsStorage {
  public java.lang.Object list(kotlin.coroutines.Continuation);
  public java.lang.Object wipeLocal(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class mozilla.components.support.base.log.logger.Logger {
  public <init>(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class mozilla.components.support.ktx.android.content.ContextKt {
  public static java.lang.String getAppName(android.content.Context);
}
-keep,allowobfuscation class mozilla.components.support.ktx.util.PromptAbuserDetector$Companion {
  public void setValidationsEnabled(boolean);
}
-keep,allowobfuscation class mozilla.components.support.ktx.util.PromptAbuserDetector {
  mozilla.components.support.ktx.util.PromptAbuserDetector$Companion Companion;
}
-keep,allowobfuscation class mozilla.components.support.ktx.util.URLStringUtils {
  public java.lang.CharSequence toDisplayUrl(java.lang.CharSequence);
  mozilla.components.support.ktx.util.URLStringUtils INSTANCE;
}
-keep,allowobfuscation class mozilla.components.support.license.R$id {
  int about_libraries_listview;
}
-keep,allowobfuscation class mozilla.components.support.license.R {
}
-keep,allowobfuscation class mozilla.components.support.locale.LocaleManager {
  public void resetToSystemDefault(android.content.Context, mozilla.components.support.locale.LocaleUseCases);
  public android.content.Context setNewLocale(android.content.Context, mozilla.components.support.locale.LocaleUseCases, java.util.Locale);
  mozilla.components.support.locale.LocaleManager INSTANCE;
}
-keep,allowobfuscation class mozilla.components.support.locale.LocaleUseCases {
}
-keep,allowobfuscation class mozilla.components.support.utils.ext.ContextKt {
  public static mozilla.components.support.utils.ext.PackageManagerCompatHelper getPackageManagerCompatHelper(android.content.Context);
}
-keep,allowobfuscation interface mozilla.components.support.utils.ext.PackageManagerCompatHelper {
  public android.content.pm.PackageInfo getPackageInfoCompat(java.lang.String, int);
}
-keep,allowobfuscation class mozilla.components.support.webextensions.WebExtensionSupport {
  public java.util.concurrent.ConcurrentHashMap getInstalledExtensions();
  mozilla.components.support.webextensions.WebExtensionSupport INSTANCE;
}
-keep,allowobfuscation class mozilla.components.ui.icons.R$drawable {
  int mozac_ic_shield_slash_multicolor_24;
}
-keep,allowobfuscation class mozilla.components.ui.icons.R {
}
-keep,allowobfuscation class mozilla.telemetry.glean.internal.RecordedEvent {
  public java.util.Map getExtra();
}
-keep,allowobfuscation class mozilla.telemetry.glean.private.EventMetricType {
  public static java.util.List testGetValue$default(mozilla.telemetry.glean.private.EventMetricType, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.telemetry.glean.private.ObjectMetricType {
  public static kotlinx.serialization.json.JsonElement testGetValue$default(mozilla.telemetry.glean.private.ObjectMetricType, java.lang.String, int, java.lang.Object);
}
-keep,allowobfuscation class mozilla.telemetry.glean.testing.GleanTestLocalServer {
  public <init>(android.content.Context, int);
}
-keep,allowobfuscation class okio.AsyncTimeout {
  public <init>();
  public void enter();
  public boolean exit();
  protected java.io.IOException newTimeoutException(java.io.IOException);
  protected void timedOut();
}
-keep,allowobfuscation class okio.Buffer$UnsafeCursor {
  public <init>();
  public void close();
  public long expandBuffer(int);
  public int next();
  public long resizeBuffer(long);
  public int seek(long);
  byte[] data;
  int end;
  long offset;
  int start;
}
-keep,allowobfuscation class okio.Buffer {
  public <init>();
  public void clear();
  public okio.Buffer clone();
  public static okio.Buffer copyTo$default(okio.Buffer, okio.Buffer, long, int, java.lang.Object);
  public okio.Buffer copyTo(okio.Buffer, long, long);
  public boolean exhausted();
  public byte getByte(long);
  public long indexOfElement(okio.ByteString);
  public long indexOfElement(okio.ByteString, long);
  public java.io.InputStream inputStream();
  public boolean rangeEquals(long, okio.ByteString);
  public long read(okio.Buffer, long);
  public static okio.Buffer$UnsafeCursor readAndWriteUnsafe$default(okio.Buffer, okio.Buffer$UnsafeCursor, int, java.lang.Object);
  public okio.Buffer$UnsafeCursor readAndWriteUnsafe(okio.Buffer$UnsafeCursor);
  public byte readByte();
  public byte[] readByteArray();
  public okio.ByteString readByteString();
  public short readShort();
  public java.lang.String readUtf8();
  public java.lang.String readUtf8(long);
  public int readUtf8CodePoint();
  public long size();
  public void skip(long);
  public void write(okio.Buffer, long);
  public okio.Buffer write(okio.ByteString);
  public okio.Buffer write(okio.ByteString, int, int);
  public okio.Buffer write(okio.Source, long);
  public okio.Buffer write(byte[]);
  public okio.Buffer write(byte[], int, int);
  public long writeAll(okio.Source);
  public okio.Buffer writeByte(int);
  public okio.Buffer writeDecimalLong(long);
  public okio.Buffer writeHexadecimalUnsignedLong(long);
  public okio.Buffer writeInt(int);
  public okio.Buffer writeLong(long);
  public okio.Buffer writeShort(int);
  public okio.Buffer writeString(java.lang.String, int, int, java.nio.charset.Charset);
  public okio.Buffer writeString(java.lang.String, java.nio.charset.Charset);
  public okio.Buffer writeUtf8(java.lang.String);
  public okio.Buffer writeUtf8(java.lang.String, int, int);
  public okio.Buffer writeUtf8CodePoint(int);
}
-keep,allowobfuscation interface okio.BufferedSink {
  public okio.BufferedSink emit();
  public okio.BufferedSink emitCompleteSegments();
  public void flush();
  public okio.Buffer getBuffer();
  public okio.BufferedSink write(okio.ByteString);
  public okio.BufferedSink write(okio.Source, long);
  public okio.BufferedSink write(byte[]);
  public okio.BufferedSink write(byte[], int, int);
  public long writeAll(okio.Source);
  public okio.BufferedSink writeByte(int);
  public okio.BufferedSink writeDecimalLong(long);
  public okio.BufferedSink writeHexadecimalUnsignedLong(long);
  public okio.BufferedSink writeInt(int);
  public okio.BufferedSink writeIntLe(int);
  public okio.BufferedSink writeLong(long);
  public okio.BufferedSink writeLongLe(long);
  public okio.BufferedSink writeShort(int);
  public okio.BufferedSink writeString(java.lang.String, java.nio.charset.Charset);
  public okio.BufferedSink writeUtf8(java.lang.String);
  public okio.BufferedSink writeUtf8(java.lang.String, int, int);
  public okio.BufferedSink writeUtf8CodePoint(int);
}
-keep,allowobfuscation interface okio.BufferedSource {
  public boolean exhausted();
  public okio.Buffer getBuffer();
  public long indexOf(byte);
  public long indexOf(okio.ByteString);
  public long indexOf(okio.ByteString, long, long);
  public long indexOfElement(okio.ByteString);
  public java.io.InputStream inputStream();
  public okio.BufferedSource peek();
  public boolean rangeEquals(long, okio.ByteString);
  public long readAll(okio.Sink);
  public byte readByte();
  public byte[] readByteArray();
  public byte[] readByteArray(long);
  public okio.ByteString readByteString();
  public okio.ByteString readByteString(long);
  public long readDecimalLong();
  public void readFully(okio.Buffer, long);
  public void readFully(byte[]);
  public long readHexadecimalUnsignedLong();
  public int readInt();
  public int readIntLe();
  public long readLong();
  public long readLongLe();
  public short readShort();
  public java.lang.String readString(long, java.nio.charset.Charset);
  public java.lang.String readString(java.nio.charset.Charset);
  public java.lang.String readUtf8(long);
  public int readUtf8CodePoint();
  public java.lang.String readUtf8LineStrict();
  public java.lang.String readUtf8LineStrict(long);
  public boolean request(long);
  public void require(long);
  public int select(okio.Options);
  public void skip(long);
}
-keep,allowobfuscation class okio.ByteString$Companion {
  public okio.ByteString decodeBase64(java.lang.String);
  public okio.ByteString decodeHex(java.lang.String);
  public okio.ByteString encodeString(java.lang.String, java.nio.charset.Charset);
  public okio.ByteString encodeUtf8(java.lang.String);
  public static okio.ByteString of$default(okio.ByteString$Companion, byte[], int, int, int, java.lang.Object);
  public okio.ByteString of(byte[]);
  public okio.ByteString of(byte[], int, int);
}
-keep,allowobfuscation class okio.ByteString {
  public static java.lang.String base64$default(okio.ByteString, boolean, int, java.lang.Object);
  public java.lang.String base64();
  public void copyInto(int, byte[], int, int);
  public static okio.ByteString encodeUtf8(java.lang.String);
  public byte getByte(int);
  public int hashCode();
  public java.lang.String hex();
  public static int indexOf$default(okio.ByteString, okio.ByteString, int, int, java.lang.Object);
  public okio.ByteString md5();
  public okio.ByteString sha1();
  public okio.ByteString sha256();
  public int size();
  public boolean startsWith(okio.ByteString);
  public java.lang.String string(java.nio.charset.Charset);
  public static okio.ByteString substring$default(okio.ByteString, int, int, int, java.lang.Object);
  public okio.ByteString substring(int, int);
  public okio.ByteString toAsciiLowercase();
  public byte[] toByteArray();
  public java.lang.String utf8();
  okio.ByteString$Companion Companion;
  okio.ByteString EMPTY;
}
-keep,allowobfuscation class okio.DeflaterSink {
  public <init>(okio.Sink, java.util.zip.Deflater);
  public void close();
  public void flush();
  public void write(okio.Buffer, long);
}
-keep,allowobfuscation class okio.FileMetadata {
  public java.lang.Long getSize();
  public boolean isDirectory();
}
-keep,allowobfuscation class okio.FileSystem {
  public okio.Sink appendingSink(okio.Path);
  public void atomicMove(okio.Path, okio.Path);
  public void createDirectories(okio.Path);
  public void delete(okio.Path);
  public boolean exists(okio.Path);
  public java.util.List list(okio.Path);
  public okio.FileMetadata metadata(okio.Path);
  public okio.Sink sink(okio.Path);
  public okio.Sink sink(okio.Path, boolean);
  public okio.Source source(okio.Path);
  okio.FileSystem RESOURCES;
  okio.FileSystem SYSTEM;
}
-keep,allowobfuscation class okio.ForwardingFileSystem {
  public <init>(okio.FileSystem);
  public okio.Sink sink(okio.Path, boolean);
}
-keep,allowobfuscation class okio.ForwardingSink {
  public <init>(okio.Sink);
  public void close();
  public void flush();
  public void write(okio.Buffer, long);
}
-keep,allowobfuscation class okio.ForwardingSource {
  public <init>(okio.Source);
  public void close();
  public okio.Source delegate();
  public long read(okio.Buffer, long);
}
-keep,allowobfuscation class okio.ForwardingTimeout {
  public <init>(okio.Timeout);
  public okio.Timeout delegate();
  public okio.ForwardingTimeout setDelegate(okio.Timeout);
}
-keep,allowobfuscation class okio.GzipSink {
  public <init>(okio.Sink);
}
-keep,allowobfuscation class okio.GzipSource {
  public <init>(okio.Source);
}
-keep,allowobfuscation class okio.HashingSink$Companion {
  public okio.HashingSink sha256(okio.Sink);
}
-keep,allowobfuscation class okio.HashingSink {
  public okio.ByteString hash();
  okio.HashingSink$Companion Companion;
}
-keep,allowobfuscation class okio.InflaterSource {
  public <init>(okio.Source, java.util.zip.Inflater);
  public void close();
  public long readOrInflate(okio.Buffer, long);
}
-keep,allowobfuscation class okio.Okio {
  public static okio.Sink blackhole();
  public static okio.BufferedSink buffer(okio.Sink);
  public static okio.BufferedSource buffer(okio.Source);
  public static okio.Source limit$default(okio.Source, long, boolean, int, java.lang.Object);
  public static okio.Sink sink(java.io.OutputStream);
  public static okio.Socket socket(java.net.Socket);
  public static okio.Source source(java.io.File);
  public static okio.Source source(java.io.InputStream);
}
-keep,allowobfuscation class okio.Options$Companion {
  public okio.Options of(okio.ByteString[]);
}
-keep,allowobfuscation class okio.Options {
  public static okio.Options of(okio.ByteString[]);
  okio.Options$Companion Companion;
}
-keep,allowobfuscation class okio.Path$Companion {
  public static okio.Path get$default(okio.Path$Companion, java.io.File, boolean, int, java.lang.Object);
  public static okio.Path get$default(okio.Path$Companion, java.lang.String, boolean, int, java.lang.Object);
}
-keep,allowobfuscation class okio.Path {
  public okio.Path parent();
  public okio.Path resolve(java.lang.String);
  public java.io.File toFile();
  okio.Path$Companion Companion;
}
-keep,allowobfuscation interface okio.Sink {
  public void close();
  public void flush();
  public okio.Timeout timeout();
  public void write(okio.Buffer, long);
}
-keep,allowobfuscation interface okio.Socket {
  public void cancel();
  public okio.Sink getSink();
  public okio.Source getSource();
}
-keep,allowobfuscation interface okio.Source {
  public void close();
  public long read(okio.Buffer, long);
  public okio.Timeout timeout();
}
-keep,allowobfuscation class okio.Timeout$Companion {
  public long minTimeout(long, long);
}
-keep,allowobfuscation class okio.Timeout {
  public <init>();
  public okio.Timeout clearDeadline();
  public okio.Timeout clearTimeout();
  public long deadlineNanoTime();
  public okio.Timeout deadlineNanoTime(long);
  public boolean hasDeadline();
  public okio.Timeout timeout(long, java.util.concurrent.TimeUnit);
  public long timeoutNanos();
  okio.Timeout$Companion Companion;
  okio.Timeout NONE;
}
-keep,allowobfuscation class okio.Utf8 {
  public static long size$default(java.lang.String, int, int, int, java.lang.Object);
}
-keep,allowobfuscation @interface org.intellij.lang.annotations.Language {
  public java.lang.String value();
}
-keep,allowobfuscation @interface org.jetbrains.annotations.NotNull {
}
-keep,allowobfuscation @interface org.jetbrains.annotations.Nullable {
}
-keep,allowobfuscation @interface org.jetbrains.annotations.TestOnly {
}
-keep,allowobfuscation class org.jsoup.Jsoup {
  public static org.jsoup.nodes.Document parse(java.lang.String);
}
-keep,allowobfuscation class org.jsoup.nodes.Document {
}
-keep,allowobfuscation class org.jsoup.nodes.Element {
  public java.lang.String text();
}
-keep,allowobfuscation @interface org.jspecify.annotations.NonNull {
}
-keep,allowobfuscation class org.mozilla.experiments.nimbus.HardcodedNimbusFeatures {
  public <init>(android.content.Context, kotlin.Pair[]);
  public void connectWith(org.mozilla.experiments.nimbus.internal.FeatureManifestInterface);
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.NimbusInterface {
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface {
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.NimbusMessagingInterface {
  public static org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createMessageHelper$default(org.mozilla.experiments.nimbus.NimbusMessagingInterface, org.json.JSONObject, int, java.lang.Object);
  public org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createMessageHelper(org.json.JSONObject);
}
-keep,allowobfuscation class org.mozilla.experiments.nimbus.Res$Companion {
  public org.mozilla.experiments.nimbus.StringHolder string(java.lang.String);
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.Res {
  org.mozilla.experiments.nimbus.Res$Companion Companion;
}
-keep,allowobfuscation class org.mozilla.experiments.nimbus.StringHolder {
  public <init>(java.lang.Integer, java.lang.String);
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.Variables {
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.internal.FMLFeatureInterface {
}
-keep,allowobfuscation class org.mozilla.experiments.nimbus.internal.FeatureHolder {
  public org.mozilla.experiments.nimbus.internal.FMLFeatureInterface value();
  public void withInitializer(kotlin.jvm.functions.Function2);
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.internal.FeatureManifestInterface {
}
-keep,allowobfuscation class org.mozilla.experiments.nimbus.internal.NimbusException {
}
-keep,allowobfuscation interface org.mozilla.experiments.nimbus.internal.NimbusTargetingHelperInterface {
  public boolean evalJexl(java.lang.String);
}
-keep,allowobfuscation class org.mozilla.fenix.Config {
  public org.mozilla.fenix.ReleaseChannel getChannel();
  org.mozilla.fenix.Config INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.FenixApplication {
  public org.mozilla.fenix.components.Components getComponents();
  public void restoreMessaging$app();
}
-keep,allowobfuscation class org.mozilla.fenix.GleanMetrics.AppExitInfo {
  public mozilla.telemetry.glean.private.EventMetricType processExited();
  org.mozilla.fenix.GleanMetrics.AppExitInfo INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.GleanMetrics.NimbusSystem {
  public mozilla.telemetry.glean.private.ObjectMetricType recordedNimbusContext();
  org.mozilla.fenix.GleanMetrics.NimbusSystem INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.HomeActivity {
  public void recreate();
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.IntentReceiverActivity {
}
-keep,allowobfuscation class org.mozilla.fenix.NavGraphDirections$Companion {
  public androidx.navigation.NavDirections actionGlobalToInstalledAddonDetailsFragment(mozilla.components.feature.addons.Addon);
}
-keep,allowobfuscation class org.mozilla.fenix.NavGraphDirections {
  org.mozilla.fenix.NavGraphDirections$Companion Companion;
}
-keep,allowobfuscation class org.mozilla.fenix.R$color {
  int fx_mobile_private_surface;
  int fx_mobile_surface;
}
-keep,allowobfuscation class org.mozilla.fenix.R$drawable {
  int home_background_gradient;
  int ic_firefox;
  int ic_notification_permission;
  int ic_onboarding_customize_toolbar;
  int ic_onboarding_search_widget;
  int ic_onboarding_sync;
  int ic_onboarding_top_toolbar;
  int ic_onboarding_welcome;
}
-keep,allowobfuscation class org.mozilla.fenix.R$id {
  int about_content;
  int about_text;
  int add_ons_list;
  int add_ons_progress_bar;
  int addon_container;
  int ask_to_allow_radio;
  int block_radio;
  int build_date;
  int checkbox;
  int checkmark;
  int container;
  int custom_search_engines_learn_more;
  int custom_search_suggestions_learn_more;
  int delete_all_site_permissions_button;
  int delete_data;
  int edit_suggest_string;
  int email;
  int engineView;
  int engine_icon;
  int fourth_radio;
  int header_title;
  int history_delete;
  int history_empty_view;
  int history_list;
  int homepageView;
  int https_only_all_tabs;
  int https_only_private_tabs;
  int https_only_summary;
  int https_only_switch;
  int https_only_title;
  int locale_list;
  int name_collection_edittext;
  int navigationToolbar;
  int navigation_bar;
  int overflow_menu;
  int radio_button;
  int recently_closed_empty_view;
  int recently_closed_list;
  int recycler_view;
  int removeAllExceptions;
  int remove_add_on;
  int save_button;
  int search;
  int settings;
  int settings_button;
  int shareWrapper;
  int share_history_multi_select;
  int share_tab_favicon;
  int share_tab_title;
  int share_tab_url;
  int shared_site_list;
  int signInEmailButton;
  int signOutDisconnect;
  int studies_switch;
  int switchWidget;
  int switch_widget;
  int third_radio;
  int title;
  int toolbar;
  int url;
}
-keep,allowobfuscation class org.mozilla.fenix.R$plurals {
  int add_to_exiting_tab_group_content_description;
}
-keep,allowobfuscation class org.mozilla.fenix.R$string {
  int action_bar_up_description;
  int add_login_hostname_invalid_text_2;
  int add_login_hostname_invalid_text_3;
  int add_login_save_new_login_button_content_description;
  int addons_permissions_heading_required_permissions;
  int address_menu_save_address;
  int addresses_edit_address;
  int addresses_manage_addresses;
  int alternative_app_icon_group_featured;
  int alternative_app_icon_group_gradients;
  int alternative_app_icon_group_solid_colors;
  int alternative_app_icon_option_blue;
  int alternative_app_icon_option_cool;
  int alternative_app_icon_option_cuddling;
  int alternative_app_icon_option_dark;
  int alternative_app_icon_option_default;
  int alternative_app_icon_option_flaming;
  int alternative_app_icon_option_gradient_blue_hour;
  int alternative_app_icon_option_gradient_golden_hour;
  int alternative_app_icon_option_gradient_midnight;
  int alternative_app_icon_option_gradient_northern_lights;
  int alternative_app_icon_option_gradient_sunrise;
  int alternative_app_icon_option_gradient_sunset;
  int alternative_app_icon_option_gradient_twilight;
  int alternative_app_icon_option_green;
  int alternative_app_icon_option_light;
  int alternative_app_icon_option_minimal;
  int alternative_app_icon_option_momo;
  int alternative_app_icon_option_momo_subtitle;
  int alternative_app_icon_option_pixelated;
  int alternative_app_icon_option_pride;
  int alternative_app_icon_option_purple;
  int alternative_app_icon_option_purple_dark;
  int alternative_app_icon_option_red;
  int alternative_app_icon_option_retro_2004;
  int app_name;
  int app_name_firefox;
  int applinks_prompt_negative_button;
  int automatic_translation_option_always_translate_title_preference;
  int automatic_translation_option_never_translate_title_preference;
  int awesomebar_clipboard_title;
  int bookmark_add_new_folder_button_content_description;
  int bookmark_delete_bookmark_content_description;
  int bookmark_delete_negative;
  int bookmark_empty_list_root_title;
  int bookmark_import_bookmarks_button_content_description;
  int bookmark_import_destination_default_name;
  int bookmark_import_menu_button;
  int bookmark_menu_delete_button;
  int bookmark_menu_edit_button;
  int bookmark_menu_move_button;
  int bookmark_menu_open_in_new_tab_button;
  int bookmark_menu_open_in_private_tab_button;
  int bookmark_menu_share_button;
  int bookmark_navigate_back_button_content_description;
  int bookmark_search_button_content_description;
  int bookmark_select_folder_expand_folder_content_description;
  int bookmark_select_folder_new_folder_button_title;
  int bookmark_sort_menu_content_desc;
  int bookmarks_folder_description;
  int browser_menu_add_app_to_homescreen;
  int browser_menu_add_to_homescreen;
  int browser_menu_add_to_shortcuts;
  int browser_menu_back;
  int browser_menu_bookmark_this_page_2;
  int browser_menu_customize_homepage;
  int browser_menu_customize_reader_view_2;
  int browser_menu_default_banner_dismiss_promotion;
  int browser_menu_default_banner_subtitle_2;
  int browser_menu_default_banner_title;
  int browser_menu_delete_browsing_data_on_quit;
  int browser_menu_desktop_site;
  int browser_menu_discover_more_extensions;
  int browser_menu_edit_bookmark;
  int browser_menu_extension_plus_icon_content_description_2;
  int browser_menu_extensions;
  int browser_menu_find_in_page;
  int browser_menu_forward;
  int browser_menu_manage_extensions;
  int browser_menu_new_private_tab;
  int browser_menu_open_app_link;
  int browser_menu_open_in_fenix;
  int browser_menu_passwords;
  int browser_menu_print_2;
  int browser_menu_read;
  int browser_menu_read_close;
  int browser_menu_refresh;
  int browser_menu_remove_from_shortcuts;
  int browser_menu_save_as_pdf_2;
  int browser_menu_save_to_collection_2;
  int browser_menu_settings;
  int browser_menu_share;
  int browser_menu_sign_in;
  int browser_menu_summarize_page;
  int browser_menu_translated;
  int browser_menu_translations;
  int browser_menu_webcompat_reporter_2;
  int browser_toolbar_summarize_cfr_description;
  int browser_toolbar_translate;
  int camera_permissions_needed_negative_button_text;
  int camera_permissions_needed_positive_button_text;
  int clear_permission;
  int clear_permissions;
  int clear_permissions_negative;
  int clear_permissions_positive;
  int clear_site_data;
  int clear_site_data_dialog_description;
  int clear_site_data_dialog_negative_button_text;
  int clear_site_data_dialog_positive_button_text;
  int close_tab_and_delete_group_confirmation_dialog_cancel;
  int close_tab_and_delete_group_confirmation_dialog_confirm;
  int collections_header;
  int confirm_clear_permission_site;
  int confirm_clear_permissions_on_all_sites;
  int confirm_clear_permissions_site;
  int connection_security_panel_not_secure;
  int connection_security_panel_secure;
  int content_description_gallery;
  int content_description_menu;
  int content_description_private_browsing;
  int crash_reporting_description;
  int crash_reports_data_category;
  int create_collection_tab_saved_2;
  int create_tab_group_save_button;
  int credit_cards_edit_card;
  int credit_cards_name_on_card_validation_error_message_2;
  int credit_cards_number_validation_error_message_2;
  int credit_cards_saved_cards;
  int customize_toggle_bookmarks;
  int customize_toggle_contile;
  int customize_toggle_continue;
  int customize_toggle_pocket_3;
  int customize_toggle_pocket_sponsored;
  int customize_toggle_recently_visited;
  int customize_wallpapers;
  int default_locale_text;
  int delete_browsing_data_prompt_allow;
  int delete_browsing_data_prompt_cancel;
  int delete_browsing_data_prompt_message_3;
  int delete_from_history;
  int delete_history_prompt_body_2;
  int delete_history_prompt_button_everything;
  int delete_history_prompt_title;
  int delete_tab_group_confirmation_dialog_body;
  int delete_tab_group_confirmation_dialog_title;
  int dialog_delete_negative;
  int dialog_delete_positive;
  int download_completed_snackbar;
  int download_completed_snackbar_action_open;
  int download_delete_item;
  int download_delete_multi_select_dialog_confirm;
  int download_empty_description;
  int download_empty_message_2;
  int download_failed_snackbar_action_details;
  int download_in_progress_snackbar;
  int download_item_status_failed;
  int download_language_all_languages_item_preference_to_delete;
  int download_navigate_back_description;
  int download_navigate_settings_description;
  int download_pause_action;
  int download_retry_action;
  int download_share_file;
  int edit_bookmark_fragment_title;
  int edit_login_button_content_description;
  int edit_login_navigate_back_button_content_description;
  int etp_cryptominers_title;
  int etp_known_fingerprinters_title;
  int etp_redirect_trackers_title;
  int etp_suspected_fingerprinters_title;
  int felt_privacy_desc_card_title;
  int firefox;
  int firefox_suggest_header;
  int history_delete_item;
  int history_metadata_header_2;
  int history_search_group_sites_1;
  int home_bookmarks_title;
  int homepage_shortcuts_add_to_homepage;
  int homepage_shortcuts_add_website_title;
  int homepage_shortcuts_popular_sites;
  int lens_opt_out_title;
  int lens_opt_out_try_it_now_button;
  int lens_search_content_description;
  int library_bookmarks;
  int library_downloads;
  int library_history;
  int library_recently_closed_tabs;
  int login_deletion_confirmation_2;
  int login_detail_menu_button_content_description;
  int login_detail_menu_delete_button;
  int login_detail_menu_edit_button;
  int logins_navigate_back_button_content_description;
  int logins_password_copied;
  int logins_username_copied;
  int logins_warning_dialog_title_2;
  int micro_survey_continue_button_label;
  int micro_survey_feedback_confirmation;
  int micro_survey_submit_button_label;
  int micro_survey_survey_header_2;
  int microsurvey_prompt_printing_title;
  int no_site_exceptions;
  int notification_erase_text_android_14;
  int notification_erase_title_android_14;
  int nova_onboarding_continue_button;
  int nova_onboarding_marketing_title;
  int nova_onboarding_negative_button;
  int nova_onboarding_set_to_default_button;
  int nova_onboarding_set_to_default_subtitle;
  int nova_onboarding_set_to_default_title_2;
  int nova_onboarding_tou_body_line_1;
  int nova_onboarding_tou_body_line_1_link_text;
  int nova_onboarding_tou_body_line_2;
  int nova_onboarding_tou_body_line_2_link_text;
  int nova_onboarding_tou_body_line_3;
  int nova_onboarding_tou_body_line_3_link_text;
  int nova_onboarding_tou_subtitle;
  int onboarding_term_of_service_line_one_2;
  int onboarding_term_of_service_line_one_link_text_2;
  int onboarding_term_of_service_line_three;
  int onboarding_term_of_service_line_three_link_text;
  int onboarding_term_of_service_line_two_2;
  int onboarding_term_of_service_line_two_link_text;
  int onboarding_welcome_to_firefox;
  int open_in_app_cfr_info_message_2;
  int open_in_app_cfr_negative_button_text;
  int open_in_app_cfr_positive_button_text;
  int opening_screen_after_four_hours_of_inactivity;
  int opening_screen_homepage;
  int opening_screen_last_tab;
  int phone_feature_blocked_by_android;
  int phone_feature_blocked_intro;
  int phone_feature_blocked_step_settings;
  int pocket_stories_header_2;
  int pref_key_accessibility_auto_size;
  int pref_key_accessibility_font_scale;
  int pref_key_allow_screenshots_in_private_mode;
  int pref_key_application_exit_info_last_handled_time;
  int pref_key_camera_permissions_needed;
  int pref_key_customization_bookmarks;
  int pref_key_delete_browsing_data_on_quit;
  int pref_key_google_lens_integration;
  int pref_key_google_lens_integration_user_enabled;
  int pref_key_has_accepted_google_lens_first_run;
  int pref_key_https_only;
  int pref_key_https_only_in_all_tabs;
  int pref_key_https_only_in_private_tabs;
  int pref_key_open_links_in_apps;
  int pref_key_open_links_in_apps_always;
  int pref_key_open_links_in_apps_ask;
  int pref_key_open_links_in_apps_never;
  int pref_key_recent_tabs;
  int pref_key_save_logins;
  int pref_key_search_engine_list;
  int pref_key_show_search_suggestions;
  int pref_key_show_search_suggestions_in_private;
  int pref_key_start_on_home_after_four_hours;
  int pref_key_start_on_home_always;
  int pref_key_start_on_home_never;
  int pref_key_tab_groups_onboarding;
  int pref_key_toolbar_bottom;
  int pref_key_toolbar_expanded;
  int pref_key_tracking_protection_custom_option;
  int pref_key_tracking_protection_standard_option;
  int pref_key_tracking_protection_strict_default;
  int preference_accessibility_auto_size_2;
  int preference_accessibility_auto_size_summary;
  int preference_accessibility_force_enable_zoom;
  int preference_accessibility_force_enable_zoom_summary;
  int preference_bottom_toolbar;
  int preference_browser_feature_autoplay;
  int preference_enhanced_tracking_protection;
  int preference_enhanced_tracking_protection_custom_cookies_5;
  int preference_enhanced_tracking_protection_custom_description_2;
  int preference_enhanced_tracking_protection_custom_info_button;
  int preference_enhanced_tracking_protection_custom_tracking_content;
  int preference_enhanced_tracking_protection_custom_tracking_content_1;
  int preference_enhanced_tracking_protection_custom_tracking_content_2;
  int preference_enhanced_tracking_protection_standard_description_5;
  int preference_enhanced_tracking_protection_standard_info_button;
  int preference_enhanced_tracking_protection_strict_description_4;
  int preference_enhanced_tracking_protection_strict_info_button;
  int preference_exceptions;
  int preference_expanded_toolbar;
  int preference_feature_desktop_mode_default;
  int preference_gestures_swipe_toolbar_switch_tabs_2;
  int preference_gestures_website_pull_to_refresh;
  int preference_leakcanary;
  int preference_phone_feature_camera;
  int preference_phone_feature_location;
  int preference_phone_feature_microphone;
  int preference_phone_feature_notification;
  int preference_select_app_icon_title;
  int preference_simple_toolbar;
  int preference_summary_delete_browsing_data_on_quit_2;
  int preference_tab_strip_show;
  int preference_usage_data_2;
  int preferences_about;
  int preferences_accessibility;
  int preferences_add_private_browsing_shortcut;
  int preferences_add_search_widget_from_settings;
  int preferences_addresses;
  int preferences_addresses_add_address;
  int preferences_addresses_manage_addresses;
  int preferences_addresses_save_and_autofill_addresses_2;
  int preferences_addresses_save_and_autofill_addresses_summary_2;
  int preferences_ai_controls;
  int preferences_allow_screenshots_in_private_mode;
  int preferences_app_icon;
  int preferences_autofill;
  int preferences_category_content;
  int preferences_category_engines_in_search_menu;
  int preferences_category_permissions;
  int preferences_category_privacy_security;
  int preferences_credit_cards_2;
  int preferences_credit_cards_add_credit_card_2;
  int preferences_credit_cards_manage_saved_cards_2;
  int preferences_credit_cards_save_and_autofill_cards_2;
  int preferences_credit_cards_save_and_autofill_cards_summary_2;
  int preferences_credit_cards_sync_cards_across_devices;
  int preferences_customize;
  int preferences_daily_usage_ping_description;
  int preferences_daily_usage_ping_title;
  int preferences_data_collection;
  int preferences_default_search_engine;
  int preferences_delete_browsing_data;
  int preferences_delete_browsing_data_browsing_history_title;
  int preferences_delete_browsing_data_cached_files;
  int preferences_delete_browsing_data_cached_files_subtitle;
  int preferences_delete_browsing_data_cookies_and_site_data;
  int preferences_delete_browsing_data_cookies_subtitle;
  int preferences_delete_browsing_data_downloads;
  int preferences_delete_browsing_data_on_quit;
  int preferences_delete_browsing_data_site_permissions;
  int preferences_delete_browsing_data_snackbar;
  int preferences_delete_browsing_data_tabs_title_2;
  int preferences_downloads_2;
  int preferences_enable_autocomplete_urls;
  int preferences_extensions;
  int preferences_home_2;
  int preferences_https_only_title;
  int preferences_inactive_tabs_title;
  int preferences_language;
  int preferences_logins_add_login_2;
  int preferences_manage_search_shortcuts_2;
  int preferences_nimbus_experiments;
  int preferences_not_take_survey;
  int preferences_open_links_in_apps;
  int preferences_open_links_in_apps_always;
  int preferences_open_links_in_apps_ask;
  int preferences_open_links_in_apps_never;
  int preferences_opening_screen;
  int preferences_page_summaries;
  int preferences_passwords_autofill2;
  int preferences_passwords_logins_and_passwords_2;
  int preferences_passwords_save_logins_2;
  int preferences_passwords_save_logins_ask_to_save;
  int preferences_passwords_save_logins_never_save;
  int preferences_passwords_saved_logins_2;
  int preferences_passwords_saved_logins_description_empty_text_2;
  int preferences_passwords_saved_logins_password;
  int preferences_passwords_saved_logins_search_2;
  int preferences_passwords_saved_logins_site;
  int preferences_passwords_saved_logins_username;
  int preferences_private_browsing_options;
  int preferences_remote_debugging;
  int preferences_search;
  int preferences_set_as_default_browser;
  int preferences_show_clipboard_suggestions;
  int preferences_show_search_suggestions;
  int preferences_show_search_suggestions_in_private;
  int preferences_sign_in;
  int preferences_site_settings;
  int preferences_sync_debug;
  int preferences_tabs;
  int preferences_take_survey;
  int preferences_tracking_protection_exceptions;
  int preferences_translations;
  int preferences_usage_data_description_1;
  int protection_panel_banner_not_protected_description;
  int protection_panel_banner_not_protected_title;
  int protection_panel_banner_not_secure_description;
  int protection_panel_banner_not_secure_title;
  int protection_panel_banner_protected_no_blocked_trackers_description;
  int protection_panel_banner_protected_title;
  int protection_panel_etp_disabled_no_trackers_blocked;
  int protection_panel_etp_toggle_disabled_description_2;
  int protection_panel_etp_toggle_enabled_description_2;
  int protection_panel_etp_toggle_label;
  int protection_panel_etp_toggle_off;
  int protection_panel_etp_toggle_on;
  int recent_tabs_header_2;
  int recently_closed_empty_message;
  int restart_warning_dialog_body_2;
  int restart_warning_dialog_button_negative;
  int restart_warning_dialog_button_positive_2;
  int restart_warning_dialog_title;
  int saved_login_clear_hostname;
  int saved_login_clear_username;
  int saved_login_copy_username;
  int saved_login_open_site;
  int saved_login_password_required_2;
  int saved_login_reveal_password;
  int saved_login_username_required_2;
  int saved_logins_clear_password;
  int saved_logins_copy_password;
  int saved_logins_menu_dropdown_chevron_icon_content_description_2;
  int saved_logins_sort_strategy_alphabetically;
  int saved_logins_sort_strategy_last_used;
  int search_add_custom_engine_error_missing_template;
  int search_engine_add_custom_search_engine_title;
  int search_engine_delete;
  int search_engine_edit;
  int search_engine_selector_content_description;
  int search_hint;
  int search_settings_menu_item;
  int search_suggestions_onboarding_allow_button;
  int search_suggestions_onboarding_do_not_allow_button;
  int search_suggestions_onboarding_text;
  int search_suggestions_onboarding_title;
  int search_widget_voice;
  int settings;
  int share_device_subheader;
  int share_link_all_apps_subheader;
  int share_link_recent_apps_subheader;
  int share_save_to_pdf;
  int shortcut_name_hint;
  int snackbar_added_to_shortcuts;
  int studies_data_category;
  int studies_title_2;
  int tab_crash_send_report;
  int tab_crash_title_2;
  int tab_group_onboarding_grid_item_description;
  int tab_group_onboarding_item_dismiss_content_description;
  int tab_group_onboarding_item_title;
  int tab_group_onboarding_list_item_description;
  int tab_group_sheet_dismiss_description;
  int tab_manager_close_all_tabs_dialog_confirm;
  int tab_manager_empty_synced_tabs_page_description;
  int tab_manager_empty_synced_tabs_page_header;
  int tab_manager_empty_synced_tabs_page_sign_in_cta;
  int tab_manager_multiselect_menu_item_add_to_tab_group;
  int tab_manager_no_search_results;
  int tab_manager_no_search_results_additional_text;
  int tab_manager_open_tab_search;
  int tab_tray_multi_select_title;
  int tabs_menu_save_to_collection1;
  int technical_data_category;
  int toolbar_customize_shortcut_add_bookmark;
  int toolbar_customize_shortcut_back;
  int toolbar_customize_shortcut_homepage;
  int toolbar_customize_shortcut_new_tab;
  int toolbar_customize_shortcut_none;
  int toolbar_customize_shortcut_share;
  int toolbar_customize_shortcut_translate;
  int top_sites_edit_dialog_url_error;
  int top_sites_menu_settings;
  int top_sites_menu_sponsor_privacy;
  int top_sites_sponsored_label;
  int top_sites_toggle_top_recent_sites_4;
  int translation_option_bottom_sheet_always_translate;
  int translation_option_bottom_sheet_close_content_description;
  int translation_option_bottom_sheet_never_translate_in_language;
  int translation_option_bottom_sheet_never_translate_site;
  int translation_option_bottom_sheet_switch_description;
  int translation_option_bottom_sheet_title_heading;
  int translation_option_bottom_sheet_translation_settings;
  int translation_settings_automatic_never_translate_sites;
  int translation_settings_automatic_translation;
  int translation_settings_download_language;
  int translations_bottom_sheet_negative_button;
  int translations_bottom_sheet_negative_button_restore;
  int translations_bottom_sheet_positive_button;
  int translations_bottom_sheet_title_first_time;
  int translations_bottom_sheet_translate_from;
  int translations_bottom_sheet_translate_to;
  int translations_bottom_sheet_translating_in_progress_content_description;
  int unsubmitted_crash_dialog_negative_button;
  int unsubmitted_crash_dialog_negative_button_2;
  int unsubmitted_crash_dialog_positive_button;
  int unsubmitted_crash_dialog_positive_button_2;
  int unsubmitted_crash_dialog_title_2;
  int unsubmitted_crash_requested_by_devs_dialog_never_button;
  int unsubmitted_crash_requested_by_devs_dialog_title;
  int unsubmitted_crashes_requested_by_devs_dialog_title;
  int usage_data_category;
  int voice_search_content_description;
  int wallpapers_item_name_content_description;
  int webcompat_reporter_cancel;
  int webcompat_reporter_clear_reason_content_description;
  int webcompat_reporter_description_3;
  int webcompat_reporter_etp_checkbox_text_2;
  int webcompat_reporter_label_mandatory_description;
  int webcompat_reporter_label_optional_description;
  int webcompat_reporter_label_url;
  int webcompat_reporter_label_whats_broken_3;
  int webcompat_reporter_learn_more;
  int webcompat_reporter_preview_report;
  int webcompat_reporter_reason_load;
  int widget_picket_description;
}
-keep,allowobfuscation class org.mozilla.fenix.R {
}
-keep enum org.mozilla.fenix.ReleaseChannel {
  public boolean isReleased();
}
-keep,allowobfuscation class org.mozilla.fenix.addons.AddonPermissionsUpdateRequest {
  public java.util.List getDataCollectionPermissions();
  public java.util.List getOptionalPermissions();
  public java.util.List getOriginPermissions();
}
-keep,allowobfuscation class org.mozilla.fenix.addons.AddonsManagementFragment {
}
-keep,allowobfuscation class org.mozilla.fenix.addons.ui.AddonPermissionsScreenKt {
  public static void AddonPermissionsScreen(java.util.List, java.util.List, java.util.List, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, java.lang.String, androidx.compose.ui.Modifier, java.util.List, boolean, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.components.AppStore {
}
-keep,allowobfuscation class org.mozilla.fenix.components.Components {
  public mozilla.components.feature.addons.AddonManager getAddonManager();
  public org.mozilla.fenix.components.AppStore getAppStore();
  public org.mozilla.fenix.components.Core getCore();
  public org.mozilla.fenix.components.NimbusComponents getNimbus();
  public org.mozilla.fenix.utils.Settings getSettings();
  public org.mozilla.fenix.perf.StrictModeManager getStrictMode();
  public org.mozilla.fenix.components.UseCases getUseCases();
}
-keep,allowobfuscation class org.mozilla.fenix.components.Core {
  public mozilla.components.service.sync.autofill.AutofillCreditCardsAddressesStorage getAutofillStorage();
  public mozilla.components.browser.storage.sync.PlacesBookmarksStorage getBookmarksStorage();
  public mozilla.components.concept.fetch.Client getClient();
  public mozilla.components.concept.engine.Engine getEngine();
  public org.mozilla.geckoview.GeckoRuntime getGeckoRuntime();
  public mozilla.components.browser.engine.gecko.permission.GeckoSitePermissionsStorage getGeckoSitePermissionsStorage();
  public mozilla.components.service.sync.logins.SyncableLoginsStorage getPasswordsStorage();
  public org.mozilla.fenix.components.PermissionStorage getPermissionStorage();
  public mozilla.components.feature.top.sites.PinnedSiteStorage getPinnedSiteStorage();
  public kotlin.Lazy getRecentlyClosedTabsStorage();
  public mozilla.components.browser.session.storage.SessionStorage getSessionStorage();
  public mozilla.components.browser.state.store.BrowserStore getStore();
  public org.mozilla.fenix.components.TabCollectionStorage getTabCollectionStorage();
  public org.mozilla.fenix.tabgroups.storage.repository.DefaultTabGroupRepository getTabGroupRepository();
  public org.mozilla.fenix.components.TrackingProtectionPolicyFactory getTrackingProtectionPolicyFactory();
}
-keep,allowobfuscation class org.mozilla.fenix.components.CoreKt {
  public static java.util.List getADDITIONAL_BUNDLED_SEARCH_ENGINE_IDS();
}
-keep,allowobfuscation class org.mozilla.fenix.components.GleanHelperKt {
  public static void initializeGlean(android.content.Context, mozilla.components.support.base.log.logger.Logger, boolean, mozilla.components.concept.fetch.Client);
}
-keep,allowobfuscation class org.mozilla.fenix.components.NimbusComponents {
  public org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createJexlHelper();
  public mozilla.components.service.nimbus.messaging.NimbusMessagingControllerInterface getMessaging();
  public mozilla.components.service.nimbus.NimbusApi getSdk();
}
-keep,allowobfuscation class org.mozilla.fenix.components.PermissionStorage {
  public <init>(android.content.Context, kotlin.coroutines.CoroutineContext, mozilla.components.concept.engine.permission.SitePermissionsStorage, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object deleteAllSitePermissions(kotlin.coroutines.Continuation);
  public java.lang.Object getSitePermissionsPaged(kotlin.coroutines.Continuation);
}
-keep,allowobfuscation class org.mozilla.fenix.components.TabCollectionStorage {
  public java.lang.Object getCollectionsList(kotlin.coroutines.Continuation);
  public java.lang.Object removeCollection(mozilla.components.feature.tab.collections.TabCollection, kotlin.coroutines.Continuation);
  public void setCachedTabCollections(java.util.List);
}
-keep,allowobfuscation class org.mozilla.fenix.components.TelemetryAccountObserver {
  public <init>(android.content.Context, org.mozilla.fenix.utils.Settings);
  public void onAuthenticated(mozilla.components.concept.sync.OAuthAccount, mozilla.components.concept.sync.AuthType);
}
-keep,allowobfuscation class org.mozilla.fenix.components.TrackingProtectionPolicyFactory {
  public static mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy createTrackingProtectionPolicy$default(org.mozilla.fenix.components.TrackingProtectionPolicyFactory, boolean, boolean, int, java.lang.Object);
}
-keep,allowobfuscation class org.mozilla.fenix.components.UseCases {
  public mozilla.components.support.locale.LocaleUseCases getLocaleUseCases();
  public mozilla.components.feature.search.SearchUseCases getSearchUseCases();
  public mozilla.components.feature.session.SettingsUseCases getSettingsUseCases();
  public mozilla.components.feature.tabs.TabsUseCases getTabsUseCases();
  public mozilla.components.feature.top.sites.TopSitesUseCases getTopSitesUseCase();
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$CollectionsChange {
  public <init>(java.util.List);
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$CrashActionWrapper {
  public <init>(mozilla.components.lib.crash.store.CrashAction);
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$MessagingAction$Evaluate {
  public <init>(java.lang.String);
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$MessagingAction {
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$SearchAction$SearchEnded {
  org.mozilla.fenix.components.appstate.AppAction$SearchAction$SearchEnded INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction$SearchAction {
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppAction {
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.AppState {
  public org.mozilla.fenix.messaging.MessagingState getMessaging();
  public org.mozilla.fenix.components.appstate.search.SearchState getSearchState();
  public org.mozilla.fenix.components.appstate.VoiceSearchState getVoiceSearchState();
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.VoiceSearchAction$VoiceInputRequestCleared {
  org.mozilla.fenix.components.appstate.VoiceSearchAction$VoiceInputRequestCleared INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.VoiceSearchAction {
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.VoiceSearchState {
  public java.lang.String getVoiceInputResult();
  public boolean isRequestingVoiceInput();
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.search.SearchState {
  public org.mozilla.fenix.components.appstate.search.SelectedSearchEngine getSelectedSearchEngine();
  public boolean isSearchActive();
}
-keep,allowobfuscation class org.mozilla.fenix.components.appstate.search.SelectedSearchEngine {
  public mozilla.components.browser.state.search.SearchEngine getSearchEngine();
}
-keep,allowobfuscation class org.mozilla.fenix.components.metrics.fonts.FontMetric {
  public long getCreated();
  public java.lang.String getFamily();
  public java.lang.String getFontVersion();
  public java.lang.String getFullName();
  public java.lang.String getHash();
  public long getModified();
  public int getRevision();
  public java.lang.String getSubFamily();
  public java.lang.String getUniqueSubFamily();
}
-keep,allowobfuscation class org.mozilla.fenix.components.metrics.fonts.FontParser {
  public org.mozilla.fenix.components.metrics.fonts.FontMetric parse(java.lang.String, java.io.InputStream);
  org.mozilla.fenix.components.metrics.fonts.FontParser INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.compose.list.ListItemKt {
  public static void IconListItem-XfM40Ao(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.Modifier, androidx.compose.material3.ListItemColors, int, java.lang.String, int, boolean, float, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, long, androidx.compose.ui.graphics.painter.Painter, java.lang.String, boolean, boolean, long, androidx.compose.foundation.layout.PaddingValues, androidx.compose.ui.graphics.painter.Painter, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int, int);
}
-keep,allowobfuscation interface org.mozilla.fenix.crashes.CrashActionDispatcher {
  public void dispatchCrashAction(mozilla.components.lib.crash.store.CrashAction);
}
-keep,allowobfuscation class org.mozilla.fenix.crashes.SettingsCrashReportCacheKt {
  public static mozilla.components.lib.crash.store.CrashReportOption crashReportOption(org.mozilla.fenix.utils.Settings);
}
-keep,allowobfuscation class org.mozilla.fenix.crashes.UnsubmittedCrashDialog$Companion {
  public org.mozilla.fenix.crashes.UnsubmittedCrashDialog create(java.util.List);
}
-keep,allowobfuscation class org.mozilla.fenix.crashes.UnsubmittedCrashDialog {
  public void setDispatcher$app(org.mozilla.fenix.crashes.CrashActionDispatcher);
  org.mozilla.fenix.crashes.UnsubmittedCrashDialog$Companion Companion;
}
-keep,allowobfuscation class org.mozilla.fenix.customtabs.ExternalAppBrowserActivity {
}
-keep,allowobfuscation class org.mozilla.fenix.debugsettings.data.DefaultDebugSettingsRepository {
  public <init>(android.content.Context, androidx.datastore.core.DataStore, kotlinx.coroutines.CoroutineScope, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public void setDebugDrawerEnabled(boolean);
}
-keep,allowobfuscation class org.mozilla.fenix.debugsettings.tabprocesstools.TabProcessToolsKt {
  public static void TabProcessTools(kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.DownloadsScreenKt {
  public static void DownloadsScreen(org.mozilla.fenix.downloads.listscreen.store.DownloadUIStore, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction$AddPendingDeletionSet {
  public boolean getRemoveFromDisk();
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction$DismissDeleteDialog {
}
-keep,allowobfuscation interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction {
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Companion {
  public org.mozilla.fenix.downloads.listscreen.store.DownloadUIState getINITIAL();
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState$DeleteConfirmation {
  public <init>(java.util.Set);
}
-keep,allowobfuscation interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState {
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Mode {
}
-keep,allowobfuscation interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$SnackbarState {
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState {
  public static org.mozilla.fenix.downloads.listscreen.store.DownloadUIState copy$default(org.mozilla.fenix.downloads.listscreen.store.DownloadUIState, java.util.List, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Mode, java.util.Set, java.util.Set, java.lang.String, org.mozilla.fenix.downloads.listscreen.store.FileItem, org.mozilla.fenix.downloads.listscreen.store.RenameFileError, boolean, org.mozilla.fenix.downloads.listscreen.store.FileItem, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$SnackbarState, boolean, org.mozilla.fenix.downloads.listscreen.store.FileItem$ContentTypeFilter, int, java.lang.Object);
  org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Companion Companion;
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.DownloadUIStore {
  public <init>(org.mozilla.fenix.downloads.listscreen.store.DownloadUIState, java.util.List);
  int $stable;
}
-keep enum org.mozilla.fenix.downloads.listscreen.store.FileItem$ContentTypeFilter {
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.FileItem$Status$Completed {
  org.mozilla.fenix.downloads.listscreen.store.FileItem$Status$Completed INSTANCE;
}
-keep,allowobfuscation interface org.mozilla.fenix.downloads.listscreen.store.FileItem$Status {
}
-keep,allowobfuscation class org.mozilla.fenix.downloads.listscreen.store.FileItem {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, org.mozilla.fenix.downloads.listscreen.store.FileItem$Status, org.mozilla.fenix.downloads.listscreen.store.TimeCategory, java.lang.String);
}
-keep,allowobfuscation interface org.mozilla.fenix.downloads.listscreen.store.RenameFileError {
}
-keep enum org.mozilla.fenix.downloads.listscreen.store.TimeCategory {
  org.mozilla.fenix.downloads.listscreen.store.TimeCategory TODAY;
}
-keep,allowobfuscation class org.mozilla.fenix.ext.ConnectivityManagerKt {
  public static boolean isOnline$default(android.net.ConnectivityManager, android.net.Network, int, java.lang.Object);
}
-keep,allowobfuscation class org.mozilla.fenix.ext.ContextKt {
  public static org.mozilla.fenix.components.Components getComponents(android.content.Context);
  public static java.lang.String getPreferenceKey(android.content.Context, int);
}
-keep,allowobfuscation class org.mozilla.fenix.gecko.GeckoProvider {
  public org.mozilla.geckoview.GeckoRuntimeSettings createRuntimeSettings$app(android.content.Context, mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy);
  public org.mozilla.geckoview.GeckoRuntime getOrCreateRuntime(android.content.Context, kotlin.Lazy, kotlin.Lazy, mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy, kotlinx.coroutines.CoroutineScope);
  org.mozilla.fenix.gecko.GeckoProvider INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.messaging.CustomAttributeProvider {
  public org.json.JSONObject getCustomAttributes(android.content.Context);
  org.mozilla.fenix.messaging.CustomAttributeProvider INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.messaging.MessagingState {
  public java.util.List getMessages();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.CustomizationToolbarData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, int, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.fenix.nimbus.ToolbarType, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.DefaultBottomToolbar {
  public boolean getEnabled();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.DefaultExpandedToolbar {
  public boolean getEnabled();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.ExtraCardData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.List, org.mozilla.fenix.nimbus.MarketingData, org.mozilla.fenix.nimbus.TermsOfServiceData, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.FxNimbus$Features {
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getDefaultBottomToolbar();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getDefaultExpandedToolbar();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getHomescreen();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getIpProtection();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getJunoOnboarding();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getSuggestShippedDomains();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getTranslations();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.FxNimbus {
  public org.mozilla.fenix.nimbus.FxNimbus$Features getFeatures();
  org.mozilla.fenix.nimbus.FxNimbus INSTANCE;
}
-keep enum org.mozilla.fenix.nimbus.HomeScreenSection {
  org.mozilla.fenix.nimbus.HomeScreenSection JUMP_BACK_IN;
  org.mozilla.fenix.nimbus.HomeScreenSection POCKET;
  org.mozilla.fenix.nimbus.HomeScreenSection POCKET_SPONSORED_STORIES;
  org.mozilla.fenix.nimbus.HomeScreenSection TOP_SITES;
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.Homescreen {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.Map, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.IpProtection {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.List, int, boolean, java.lang.String, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.JunoOnboarding {
  public java.util.Map getConditions();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.MarketingData {
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.OnboardingCardData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.fenix.nimbus.OnboardingCardType, java.util.List, boolean, org.mozilla.fenix.nimbus.ExtraCardData, int, int, java.util.List, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum org.mozilla.fenix.nimbus.OnboardingCardType {
  org.mozilla.fenix.nimbus.OnboardingCardType ADD_SEARCH_WIDGET;
  org.mozilla.fenix.nimbus.OnboardingCardType DEFAULT_BROWSER;
  org.mozilla.fenix.nimbus.OnboardingCardType NOTIFICATION_PERMISSION;
  org.mozilla.fenix.nimbus.OnboardingCardType SYNC_SIGN_IN;
  org.mozilla.fenix.nimbus.OnboardingCardType TERMS_OF_SERVICE;
  org.mozilla.fenix.nimbus.OnboardingCardType TOOLBAR_PLACEMENT;
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.SuggestShippedDomains {
  public boolean getEnabled();
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.TermsOfServiceData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum org.mozilla.fenix.nimbus.ToolbarType {
  org.mozilla.fenix.nimbus.ToolbarType TOOLBAR_TOP;
}
-keep,allowobfuscation class org.mozilla.fenix.nimbus.Translations {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, boolean, boolean, boolean, boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.FenixOnboarding {
  public <init>(android.content.Context);
  public void finish();
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.view.OnboardingMapperKt {
  public static java.util.List toPageUiData(java.util.Collection, boolean, boolean, boolean, boolean, java.util.Map, kotlin.jvm.functions.Function1);
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.view.OnboardingMarketingData {
}
-keep enum org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type {
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type ADD_SEARCH_WIDGET;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type DEFAULT_BROWSER;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type NOTIFICATION_PERMISSION;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type SYNC_SIGN_IN;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type TERMS_OF_SERVICE;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type TOOLBAR_PLACEMENT;
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.view.OnboardingPageUiData {
  public <init>(org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List, org.mozilla.fenix.onboarding.view.OnboardingTermsOfService, org.mozilla.fenix.onboarding.view.OnboardingMarketingData, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.view.OnboardingTermsOfService {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.onboarding.view.ToolbarOption {
  public <init>(org.mozilla.fenix.onboarding.view.ToolbarOptionType, int, java.lang.String);
}
-keep enum org.mozilla.fenix.onboarding.view.ToolbarOptionType {
  org.mozilla.fenix.onboarding.view.ToolbarOptionType TOOLBAR_TOP;
}
-keep,allowobfuscation class org.mozilla.fenix.perf.ApplicationExitInfoMetrics {
  public java.util.List getTRACKED_REASONS$app();
  public void recordProcessExits(android.content.Context);
  org.mozilla.fenix.perf.ApplicationExitInfoMetrics INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.perf.ProcessExitRecord {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.perf.RunBlockingCounter {
  public java.util.concurrent.atomic.AtomicInteger getCount();
  org.mozilla.fenix.perf.RunBlockingCounter INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.perf.StrictModeManager {
  public java.lang.Object allowViolation(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0);
  public java.util.concurrent.atomic.AtomicLong getSuppressionCount();
}
-keep enum org.mozilla.fenix.settings.PhoneFeature {
  public mozilla.components.feature.sitepermissions.SitePermissionsRules$Action getAction(org.mozilla.fenix.utils.Settings);
  org.mozilla.fenix.settings.PhoneFeature LOCATION;
}
-keep enum org.mozilla.fenix.settings.SupportUtils$SumoTopic {
  public java.lang.String getTopicStr$app();
  org.mozilla.fenix.settings.SupportUtils$SumoTopic CUSTOM_SEARCH_ENGINES;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic HELP;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic SPONSOR_PRIVACY;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic TOTAL_COOKIE_PROTECTION;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic YOUR_RIGHTS;
}
-keep,allowobfuscation class org.mozilla.fenix.settings.SupportUtils {
  public static java.lang.String getSumoURLForTopic$default(org.mozilla.fenix.settings.SupportUtils, android.content.Context, org.mozilla.fenix.settings.SupportUtils$SumoTopic, java.util.Locale, boolean, int, java.lang.Object);
  org.mozilla.fenix.settings.SupportUtils INSTANCE;
}
-keep enum org.mozilla.fenix.settings.deletebrowsingdata.DeleteBrowsingDataOnQuitType {
  public static kotlin.enums.EnumEntries getEntries();
  public java.lang.String getPreferenceKey(android.content.Context);
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.DeleteTabGroupConfirmationDialogKt {
  public static void DeleteTabGroupConfirmationDialog(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.TabGroupCardKt {
  public static void TabGroupCard(org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemClickHandler, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, androidx.compose.ui.semantics.CollectionItemInfo, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.TabGroupRowKt {
  public static void TabGroupRow-yZUFuyM(org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Color, boolean, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.storage.data.TabGroupData {
  public java.util.Map getTabGroupAssignments();
  public java.util.List getTabGroups();
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase$Companion {
  public androidx.room.migration.Migration getMIGRATION_1_2();
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase {
  org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase$Companion Companion;
}
-keep,allowobfuscation class org.mozilla.fenix.tabgroups.storage.repository.DefaultTabGroupRepository {
  public java.lang.Object deleteAllTabGroupData(kotlin.coroutines.Continuation);
  public kotlinx.coroutines.flow.Flow getTabGroupDataFlow();
}
-keep,allowobfuscation interface org.mozilla.fenix.tabstray.TabManagementFeatureHelper {
  public boolean getOpeningAnimationEnabled();
  public boolean getTabGroupsDragAndDropEnabled();
  public boolean getTabGroupsEnabled();
  public boolean getTabGroupsLiveReorderEnabled();
  public boolean getTabGroupsOnboardingEnabled();
  public boolean getTabGroupsStripEnabled();
  public boolean getUngroupTabGroupEnabled();
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.TabManagementFeatureHelperKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalTabManagementFeatureHelper();
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState {
  public <init>(boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.controller.NoOpTabInteractionHandler {
  org.mozilla.fenix.tabstray.controller.NoOpTabInteractionHandler INSTANCE;
}
-keep,allowobfuscation interface org.mozilla.fenix.tabstray.controller.TabInteractionHandler {
}
-keep enum org.mozilla.fenix.tabstray.data.TabGroupTheme {
  org.mozilla.fenix.tabstray.data.TabGroupTheme Yellow;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.data.TabGroupTheme, java.util.List, boolean, long, boolean, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.String getId();
}
-keep,allowobfuscation interface org.mozilla.fenix.tabstray.data.TabsTrayItem {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.data.TabsTrayItemKt {
  public static org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab createTab$default(java.lang.String, java.lang.String, java.lang.String, boolean, boolean, long, boolean, boolean, int, java.lang.Object);
  public static org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup createTabGroup$default(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.data.TabGroupTheme, java.util.List, boolean, long, boolean, int, int, java.lang.Object);
}
-keep,allowobfuscation interface org.mozilla.fenix.tabstray.redux.action.TabsTrayAction {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.middleware.TabSearchNavigationMiddleware {
  public <init>(kotlin.jvm.functions.Function1);
}
-keep enum org.mozilla.fenix.tabstray.redux.state.Page {
  org.mozilla.fenix.tabstray.redux.state.Page NormalTabs;
  org.mozilla.fenix.tabstray.redux.state.Page PrivateTabs;
  org.mozilla.fenix.tabstray.redux.state.Page SyncedTabs;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabGroupFormState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabSearchState {
  public <init>(java.lang.String, java.util.List);
}
-keep enum org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$InactiveTabsState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode$Normal {
  org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode$Normal INSTANCE;
}
-keep,allowobfuscation interface org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$NormalTabsState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$PrivateBrowsingState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$SyncState {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState {
  public <init>(java.util.List, org.mozilla.fenix.tabstray.redux.state.TabGroupFormState, boolean, int, boolean, boolean, boolean, boolean, java.lang.String, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabsTrayConfig {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.state.TabsTrayState {
  public <init>(org.mozilla.fenix.tabstray.redux.state.Page, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode, java.lang.String, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$NormalTabsState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$InactiveTabsState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$PrivateBrowsingState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$SyncState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabsTrayConfig, org.mozilla.fenix.tabstray.redux.state.TabSearchState, java.util.List, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.List getBackStack();
  public org.mozilla.fenix.tabstray.redux.state.TabSearchState getTabSearchState();
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.redux.store.TabsTrayStore {
  public <init>(org.mozilla.fenix.tabstray.redux.state.TabsTrayState, java.util.List);
  public <init>(org.mozilla.fenix.tabstray.redux.state.TabsTrayState, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$DeviceSection {
  public <init>(java.lang.String, java.util.List);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action$None {
  org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action$None INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action, mozilla.components.browser.storage.sync.Tab);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem {
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.syncedtabs.SyncedTabsListKt {
  public static void SyncedTabsList(java.util.List, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, java.util.List, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabGridTabItemKt {
  public static void TabGridTabItem(org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab, androidx.compose.material3.SwipeToDismissBoxState, boolean, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, int, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.semantics.CollectionItemInfo, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabGroupOnboardingItemKt {
  public static void TabGroupOnboardingGridItem(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int);
  public static void TabGroupOnboardingListItem(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabItemAnimationsKt {
  public static androidx.compose.ui.semantics.SemanticsPropertyKey getAlphaKey();
  public static androidx.compose.ui.semantics.SemanticsPropertyKey getScaleKey();
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabListTabItemKt {
  public static void TabListTabItem(org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemClickHandler {
  public <init>(boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState {
  public <init>(boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabpage.TabGroupListKt {
  public static void TabGroupList(java.util.List, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabpage.TabGroupsPageKt {
  public static void TabGroupsPage(org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabpage.TabLayoutKt {
  public static void TabLayout-WoebZNQ(java.util.List, boolean, boolean, boolean, boolean, int, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode, boolean, org.mozilla.fenix.tabstray.controller.TabInteractionHandler, androidx.compose.ui.Modifier, boolean, java.lang.Integer, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, float, kotlin.jvm.functions.Function0, java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int, int, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.tabsearch.TabSearchScreenKt {
  public static void TabSearchScreen(org.mozilla.fenix.tabstray.redux.state.TabSearchState, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.tabstray.ui.theme.TabManagerThemeProvider {
  public <init>(org.mozilla.fenix.tabstray.redux.state.Page);
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.theme.DefaultThemeProvider {
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
  org.mozilla.fenix.theme.DefaultThemeProvider INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.theme.FirefoxTheme {
  public mozilla.components.compose.base.theme.layout.AcornLayout getLayout(androidx.compose.runtime.Composer, int);
  org.mozilla.fenix.theme.FirefoxTheme INSTANCE;
}
-keep,allowobfuscation class org.mozilla.fenix.theme.FirefoxThemeKt {
  public static void FirefoxTheme(mozilla.components.compose.base.theme.Theme, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keep,allowobfuscation interface org.mozilla.fenix.theme.ThemeProvider {
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.theme.ThemeProviderKt {
  public static org.mozilla.fenix.theme.ThemeProvider getThemeProvider(androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.utils.Settings {
  public long getCrashPullDontShowBefore();
  public long getCrashReportDeferredUntil();
  public boolean getDeleteSitePermissions();
  public boolean getEnableFxSuggest();
  public boolean getEnableHomepageAsNewTab();
  public boolean getEnableHomepageTrendingRecentSearch();
  public float getFontSizeFactor();
  public boolean getHasAcceptedTermsOfService();
  public boolean getHasShownTabSwipeCFR();
  public boolean getHistoryMetadataUIFeature();
  public boolean getMicrosurveyFeatureEnabled();
  public boolean getNativeShareSheetEnabled();
  public boolean getOnboardingFeatureEnabled();
  public java.lang.String getOpenLinksInExternalApp();
  public android.content.SharedPreferences getPreferences();
  public boolean getPrivateModeAndStoriesEntryPointEnabled();
  public boolean getShakeToSummarizeFeatureFlagEnabled();
  public boolean getShakeToSummarizeToolbarCfrShown();
  public boolean getShouldShowOpenInAppBanner();
  public boolean getShouldUseAutoSize();
  public boolean getShouldUseBottomToolbar();
  public boolean getShouldUseExpandedToolbar();
  public boolean getShouldUseHttpsOnly();
  public boolean getShowAddressBarInFocusMode();
  public boolean getShowBookmarksHomeFeature();
  public boolean getShowPocketRecommendationsFeature();
  public boolean getShowRecentTabsFeature();
  public boolean getShowSecretDebugMenuThisSession();
  public boolean getShowVoiceSearchInDisplayToolbar();
  public boolean getShowWallpaperOnboarding();
  public boolean getTabManagerOpeningAnimationEnabled();
  public boolean getUseCustomTrackingProtection();
  public boolean getUseStrictTrackingProtection();
  public boolean isTabStripEnabled();
  public boolean isTelemetryEnabled();
  public void setCrashPullDontShowBefore(long);
  public void setCrashReportChoice(java.lang.String);
  public void setCrashReportDeferredUntil(long);
  public void setDeleteSitePermissions(boolean);
  public void setEnableHomepageAsNewTab(boolean);
  public void setEnableHomepageTrendingRecentSearch(boolean);
  public void setGoogleLensIntegrationEnabled(boolean);
  public void setGoogleLensIntegrationUserEnabled(boolean);
  public void setGridTabView(boolean);
  public void setHasAcceptedGoogleLensFirstRun(boolean);
  public void setHasAcceptedTermsOfService(boolean);
  public void setHasShownTabSwipeCFR(boolean);
  public void setHistoryMetadataUIFeature(boolean);
  public void setMicrosurveyFeatureEnabled(boolean);
  public void setNativeShareSheetEnabled(boolean);
  public void setOnboardingFeatureEnabled(boolean);
  public void setOpenLinksInExternalApp(java.lang.String);
  public void setPrivateModeAndStoriesEntryPointEnabled(boolean);
  public void setSetCameraPermissionNeededState(boolean);
  public void setShakeToSummarizeFeatureFlagEnabled(boolean);
  public void setShakeToSummarizeToolbarCfrShown(boolean);
  public void setShouldShowOpenInAppBanner(boolean);
  public void setShouldShowSearchSuggestionsInPrivate(boolean);
  public void setShouldUseBottomToolbar(boolean);
  public void setShouldUseExpandedToolbar(boolean);
  public void setShowAddressBarInFocusMode(boolean);
  public void setShowBookmarksHomeFeature(boolean);
  public void setShowPocketRecommendationsFeature(boolean);
  public void setShowRecentTabsFeature(boolean);
  public void setShowSecretDebugMenuThisSession(boolean);
  public void setShowVoiceSearchInDisplayToolbar(boolean);
  public void setShowWallpaperOnboarding(boolean);
  public void setSitePermissionsPhoneFeatureAction(org.mozilla.fenix.settings.PhoneFeature, mozilla.components.feature.sitepermissions.SitePermissionsRules$Action);
  public void setStrictETP();
  public void setTabGroupsOnboardingEnabled(boolean);
  public void setTabManagerOpeningAnimationEnabled(boolean);
  public void setTabStripEnabled(boolean);
  public void setWaybackMachineEnabled(boolean);
}
-keep,allowobfuscation class org.mozilla.fenix.utils.TransitionsAnimationKt {
  public static androidx.compose.animation.ExitTransition exitMenu$default(int, androidx.compose.animation.core.Easing, int, java.lang.Object);
}
-keep enum org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason {
  public int getDisplayStringId();
  org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason Media;
  org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason Slow;
}
-keep,allowobfuscation class org.mozilla.fenix.webcompat.store.WebCompatReporterState {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason, boolean, java.lang.String, java.lang.String, boolean, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason getReason();
}
-keep,allowobfuscation class org.mozilla.fenix.webcompat.store.WebCompatReporterStore {
  public <init>(org.mozilla.fenix.webcompat.store.WebCompatReporterState, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keep,allowobfuscation class org.mozilla.fenix.webcompat.ui.EditUrlConfirmationDialogKt {
  public static void EditUrlConfirmationDialog(java.lang.String, kotlin.jvm.functions.Function1, boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.fenix.webcompat.ui.WebCompatReporterKt {
  public static void WebCompatReporter(org.mozilla.fenix.webcompat.store.WebCompatReporterStore, androidx.compose.runtime.Composer, int);
}
-keep,allowobfuscation class org.mozilla.gecko.util.ThreadUtils {
  public static void runOnUiThread(java.lang.Runnable);
}
-keep,allowobfuscation interface org.mozilla.geckoview.CrashPullController$Delegate {
  public void onCrashPull(java.lang.String[]);
}
-keep,allowobfuscation class org.mozilla.geckoview.CrashPullController {
}
-keep,allowobfuscation class org.mozilla.geckoview.GeckoResult {
}
-keep,allowobfuscation class org.mozilla.geckoview.GeckoRuntime {
  public org.mozilla.geckoview.CrashPullController$Delegate getCrashPullDelegate();
  public org.mozilla.geckoview.WebExtensionController getWebExtensionController();
}
-keep,allowobfuscation class org.mozilla.geckoview.GeckoRuntimeSettings {
  public java.lang.Boolean getExtensionsProcessEnabled();
}
-keep,allowobfuscation class org.mozilla.geckoview.WebExtension {
}
-keep,allowobfuscation class org.mozilla.geckoview.WebExtensionController {
  public org.mozilla.geckoview.GeckoResult ensureBuiltIn(java.lang.String, java.lang.String);
}

# Member names for the same references, see pinMemberNames().
-keepclassmembernames class androidx.activity.ComponentActivity {
}
-keepclassmembernames class androidx.activity.compose.ComponentActivityKt {
  public static void setContent(androidx.activity.ComponentActivity, androidx.compose.runtime.CompositionContext, kotlin.jvm.functions.Function2);
}
-keepclassmembernames @interface androidx.annotation.AnyThread {
}
-keepclassmembernames @interface androidx.annotation.CallSuper {
}
-keepclassmembernames @interface androidx.annotation.CheckResult {
}
-keepclassmembernames @interface androidx.annotation.ChecksSdkIntAtLeast {
  public int api();
  public int extension();
}
-keepclassmembernames @interface androidx.annotation.DoNotInline {
}
-keepclassmembernames @interface androidx.annotation.FloatRange {
  public double from();
  public boolean fromInclusive();
  public double to();
}
-keepclassmembernames @interface androidx.annotation.GuardedBy {
  public java.lang.String value();
}
-keepclassmembernames @interface androidx.annotation.IntRange {
  public long from();
}
-keepclassmembernames @interface androidx.annotation.NonNull {
}
-keepclassmembernames @interface androidx.annotation.Nullable {
}
-keepclassmembernames @interface androidx.annotation.Px {
}
-keepclassmembernames @interface androidx.annotation.RequiresApi {
  public int value();
}
-keep enum androidx.annotation.RestrictTo$Scope {
  androidx.annotation.RestrictTo$Scope LIBRARY;
  androidx.annotation.RestrictTo$Scope LIBRARY_GROUP;
}
-keepclassmembernames @interface androidx.annotation.RestrictTo {
  public androidx.annotation.RestrictTo$Scope[] value();
}
-keepclassmembernames @interface androidx.annotation.StringRes {
}
-keepclassmembernames @interface androidx.annotation.VisibleForTesting {
}
-keepclassmembernames @interface androidx.annotation.WorkerThread {
}
-keepclassmembernames class androidx.appcompat.R$id {
  int search_close_btn;
}
-keepclassmembernames class androidx.appcompat.R {
}
-keepclassmembernames class androidx.appcompat.app.AppCompatActivity {
  public android.view.View findViewById(int);
  public android.content.res.Resources getResources();
}
-keepclassmembernames class androidx.appcompat.app.AppCompatDelegate {
  public static void setApplicationLocales(androidx.core.os.LocaleListCompat);
}
-keepclassmembernames class androidx.arch.core.executor.ArchTaskExecutor {
  public static java.util.concurrent.Executor getIOThreadExecutor();
}
-keepclassmembernames class androidx.browser.customtabs.CustomTabsIntent$Builder {
  public <init>();
  public androidx.browser.customtabs.CustomTabsIntent$Builder addMenuItem(java.lang.String, android.app.PendingIntent);
  public androidx.browser.customtabs.CustomTabsIntent build();
  public androidx.browser.customtabs.CustomTabsIntent$Builder setActionButton(android.graphics.Bitmap, java.lang.String, android.app.PendingIntent, boolean);
  public androidx.browser.customtabs.CustomTabsIntent$Builder setShareState(int);
}
-keepclassmembernames class androidx.browser.customtabs.CustomTabsIntent {
  android.content.Intent intent;
}
-keepclassmembernames class androidx.collection.IntObjectMapKt {
  public static androidx.collection.MutableIntObjectMap mutableIntObjectMapOf();
}
-keepclassmembernames class androidx.collection.IntSet {
  public boolean contains(int);
}
-keepclassmembernames class androidx.collection.IntSetKt {
  public static androidx.collection.IntSet intSetOf(int[]);
}
-keepclassmembernames class androidx.collection.MutableIntObjectMap {
  public java.lang.Object remove(int);
  public void set(int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.animation.ExitTransition {
}
-keepclassmembernames interface androidx.compose.animation.core.Easing {
}
-keepclassmembernames class androidx.compose.foundation.BackgroundKt {
  public static androidx.compose.ui.Modifier background-bw27NRU$default(androidx.compose.ui.Modifier, long, androidx.compose.ui.graphics.Shape, int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.foundation.BorderStroke {
}
-keepclassmembernames interface androidx.compose.foundation.OverscrollEffect {
}
-keepclassmembernames interface androidx.compose.foundation.gestures.FlingBehavior {
}
-keepclassmembernames interface androidx.compose.foundation.layout.Arrangement$Vertical {
}
-keepclassmembernames class androidx.compose.foundation.layout.Arrangement {
  public androidx.compose.foundation.layout.Arrangement$Vertical getTop();
  androidx.compose.foundation.layout.Arrangement INSTANCE;
}
-keepclassmembernames class androidx.compose.foundation.layout.ColumnKt {
  public static androidx.compose.ui.layout.MeasurePolicy columnMeasurePolicy(androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames interface androidx.compose.foundation.layout.ColumnScope {
}
-keepclassmembernames class androidx.compose.foundation.layout.ColumnScopeInstance {
  androidx.compose.foundation.layout.ColumnScopeInstance INSTANCE;
}
-keepclassmembernames class androidx.compose.foundation.layout.PaddingKt {
  public static androidx.compose.ui.Modifier padding-3ABfNKs(androidx.compose.ui.Modifier, float);
}
-keepclassmembernames interface androidx.compose.foundation.layout.PaddingValues {
}
-keepclassmembernames class androidx.compose.foundation.layout.SizeKt {
  public static androidx.compose.ui.Modifier fillMaxWidth$default(androidx.compose.ui.Modifier, float, int, java.lang.Object);
  public static androidx.compose.ui.Modifier height-3ABfNKs(androidx.compose.ui.Modifier, float);
}
-keepclassmembernames class androidx.compose.foundation.lazy.LazyDslKt {
  public static void LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.OverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames interface androidx.compose.foundation.lazy.LazyItemScope {
}
-keepclassmembernames interface androidx.compose.foundation.lazy.LazyListScope {
  public static void items$default(androidx.compose.foundation.lazy.LazyListScope, int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function4, int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.foundation.lazy.LazyListState {
}
-keepclassmembernames interface androidx.compose.foundation.text.TextAutoSize {
}
-keepclassmembernames class androidx.compose.material3.ColorScheme {
  public long getSurfaceBright-0d7_KjU();
}
-keepclassmembernames class androidx.compose.material3.ListItemColors {
}
-keepclassmembernames class androidx.compose.material3.MaterialTheme {
  public androidx.compose.material3.ColorScheme getColorScheme(androidx.compose.runtime.Composer, int);
  androidx.compose.material3.MaterialTheme INSTANCE;
}
-keepclassmembernames class androidx.compose.material3.SurfaceKt {
  public static void Surface-T9BRK9s(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, float, float, androidx.compose.foundation.BorderStroke, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class androidx.compose.material3.SwipeToDismissBoxKt {
  public static androidx.compose.material3.SwipeToDismissBoxState rememberSwipeToDismissBoxState(androidx.compose.material3.SwipeToDismissBoxValue, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class androidx.compose.material3.SwipeToDismissBoxState {
  int $stable;
}
-keep enum androidx.compose.material3.SwipeToDismissBoxValue {
}
-keepclassmembernames class androidx.compose.material3.TextKt {
  public static void Text-Nvy7gAk(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.foundation.text.TextAutoSize, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int);
}
-keepclassmembernames interface androidx.compose.runtime.Applier {
}
-keepclassmembernames @interface androidx.compose.runtime.Composable {
}
-keepclassmembernames @interface androidx.compose.runtime.ComposableInferredTarget {
  public java.lang.String scheme();
}
-keepclassmembernames @interface androidx.compose.runtime.ComposableTarget {
  public java.lang.String applier();
}
-keepclassmembernames class androidx.compose.runtime.ComposablesKt {
  public static long getCurrentCompositeKeyHashCode(androidx.compose.runtime.Composer, int);
  public static void invalidApplier();
}
-keepclassmembernames class androidx.compose.runtime.Composer$Companion {
  public java.lang.Object getEmpty();
}
-keepclassmembernames interface androidx.compose.runtime.Composer {
  public boolean changed(int);
  public boolean changed(long);
  public boolean changed(java.lang.Object);
  public boolean changed(boolean);
  public boolean changedInstance(java.lang.Object);
  public java.lang.Object consume(androidx.compose.runtime.CompositionLocal);
  public void createNode(kotlin.jvm.functions.Function0);
  public void endDefaults();
  public void endNode();
  public void endReplaceGroup();
  public androidx.compose.runtime.ScopeUpdateScope endRestartGroup();
  public androidx.compose.runtime.Applier getApplier();
  public androidx.compose.runtime.CompositionLocalMap getCurrentCompositionLocalMap();
  public boolean getDefaultsInvalid();
  public boolean getInserting();
  public java.lang.Object rememberedValue();
  public boolean shouldExecute(boolean, int);
  public void skipToGroupEnd();
  public void startDefaults();
  public void startReplaceGroup(int);
  public androidx.compose.runtime.Composer startRestartGroup(int);
  public void startReusableNode();
  public void updateRememberedValue(java.lang.Object);
  public void useNode();
  androidx.compose.runtime.Composer$Companion Companion;
}
-keepclassmembernames class androidx.compose.runtime.ComposerKt {
  public static boolean isTraceInProgress();
  public static void sourceInformation(androidx.compose.runtime.Composer, java.lang.String);
  public static void sourceInformationMarkerEnd(androidx.compose.runtime.Composer);
  public static void sourceInformationMarkerStart(androidx.compose.runtime.Composer, int, java.lang.String);
  public static void traceEventEnd();
  public static void traceEventStart(int, int, int, java.lang.String);
}
-keepclassmembernames class androidx.compose.runtime.CompositionContext {
}
-keepclassmembernames class androidx.compose.runtime.CompositionLocal {
}
-keepclassmembernames class androidx.compose.runtime.CompositionLocalKt {
  public static void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
  public static void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[], kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames interface androidx.compose.runtime.CompositionLocalMap {
}
-keepclassmembernames interface androidx.compose.runtime.DisposableEffectResult {
  public void dispose();
}
-keepclassmembernames class androidx.compose.runtime.DisposableEffectScope$onDispose$1 {
}
-keepclassmembernames class androidx.compose.runtime.DisposableEffectScope {
}
-keepclassmembernames class androidx.compose.runtime.EffectsKt {
  public static void DisposableEffect(java.lang.Object, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class androidx.compose.runtime.MonotonicFrameClock$DefaultImpls {
  public static java.lang.Object fold(androidx.compose.runtime.MonotonicFrameClock, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface androidx.compose.runtime.MonotonicFrameClock {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
  public java.lang.Object withFrameNanos(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation);
}
-keepclassmembernames interface androidx.compose.runtime.MutableState {
  public void setValue(java.lang.Object);
}
-keepclassmembernames class androidx.compose.runtime.ProvidableCompositionLocal {
  public androidx.compose.runtime.ProvidedValue provides(java.lang.Object);
}
-keepclassmembernames class androidx.compose.runtime.ProvidedValue {
  int $stable;
}
-keepclassmembernames class androidx.compose.runtime.RecomposeScopeImplKt {
  public static int updateChangedFlags(int);
}
-keepclassmembernames class androidx.compose.runtime.Recomposer {
  public <init>(kotlin.coroutines.CoroutineContext);
  public void cancel();
  public kotlin.coroutines.CoroutineContext getEffectCoroutineContext();
  public boolean getHasPendingWork();
  public java.lang.Object runRecomposeAndApplyChanges(kotlin.coroutines.Continuation);
}
-keepclassmembernames interface androidx.compose.runtime.ScopeUpdateScope {
  public void updateScope(kotlin.jvm.functions.Function2);
}
-keepclassmembernames interface androidx.compose.runtime.SnapshotMutationPolicy {
}
-keepclassmembernames class androidx.compose.runtime.SnapshotStateKt {
  public static androidx.compose.runtime.State collectAsState(kotlinx.coroutines.flow.StateFlow, kotlin.coroutines.CoroutineContext, androidx.compose.runtime.Composer, int, int);
  public static androidx.compose.runtime.MutableState mutableStateOf$default(java.lang.Object, androidx.compose.runtime.SnapshotMutationPolicy, int, java.lang.Object);
  public static androidx.compose.runtime.State rememberUpdatedState(java.lang.Object, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames @interface androidx.compose.runtime.Stable {
}
-keepclassmembernames interface androidx.compose.runtime.State {
  public java.lang.Object getValue();
}
-keepclassmembernames class androidx.compose.runtime.Updater {
  public static androidx.compose.runtime.Composer constructor-impl(androidx.compose.runtime.Composer);
  public static void reconcile-impl(androidx.compose.runtime.Composer, kotlin.jvm.functions.Function1);
  public static void set-impl(androidx.compose.runtime.Composer, java.lang.Object, kotlin.jvm.functions.Function2);
}
-keepclassmembernames interface androidx.compose.runtime.internal.ComposableLambda {
}
-keepclassmembernames class androidx.compose.runtime.internal.ComposableLambdaKt {
  public static androidx.compose.runtime.internal.ComposableLambda composableLambdaInstance(int, boolean, java.lang.Object);
  public static androidx.compose.runtime.internal.ComposableLambda rememberComposableLambda(int, boolean, java.lang.Object, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames @interface androidx.compose.runtime.internal.FunctionKeyMeta {
  public int endOffset();
  public int key();
  public int startOffset();
}
-keepclassmembernames @interface androidx.compose.runtime.internal.StabilityInferred {
  public int parameters();
}
-keepclassmembernames interface androidx.compose.runtime.saveable.SaveableStateRegistry$Entry {
}
-keepclassmembernames interface androidx.compose.runtime.saveable.SaveableStateRegistry {
  public boolean canBeSaved(java.lang.Object);
  public java.lang.Object consumeRestored(java.lang.String);
  public java.util.Map performSave();
  public androidx.compose.runtime.saveable.SaveableStateRegistry$Entry registerProvider(java.lang.String, kotlin.jvm.functions.Function0);
}
-keepclassmembernames class androidx.compose.runtime.saveable.SaveableStateRegistryKt {
  public static androidx.compose.runtime.saveable.SaveableStateRegistry SaveableStateRegistry(java.util.Map, kotlin.jvm.functions.Function1);
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalSaveableStateRegistry();
}
-keepclassmembernames class androidx.compose.runtime.snapshots.Snapshot$Companion {
  public androidx.compose.runtime.snapshots.Snapshot getCurrent();
  public void sendApplyNotifications();
}
-keepclassmembernames class androidx.compose.runtime.snapshots.Snapshot {
  public boolean hasPendingChanges();
  androidx.compose.runtime.snapshots.Snapshot$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.Alignment$Companion {
  public androidx.compose.ui.Alignment$Horizontal getStart();
}
-keepclassmembernames interface androidx.compose.ui.Alignment$Horizontal {
}
-keepclassmembernames interface androidx.compose.ui.Alignment {
  androidx.compose.ui.Alignment$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.ComposedModifierKt {
  public static androidx.compose.ui.Modifier materializeModifier(androidx.compose.runtime.Composer, androidx.compose.ui.Modifier);
}
-keepclassmembernames class androidx.compose.ui.Modifier$Companion {
  public androidx.compose.ui.Modifier then(androidx.compose.ui.Modifier);
}
-keepclassmembernames interface androidx.compose.ui.Modifier {
  androidx.compose.ui.Modifier$Companion Companion;
}
-keepclassmembernames @interface androidx.compose.ui.UiComposable {
}
-keepclassmembernames class androidx.compose.ui.geometry.Offset$Companion {
  public long getUnspecified-F1C5BW0();
  public long getZero-F1C5BW0();
}
-keepclassmembernames class androidx.compose.ui.geometry.Offset {
  public static androidx.compose.ui.geometry.Offset box-impl(long);
  public static long constructor-impl(long);
  public static long copy-dBAh8RU$default(long, float, float, int, java.lang.Object);
  public static boolean equals-impl0(long, long);
  public static float getDistance-impl(long);
  public static long minus-MK-Hz9U(long, long);
  public static long plus-MK-Hz9U(long, long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  androidx.compose.ui.geometry.Offset$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.geometry.OffsetKt {
  public static long lerp-Wko1d7g(long, long, float);
}
-keepclassmembernames class androidx.compose.ui.geometry.Rect {
  public <init>(float, float, float, float);
  public boolean contains-k-4lQ0M(long);
  public float getBottom();
  public float getLeft();
  public float getRight();
  public long getSize-NH-jbRc();
  public float getTop();
  public long getTopLeft-F1C5BW0();
  public androidx.compose.ui.geometry.Rect intersect(androidx.compose.ui.geometry.Rect);
  public boolean isEmpty();
  public boolean overlaps(androidx.compose.ui.geometry.Rect);
  public androidx.compose.ui.geometry.Rect translate-k-4lQ0M(long);
}
-keepclassmembernames class androidx.compose.ui.geometry.RectKt {
  public static androidx.compose.ui.geometry.Rect Rect-tz77jQw(long, long);
}
-keepclassmembernames class androidx.compose.ui.geometry.Size {
}
-keepclassmembernames class androidx.compose.ui.graphics.AndroidImageBitmap_androidKt {
  public static android.graphics.Bitmap asAndroidBitmap(androidx.compose.ui.graphics.ImageBitmap);
  public static androidx.compose.ui.graphics.ImageBitmap asImageBitmap(android.graphics.Bitmap);
}
-keepclassmembernames class androidx.compose.ui.graphics.Color$Companion {
  public long getUnspecified-0d7_KjU();
}
-keepclassmembernames class androidx.compose.ui.graphics.Color {
  androidx.compose.ui.graphics.Color$Companion Companion;
}
-keepclassmembernames interface androidx.compose.ui.graphics.ImageBitmap {
  public boolean getHasAlpha();
  public int getHeight();
  public int getWidth();
  public static void readPixels$default(androidx.compose.ui.graphics.ImageBitmap, int[], int, int, int, int, int, int, int, java.lang.Object);
}
-keepclassmembernames interface androidx.compose.ui.graphics.Shape {
}
-keepclassmembernames class androidx.compose.ui.graphics.painter.Painter {
  int $stable;
}
-keepclassmembernames class androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt {
  public static androidx.compose.ui.input.indirect.IndirectPointerEvent IndirectPointerEvent-ixkH3tc(java.util.List, int, int, android.view.MotionEvent);
}
-keepclassmembernames interface androidx.compose.ui.input.indirect.IndirectPointerEvent {
}
-keepclassmembernames class androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis {
}
-keepclassmembernames class androidx.compose.ui.input.indirect.IndirectPointerEventType$Companion {
  public int getMove-4ZHQPSE();
  public int getPress-4ZHQPSE();
  public int getRelease-4ZHQPSE();
  public int getUnknown-4ZHQPSE();
}
-keepclassmembernames class androidx.compose.ui.input.indirect.IndirectPointerEventType {
  androidx.compose.ui.input.indirect.IndirectPointerEventType$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.input.indirect.IndirectPointerInputChange {
  public <init>(long, long, long, boolean, float, long, long, boolean, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class androidx.compose.ui.input.key.Key$Companion {
  public long getAltLeft-EK5gGoQ();
  public long getAltRight-EK5gGoQ();
  public long getCapsLock-EK5gGoQ();
  public long getCtrlLeft-EK5gGoQ();
  public long getCtrlRight-EK5gGoQ();
  public long getFunction-EK5gGoQ();
  public long getMetaLeft-EK5gGoQ();
  public long getMetaRight-EK5gGoQ();
  public long getNumLock-EK5gGoQ();
  public long getScrollLock-EK5gGoQ();
  public long getShiftLeft-EK5gGoQ();
  public long getShiftRight-EK5gGoQ();
}
-keepclassmembernames class androidx.compose.ui.input.key.Key {
  public static androidx.compose.ui.input.key.Key box-impl(long);
  public static boolean equals-impl(long, java.lang.Object);
  public static boolean equals-impl0(long, long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  androidx.compose.ui.input.key.Key$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.input.key.KeyEvent {
}
-keepclassmembernames class androidx.compose.ui.input.key.KeyEvent_androidKt {
  public static long getKey-ZmokQxo(android.view.KeyEvent);
}
-keepclassmembernames class androidx.compose.ui.input.key.Key_androidKt {
  public static int getNativeKeyCode-YVgTNJs(long);
}
-keepclassmembernames class androidx.compose.ui.input.pointer.PointerId {
  public static long constructor-impl(long);
}
-keepclassmembernames class androidx.compose.ui.input.pointer.PointerKeyboardModifiers {
}
-keepclassmembernames class androidx.compose.ui.input.pointer.util.VelocityTracker {
  public <init>();
  public void addPosition-Uv8p0NA(long, long);
  public long calculateVelocity-9UxMQ8M();
}
-keepclassmembernames class androidx.compose.ui.layout.AlignmentLine {
}
-keepclassmembernames interface androidx.compose.ui.layout.LayoutCoordinates {
  public androidx.compose.ui.layout.LayoutCoordinates getParentLayoutCoordinates();
}
-keepclassmembernames class androidx.compose.ui.layout.LayoutCoordinatesKt {
  public static androidx.compose.ui.geometry.Rect boundsInParent(androidx.compose.ui.layout.LayoutCoordinates);
  public static long positionInRoot(androidx.compose.ui.layout.LayoutCoordinates);
}
-keepclassmembernames interface androidx.compose.ui.layout.LayoutInfo {
  public androidx.compose.ui.layout.LayoutCoordinates getCoordinates();
  public androidx.compose.ui.unit.Density getDensity();
  public androidx.compose.ui.unit.LayoutDirection getLayoutDirection();
  public androidx.compose.ui.layout.LayoutInfo getParentInfo();
  public androidx.compose.ui.platform.ViewConfiguration getViewConfiguration();
  public boolean isDeactivated();
  public boolean isPlaced();
}
-keepclassmembernames class androidx.compose.ui.layout.LayoutModifierKt {
  public static androidx.compose.ui.Modifier layout(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3);
}
-keepclassmembernames interface androidx.compose.ui.layout.Measurable {
  public androidx.compose.ui.layout.Placeable measure-BRTryo0(long);
}
-keepclassmembernames interface androidx.compose.ui.layout.MeasurePolicy {
  public androidx.compose.ui.layout.MeasureResult measure-3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long);
}
-keepclassmembernames interface androidx.compose.ui.layout.MeasureResult {
}
-keepclassmembernames interface androidx.compose.ui.layout.MeasureScope {
  public static androidx.compose.ui.layout.MeasureResult layout$default(androidx.compose.ui.layout.MeasureScope, int, int, java.util.Map, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.ui.layout.Placeable$PlacementScope {
  public static void placeRelative$default(androidx.compose.ui.layout.Placeable$PlacementScope, androidx.compose.ui.layout.Placeable, int, int, float, int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.ui.layout.Placeable {
  public int getHeight();
  public int getWidth();
}
-keepclassmembernames class androidx.compose.ui.layout.SubcomposeLayoutKt {
  public static void SubcomposeLayout(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames interface androidx.compose.ui.layout.SubcomposeMeasureScope {
  public java.util.List subcompose(java.lang.Object, kotlin.jvm.functions.Function2);
}
-keepclassmembernames class androidx.compose.ui.node.ComposeUiNode$Companion {
  public kotlin.jvm.functions.Function1 getApplyOnDeactivatedNodeAssertion();
  public kotlin.jvm.functions.Function0 getConstructor();
  public kotlin.jvm.functions.Function2 getSetCompositeKeyHash();
  public kotlin.jvm.functions.Function2 getSetMeasurePolicy();
  public kotlin.jvm.functions.Function2 getSetModifier();
  public kotlin.jvm.functions.Function2 getSetResolvedCompositionLocals();
}
-keepclassmembernames interface androidx.compose.ui.node.ComposeUiNode {
  androidx.compose.ui.node.ComposeUiNode$Companion Companion;
}
-keepclassmembernames interface androidx.compose.ui.node.RootForTest$UncaughtExceptionHandler {
  public void onUncaughtException(java.lang.Throwable);
}
-keepclassmembernames interface androidx.compose.ui.node.RootForTest {
  public androidx.compose.ui.semantics.SemanticsOwner getSemanticsOwner();
  public void measureAndLayoutForTest();
  public boolean sendIndirectPointerEvent(androidx.compose.ui.input.indirect.IndirectPointerEvent);
  public boolean sendKeyEvent-ZmokQxo(android.view.KeyEvent);
  public void setUncaughtExceptionHandler(androidx.compose.ui.node.RootForTest$UncaughtExceptionHandler);
}
-keepclassmembernames class androidx.compose.ui.platform.AbstractComposeView {
  public <init>(android.content.Context, android.util.AttributeSet, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public void Content(androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class androidx.compose.ui.platform.AndroidCompositionLocals_androidKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalConfiguration();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalContext();
}
-keepclassmembernames class androidx.compose.ui.platform.CompositionLocalsKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalDensity();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalFontFamilyResolver();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalLayoutDirection();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalProvidableLocaleList();
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalWindowInfo();
}
-keepclassmembernames class androidx.compose.ui.platform.InfiniteAnimationPolicy$DefaultImpls {
  public static java.lang.Object fold(androidx.compose.ui.platform.InfiniteAnimationPolicy, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(androidx.compose.ui.platform.InfiniteAnimationPolicy, kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface androidx.compose.ui.platform.InfiniteAnimationPolicy {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public java.lang.Object onInfiniteOperation(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface androidx.compose.ui.platform.PlatformTextInputInterceptor {
  public java.lang.Object interceptStartInputMethod(androidx.compose.ui.platform.PlatformTextInputMethodRequest, androidx.compose.ui.platform.PlatformTextInputSession, kotlin.coroutines.Continuation);
}
-keepclassmembernames interface androidx.compose.ui.platform.PlatformTextInputMethodRequest {
}
-keepclassmembernames class androidx.compose.ui.platform.PlatformTextInputModifierNodeKt {
  public static void InterceptPlatformTextInput(androidx.compose.ui.platform.PlatformTextInputInterceptor, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames interface androidx.compose.ui.platform.PlatformTextInputSession {
  public java.lang.Object startInputMethod(androidx.compose.ui.platform.PlatformTextInputMethodRequest, kotlin.coroutines.Continuation);
}
-keepclassmembernames class androidx.compose.ui.platform.TestTagKt {
  public static androidx.compose.ui.Modifier testTag(androidx.compose.ui.Modifier, java.lang.String);
}
-keepclassmembernames interface androidx.compose.ui.platform.ViewConfiguration {
  public long getDoubleTapMinTimeMillis();
  public long getDoubleTapTimeoutMillis();
  public long getLongPressTimeoutMillis();
}
-keepclassmembernames class androidx.compose.ui.platform.ViewRootForTest$Companion {
  public kotlin.jvm.functions.Function1 getOnViewCreatedCallback();
  public void setOnViewCreatedCallback(kotlin.jvm.functions.Function1);
}
-keepclassmembernames interface androidx.compose.ui.platform.ViewRootForTest {
  public boolean getHasPendingMeasureOrLayout();
  public android.view.View getView();
  androidx.compose.ui.platform.ViewRootForTest$Companion Companion;
}
-keepclassmembernames interface androidx.compose.ui.platform.WindowInfo {
  public long getContainerDpSize-MYxV2XQ();
  public long getContainerSize-YbymL2g();
  public int getKeyboardModifiers-k7X9c1A();
  public boolean isWindowFocused();
}
-keepclassmembernames interface androidx.compose.ui.platform.WindowRecomposerFactory {
  public androidx.compose.runtime.Recomposer createRecomposer(android.view.View);
}
-keepclassmembernames class androidx.compose.ui.platform.WindowRecomposerPolicy {
  public boolean compareAndSetFactory(androidx.compose.ui.platform.WindowRecomposerFactory, androidx.compose.ui.platform.WindowRecomposerFactory);
  public androidx.compose.ui.platform.WindowRecomposerFactory getAndSetFactory(androidx.compose.ui.platform.WindowRecomposerFactory);
  androidx.compose.ui.platform.WindowRecomposerPolicy INSTANCE;
}
-keepclassmembernames class androidx.compose.ui.res.PainterResources_androidKt {
  public static androidx.compose.ui.graphics.painter.Painter painterResource(int, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class androidx.compose.ui.semantics.AccessibilityAction {
  public kotlin.Function getAction();
}
-keepclassmembernames class androidx.compose.ui.semantics.CollectionItemInfo {
}
-keepclassmembernames class androidx.compose.ui.semantics.CustomAccessibilityAction {
  public kotlin.jvm.functions.Function0 getAction();
  public java.lang.String getLabel();
}
-keepclassmembernames class androidx.compose.ui.semantics.ProgressBarRangeInfo {
  public float getCurrent();
  public kotlin.ranges.ClosedFloatingPointRange getRange();
}
-keepclassmembernames class androidx.compose.ui.semantics.ScrollAxisRange {
  public kotlin.jvm.functions.Function0 getMaxValue();
  public boolean getReverseScrolling();
  public kotlin.jvm.functions.Function0 getValue();
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsActions {
  public androidx.compose.ui.semantics.SemanticsPropertyKey getCustomActions();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getGetTextLayoutResult();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getInsertTextAtCursor();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getOnClick();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getOnImeAction();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getRequestFocus();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getScrollBy();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getScrollToIndex();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetProgress();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetSelection();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSetText();
  androidx.compose.ui.semantics.SemanticsActions INSTANCE;
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsConfiguration {
  public boolean contains(androidx.compose.ui.semantics.SemanticsPropertyKey);
  public java.lang.Object get(androidx.compose.ui.semantics.SemanticsPropertyKey);
  public java.lang.Object getOrElseNullable(androidx.compose.ui.semantics.SemanticsPropertyKey, kotlin.jvm.functions.Function0);
  public boolean isClearingSemantics();
  public boolean isMergingSemanticsOfDescendants();
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsConfigurationKt {
  public static java.lang.Object getOrNull(androidx.compose.ui.semantics.SemanticsConfiguration, androidx.compose.ui.semantics.SemanticsPropertyKey);
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsNode {
  public int getAlignmentLinePosition(androidx.compose.ui.layout.AlignmentLine);
  public androidx.compose.ui.geometry.Rect getBoundsInRoot();
  public androidx.compose.ui.geometry.Rect getBoundsInWindow();
  public java.util.List getChildren();
  public androidx.compose.ui.semantics.SemanticsConfiguration getConfig();
  public int getId();
  public androidx.compose.ui.layout.LayoutInfo getLayoutInfo();
  public androidx.compose.ui.semantics.SemanticsNode getParent();
  public long getPositionInRoot-F1C5BW0();
  public long getPositionInWindow-F1C5BW0();
  public androidx.compose.ui.node.RootForTest getRoot();
  public long getSize-YbymL2g();
  public androidx.compose.ui.geometry.Rect getTouchBoundsInRoot();
  public boolean isRoot();
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsOwner {
  public androidx.compose.ui.semantics.SemanticsNode getRootSemanticsNode();
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsOwnerKt {
  public static java.util.List getAllSemanticsNodes(androidx.compose.ui.semantics.SemanticsOwner, boolean, boolean);
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsProperties {
  public androidx.compose.ui.semantics.SemanticsPropertyKey getContentDescription();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getDisabled();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getEditableText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getFocused();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHeading();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHideFromAccessibility();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getHorizontalScrollAxisRange();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getImeAction();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIndexForKey();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getInputText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsDialog();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsEditable();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getIsPopup();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getLinkTestMarker();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getProgressBarRangeInfo();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getSelected();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getStateDescription();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getTestTag();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getText();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getToggleableState();
  public androidx.compose.ui.semantics.SemanticsPropertyKey getVerticalScrollAxisRange();
  androidx.compose.ui.semantics.SemanticsProperties INSTANCE;
}
-keepclassmembernames class androidx.compose.ui.semantics.SemanticsPropertyKey {
  public java.lang.String getName();
}
-keep enum androidx.compose.ui.state.ToggleableState {
  androidx.compose.ui.state.ToggleableState Off;
  androidx.compose.ui.state.ToggleableState On;
}
-keepclassmembernames class androidx.compose.ui.text.AnnotatedString$Range {
  public int getEnd();
  public int getStart();
}
-keepclassmembernames class androidx.compose.ui.text.AnnotatedString {
  public <init>(java.lang.String, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.List getLinkAnnotations(int, int);
  public java.util.List getParagraphStyles();
  public java.util.List getSpanStyles();
  public java.util.List getStringAnnotations(int, int);
  public java.lang.String getText();
  public int length();
}
-keepclassmembernames class androidx.compose.ui.text.LinkAnnotation {
}
-keepclassmembernames class androidx.compose.ui.text.TextLayoutInput {
  public androidx.compose.ui.text.AnnotatedString getText();
}
-keepclassmembernames class androidx.compose.ui.text.TextLayoutResult {
  public androidx.compose.ui.geometry.Rect getBoundingBox(int);
  public androidx.compose.ui.text.TextLayoutInput getLayoutInput();
  public static int getLineEnd$default(androidx.compose.ui.text.TextLayoutResult, int, boolean, int, java.lang.Object);
  public int getLineForOffset(int);
}
-keepclassmembernames class androidx.compose.ui.text.TextRange {
  public static int getMax-impl(long);
  public static int getMin-impl(long);
}
-keepclassmembernames class androidx.compose.ui.text.TextStyle {
}
-keepclassmembernames interface androidx.compose.ui.text.font.FontFamily$Resolver {
}
-keepclassmembernames class androidx.compose.ui.text.font.FontFamily {
}
-keepclassmembernames class androidx.compose.ui.text.font.FontFamilyResolver_androidKt {
  public static androidx.compose.ui.text.font.FontFamily$Resolver createFontFamilyResolver(android.content.Context);
}
-keepclassmembernames class androidx.compose.ui.text.font.FontStyle {
}
-keepclassmembernames class androidx.compose.ui.text.font.FontWeight {
}
-keepclassmembernames class androidx.compose.ui.text.input.ImeAction$Companion {
  public int getDefault-eUduSuo();
}
-keepclassmembernames class androidx.compose.ui.text.input.ImeAction {
  public static androidx.compose.ui.text.input.ImeAction box-impl(int);
  androidx.compose.ui.text.input.ImeAction$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.text.intl.Locale {
  public <init>(java.util.Locale);
  public java.lang.String toLanguageTag();
}
-keepclassmembernames class androidx.compose.ui.text.intl.LocaleList {
  public <init>(java.util.List);
  public java.util.List getLocaleList();
}
-keepclassmembernames class androidx.compose.ui.text.style.TextAlign {
}
-keepclassmembernames class androidx.compose.ui.text.style.TextDecoration {
}
-keepclassmembernames class androidx.compose.ui.unit.AndroidDensity_androidKt {
  public static androidx.compose.ui.unit.Density Density(android.content.Context);
}
-keepclassmembernames class androidx.compose.ui.unit.Constraints$Companion {
  public long fixed-JhjzzOo(int, int);
}
-keepclassmembernames class androidx.compose.ui.unit.Constraints {
  public static int getMaxHeight-impl(long);
  public static int getMaxWidth-impl(long);
  public long unbox-impl();
  androidx.compose.ui.unit.Constraints$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.unit.ConstraintsKt {
  public static long constrain-N9IONVI(long, long);
}
-keepclassmembernames interface androidx.compose.ui.unit.Density {
  public float getDensity();
  public float getFontScale();
  public int roundToPx--R2X_6o(long);
  public int roundToPx-0680j_4(float);
  public float toDp-GaN1DYA(long);
  public float toDp-u2uoSUM(float);
  public float toDp-u2uoSUM(int);
  public long toDpSize-k-rfVVM(long);
  public float toPx--R2X_6o(long);
  public float toPx-0680j_4(float);
  public androidx.compose.ui.geometry.Rect toRect(androidx.compose.ui.unit.DpRect);
  public long toSize-XkaWNTQ(long);
  public long toSp-0xMU5do(float);
  public long toSp-kPz2Gy4(float);
  public long toSp-kPz2Gy4(int);
}
-keepclassmembernames class androidx.compose.ui.unit.DensityKt {
  public static androidx.compose.ui.unit.Density Density(float, float);
}
-keepclassmembernames class androidx.compose.ui.unit.Dp$Companion {
  public float getUnspecified-D9Ej5fM();
}
-keepclassmembernames class androidx.compose.ui.unit.Dp {
  public static androidx.compose.ui.unit.Dp box-impl(float);
  public static int compareTo-0680j_4(float, float);
  public static float constructor-impl(float);
  public static java.lang.String toString-impl(float);
  public float unbox-impl();
  androidx.compose.ui.unit.Dp$Companion Companion;
}
-keepclassmembernames class androidx.compose.ui.unit.DpKt {
  public static long DpSize-YgX7TsA(float, float);
}
-keepclassmembernames class androidx.compose.ui.unit.DpRect {
  public <init>(float, float, float, float, kotlin.jvm.internal.DefaultConstructorMarker);
  public float getBottom-D9Ej5fM();
  public float getLeft-D9Ej5fM();
  public float getRight-D9Ej5fM();
  public float getTop-D9Ej5fM();
}
-keepclassmembernames class androidx.compose.ui.unit.DpSize {
  public static androidx.compose.ui.unit.DpSize box-impl(long);
  public static float getHeight-D9Ej5fM(long);
  public static float getWidth-D9Ej5fM(long);
  public long unbox-impl();
}
-keepclassmembernames interface androidx.compose.ui.unit.FontScaling {
  public float getFontScale();
  public float toDp-GaN1DYA(long);
  public long toSp-0xMU5do(float);
}
-keepclassmembernames class androidx.compose.ui.unit.IntSize {
  public static androidx.compose.ui.unit.IntSize box-impl(long);
  public static long constructor-impl(long);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
}
-keepclassmembernames class androidx.compose.ui.unit.IntSizeKt {
  public static long roundToIntSize-uvyYCjk(long);
  public static long toSize-ozmzZPI(long);
}
-keep enum androidx.compose.ui.unit.LayoutDirection {
  public static androidx.compose.ui.unit.LayoutDirection[] values();
  androidx.compose.ui.unit.LayoutDirection Ltr;
  androidx.compose.ui.unit.LayoutDirection Rtl;
}
-keepclassmembernames class androidx.compose.ui.unit.TextUnit {
}
-keepclassmembernames class androidx.compose.ui.unit.Velocity {
  public static float getX-impl(long);
}
-keepclassmembernames class androidx.compose.ui.util.ListUtilsKt {
  public static java.lang.String fastJoinToString$default(java.util.List, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keepclassmembernames class androidx.compose.ui.util.MathHelpersKt {
  public static float lerp(float, float, float);
  public static long lerp(long, long, float);
}
-keepclassmembernames class androidx.compose.ui.viewinterop.AndroidView_androidKt {
  public static void AndroidView(kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames interface androidx.compose.ui.window.DialogWindowProvider {
  public android.view.Window getWindow();
}
-keepclassmembernames class androidx.concurrent.futures.CallbackToFutureAdapter$Completer {
  public boolean set(java.lang.Object);
  public boolean setException(java.lang.Throwable);
}
-keepclassmembernames interface androidx.concurrent.futures.CallbackToFutureAdapter$Resolver {
  public java.lang.Object attachCompleter(androidx.concurrent.futures.CallbackToFutureAdapter$Completer);
}
-keepclassmembernames class androidx.concurrent.futures.CallbackToFutureAdapter {
  public static com.google.common.util.concurrent.ListenableFuture getFuture(androidx.concurrent.futures.CallbackToFutureAdapter$Resolver);
}
-keepclassmembernames class androidx.concurrent.futures.SuspendToFutureAdapter {
  public static com.google.common.util.concurrent.ListenableFuture launchFuture$default(androidx.concurrent.futures.SuspendToFutureAdapter, kotlin.coroutines.CoroutineContext, boolean, kotlin.jvm.functions.Function2, int, java.lang.Object);
  androidx.concurrent.futures.SuspendToFutureAdapter INSTANCE;
}
-keepclassmembernames class androidx.constraintlayout.widget.ConstraintLayout {
}
-keepclassmembernames class androidx.core.content.ContextCompat {
  public static android.graphics.drawable.Drawable getDrawable(android.content.Context, int);
  public static java.lang.Object getSystemService(android.content.Context, java.lang.Class);
}
-keepclassmembernames class androidx.core.content.pm.PackageInfoCompat {
  public static long getLongVersionCode(android.content.pm.PackageInfo);
}
-keepclassmembernames class androidx.core.os.ConfigurationCompat {
  public static androidx.core.os.LocaleListCompat getLocales(android.content.res.Configuration);
  public static void setLocales(android.content.res.Configuration, androidx.core.os.LocaleListCompat);
}
-keepclassmembernames class androidx.core.os.LocaleListCompat {
  public static androidx.core.os.LocaleListCompat forLanguageTags(java.lang.String);
  public java.util.Locale get(int);
  public static androidx.core.os.LocaleListCompat getEmptyLocaleList();
  public int size();
}
-keepclassmembernames class androidx.core.text.HtmlCompat {
  public static android.text.Spanned fromHtml(java.lang.String, int);
}
-keepclassmembernames class androidx.core.view.ViewConfigurationCompat {
  public static float getScaledHorizontalScrollFactor(android.view.ViewConfiguration, android.content.Context);
  public static float getScaledVerticalScrollFactor(android.view.ViewConfiguration, android.content.Context);
}
-keepclassmembernames class androidx.core.view.ViewGroupKt {
  public static kotlin.sequences.Sequence getChildren(android.view.ViewGroup);
}
-keepclassmembernames class androidx.core.view.WindowInsetsCompat {
  public android.view.WindowInsets toWindowInsets();
  androidx.core.view.WindowInsetsCompat CONSUMED;
}
-keepclassmembernames interface androidx.datastore.core.DataStore {
}
-keepclassmembernames interface androidx.drawerlayout.widget.DrawerLayout$DrawerListener {
}
-keepclassmembernames class androidx.drawerlayout.widget.DrawerLayout$SimpleDrawerListener {
  public <init>();
  public void onDrawerClosed(android.view.View);
  public void onDrawerStateChanged(int);
}
-keepclassmembernames class androidx.drawerlayout.widget.DrawerLayout {
  public void addDrawerListener(androidx.drawerlayout.widget.DrawerLayout$DrawerListener);
  public void closeDrawer(int);
  public boolean isDrawerOpen(int);
  public boolean isDrawerVisible(int);
  public void openDrawer(int);
  public void removeDrawerListener(androidx.drawerlayout.widget.DrawerLayout$DrawerListener);
}
-keepclassmembernames class androidx.fragment.app.DialogFragment {
  public void show(androidx.fragment.app.FragmentManager, java.lang.String);
}
-keepclassmembernames class androidx.fragment.app.Fragment {
  public androidx.fragment.app.FragmentManager getChildFragmentManager();
  public android.view.View getView();
}
-keepclassmembernames class androidx.fragment.app.FragmentActivity {
  public androidx.fragment.app.FragmentManager getSupportFragmentManager();
}
-keepclassmembernames class androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks {
  public <init>();
  public void onFragmentCreated(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment, android.os.Bundle);
  public void onFragmentDestroyed(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment);
  public void onFragmentViewDestroyed(androidx.fragment.app.FragmentManager, androidx.fragment.app.Fragment);
}
-keepclassmembernames class androidx.fragment.app.FragmentManager {
  public androidx.fragment.app.Fragment findFragmentById(int);
  public java.util.List getFragments();
  public void registerFragmentLifecycleCallbacks(androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks, boolean);
}
-keep enum androidx.lifecycle.Lifecycle$Event {
  androidx.lifecycle.Lifecycle$Event ON_RESUME;
}
-keep enum androidx.lifecycle.Lifecycle$State {
  public static androidx.lifecycle.Lifecycle$State[] values();
  androidx.lifecycle.Lifecycle$State CREATED;
  androidx.lifecycle.Lifecycle$State DESTROYED;
  androidx.lifecycle.Lifecycle$State RESUMED;
  androidx.lifecycle.Lifecycle$State STARTED;
}
-keepclassmembernames class androidx.lifecycle.Lifecycle {
  public void addObserver(androidx.lifecycle.LifecycleObserver);
  public void removeObserver(androidx.lifecycle.LifecycleObserver);
}
-keepclassmembernames interface androidx.lifecycle.LifecycleEventObserver {
  public void onStateChanged(androidx.lifecycle.LifecycleOwner, androidx.lifecycle.Lifecycle$Event);
}
-keepclassmembernames interface androidx.lifecycle.LifecycleObserver {
}
-keepclassmembernames interface androidx.lifecycle.LifecycleOwner {
  public androidx.lifecycle.Lifecycle getLifecycle();
}
-keepclassmembernames class androidx.lifecycle.ViewModel {
  public <init>();
  protected void onCleared();
}
-keepclassmembernames interface androidx.lifecycle.ViewModelProvider$Factory {
  public androidx.lifecycle.ViewModel create(java.lang.Class);
}
-keepclassmembernames class androidx.lifecycle.ViewModelProvider {
  public <init>(androidx.lifecycle.ViewModelStoreOwner, androidx.lifecycle.ViewModelProvider$Factory);
  public androidx.lifecycle.ViewModel get(java.lang.Class);
}
-keepclassmembernames class androidx.lifecycle.ViewModelStore {
}
-keepclassmembernames interface androidx.lifecycle.ViewModelStoreOwner {
  public androidx.lifecycle.ViewModelStore getViewModelStore();
}
-keepclassmembernames class androidx.lifecycle.ViewTreeLifecycleOwner {
  public static androidx.lifecycle.LifecycleOwner get(android.view.View);
}
-keepclassmembernames class androidx.navigation.NavController {
  public void navigate(androidx.navigation.NavDirections);
}
-keepclassmembernames interface androidx.navigation.NavDirections {
}
-keepclassmembernames class androidx.navigation.fragment.NavHostFragment {
  public androidx.navigation.NavController getNavController();
}
-keepclassmembernames class androidx.preference.R$id {
  int recycler_view;
}
-keepclassmembernames class androidx.preference.R {
}
-keepclassmembernames class androidx.recyclerview.widget.RecyclerView$Adapter {
  public void bindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int);
  public androidx.recyclerview.widget.RecyclerView$ViewHolder createViewHolder(android.view.ViewGroup, int);
  public int getItemCount();
  public int getItemViewType(int);
  public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int);
  public void onViewRecycled(androidx.recyclerview.widget.RecyclerView$ViewHolder);
}
-keepclassmembernames class androidx.recyclerview.widget.RecyclerView$ViewHolder {
  android.view.View itemView;
}
-keepclassmembernames class androidx.recyclerview.widget.RecyclerView {
  public androidx.recyclerview.widget.RecyclerView$ViewHolder findViewHolderForAdapterPosition(int);
  public androidx.recyclerview.widget.RecyclerView$Adapter getAdapter();
  public void scrollToPosition(int);
}
-keepclassmembernames class androidx.room.BaseRoomConnectionManager$DriverWrapper {
  public <init>(androidx.room.BaseRoomConnectionManager, androidx.sqlite.SQLiteDriver);
  public androidx.sqlite.SQLiteConnection open(java.lang.String);
}
-keepclassmembernames class androidx.room.BaseRoomConnectionManager {
  public <init>();
  protected java.util.List getCallbacks();
  protected androidx.room.DatabaseConfiguration getConfiguration();
  protected androidx.room.RoomOpenDelegate getOpenDelegate();
  protected void onCreate(androidx.sqlite.SQLiteConnection);
  protected void onMigrate(androidx.sqlite.SQLiteConnection, int, int);
  protected void onOpen(androidx.sqlite.SQLiteConnection);
  public java.lang.Object useConnection(boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keepclassmembernames class androidx.room.DatabaseConfiguration {
  public <init>(android.content.Context, java.lang.String, androidx.sqlite.db.SupportSQLiteOpenHelper$Factory, androidx.room.RoomDatabase$MigrationContainer, java.util.List, boolean, androidx.room.RoomDatabase$JournalMode, java.util.concurrent.Executor, java.util.concurrent.Executor, android.content.Intent, boolean, boolean, java.util.Set, java.lang.String, java.io.File, java.util.concurrent.Callable, androidx.room.RoomDatabase$PrepackagedDatabaseCallback, java.util.List, java.util.List, boolean, androidx.sqlite.SQLiteDriver, kotlin.coroutines.CoroutineContext);
  public static androidx.room.DatabaseConfiguration copy$default(androidx.room.DatabaseConfiguration, android.content.Context, java.lang.String, androidx.sqlite.db.SupportSQLiteOpenHelper$Factory, androidx.room.RoomDatabase$MigrationContainer, java.util.List, boolean, androidx.room.RoomDatabase$JournalMode, java.util.concurrent.Executor, java.util.concurrent.Executor, android.content.Intent, boolean, boolean, java.util.Set, java.lang.String, java.io.File, java.util.concurrent.Callable, androidx.room.RoomDatabase$PrepackagedDatabaseCallback, java.util.List, java.util.List, boolean, androidx.sqlite.SQLiteDriver, kotlin.coroutines.CoroutineContext, int, java.lang.Object);
  android.content.Context context;
  java.lang.String name;
  androidx.sqlite.SQLiteDriver sqliteDriver;
  androidx.sqlite.db.SupportSQLiteOpenHelper$Factory sqliteOpenHelperFactory;
}
-keepclassmembernames class androidx.room.InvalidationTracker {
  public <init>(androidx.room.RoomDatabase, java.util.Map, java.util.Map, java.lang.String[]);
}
-keepclassmembernames class androidx.room.RoomDatabase$Callback {
}
-keep enum androidx.room.RoomDatabase$JournalMode {
  androidx.room.RoomDatabase$JournalMode WRITE_AHEAD_LOGGING;
}
-keepclassmembernames class androidx.room.RoomDatabase$MigrationContainer {
  public <init>();
  public void addMigration(androidx.room.migration.Migration);
  public void addMigrations(java.util.List);
  public boolean contains(int, int);
}
-keepclassmembernames class androidx.room.RoomDatabase$PrepackagedDatabaseCallback {
}
-keepclassmembernames class androidx.room.RoomDatabase {
  public <init>();
  public void clearAllTables();
  public void close();
  public java.util.List createAutoMigrations(java.util.Map);
  protected androidx.room.InvalidationTracker createInvalidationTracker();
  public java.util.Set getRequiredAutoMigrationSpecClasses();
}
-keepclassmembernames class androidx.room.RoomOpenDelegate$ValidationResult {
  public <init>(boolean, java.lang.String);
}
-keepclassmembernames class androidx.room.RoomOpenDelegate {
  public <init>(int, java.lang.String, java.lang.String);
  public void createAllTables(androidx.sqlite.SQLiteConnection);
  public void dropAllTables(androidx.sqlite.SQLiteConnection);
  public int getVersion();
  public void onCreate(androidx.sqlite.SQLiteConnection);
  public void onOpen(androidx.sqlite.SQLiteConnection);
  public void onPostMigrate(androidx.sqlite.SQLiteConnection);
  public void onPreMigrate(androidx.sqlite.SQLiteConnection);
  public androidx.room.RoomOpenDelegate$ValidationResult onValidateSchema(androidx.sqlite.SQLiteConnection);
}
-keepclassmembernames interface androidx.room.Transactor {
}
-keepclassmembernames interface androidx.room.migration.AutoMigrationSpec {
}
-keepclassmembernames class androidx.room.migration.Migration {
  int endVersion;
  int startVersion;
}
-keepclassmembernames class androidx.room.util.FtsTableInfo$Companion {
  public androidx.room.util.FtsTableInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keepclassmembernames class androidx.room.util.FtsTableInfo {
  public <init>(java.lang.String, java.util.Set, java.lang.String);
  androidx.room.util.FtsTableInfo$Companion Companion;
  java.lang.String name;
}
-keepclassmembernames class androidx.room.util.KClassUtil {
  public static java.lang.Object findAndInstantiateDatabaseImpl$default(java.lang.Class, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class androidx.room.util.TableInfo$Column {
  public <init>(java.lang.String, java.lang.String, boolean, int, java.lang.String, int);
  java.lang.String name;
}
-keepclassmembernames class androidx.room.util.TableInfo$Companion {
  public androidx.room.util.TableInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keepclassmembernames class androidx.room.util.TableInfo$ForeignKey {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.util.List, java.util.List);
}
-keepclassmembernames class androidx.room.util.TableInfo$Index {
  public <init>(java.lang.String, boolean, java.util.List, java.util.List);
}
-keepclassmembernames class androidx.room.util.TableInfo {
  public <init>(java.lang.String, java.util.Map, java.util.Set, java.util.Set);
  androidx.room.util.TableInfo$Companion Companion;
  java.lang.String name;
}
-keepclassmembernames class androidx.room.util.ViewInfo$Companion {
  public androidx.room.util.ViewInfo read(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keepclassmembernames class androidx.room.util.ViewInfo {
  public <init>(java.lang.String, java.lang.String);
  androidx.room.util.ViewInfo$Companion Companion;
  java.lang.String name;
}
-keepclassmembernames class androidx.sqlite.SQLite {
  public static void execSQL(androidx.sqlite.SQLiteConnection, java.lang.String);
}
-keepclassmembernames interface androidx.sqlite.SQLiteConnection {
  public void close();
  public androidx.sqlite.SQLiteStatement prepare(java.lang.String);
}
-keepclassmembernames interface androidx.sqlite.SQLiteDriver {
  public androidx.sqlite.SQLiteConnection open(java.lang.String);
}
-keepclassmembernames interface androidx.sqlite.SQLiteStatement {
  public void bindText(int, java.lang.String);
  public java.lang.String getText(int);
  public boolean step();
}
-keepclassmembernames interface androidx.sqlite.db.SupportSQLiteDatabase {
  public void execSQL(java.lang.String);
  public android.database.Cursor query(java.lang.String);
}
-keepclassmembernames class androidx.sqlite.db.SupportSQLiteOpenHelper$Callback {
  public <init>(int);
  public void onCreate(androidx.sqlite.db.SupportSQLiteDatabase);
  public void onDowngrade(androidx.sqlite.db.SupportSQLiteDatabase, int, int);
  public void onOpen(androidx.sqlite.db.SupportSQLiteDatabase);
  public void onUpgrade(androidx.sqlite.db.SupportSQLiteDatabase, int, int);
}
-keepclassmembernames class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder {
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration build();
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder callback(androidx.sqlite.db.SupportSQLiteOpenHelper$Callback);
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder name(java.lang.String);
}
-keepclassmembernames class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Companion {
  public androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder builder(android.content.Context);
}
-keepclassmembernames class androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration {
  androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Companion Companion;
}
-keepclassmembernames interface androidx.sqlite.db.SupportSQLiteOpenHelper$Factory {
  public androidx.sqlite.db.SupportSQLiteOpenHelper create(androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration);
}
-keepclassmembernames interface androidx.sqlite.db.SupportSQLiteOpenHelper {
}
-keepclassmembernames class androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory {
  public <init>();
}
-keepclassmembernames class androidx.sqlite.driver.SupportSQLiteConnection {
  public <init>(androidx.sqlite.db.SupportSQLiteDatabase);
  public androidx.sqlite.db.SupportSQLiteDatabase getDb();
}
-keepclassmembernames class androidx.sqlite.driver.SupportSQLiteDriver {
  public <init>(androidx.sqlite.db.SupportSQLiteOpenHelper);
}
-keepclassmembernames interface androidx.startup.Initializer {
  public java.lang.Object create(android.content.Context);
  public java.util.List dependencies();
}
-keepclassmembernames class androidx.tracing.Trace {
  public static void beginSection(java.lang.String);
  public static void endSection();
  public static void forceEnableAppTracing();
}
-keepclassmembernames class androidx.viewpager.widget.PagerAdapter {
  public int getCount();
}
-keepclassmembernames class androidx.viewpager.widget.PagerTitleStrip {
}
-keepclassmembernames interface androidx.viewpager.widget.ViewPager$OnPageChangeListener {
  public void onPageScrollStateChanged(int);
  public void onPageScrolled(int, float, int);
  public void onPageSelected(int);
}
-keepclassmembernames class androidx.viewpager.widget.ViewPager {
  public void addOnPageChangeListener(androidx.viewpager.widget.ViewPager$OnPageChangeListener);
  public androidx.viewpager.widget.PagerAdapter getAdapter();
  public int getCurrentItem();
  public void removeOnPageChangeListener(androidx.viewpager.widget.ViewPager$OnPageChangeListener);
  public void setCurrentItem(int, boolean);
}
-keepclassmembernames interface androidx.work.Clock {
  public long currentTimeMillis();
}
-keepclassmembernames class androidx.work.Configuration$Builder {
  public <init>();
  public <init>(androidx.work.Configuration);
  public androidx.work.Configuration build();
  public androidx.work.Configuration$Builder setExecutor(java.util.concurrent.Executor);
  public androidx.work.Configuration$Builder setTaskExecutor(java.util.concurrent.Executor);
}
-keepclassmembernames class androidx.work.Configuration {
  public androidx.work.Clock getClock();
  public androidx.work.RunnableScheduler getRunnableScheduler();
  public java.util.concurrent.Executor getTaskExecutor();
  public boolean isUsingDefaultTaskExecutor();
}
-keepclassmembernames class androidx.work.Data$Builder {
  public <init>();
  public androidx.work.Data build();
  public androidx.work.Data$Builder putByteArray(java.lang.String, byte[]);
  public androidx.work.Data$Builder putString(java.lang.String, java.lang.String);
}
-keepclassmembernames class androidx.work.Data {
  public byte[] getByteArray(java.lang.String);
  androidx.work.Data EMPTY;
}
-keepclassmembernames class androidx.work.DefaultWorkerFactory {
  androidx.work.DefaultWorkerFactory INSTANCE;
}
-keepclassmembernames class androidx.work.ForegroundInfo {
  public <init>(int, android.app.Notification);
}
-keepclassmembernames interface androidx.work.ForegroundUpdater {
  public com.google.common.util.concurrent.ListenableFuture setForegroundAsync(android.content.Context, java.util.UUID, androidx.work.ForegroundInfo);
}
-keepclassmembernames class androidx.work.ListenableWorker$Result {
  public static androidx.work.ListenableWorker$Result success();
}
-keepclassmembernames class androidx.work.ListenableWorker {
  public android.content.Context getApplicationContext();
  public androidx.work.Data getInputData();
}
-keepclassmembernames class androidx.work.Logger {
  public static androidx.work.Logger get();
  public void info(java.lang.String, java.lang.String);
  public static java.lang.String tagWithPrefix(java.lang.String);
}
-keepclassmembernames class androidx.work.OneTimeWorkRequest$Builder {
  public <init>(java.lang.Class);
}
-keepclassmembernames class androidx.work.OneTimeWorkRequest {
}
-keepclassmembernames interface androidx.work.Operation {
}
-keep enum androidx.work.OutOfQuotaPolicy {
  androidx.work.OutOfQuotaPolicy RUN_AS_NON_EXPEDITED_WORK_REQUEST;
}
-keepclassmembernames interface androidx.work.ProgressUpdater {
  public com.google.common.util.concurrent.ListenableFuture updateProgress(android.content.Context, java.util.UUID, androidx.work.Data);
}
-keepclassmembernames interface androidx.work.RunnableScheduler {
}
-keepclassmembernames class androidx.work.WorkManager {
  public androidx.work.Operation enqueue(androidx.work.WorkRequest);
  public static androidx.work.WorkManager getInstance(android.content.Context);
}
-keepclassmembernames class androidx.work.WorkRequest$Builder {
  public androidx.work.WorkRequest build();
  public androidx.work.WorkRequest$Builder setExpedited(androidx.work.OutOfQuotaPolicy);
  public androidx.work.WorkRequest$Builder setInputData(androidx.work.Data);
}
-keepclassmembernames class androidx.work.WorkRequest {
  public java.util.UUID getId();
  public java.util.Set getTags();
  public androidx.work.impl.model.WorkSpec getWorkSpec();
}
-keepclassmembernames class androidx.work.Worker {
  public <init>(android.content.Context, androidx.work.WorkerParameters);
  public androidx.work.ListenableWorker$Result doWork();
  public com.google.common.util.concurrent.ListenableFuture getForegroundInfoAsync();
}
-keepclassmembernames class androidx.work.WorkerFactory {
  public androidx.work.ListenableWorker createWorkerWithDefaultFallback(android.content.Context, java.lang.String, androidx.work.WorkerParameters);
}
-keepclassmembernames class androidx.work.WorkerParameters$RuntimeExtras {
  public <init>();
  android.net.Network network;
  java.util.List triggeredContentAuthorities;
  java.util.List triggeredContentUris;
}
-keepclassmembernames class androidx.work.WorkerParameters {
  public <init>(java.util.UUID, androidx.work.Data, java.util.Collection, androidx.work.WorkerParameters$RuntimeExtras, int, int, java.util.concurrent.Executor, kotlin.coroutines.CoroutineContext, androidx.work.impl.utils.taskexecutor.TaskExecutor, androidx.work.WorkerFactory, androidx.work.ProgressUpdater, androidx.work.ForegroundUpdater);
  public androidx.work.WorkerFactory getWorkerFactory();
}
-keepclassmembernames class androidx.work.impl.Processor {
}
-keepclassmembernames interface androidx.work.impl.Scheduler {
  public void cancel(java.lang.String);
  public boolean hasLimitedSchedulingSlots();
  public void schedule(androidx.work.impl.model.WorkSpec[]);
}
-keepclassmembernames class androidx.work.impl.StartStopToken {
}
-keepclassmembernames class androidx.work.impl.StartStopTokens$Companion {
  public static androidx.work.impl.StartStopTokens create$default(androidx.work.impl.StartStopTokens$Companion, boolean, int, java.lang.Object);
}
-keepclassmembernames interface androidx.work.impl.StartStopTokens {
  public java.util.List remove(java.lang.String);
  public androidx.work.impl.StartStopToken tokenFor(androidx.work.impl.model.WorkGenerationalId);
  androidx.work.impl.StartStopTokens$Companion Companion;
}
-keepclassmembernames class androidx.work.impl.WorkDatabase$Companion {
  public androidx.work.impl.WorkDatabase create(android.content.Context, java.util.concurrent.Executor, androidx.work.Clock, boolean);
}
-keepclassmembernames class androidx.work.impl.WorkDatabase {
  public androidx.work.impl.model.WorkSpecDao workSpecDao();
  androidx.work.impl.WorkDatabase$Companion Companion;
}
-keepclassmembernames interface androidx.work.impl.WorkLauncher {
  public void startWork(androidx.work.impl.StartStopToken);
  public void stopWork(androidx.work.impl.StartStopToken);
  public void stopWork(androidx.work.impl.StartStopToken, int);
}
-keepclassmembernames class androidx.work.impl.WorkLauncherImpl {
  public <init>(androidx.work.impl.Processor, androidx.work.impl.utils.taskexecutor.TaskExecutor);
}
-keepclassmembernames class androidx.work.impl.WorkManagerImpl {
  public void closeDatabase();
  public static androidx.work.impl.WorkManagerImpl getInstance();
  public static androidx.work.impl.WorkManagerImpl getInstance(android.content.Context);
  public java.util.List getSchedulers();
  public static void setDelegate(androidx.work.impl.WorkManagerImpl);
}
-keepclassmembernames class androidx.work.impl.WorkManagerImplExtKt {
  public static androidx.work.impl.WorkManagerImpl createWorkManager$default(android.content.Context, androidx.work.Configuration, androidx.work.impl.utils.taskexecutor.TaskExecutor, androidx.work.impl.WorkDatabase, androidx.work.impl.constraints.trackers.Trackers, androidx.work.impl.Processor, kotlin.jvm.functions.Function6, int, java.lang.Object);
}
-keepclassmembernames class androidx.work.impl.background.greedy.DelayedWorkTracker {
  public <init>(androidx.work.impl.Scheduler, androidx.work.RunnableScheduler, androidx.work.Clock);
  public void schedule(androidx.work.impl.model.WorkSpec, long);
  public void unschedule(java.lang.String);
}
-keepclassmembernames class androidx.work.impl.constraints.trackers.Trackers {
}
-keepclassmembernames class androidx.work.impl.model.WorkGenerationalId {
  public java.lang.String getWorkSpecId();
}
-keepclassmembernames class androidx.work.impl.model.WorkSpec {
  public long calculateNextRunTime();
  public long getNextScheduleTimeOverride();
  public int getPeriodCount();
  public boolean hasConstraints();
  public boolean isBackedOff();
  public boolean isPeriodic();
  java.lang.String id;
  long initialDelay;
  androidx.work.Data input;
  long lastEnqueueTime;
  int runAttemptCount;
  java.lang.String workerClassName;
}
-keepclassmembernames interface androidx.work.impl.model.WorkSpecDao {
  public androidx.work.impl.model.WorkSpec getWorkSpec(java.lang.String);
  public void setLastEnqueueTime(java.lang.String, long);
  public void setNextScheduleTimeOverride(java.lang.String, long);
}
-keepclassmembernames class androidx.work.impl.model.WorkSpecKt {
  public static androidx.work.impl.model.WorkGenerationalId generationalId(androidx.work.impl.model.WorkSpec);
}
-keepclassmembernames class androidx.work.impl.utils.SerialExecutorImpl {
  public <init>(java.util.concurrent.Executor);
}
-keepclassmembernames class androidx.work.impl.utils.SynchronousExecutor {
  public <init>();
}
-keepclassmembernames class androidx.work.impl.utils.futures.AbstractFuture {
  public boolean isCancelled();
}
-keepclassmembernames class androidx.work.impl.utils.futures.SettableFuture {
  public static androidx.work.impl.utils.futures.SettableFuture create();
  public boolean set(java.lang.Object);
}
-keepclassmembernames interface androidx.work.impl.utils.taskexecutor.SerialExecutor {
  public boolean hasPendingTasks();
}
-keepclassmembernames interface androidx.work.impl.utils.taskexecutor.TaskExecutor {
  public java.util.concurrent.Executor getMainThreadExecutor();
  public androidx.work.impl.utils.taskexecutor.SerialExecutor getSerialTaskExecutor();
}
-keepclassmembernames class androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor {
  public <init>(java.util.concurrent.Executor);
  public androidx.work.impl.utils.SerialExecutorImpl getSerialTaskExecutor();
}
-keepclassmembernames class com.google.android.material.bottomsheet.BottomSheetBehavior$BottomSheetCallback {
  public <init>();
  public void onSlide(android.view.View, float);
  public void onStateChanged(android.view.View, int);
}
-keepclassmembernames class com.google.android.material.bottomsheet.BottomSheetBehavior {
  public void addBottomSheetCallback(com.google.android.material.bottomsheet.BottomSheetBehavior$BottomSheetCallback);
  public static com.google.android.material.bottomsheet.BottomSheetBehavior from(android.view.View);
  public float getHalfExpandedRatio();
  public int getState();
}
-keepclassmembernames class com.google.android.material.button.MaterialButton {
  public boolean isCheckable();
}
-keepclassmembernames class com.google.android.material.navigation.NavigationView {
  public android.view.Menu getMenu();
}
-keepclassmembernames @interface com.google.common.annotations.Beta {
}
-keepclassmembernames @interface com.google.common.annotations.VisibleForTesting {
}
-keepclassmembernames class com.google.common.base.Ascii {
  public static boolean equalsIgnoreCase(java.lang.CharSequence, java.lang.CharSequence);
}
-keepclassmembernames interface com.google.common.base.Function {
  public java.lang.Object apply(java.lang.Object);
}
-keepclassmembernames class com.google.common.base.Optional {
  public static com.google.common.base.Optional absent();
  public static com.google.common.base.Optional fromNullable(java.lang.Object);
  public java.lang.Object or(java.lang.Object);
}
-keepclassmembernames class com.google.common.base.Preconditions {
  public static void checkArgument(boolean);
  public static void checkArgument(boolean, java.lang.Object);
  public static void checkArgument(boolean, java.lang.String, int);
  public static void checkArgument(boolean, java.lang.String, java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object, java.lang.Object);
  public static java.lang.Object checkNotNull(java.lang.Object, java.lang.String, java.lang.Object);
  public static void checkState(boolean, java.lang.Object);
}
-keepclassmembernames class com.google.common.base.Splitter {
  public static com.google.common.base.Splitter on(char);
  public java.util.List splitToList(java.lang.CharSequence);
}
-keep enum com.google.common.base.StandardSystemProperty {
  public java.lang.String value();
  com.google.common.base.StandardSystemProperty LINE_SEPARATOR;
}
-keepclassmembernames class com.google.common.base.Strings {
  public static java.lang.String nullToEmpty(java.lang.String);
}
-keepclassmembernames interface com.google.common.collect.BiMap {
  public com.google.common.collect.BiMap inverse();
  public java.lang.Object put(java.lang.Object, java.lang.Object);
  public java.util.Set values();
}
-keepclassmembernames class com.google.common.collect.EnumBiMap {
  public static com.google.common.collect.EnumBiMap create(java.util.Map);
  public com.google.common.collect.BiMap inverse();
}
-keepclassmembernames class com.google.common.collect.FluentIterable {
  public static com.google.common.collect.FluentIterable from(java.lang.Iterable);
  public com.google.common.collect.ImmutableList toList();
  public com.google.common.collect.FluentIterable transform(com.google.common.base.Function);
}
-keepclassmembernames class com.google.common.collect.ForwardingMap {
  public java.util.Set entrySet();
  public java.lang.Object get(java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.HashBiMap {
  public static com.google.common.collect.HashBiMap create();
}
-keepclassmembernames class com.google.common.collect.ImmutableBiMap$Builder {
  public com.google.common.collect.ImmutableBiMap build();
  public com.google.common.collect.ImmutableBiMap$Builder put(java.lang.Object, java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.ImmutableBiMap {
  public static com.google.common.collect.ImmutableBiMap$Builder builder();
  public static com.google.common.collect.ImmutableBiMap copyOf(java.util.Map);
  public com.google.common.collect.ImmutableBiMap inverse();
  public static com.google.common.collect.ImmutableBiMap of(java.lang.Object, java.lang.Object);
  public com.google.common.collect.ImmutableSet values();
}
-keepclassmembernames class com.google.common.collect.ImmutableClassToInstanceMap$Builder {
  public <init>();
  public com.google.common.collect.ImmutableClassToInstanceMap build();
  public com.google.common.collect.ImmutableClassToInstanceMap$Builder put(java.lang.Class, java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.ImmutableClassToInstanceMap {
}
-keepclassmembernames class com.google.common.collect.ImmutableList$Builder {
  public <init>();
  public com.google.common.collect.ImmutableList$Builder add(java.lang.Object);
  public com.google.common.collect.ImmutableList$Builder addAll(java.lang.Iterable);
  public com.google.common.collect.ImmutableList build();
}
-keepclassmembernames class com.google.common.collect.ImmutableList {
  public static com.google.common.collect.ImmutableList$Builder builder();
  public static com.google.common.collect.ImmutableList copyOf(java.util.Collection);
  public boolean equals(java.lang.Object);
  public com.google.common.collect.UnmodifiableIterator iterator();
  public static com.google.common.collect.ImmutableList of();
  public static com.google.common.collect.ImmutableList of(java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
  public static com.google.common.collect.ImmutableList of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.ImmutableMap$Builder {
  public com.google.common.collect.ImmutableMap build();
  public com.google.common.collect.ImmutableMap$Builder put(java.lang.Object, java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.ImmutableMap {
  public static com.google.common.collect.ImmutableMap$Builder builder();
  public boolean containsValue(java.lang.Object);
  public static com.google.common.collect.ImmutableMap copyOf(java.util.Map);
  public com.google.common.collect.ImmutableSet entrySet();
  public java.lang.Object get(java.lang.Object);
  public com.google.common.collect.ImmutableSet keySet();
  public static com.google.common.collect.ImmutableMap of();
  public static com.google.common.collect.ImmutableMap of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames class com.google.common.collect.ImmutableSet$Builder {
  public <init>();
  public com.google.common.collect.ImmutableSet$Builder add(java.lang.Object);
  public com.google.common.collect.ImmutableSet$Builder addAll(java.lang.Iterable);
  public com.google.common.collect.ImmutableSet build();
}
-keepclassmembernames class com.google.common.collect.ImmutableSet {
  public static com.google.common.collect.ImmutableSet$Builder builder();
  public com.google.common.collect.UnmodifiableIterator iterator();
  public static com.google.common.collect.ImmutableSet of();
  public static com.google.common.collect.ImmutableSet of(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]);
}
-keepclassmembernames class com.google.common.collect.Lists {
  public static java.util.ArrayList newArrayList(java.lang.Object[]);
  public static java.util.List transform(java.util.List, com.google.common.base.Function);
}
-keepclassmembernames class com.google.common.collect.UnmodifiableIterator {
}
-keepclassmembernames interface com.google.common.util.concurrent.ListenableFuture {
  public void addListener(java.lang.Runnable, java.util.concurrent.Executor);
}
-keepclassmembernames @interface com.google.errorprone.annotations.CanIgnoreReturnValue {
}
-keepclassmembernames @interface com.google.errorprone.annotations.CheckReturnValue {
}
-keepclassmembernames @interface com.google.errorprone.annotations.InlineMe {
  public java.lang.String replacement();
}
-keepclassmembernames @interface com.google.errorprone.annotations.MustBeClosed {
}
-keepclassmembernames class com.google.protobuf.AbstractMessageLite {
}
-keepclassmembernames class com.google.protobuf.ByteString {
  public java.nio.ByteBuffer asReadOnlyByteBuffer();
  public static com.google.protobuf.ByteString copyFrom(java.nio.ByteBuffer);
  public static com.google.protobuf.ByteString copyFromUtf8(java.lang.String);
  public java.lang.String toStringUtf8();
  com.google.protobuf.ByteString EMPTY;
}
-keepclassmembernames class com.google.protobuf.CodedInputStream {
  public int getBytesUntilLimit();
  public void popLimit(int);
  public int pushLimit(int);
  public boolean readBool();
  public com.google.protobuf.ByteString readBytes();
  public double readDouble();
  public int readEnum();
  public float readFloat();
  public int readInt32();
  public long readInt64();
  public com.google.protobuf.MessageLite readMessage(com.google.protobuf.Parser, com.google.protobuf.ExtensionRegistryLite);
  public int readRawVarint32();
  public java.lang.String readString();
  public int readTag();
}
-keepclassmembernames class com.google.protobuf.CodedOutputStream {
  public static int computeBoolSize(int, boolean);
  public static int computeBytesSize(int, com.google.protobuf.ByteString);
  public static int computeDoubleSize(int, double);
  public static int computeEnumSize(int, int);
  public static int computeFloatSize(int, float);
  public static int computeInt32Size(int, int);
  public static int computeInt32SizeNoTag(int);
  public static int computeInt64Size(int, long);
  public static int computeMessageSize(int, com.google.protobuf.MessageLite);
  public static int computeStringSize(int, java.lang.String);
  public static int computeStringSizeNoTag(java.lang.String);
  public void writeBool(int, boolean);
  public void writeBytes(int, com.google.protobuf.ByteString);
  public void writeDouble(int, double);
  public void writeEnum(int, int);
  public void writeFloat(int, float);
  public void writeInt32(int, int);
  public void writeInt64(int, long);
  public void writeMessage(int, com.google.protobuf.MessageLite);
  public void writeString(int, java.lang.String);
}
-keepclassmembernames class com.google.protobuf.ExtensionRegistryLite {
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite$Builder {
  protected <init>(com.google.protobuf.GeneratedMessageLite);
  public com.google.protobuf.GeneratedMessageLite build();
  public com.google.protobuf.GeneratedMessageLite buildPartial();
  protected void copyOnWrite();
  public com.google.protobuf.GeneratedMessageLite$Builder mergeFrom(com.google.protobuf.GeneratedMessageLite);
  com.google.protobuf.GeneratedMessageLite instance;
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite$DefaultInstanceBasedParser {
  public <init>(com.google.protobuf.GeneratedMessageLite);
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite$ExtendableBuilder {
  protected <init>(com.google.protobuf.GeneratedMessageLite$ExtendableMessage);
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite$ExtendableMessage$ExtensionWriter {
  public void writeUntil(int, com.google.protobuf.CodedOutputStream);
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite$ExtendableMessage {
  public <init>();
  protected java.lang.Object dynamicMethod(com.google.protobuf.GeneratedMessageLite$MethodToInvoke, java.lang.Object, java.lang.Object);
  protected boolean extensionsAreInitialized();
  protected int extensionsSerializedSize();
  public int getSerializedSize();
  protected com.google.protobuf.GeneratedMessageLite$ExtendableMessage$ExtensionWriter newExtensionWriter();
  protected boolean parseUnknownField(com.google.protobuf.MessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite, int);
  public void writeTo(com.google.protobuf.CodedOutputStream);
}
-keepclassmembernames interface com.google.protobuf.GeneratedMessageLite$ExtendableMessageOrBuilder {
}
-keep enum com.google.protobuf.GeneratedMessageLite$MethodToInvoke {
  public static com.google.protobuf.GeneratedMessageLite$MethodToInvoke[] values();
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke GET_DEFAULT_INSTANCE;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke GET_PARSER;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke NEW_BUILDER;
  com.google.protobuf.GeneratedMessageLite$MethodToInvoke NEW_MUTABLE_INSTANCE;
}
-keepclassmembernames class com.google.protobuf.GeneratedMessageLite {
  public <init>();
  protected java.lang.Object dynamicMethod(com.google.protobuf.GeneratedMessageLite$MethodToInvoke, java.lang.Object, java.lang.Object);
  protected static com.google.protobuf.Internal$IntList emptyIntList();
  protected static com.google.protobuf.Internal$ProtobufList emptyProtobufList();
  public com.google.protobuf.GeneratedMessageLite getDefaultInstanceForType();
  public com.google.protobuf.Parser getParserForType();
  public int getSerializedSize();
  public boolean isInitialized();
  protected void makeImmutable();
  protected void mergeVarintField(int, int);
  protected static com.google.protobuf.Internal$IntList mutableCopy(com.google.protobuf.Internal$IntList);
  protected static com.google.protobuf.Internal$ProtobufList mutableCopy(com.google.protobuf.Internal$ProtobufList);
  protected static com.google.protobuf.GeneratedMessageLite parseDelimitedFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseDelimitedFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.ByteString);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.ByteString, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.CodedInputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, java.io.InputStream, com.google.protobuf.ExtensionRegistryLite);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, byte[]);
  protected static com.google.protobuf.GeneratedMessageLite parseFrom(com.google.protobuf.GeneratedMessageLite, byte[], com.google.protobuf.ExtensionRegistryLite);
  protected boolean parseUnknownField(int, com.google.protobuf.CodedInputStream);
  public com.google.protobuf.GeneratedMessageLite$Builder toBuilder();
  public void writeTo(com.google.protobuf.CodedOutputStream);
  int memoizedSerializedSize;
  com.google.protobuf.UnknownFieldSetLite unknownFields;
}
-keepclassmembernames interface com.google.protobuf.Internal$EnumLite {
  public int getNumber();
}
-keepclassmembernames interface com.google.protobuf.Internal$EnumLiteMap {
  public com.google.protobuf.Internal$EnumLite findValueByNumber(int);
}
-keepclassmembernames interface com.google.protobuf.Internal$IntList {
  public void addInt(int);
  public int getInt(int);
  public int setInt(int, int);
}
-keepclassmembernames interface com.google.protobuf.Internal$ProtobufList {
  public boolean isModifiable();
  public void makeImmutable();
}
-keepclassmembernames class com.google.protobuf.Internal {
}
-keepclassmembernames class com.google.protobuf.InvalidProtocolBufferException {
  public <init>(java.lang.String);
  public com.google.protobuf.InvalidProtocolBufferException setUnfinishedMessage(com.google.protobuf.MessageLite);
}
-keepclassmembernames class com.google.protobuf.MapEntryLite {
  public int computeMessageSize(int, java.lang.Object, java.lang.Object);
  public static com.google.protobuf.MapEntryLite newDefaultInstance(com.google.protobuf.WireFormat$FieldType, java.lang.Object, com.google.protobuf.WireFormat$FieldType, java.lang.Object);
  public void parseInto(com.google.protobuf.MapFieldLite, com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite);
  public void serializeTo(com.google.protobuf.CodedOutputStream, int, java.lang.Object, java.lang.Object);
}
-keepclassmembernames class com.google.protobuf.MapFieldLite {
  public static com.google.protobuf.MapFieldLite emptyMapField();
  public java.util.Set entrySet();
  public boolean isMutable();
  public void makeImmutable();
  public com.google.protobuf.MapFieldLite mutableCopy();
}
-keepclassmembernames interface com.google.protobuf.MessageLite {
}
-keepclassmembernames interface com.google.protobuf.MessageLiteOrBuilder {
}
-keepclassmembernames interface com.google.protobuf.Parser {
}
-keepclassmembernames class com.google.protobuf.UnknownFieldSetLite {
  public int getSerializedSize();
  public void writeTo(com.google.protobuf.CodedOutputStream);
}
-keep enum com.google.protobuf.WireFormat$FieldType {
  com.google.protobuf.WireFormat$FieldType INT32;
  com.google.protobuf.WireFormat$FieldType MESSAGE;
  com.google.protobuf.WireFormat$FieldType STRING;
}
-keepclassmembernames class com.google.protobuf.WireFormat {
}
-keepclassmembernames interface com.sun.jna.FunctionMapper {
  public java.lang.String getFunctionName(com.sun.jna.NativeLibrary, java.lang.reflect.Method);
}
-keepclassmembernames class com.sun.jna.JNIEnv {
  com.sun.jna.JNIEnv CURRENT;
}
-keepclassmembernames class com.sun.jna.LastErrorException {
}
-keepclassmembernames interface com.sun.jna.Library {
}
-keepclassmembernames class com.sun.jna.Memory {
  public <init>(long);
  public long size();
  public void write(long, byte[], int, int);
}
-keepclassmembernames class com.sun.jna.Native {
  public static int getLastError();
  public static int getNativeSize(java.lang.Class, java.lang.Object);
  public static java.lang.Object loadLibrary(java.lang.String, java.lang.Class);
  public static java.lang.Object loadLibrary(java.lang.String, java.lang.Class, java.util.Map);
  public static java.lang.String toString(char[]);
}
-keepclassmembernames class com.sun.jna.NativeLibrary {
}
-keepclassmembernames class com.sun.jna.Platform {
  public static boolean is64Bit();
  public static boolean isAIX();
  public static boolean isLinux();
  public static boolean isMac();
  public static boolean isSolaris();
  public static boolean isWindows();
}
-keepclassmembernames class com.sun.jna.Pointer {
  public int getInt(long);
  public java.lang.String getString(long);
}
-keepclassmembernames class com.sun.jna.Structure {
  protected <init>();
  protected java.util.List getFieldOrder();
  public int size();
}
-keepclassmembernames class com.sun.jna.ptr.IntByReference {
  public <init>();
  public <init>(int);
  public int getValue();
}
-keepclassmembernames interface com.sun.jna.win32.StdCallLibrary {
}
-keepclassmembernames interface com.sun.jna.win32.W32APIOptions {
  java.util.Map DEFAULT_OPTIONS;
}
-keepclassmembernames @interface javax.inject.Inject {
}
-keepclassmembernames interface javax.inject.Provider {
  public java.lang.Object get();
}
-keepclassmembernames @interface javax.inject.Qualifier {
}
-keepclassmembernames @interface javax.inject.Scope {
}
-keepclassmembernames @interface javax.inject.Singleton {
}
-keepclassmembernames @interface kotlin.Deprecated {
  public kotlin.DeprecationLevel level();
  public java.lang.String message();
  public kotlin.ReplaceWith replaceWith();
}
-keep enum kotlin.DeprecationLevel {
  public static kotlin.DeprecationLevel[] values();
  kotlin.DeprecationLevel ERROR;
  kotlin.DeprecationLevel HIDDEN;
  kotlin.DeprecationLevel WARNING;
}
-keepclassmembernames class kotlin.ExceptionsKt {
}
-keepclassmembernames class kotlin.ExceptionsKt__ExceptionsKt {
  public static void addSuppressed(java.lang.Throwable, java.lang.Throwable);
  public static java.lang.String stackTraceToString(java.lang.Throwable);
}
-keepclassmembernames @interface kotlin.ExperimentalContextParameters {
}
-keepclassmembernames @interface kotlin.ExperimentalStdlibApi {
}
-keepclassmembernames @interface kotlin.ExtensionFunctionType {
}
-keepclassmembernames interface kotlin.Function {
}
-keepclassmembernames @interface kotlin.IgnorableReturnValue {
}
-keepclassmembernames class kotlin.KotlinNothingValueException {
  public <init>();
}
-keepclassmembernames class kotlin.KotlinVersion {
  public <init>(int, int);
  public int compareTo(kotlin.KotlinVersion);
  public int hashCode();
}
-keepclassmembernames interface kotlin.Lazy {
  public java.lang.Object getValue();
}
-keepclassmembernames class kotlin.LazyKt {
}
-keepclassmembernames class kotlin.LazyKt__LazyJVMKt {
  public static kotlin.Lazy lazy(kotlin.LazyThreadSafetyMode, kotlin.jvm.functions.Function0);
  public static kotlin.Lazy lazy(kotlin.jvm.functions.Function0);
}
-keepclassmembernames class kotlin.LazyKt__LazyKt {
  public static kotlin.Lazy lazyOf(java.lang.Object);
}
-keep enum kotlin.LazyThreadSafetyMode {
  kotlin.LazyThreadSafetyMode NONE;
  kotlin.LazyThreadSafetyMode PUBLICATION;
}
-keepclassmembernames @interface kotlin.Metadata {
  public int[] bv();
  public java.lang.String[] d1();
  public java.lang.String[] d2();
  public int k();
  public int[] mv();
  public java.lang.String pn();
  public int xi();
  public java.lang.String xs();
}
-keepclassmembernames class kotlin.NoWhenBranchMatchedException {
  public <init>();
}
-keepclassmembernames class kotlin.NotImplementedError {
  public <init>(java.lang.String);
}
-keepclassmembernames class kotlin.Pair {
  public <init>(java.lang.Object, java.lang.Object);
  public java.lang.Object component1();
  public java.lang.Object component2();
  public java.lang.Object getFirst();
  public java.lang.Object getSecond();
  public int hashCode();
}
-keepclassmembernames @interface kotlin.ParameterName {
}
-keepclassmembernames @interface kotlin.PublishedApi {
}
-keep enum kotlin.RequiresOptIn$Level {
  kotlin.RequiresOptIn$Level ERROR;
  kotlin.RequiresOptIn$Level WARNING;
}
-keepclassmembernames @interface kotlin.RequiresOptIn {
  public kotlin.RequiresOptIn$Level level();
  public java.lang.String message();
}
-keepclassmembernames class kotlin.Result$Companion {
}
-keepclassmembernames class kotlin.Result {
  public static kotlin.Result box-impl(java.lang.Object);
  public static java.lang.Object constructor-impl(java.lang.Object);
  public static java.lang.Throwable exceptionOrNull-impl(java.lang.Object);
  public static boolean isFailure-impl(java.lang.Object);
  public static boolean isSuccess-impl(java.lang.Object);
  public java.lang.Object unbox-impl();
  kotlin.Result$Companion Companion;
}
-keepclassmembernames class kotlin.ResultKt {
  public static java.lang.Object createFailure(java.lang.Throwable);
  public static void throwOnFailure(java.lang.Object);
}
-keepclassmembernames @interface kotlin.SinceKotlin {
  public java.lang.String version();
}
-keepclassmembernames class kotlin.Triple {
  public <init>(java.lang.Object, java.lang.Object, java.lang.Object);
  public java.lang.Object component1();
  public java.lang.Object component2();
  public java.lang.Object component3();
  public java.lang.Object getThird();
}
-keepclassmembernames class kotlin.TuplesKt {
  public static kotlin.Pair to(java.lang.Object, java.lang.Object);
}
-keepclassmembernames class kotlin.TypeCastException {
  public <init>(java.lang.String);
}
-keepclassmembernames class kotlin.UByte {
  public static kotlin.UByte box-impl(byte);
  public static byte constructor-impl(byte);
  public static int hashCode-impl(byte);
  public byte unbox-impl();
}
-keepclassmembernames class kotlin.UByteArray {
  public static kotlin.UByteArray box-impl(byte[]);
  public static boolean contains-7apg3OU(byte[], byte);
  public static byte get-w2LRezQ(byte[], int);
  public static int getSize-impl(byte[]);
  public byte[] unbox-impl();
}
-keepclassmembernames class kotlin.UInt {
  public static kotlin.UInt box-impl(int);
  public static int constructor-impl(int);
  public static int hashCode-impl(int);
  public static java.lang.String toString-impl(int);
  public int unbox-impl();
}
-keepclassmembernames class kotlin.UIntArray {
  public static kotlin.UIntArray box-impl(int[]);
  public static boolean contains-WZ4Q5Ns(int[], int);
  public static int get-pVg5ArA(int[], int);
  public static int getSize-impl(int[]);
  public int[] unbox-impl();
}
-keepclassmembernames class kotlin.ULong {
  public static kotlin.ULong box-impl(long);
  public static long constructor-impl(long);
  public static int hashCode-impl(long);
  public long unbox-impl();
}
-keepclassmembernames class kotlin.ULongArray {
  public static kotlin.ULongArray box-impl(long[]);
  public static boolean contains-VKZWuLQ(long[], long);
  public static long get-s-VKNKU(long[], int);
  public static int getSize-impl(long[]);
  public long[] unbox-impl();
}
-keepclassmembernames class kotlin.UShort {
  public static kotlin.UShort box-impl(short);
  public static short constructor-impl(short);
  public static int hashCode-impl(short);
  public short unbox-impl();
}
-keepclassmembernames class kotlin.UShortArray {
  public static kotlin.UShortArray box-impl(short[]);
  public static boolean contains-xj2QHRw(short[], short);
  public static short get-Mh2AYeg(short[], int);
  public static int getSize-impl(short[]);
  public short[] unbox-impl();
}
-keepclassmembernames class kotlin.UninitializedPropertyAccessException {
}
-keepclassmembernames class kotlin.Unit {
  kotlin.Unit INSTANCE;
}
-keepclassmembernames @interface kotlin.WasExperimental {
  public java.lang.Class[] markerClass();
}
-keepclassmembernames class kotlin._Assertions {
  boolean ENABLED;
}
-keep enum kotlin.annotation.AnnotationRetention {
  kotlin.annotation.AnnotationRetention BINARY;
  kotlin.annotation.AnnotationRetention RUNTIME;
  kotlin.annotation.AnnotationRetention SOURCE;
}
-keep enum kotlin.annotation.AnnotationTarget {
  kotlin.annotation.AnnotationTarget ANNOTATION_CLASS;
  kotlin.annotation.AnnotationTarget CLASS;
  kotlin.annotation.AnnotationTarget CONSTRUCTOR;
  kotlin.annotation.AnnotationTarget FIELD;
  kotlin.annotation.AnnotationTarget FUNCTION;
  kotlin.annotation.AnnotationTarget LOCAL_VARIABLE;
  kotlin.annotation.AnnotationTarget PROPERTY;
  kotlin.annotation.AnnotationTarget PROPERTY_GETTER;
  kotlin.annotation.AnnotationTarget PROPERTY_SETTER;
  kotlin.annotation.AnnotationTarget TYPEALIAS;
  kotlin.annotation.AnnotationTarget VALUE_PARAMETER;
}
-keepclassmembernames @interface kotlin.annotation.MustBeDocumented {
}
-keepclassmembernames @interface kotlin.annotation.Retention {
  public kotlin.annotation.AnnotationRetention value();
}
-keepclassmembernames @interface kotlin.annotation.Target {
  public kotlin.annotation.AnnotationTarget[] allowedTargets();
}
-keepclassmembernames class kotlin.collections.AbstractCollection {
  public boolean contains(java.lang.Object);
}
-keepclassmembernames class kotlin.collections.AbstractIterator {
  public <init>();
  protected void computeNext();
  protected void done();
  protected void setNext(java.lang.Object);
}
-keepclassmembernames class kotlin.collections.AbstractList {
  protected <init>();
  public java.lang.Object get(int);
  public int getSize();
  public java.lang.Object[] toArray();
}
-keepclassmembernames class kotlin.collections.AbstractMutableList {
  protected <init>();
  public void add(int, java.lang.Object);
  public int getSize();
  public java.lang.Object removeAt(int);
  public java.lang.Object set(int, java.lang.Object);
}
-keepclassmembernames class kotlin.collections.AbstractMutableSet {
  protected <init>();
  public boolean add(java.lang.Object);
  public int getSize();
  public int size();
}
-keepclassmembernames class kotlin.collections.ArrayDeque {
  public <init>();
  public <init>(java.util.Collection);
  public boolean add(java.lang.Object);
  public void addFirst(java.lang.Object);
  public void addLast(java.lang.Object);
  public boolean isEmpty();
  public java.lang.Object removeFirst();
  public java.lang.Object removeFirstOrNull();
}
-keepclassmembernames class kotlin.collections.ArraysKt {
}
-keepclassmembernames class kotlin.collections.ArraysKt__ArraysKt {
  public static boolean contentDeepEquals(java.lang.Object[], java.lang.Object[]);
  public static java.lang.String contentDeepToString(java.lang.Object[]);
}
-keepclassmembernames class kotlin.collections.ArraysKt___ArraysJvmKt {
  public static java.util.List asList(int[]);
  public static java.util.List asList(java.lang.Object[]);
  public static int binarySearch$default(int[], int, int, int, int, java.lang.Object);
  public static byte[] copyInto(byte[], byte[], int, int, int);
  public static char[] copyOfRange(char[], int, int);
  public static java.lang.Object[] copyOfRange(java.lang.Object[], int, int);
  public static void fill$default(int[], int, int, int, int, java.lang.Object);
  public static void fill$default(java.lang.Object[], java.lang.Object, int, int, int, java.lang.Object);
  public static void fill(byte[], byte, int, int);
  public static void fill(java.lang.Object[], java.lang.Object, int, int);
  public static java.lang.Object[] plus(java.lang.Object[], java.lang.Object);
  public static java.lang.Object[] plus(java.lang.Object[], java.lang.Object[]);
  public static java.lang.Byte[] toTypedArray(byte[]);
  public static java.lang.Character[] toTypedArray(char[]);
  public static java.lang.Double[] toTypedArray(double[]);
  public static java.lang.Float[] toTypedArray(float[]);
  public static java.lang.Integer[] toTypedArray(int[]);
  public static java.lang.Long[] toTypedArray(long[]);
  public static java.lang.Short[] toTypedArray(short[]);
  public static java.lang.Boolean[] toTypedArray(boolean[]);
}
-keepclassmembernames class kotlin.collections.ArraysKt___ArraysKt {
  public static java.lang.Iterable asIterable(java.lang.Object[]);
  public static kotlin.sequences.Sequence asSequence(long[]);
  public static kotlin.sequences.Sequence asSequence(java.lang.Object[]);
  public static boolean contains(byte[], byte);
  public static boolean contains(char[], char);
  public static boolean contains(int[], int);
  public static boolean contains(long[], long);
  public static boolean contains(java.lang.Object[], java.lang.Object);
  public static boolean contains(short[], short);
  public static boolean contains(boolean[], boolean);
  public static java.util.List drop(java.lang.Object[], int);
  public static java.lang.Object first(java.lang.Object[]);
  public static java.lang.Object firstOrNull(java.lang.Object[]);
  public static int getLastIndex(long[]);
  public static int getLastIndex(java.lang.Object[]);
  public static java.lang.Integer getOrNull(int[], int);
  public static java.lang.Object getOrNull(java.lang.Object[], int);
  public static int indexOf(java.lang.Object[], java.lang.Object);
  public static java.lang.String joinToString$default(byte[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(char[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(java.lang.Object[], java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static long last(long[]);
  public static java.lang.Object last(java.lang.Object[]);
  public static java.lang.Object lastOrNull(java.lang.Object[]);
  public static java.lang.Object[] requireNoNulls(java.lang.Object[]);
  public static void reverse(java.lang.Object[]);
  public static java.lang.Object single(java.lang.Object[]);
  public static byte[] sliceArray(byte[], kotlin.ranges.IntRange);
  public static java.util.List sorted(java.lang.Comparable[]);
  public static java.util.List sortedWith(java.lang.Object[], java.util.Comparator);
  public static java.util.List take(byte[], int);
  public static boolean[] toBooleanArray(java.lang.Boolean[]);
  public static byte[] toByteArray(java.lang.Byte[]);
  public static char[] toCharArray(java.lang.Character[]);
  public static double[] toDoubleArray(java.lang.Double[]);
  public static float[] toFloatArray(java.lang.Float[]);
  public static int[] toIntArray(java.lang.Integer[]);
  public static java.util.List toList(byte[]);
  public static java.util.List toList(char[]);
  public static java.util.List toList(double[]);
  public static java.util.List toList(float[]);
  public static java.util.List toList(int[]);
  public static java.util.List toList(long[]);
  public static java.util.List toList(java.lang.Object[]);
  public static java.util.List toList(short[]);
  public static java.util.List toList(boolean[]);
  public static long[] toLongArray(java.lang.Long[]);
  public static java.util.Set toSet(java.lang.Object[]);
  public static short[] toShortArray(java.lang.Short[]);
  public static java.lang.Iterable withIndex(java.lang.Object[]);
  public static java.util.List zip(java.lang.Object[], java.lang.Iterable);
  public static java.util.List zip(java.lang.Object[], java.lang.Object[]);
}
-keepclassmembernames class kotlin.collections.CollectionsKt {
}
-keepclassmembernames class kotlin.collections.CollectionsKt__CollectionsJVMKt {
  public static java.util.List build(java.util.List);
  public static java.util.List createListBuilder();
  public static java.util.List createListBuilder(int);
  public static java.util.List listOf(java.lang.Object);
  public static java.util.List shuffled(java.lang.Iterable);
}
-keepclassmembernames class kotlin.collections.CollectionsKt__CollectionsKt {
  public static java.util.ArrayList arrayListOf(java.lang.Object[]);
  public static java.util.List emptyList();
  public static kotlin.ranges.IntRange getIndices(java.util.Collection);
  public static int getLastIndex(java.util.List);
  public static java.util.List listOf(java.lang.Object[]);
  public static java.util.List listOfNotNull(java.lang.Object);
  public static java.util.List listOfNotNull(java.lang.Object[]);
  public static java.util.List mutableListOf(java.lang.Object[]);
  public static void throwCountOverflow();
  public static void throwIndexOverflow();
}
-keepclassmembernames class kotlin.collections.CollectionsKt__IterablesKt {
  public static int collectionSizeOrDefault(java.lang.Iterable, int);
  public static java.util.List flatten(java.lang.Iterable);
}
-keepclassmembernames class kotlin.collections.CollectionsKt__IteratorsJVMKt {
  public static java.util.Iterator iterator(java.util.Enumeration);
}
-keepclassmembernames class kotlin.collections.CollectionsKt__MutableCollectionsJVMKt {
  public static void sortWith(java.util.List, java.util.Comparator);
}
-keepclassmembernames class kotlin.collections.CollectionsKt__MutableCollectionsKt {
  public static boolean addAll(java.util.Collection, java.lang.Iterable);
  public static boolean addAll(java.util.Collection, kotlin.sequences.Sequence);
  public static boolean addAll(java.util.Collection, java.lang.Object[]);
  public static boolean retainAll(java.util.List, kotlin.jvm.functions.Function1);
}
-keepclassmembernames class kotlin.collections.CollectionsKt__ReversedViewsKt {
  public static java.util.List asReversedMutable(java.util.List);
}
-keepclassmembernames class kotlin.collections.CollectionsKt___CollectionsJvmKt {
  public static java.util.List filterIsInstance(java.lang.Iterable, java.lang.Class);
  public static java.lang.Comparable max(java.lang.Iterable);
}
-keepclassmembernames class kotlin.collections.CollectionsKt___CollectionsKt {
  public static boolean all(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence asSequence(java.lang.Iterable);
  public static double averageOfDouble(java.lang.Iterable);
  public static java.util.List chunked(java.lang.Iterable, int);
  public static boolean contains(java.lang.Iterable, java.lang.Object);
  public static int count(java.lang.Iterable);
  public static java.util.List distinct(java.lang.Iterable);
  public static java.util.List drop(java.lang.Iterable, int);
  public static java.util.List dropLast(java.util.List, int);
  public static java.util.List filter(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static java.util.List filterNotNull(java.lang.Iterable);
  public static java.lang.Object first(java.lang.Iterable);
  public static java.lang.Object first(java.util.List);
  public static java.lang.Object firstOrNull(java.lang.Iterable);
  public static java.lang.Object firstOrNull(java.util.List);
  public static java.lang.Object getOrNull(java.util.List, int);
  public static java.util.Set intersect(java.lang.Iterable, java.lang.Iterable);
  public static java.lang.Appendable joinTo$default(java.lang.Iterable, java.lang.Appendable, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.String joinToString$default(java.lang.Iterable, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static java.lang.Object last(java.lang.Iterable);
  public static java.lang.Object last(java.util.List);
  public static java.lang.Object lastOrNull(java.lang.Iterable);
  public static java.lang.Object lastOrNull(java.util.List);
  public static java.util.List map(java.lang.Iterable, kotlin.jvm.functions.Function1);
  public static java.lang.Comparable minOrNull(java.lang.Iterable);
  public static java.util.List minus(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List minus(java.lang.Iterable, java.lang.Object);
  public static java.util.List plus(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List plus(java.lang.Iterable, java.lang.Object);
  public static java.util.List plus(java.util.Collection, java.lang.Iterable);
  public static java.util.List plus(java.util.Collection, java.lang.Object);
  public static java.util.List plus(java.util.Collection, java.lang.Object[]);
  public static java.lang.Object random(java.util.Collection, kotlin.random.Random);
  public static java.util.List reversed(java.lang.Iterable);
  public static java.lang.Object single(java.lang.Iterable);
  public static java.lang.Object single(java.util.List);
  public static java.lang.Object singleOrNull(java.lang.Iterable);
  public static java.lang.Object singleOrNull(java.util.List);
  public static java.util.List slice(java.util.List, kotlin.ranges.IntRange);
  public static java.util.List sorted(java.lang.Iterable);
  public static java.util.List sortedWith(java.lang.Iterable, java.util.Comparator);
  public static double sumOfDouble(java.lang.Iterable);
  public static int sumOfInt(java.lang.Iterable);
  public static java.util.List take(java.lang.Iterable, int);
  public static java.util.List takeLast(java.util.List, int);
  public static java.util.HashSet toHashSet(java.lang.Iterable);
  public static int[] toIntArray(java.util.Collection);
  public static java.util.List toList(java.lang.Iterable);
  public static java.util.List toMutableList(java.util.Collection);
  public static java.util.Set toMutableSet(java.lang.Iterable);
  public static java.util.Set toSet(java.lang.Iterable);
  public static java.util.Set union(java.lang.Iterable, java.lang.Iterable);
  public static java.lang.Iterable withIndex(java.lang.Iterable);
  public static java.util.List zip(java.lang.Iterable, java.lang.Iterable);
  public static java.util.List zipWithNext(java.lang.Iterable);
}
-keepclassmembernames class kotlin.collections.IndexedValue {
  public int component1();
  public java.lang.Object component2();
  public int getIndex();
  public java.lang.Object getValue();
}
-keepclassmembernames class kotlin.collections.IntIterator {
  public int nextInt();
}
-keepclassmembernames class kotlin.collections.MapsKt {
}
-keepclassmembernames class kotlin.collections.MapsKt__MapsJVMKt {
  public static java.util.Map build(java.util.Map);
  public static java.util.Map createMapBuilder();
  public static int mapCapacity(int);
  public static java.util.Map mapOf(kotlin.Pair);
  public static java.util.SortedMap toSortedMap(java.util.Map);
  public static java.util.SortedMap toSortedMap(java.util.Map, java.util.Comparator);
}
-keepclassmembernames class kotlin.collections.MapsKt__MapsKt {
  public static java.util.Map emptyMap();
  public static java.lang.Object getValue(java.util.Map, java.lang.Object);
  public static java.util.HashMap hashMapOf(kotlin.Pair[]);
  public static java.util.Map mapOf(kotlin.Pair[]);
  public static java.util.Map minus(java.util.Map, java.lang.Object);
  public static java.util.Map mutableMapOf(kotlin.Pair[]);
  public static java.util.Map plus(java.util.Map, java.util.Map);
  public static java.util.Map plus(java.util.Map, kotlin.Pair);
  public static void putAll(java.util.Map, kotlin.Pair[]);
  public static java.util.Map toMap(java.lang.Iterable);
  public static java.util.Map toMap(java.util.Map);
  public static java.util.Map toMap(kotlin.sequences.Sequence);
  public static java.util.Map toMap(kotlin.Pair[]);
  public static java.util.Map toMutableMap(java.util.Map);
}
-keepclassmembernames class kotlin.collections.MapsKt___MapsKt {
  public static java.util.List toList(java.util.Map);
}
-keepclassmembernames class kotlin.collections.SetsKt {
}
-keepclassmembernames class kotlin.collections.SetsKt__SetsJVMKt {
  public static java.util.Set build(java.util.Set);
  public static java.util.Set createSetBuilder();
  public static java.util.Set setOf(java.lang.Object);
}
-keepclassmembernames class kotlin.collections.SetsKt__SetsKt {
  public static java.util.Set emptySet();
  public static java.util.LinkedHashSet linkedSetOf(java.lang.Object[]);
  public static java.util.Set setOf(java.lang.Object[]);
  public static java.util.Set setOfNotNull(java.lang.Object);
}
-keepclassmembernames class kotlin.collections.SetsKt___SetsKt {
  public static java.util.Set minus(java.util.Set, java.lang.Iterable);
  public static java.util.Set minus(java.util.Set, java.lang.Object);
  public static java.util.Set plus(java.util.Set, java.lang.Iterable);
  public static java.util.Set plus(java.util.Set, java.lang.Object);
}
-keepclassmembernames class kotlin.collections.unsigned.UArraysKt {
}
-keepclassmembernames class kotlin.collections.unsigned.UArraysKt___UArraysKt {
  public static boolean contentEquals-FGO6Aew(short[], short[]);
  public static boolean contentEquals-KJPZfPQ(int[], int[]);
  public static boolean contentEquals-kV0jMPg(byte[], byte[]);
  public static boolean contentEquals-lec5QzE(long[], long[]);
  public static java.lang.String contentToString-2csIQuQ(byte[]);
  public static java.lang.String contentToString-XUkPCBk(int[]);
  public static java.lang.String contentToString-d-6D3K8(short[]);
  public static java.lang.String contentToString-uLth9ew(long[]);
}
-keepclassmembernames class kotlin.comparisons.ComparisonsKt {
}
-keepclassmembernames class kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$2 {
}
-keepclassmembernames class kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareByDescending$1 {
}
-keepclassmembernames class kotlin.comparisons.ComparisonsKt__ComparisonsKt {
  public static java.util.Comparator compareBy(kotlin.jvm.functions.Function1[]);
  public static int compareValues(java.lang.Comparable, java.lang.Comparable);
  public static int compareValuesBy(java.lang.Object, java.lang.Object, kotlin.jvm.functions.Function1[]);
  public static java.util.Comparator naturalOrder();
}
-keepclassmembernames class kotlin.concurrent.ThreadsKt {
  public static java.lang.Thread thread$default(boolean, boolean, java.lang.ClassLoader, java.lang.String, int, kotlin.jvm.functions.Function0, int, java.lang.Object);
}
-keepclassmembernames @interface kotlin.contracts.ExperimentalContracts {
}
-keepclassmembernames class kotlin.coroutines.AbstractCoroutineContextElement {
  public <init>(kotlin.coroutines.CoroutineContext$Key);
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface kotlin.coroutines.Continuation {
  public kotlin.coroutines.CoroutineContext getContext();
  public void resumeWith(java.lang.Object);
}
-keepclassmembernames class kotlin.coroutines.ContinuationInterceptor$DefaultImpls {
  public static kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.CoroutineContext$Key);
  public static void releaseInterceptedContinuation(kotlin.coroutines.ContinuationInterceptor, kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlin.coroutines.ContinuationInterceptor$Key {
}
-keepclassmembernames interface kotlin.coroutines.ContinuationInterceptor {
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.Continuation interceptContinuation(kotlin.coroutines.Continuation);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public void releaseInterceptedContinuation(kotlin.coroutines.Continuation);
  kotlin.coroutines.ContinuationInterceptor$Key Key;
}
-keepclassmembernames class kotlin.coroutines.CoroutineContext$Element$DefaultImpls {
  public static java.lang.Object fold(kotlin.coroutines.CoroutineContext$Element, java.lang.Object, kotlin.jvm.functions.Function2);
  public static kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext$Key);
  public static kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext$Element, kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface kotlin.coroutines.CoroutineContext$Element {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames interface kotlin.coroutines.CoroutineContext$Key {
}
-keepclassmembernames interface kotlin.coroutines.CoroutineContext {
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames class kotlin.coroutines.EmptyCoroutineContext {
  kotlin.coroutines.EmptyCoroutineContext INSTANCE;
}
-keepclassmembernames class kotlin.coroutines.intrinsics.IntrinsicsKt {
}
-keepclassmembernames class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt {
  public static kotlin.coroutines.Continuation createCoroutineUnintercepted(kotlin.jvm.functions.Function2, java.lang.Object, kotlin.coroutines.Continuation);
  public static kotlin.coroutines.Continuation intercepted(kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt {
  public static java.lang.Object getCOROUTINE_SUSPENDED();
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.Boxing {
  public static java.lang.Integer boxInt(int);
  public static java.lang.Long boxLong(long);
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.ContinuationImpl {
  public <init>(kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keepclassmembernames @interface kotlin.coroutines.jvm.internal.DebugMetadata {
  public java.lang.String c();
  public java.lang.String f();
  public int[] i();
  public int[] l();
  public java.lang.String m();
  public java.lang.String[] n();
  public int[] nl();
  public java.lang.String[] s();
  public int v();
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.DebugProbesKt {
  public static void probeCoroutineSuspended(kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.RestrictedSuspendLambda {
  public <init>(int, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(java.lang.Object, kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.SpillingKt {
  public static java.lang.Object nullOutSpilledVariable(java.lang.Object);
}
-keepclassmembernames interface kotlin.coroutines.jvm.internal.SuspendFunction {
}
-keepclassmembernames class kotlin.coroutines.jvm.internal.SuspendLambda {
  public <init>(int, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(java.lang.Object, kotlin.coroutines.Continuation);
  public kotlin.coroutines.Continuation create(kotlin.coroutines.Continuation);
  protected java.lang.Object invokeSuspend(java.lang.Object);
}
-keepclassmembernames interface kotlin.enums.EnumEntries {
}
-keepclassmembernames class kotlin.enums.EnumEntriesKt {
  public static kotlin.enums.EnumEntries enumEntries(java.lang.Enum[]);
}
-keepclassmembernames @interface kotlin.internal.InlineOnly {
}
-keepclassmembernames @interface kotlin.internal.NoInfer {
}
-keepclassmembernames @interface kotlin.internal.OnlyInputTypes {
}
-keepclassmembernames class kotlin.internal.ProgressionUtilKt {
  public static int getProgressionLastElement(int, int, int);
}
-keepclassmembernames class kotlin.io.ByteStreamsKt {
  public static long copyTo$default(java.io.InputStream, java.io.OutputStream, int, int, java.lang.Object);
  public static long copyTo(java.io.InputStream, java.io.OutputStream, int);
  public static byte[] readBytes(java.io.InputStream);
}
-keepclassmembernames class kotlin.io.CloseableKt {
  public static void closeFinally(java.io.Closeable, java.lang.Throwable);
}
-keepclassmembernames class kotlin.io.FilesKt {
}
-keepclassmembernames class kotlin.io.FilesKt__FileReadWriteKt {
  public static void appendText$default(java.io.File, java.lang.String, java.nio.charset.Charset, int, java.lang.Object);
  public static java.util.List readLines$default(java.io.File, java.nio.charset.Charset, int, java.lang.Object);
  public static java.lang.String readText$default(java.io.File, java.nio.charset.Charset, int, java.lang.Object);
  public static void writeText$default(java.io.File, java.lang.String, java.nio.charset.Charset, int, java.lang.Object);
}
-keepclassmembernames class kotlin.io.FilesKt__UtilsKt {
  public static java.io.File copyTo$default(java.io.File, java.io.File, boolean, int, int, java.lang.Object);
  public static boolean deleteRecursively(java.io.File);
  public static java.lang.String getExtension(java.io.File);
  public static java.lang.String getNameWithoutExtension(java.io.File);
  public static java.io.File resolve(java.io.File, java.lang.String);
}
-keepclassmembernames class kotlin.io.TextStreamsKt {
  public static kotlin.sequences.Sequence lineSequence(java.io.BufferedReader);
  public static byte[] readBytes(java.net.URL);
  public static java.lang.String readText(java.io.Reader);
}
-keepclassmembernames class kotlin.io.path.PathsKt {
}
-keepclassmembernames class kotlin.io.path.PathsKt__PathUtilsKt {
  public static java.nio.file.Path createTempDirectory(java.nio.file.Path, java.lang.String, java.nio.file.attribute.FileAttribute[]);
}
-keepclassmembernames class kotlin.jdk7.AutoCloseableKt {
  public static void closeFinally(java.lang.AutoCloseable, java.lang.Throwable);
}
-keepclassmembernames class kotlin.jvm.JvmClassMappingKt {
  public static kotlin.reflect.KClass getAnnotationClass(java.lang.annotation.Annotation);
  public static java.lang.Class getJavaClass(kotlin.reflect.KClass);
  public static java.lang.Class getJavaObjectType(kotlin.reflect.KClass);
  public static java.lang.Class getJavaPrimitiveType(kotlin.reflect.KClass);
  public static kotlin.reflect.KClass getKotlinClass(java.lang.Class);
}
-keepclassmembernames @interface kotlin.jvm.JvmDefaultWithCompatibility {
}
-keepclassmembernames @interface kotlin.jvm.JvmField {
}
-keepclassmembernames @interface kotlin.jvm.JvmInline {
}
-keepclassmembernames @interface kotlin.jvm.JvmName {
  public java.lang.String name();
}
-keepclassmembernames @interface kotlin.jvm.JvmOverloads {
}
-keepclassmembernames @interface kotlin.jvm.JvmStatic {
}
-keepclassmembernames @interface kotlin.jvm.JvmSuppressWildcards {
}
-keepclassmembernames @interface kotlin.jvm.JvmSynthetic {
}
-keepclassmembernames class kotlin.jvm.KotlinReflectionNotSupportedError {
  public <init>(java.lang.String);
}
-keepclassmembernames interface kotlin.jvm.functions.Function0 {
  public java.lang.Object invoke();
}
-keepclassmembernames interface kotlin.jvm.functions.Function10 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function11 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function12 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function13 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function14 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function15 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function16 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function17 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function18 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function19 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function1 {
  public java.lang.Object invoke(java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function20 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function21 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function22 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function2 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function3 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function4 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function5 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function6 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function7 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function8 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.Function9 {
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.jvm.functions.FunctionN {
  public java.lang.Object invoke(java.lang.Object[]);
}
-keepclassmembernames class kotlin.jvm.internal.AdaptedFunctionReference {
  public <init>(int, java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
  java.lang.Object receiver;
}
-keepclassmembernames class kotlin.jvm.internal.ArrayIteratorKt {
  public static java.util.Iterator iterator(java.lang.Object[]);
}
-keepclassmembernames class kotlin.jvm.internal.CallableReference {
  public kotlin.reflect.KCallable compute();
  public java.lang.Object getBoundReceiver();
  public java.lang.String getName();
  public kotlin.reflect.KDeclarationContainer getOwner();
  public java.lang.String getSignature();
  java.lang.Object NO_RECEIVER;
  java.lang.Object receiver;
}
-keepclassmembernames interface kotlin.jvm.internal.ClassBasedDeclarationContainer {
  public java.lang.Class getJClass();
}
-keepclassmembernames class kotlin.jvm.internal.CollectionToArray {
  public static java.lang.Object[] toArray(java.util.Collection);
  public static java.lang.Object[] toArray(java.util.Collection, java.lang.Object[]);
}
-keepclassmembernames class kotlin.jvm.internal.DefaultConstructorMarker {
}
-keepclassmembernames class kotlin.jvm.internal.DoubleCompanionObject {
  kotlin.jvm.internal.DoubleCompanionObject INSTANCE;
}
-keepclassmembernames class kotlin.jvm.internal.FloatCompanionObject {
  kotlin.jvm.internal.FloatCompanionObject INSTANCE;
}
-keepclassmembernames interface kotlin.jvm.internal.FunctionBase {
  public int getArity();
}
-keepclassmembernames class kotlin.jvm.internal.FunctionReference {
}
-keepclassmembernames class kotlin.jvm.internal.FunctionReferenceImpl {
  public <init>(int, java.lang.Class, java.lang.String, java.lang.String, int);
  public <init>(int, java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
}
-keepclassmembernames class kotlin.jvm.internal.InlineMarker {
  public static void finallyEnd(int);
  public static void finallyStart(int);
  public static void mark(int);
}
-keepclassmembernames class kotlin.jvm.internal.Intrinsics$Kotlin {
}
-keepclassmembernames class kotlin.jvm.internal.Intrinsics {
  public static boolean areEqual(java.lang.Double, java.lang.Double);
  public static boolean areEqual(java.lang.Float, float);
  public static boolean areEqual(java.lang.Float, java.lang.Float);
  public static boolean areEqual(java.lang.Object, java.lang.Object);
  public static void checkExpressionValueIsNotNull(java.lang.Object, java.lang.String);
  public static void checkNotNull(java.lang.Object);
  public static void checkNotNull(java.lang.Object, java.lang.String);
  public static void checkNotNullExpressionValue(java.lang.Object, java.lang.String);
  public static void checkNotNullParameter(java.lang.Object, java.lang.String);
  public static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
  public static int compare(int, int);
  public static void needClassReification();
  public static void reifiedOperationMarker(int, java.lang.String);
  public static java.lang.String stringPlus(java.lang.String, java.lang.Object);
  public static void throwNpe();
  public static void throwUninitializedPropertyAccessException(java.lang.String);
}
-keepclassmembernames interface kotlin.jvm.internal.KTypeBase {
  public java.lang.reflect.Type getJavaType();
}
-keepclassmembernames class kotlin.jvm.internal.Lambda {
  public <init>(int);
}
-keepclassmembernames class kotlin.jvm.internal.MutablePropertyReference0 {
  public <init>(java.lang.Object);
  public java.lang.Object get();
  public java.lang.String getName();
  public kotlin.reflect.KDeclarationContainer getOwner();
  public java.lang.String getSignature();
  public void set(java.lang.Object);
}
-keepclassmembernames class kotlin.jvm.internal.MutablePropertyReference0Impl {
  public <init>(java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int);
}
-keepclassmembernames class kotlin.jvm.internal.MutablePropertyReference1 {
}
-keepclassmembernames class kotlin.jvm.internal.MutablePropertyReference1Impl {
  public <init>(java.lang.Class, java.lang.String, java.lang.String, int);
  public java.lang.Object get(java.lang.Object);
  public void set(java.lang.Object, java.lang.Object);
}
-keepclassmembernames class kotlin.jvm.internal.MutablePropertyReference2 {
}
-keepclassmembernames class kotlin.jvm.internal.PropertyReference0 {
}
-keepclassmembernames class kotlin.jvm.internal.PropertyReference1 {
}
-keepclassmembernames class kotlin.jvm.internal.PropertyReference1Impl {
  public <init>(java.lang.Class, java.lang.String, java.lang.String, int);
  public <init>(kotlin.reflect.KDeclarationContainer, java.lang.String, java.lang.String);
  public java.lang.Object get(java.lang.Object);
}
-keepclassmembernames class kotlin.jvm.internal.PropertyReference2 {
}
-keepclassmembernames class kotlin.jvm.internal.PropertyReference {
  public kotlin.reflect.KCallable compute();
}
-keepclassmembernames class kotlin.jvm.internal.Ref$BooleanRef {
  public <init>();
  boolean element;
}
-keepclassmembernames class kotlin.jvm.internal.Ref$FloatRef {
  public <init>();
  float element;
}
-keepclassmembernames class kotlin.jvm.internal.Ref$IntRef {
  public <init>();
  int element;
}
-keepclassmembernames class kotlin.jvm.internal.Ref$LongRef {
  public <init>();
  long element;
}
-keepclassmembernames class kotlin.jvm.internal.Ref$ObjectRef {
  public <init>();
  java.lang.Object element;
}
-keepclassmembernames class kotlin.jvm.internal.Ref {
}
-keepclassmembernames class kotlin.jvm.internal.Reflection {
  public static kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class);
  public static kotlin.reflect.KMutableProperty1 mutableProperty1(kotlin.jvm.internal.MutablePropertyReference1);
  public static kotlin.reflect.KProperty1 property1(kotlin.jvm.internal.PropertyReference1);
  public static kotlin.reflect.KType typeOf(java.lang.Class);
}
-keepclassmembernames class kotlin.jvm.internal.ReflectionFactory {
  public <init>();
  public kotlin.reflect.KClass createKotlinClass(java.lang.Class);
  public kotlin.reflect.KClass createKotlinClass(java.lang.Class, java.lang.String);
  public kotlin.reflect.KFunction function(kotlin.jvm.internal.FunctionReference);
  public kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class);
  public kotlin.reflect.KClass getOrCreateKotlinClass(java.lang.Class, java.lang.String);
  public kotlin.reflect.KDeclarationContainer getOrCreateKotlinPackage(java.lang.Class, java.lang.String);
  public kotlin.reflect.KType mutableCollectionType(kotlin.reflect.KType);
  public kotlin.reflect.KMutableProperty0 mutableProperty0(kotlin.jvm.internal.MutablePropertyReference0);
  public kotlin.reflect.KMutableProperty1 mutableProperty1(kotlin.jvm.internal.MutablePropertyReference1);
  public kotlin.reflect.KMutableProperty2 mutableProperty2(kotlin.jvm.internal.MutablePropertyReference2);
  public kotlin.reflect.KType nothingType(kotlin.reflect.KType);
  public kotlin.reflect.KType platformType(kotlin.reflect.KType, kotlin.reflect.KType);
  public kotlin.reflect.KProperty0 property0(kotlin.jvm.internal.PropertyReference0);
  public kotlin.reflect.KProperty1 property1(kotlin.jvm.internal.PropertyReference1);
  public kotlin.reflect.KProperty2 property2(kotlin.jvm.internal.PropertyReference2);
  public java.lang.String renderLambdaToString(kotlin.jvm.internal.FunctionBase);
  public java.lang.String renderLambdaToString(kotlin.jvm.internal.Lambda);
  public void setUpperBounds(kotlin.reflect.KTypeParameter, java.util.List);
  public kotlin.reflect.KType typeOf(kotlin.reflect.KClassifier, java.util.List, boolean);
  public kotlin.reflect.KTypeParameter typeParameter(java.lang.Object, java.lang.String, kotlin.reflect.KVariance, boolean);
}
-keepclassmembernames @interface kotlin.jvm.internal.RepeatableContainer {
}
-keepclassmembernames @interface kotlin.jvm.internal.SourceDebugExtension {
  public java.lang.String[] value();
}
-keepclassmembernames class kotlin.jvm.internal.SpreadBuilder {
  public <init>(int);
  public void add(java.lang.Object);
  public void addSpread(java.lang.Object);
  public int size();
  public java.lang.Object[] toArray(java.lang.Object[]);
}
-keepclassmembernames class kotlin.jvm.internal.StringCompanionObject {
  kotlin.jvm.internal.StringCompanionObject INSTANCE;
}
-keepclassmembernames class kotlin.jvm.internal.TypeIntrinsics {
  public static java.util.List asMutableList(java.lang.Object);
  public static java.util.Map asMutableMap(java.lang.Object);
  public static java.util.Set asMutableSet(java.lang.Object);
  public static java.lang.Object beforeCheckcastToFunctionOfArity(java.lang.Object, int);
  public static boolean isFunctionOfArity(java.lang.Object, int);
  public static boolean isMutableList(java.lang.Object);
  public static boolean isMutableMap(java.lang.Object);
}
-keepclassmembernames class kotlin.jvm.internal.TypeParameterReference$Companion {
  public java.lang.String toString(kotlin.reflect.KTypeParameter);
}
-keepclassmembernames class kotlin.jvm.internal.TypeParameterReference {
  kotlin.jvm.internal.TypeParameterReference$Companion Companion;
}
-keepclassmembernames interface kotlin.jvm.internal.markers.KMappedMarker {
}
-keepclassmembernames interface kotlin.jvm.internal.markers.KMutableIterator {
}
-keepclassmembernames interface kotlin.jvm.internal.markers.KMutableMap {
}
-keepclassmembernames class kotlin.math.MathKt {
}
-keepclassmembernames class kotlin.math.MathKt__MathJVMKt {
  public static int roundToInt(float);
  public static long roundToLong(float);
}
-keepclassmembernames class kotlin.properties.Delegates {
  kotlin.properties.Delegates INSTANCE;
}
-keepclassmembernames class kotlin.properties.ObservableProperty {
  public <init>(java.lang.Object);
  protected boolean beforeChange(kotlin.reflect.KProperty, java.lang.Object, java.lang.Object);
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
}
-keepclassmembernames interface kotlin.properties.ReadOnlyProperty {
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
}
-keepclassmembernames interface kotlin.properties.ReadWriteProperty {
  public java.lang.Object getValue(java.lang.Object, kotlin.reflect.KProperty);
  public void setValue(java.lang.Object, kotlin.reflect.KProperty, java.lang.Object);
}
-keepclassmembernames class kotlin.random.Random$Default {
  public double nextDouble(double, double);
  public int nextInt(int, int);
}
-keepclassmembernames class kotlin.random.Random {
  kotlin.random.Random$Default Default;
}
-keepclassmembernames class kotlin.random.URandomKt {
  public static int nextUInt(kotlin.random.Random);
}
-keepclassmembernames class kotlin.ranges.CharRange {
  public <init>(char, char);
  public boolean contains(char);
}
-keepclassmembernames interface kotlin.ranges.ClosedFloatingPointRange {
}
-keepclassmembernames interface kotlin.ranges.ClosedRange {
  public boolean contains(java.lang.Comparable);
  public java.lang.Comparable getEndInclusive();
}
-keepclassmembernames class kotlin.ranges.IntProgression {
  public int getFirst();
  public int getLast();
  public int getStep();
}
-keepclassmembernames class kotlin.ranges.IntRange$Companion {
  public kotlin.ranges.IntRange getEMPTY();
}
-keepclassmembernames class kotlin.ranges.IntRange {
  public <init>(int, int);
  public boolean contains(int);
  public boolean isEmpty();
  kotlin.ranges.IntRange$Companion Companion;
}
-keepclassmembernames class kotlin.ranges.LongProgression {
  public long getFirst();
  public long getLast();
  public long getStep();
}
-keepclassmembernames class kotlin.ranges.LongRange {
  public <init>(long, long);
  public boolean contains(long);
}
-keepclassmembernames interface kotlin.ranges.OpenEndRange {
  public boolean contains(java.lang.Comparable);
}
-keepclassmembernames class kotlin.ranges.RangesKt {
}
-keepclassmembernames class kotlin.ranges.RangesKt___RangesKt {
  public static int coerceAtLeast(int, int);
  public static long coerceAtLeast(long, long);
  public static java.lang.Comparable coerceAtLeast(java.lang.Comparable, java.lang.Comparable);
  public static int coerceAtMost(int, int);
  public static long coerceAtMost(long, long);
  public static int coerceIn(int, int, int);
  public static java.lang.Comparable coerceIn(java.lang.Comparable, java.lang.Comparable, java.lang.Comparable);
  public static kotlin.ranges.IntProgression step(kotlin.ranges.IntProgression, int);
  public static kotlin.ranges.LongProgression step(kotlin.ranges.LongProgression, long);
  public static kotlin.ranges.IntRange until(int, int);
  public static kotlin.ranges.LongRange until(int, long);
  public static kotlin.ranges.LongRange until(long, int);
}
-keepclassmembernames class kotlin.ranges.UIntRange {
  public boolean contains-WZ4Q5Ns(int);
}
-keepclassmembernames class kotlin.ranges.ULongRange {
  public boolean contains-VKZWuLQ(long);
}
-keepclassmembernames interface kotlin.reflect.KAnnotatedElement {
  public java.util.List getAnnotations();
}
-keepclassmembernames interface kotlin.reflect.KCallable {
  public java.lang.Object call(java.lang.Object[]);
  public java.lang.Object callBy(java.util.Map);
  public java.util.List getAnnotations();
  public java.lang.String getName();
  public java.util.List getParameters();
  public kotlin.reflect.KType getReturnType();
  public java.util.List getTypeParameters();
  public kotlin.reflect.KVisibility getVisibility();
  public boolean isAbstract();
  public boolean isFinal();
  public boolean isOpen();
  public boolean isSuspend();
}
-keepclassmembernames interface kotlin.reflect.KClass {
  public boolean equals(java.lang.Object);
  public java.util.List getAnnotations();
  public java.util.Collection getConstructors();
  public java.util.Collection getMembers();
  public java.util.Collection getNestedClasses();
  public java.lang.Object getObjectInstance();
  public java.lang.String getQualifiedName();
  public java.util.List getSealedSubclasses();
  public java.lang.String getSimpleName();
  public java.util.List getSupertypes();
  public java.util.List getTypeParameters();
  public kotlin.reflect.KVisibility getVisibility();
  public int hashCode();
  public boolean isAbstract();
  public boolean isCompanion();
  public boolean isData();
  public boolean isFinal();
  public boolean isFun();
  public boolean isInner();
  public boolean isInstance(java.lang.Object);
  public boolean isOpen();
  public boolean isSealed();
  public boolean isValue();
}
-keepclassmembernames class kotlin.reflect.KClasses {
  public static java.lang.Object cast(kotlin.reflect.KClass, java.lang.Object);
  public static java.lang.Object safeCast(kotlin.reflect.KClass, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KClassifier {
}
-keepclassmembernames interface kotlin.reflect.KDeclarationContainer {
  public java.util.Collection getMembers();
}
-keepclassmembernames interface kotlin.reflect.KFunction {
  public java.lang.String getName();
  public boolean isExternal();
  public boolean isInfix();
  public boolean isInline();
  public boolean isOperator();
  public boolean isSuspend();
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty$Setter {
  public java.lang.String getName();
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty0$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty0 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty0$Setter getSetter();
  public void set(java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty1$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty1 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty1$Setter getSetter();
  public void set(java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty2$Setter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty2 {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
  public kotlin.reflect.KMutableProperty2$Setter getSetter();
  public void set(java.lang.Object, java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KMutableProperty {
  public kotlin.reflect.KMutableProperty$Setter getSetter();
}
-keep enum kotlin.reflect.KParameter$Kind {
  public static kotlin.reflect.KParameter$Kind[] values();
  kotlin.reflect.KParameter$Kind CONTEXT;
  kotlin.reflect.KParameter$Kind EXTENSION_RECEIVER;
  kotlin.reflect.KParameter$Kind INSTANCE;
  kotlin.reflect.KParameter$Kind VALUE;
}
-keepclassmembernames interface kotlin.reflect.KParameter {
  public java.util.List getAnnotations();
  public int getIndex();
  public kotlin.reflect.KParameter$Kind getKind();
  public java.lang.String getName();
  public kotlin.reflect.KType getType();
  public boolean isOptional();
  public boolean isVararg();
}
-keepclassmembernames interface kotlin.reflect.KProperty$Accessor {
  public kotlin.reflect.KProperty getProperty();
}
-keepclassmembernames interface kotlin.reflect.KProperty$Getter {
  public java.lang.String getName();
}
-keepclassmembernames interface kotlin.reflect.KProperty0$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke();
}
-keepclassmembernames interface kotlin.reflect.KProperty0 {
  public java.lang.Object get();
  public java.lang.Object getDelegate();
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty0$Getter getGetter();
  public java.lang.Object invoke();
}
-keepclassmembernames interface kotlin.reflect.KProperty1$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KProperty1 {
  public java.lang.Object get(java.lang.Object);
  public java.lang.Object getDelegate(java.lang.Object);
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty1$Getter getGetter();
  public java.lang.Object invoke(java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KProperty2$Getter {
  public kotlin.reflect.KProperty getProperty();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KProperty2 {
  public java.lang.Object get(java.lang.Object, java.lang.Object);
  public java.lang.Object getDelegate(java.lang.Object, java.lang.Object);
  public kotlin.reflect.KProperty$Getter getGetter();
  public kotlin.reflect.KProperty2$Getter getGetter();
  public java.lang.Object invoke(java.lang.Object, java.lang.Object);
}
-keepclassmembernames interface kotlin.reflect.KProperty {
  public kotlin.reflect.KProperty$Getter getGetter();
  public java.lang.String getName();
  public boolean isConst();
  public boolean isLateinit();
  public boolean isSuspend();
}
-keepclassmembernames interface kotlin.reflect.KType {
  public java.util.List getArguments();
  public kotlin.reflect.KClassifier getClassifier();
  public boolean isMarkedNullable();
}
-keepclassmembernames interface kotlin.reflect.KTypeParameter {
  public java.lang.String getName();
  public java.util.List getUpperBounds();
  public kotlin.reflect.KVariance getVariance();
  public boolean isReified();
}
-keepclassmembernames class kotlin.reflect.KTypeProjection$Companion {
  public kotlin.reflect.KTypeProjection contravariant(kotlin.reflect.KType);
  public kotlin.reflect.KTypeProjection covariant(kotlin.reflect.KType);
  public kotlin.reflect.KTypeProjection getSTAR();
  public kotlin.reflect.KTypeProjection invariant(kotlin.reflect.KType);
}
-keepclassmembernames class kotlin.reflect.KTypeProjection {
  public <init>(kotlin.reflect.KVariance, kotlin.reflect.KType);
  public kotlin.reflect.KVariance component1();
  public kotlin.reflect.KType component2();
  public kotlin.reflect.KType getType();
  public kotlin.reflect.KVariance getVariance();
  kotlin.reflect.KTypeProjection$Companion Companion;
}
-keep enum kotlin.reflect.KVariance {
  public static kotlin.reflect.KVariance[] values();
  kotlin.reflect.KVariance IN;
  kotlin.reflect.KVariance INVARIANT;
  kotlin.reflect.KVariance OUT;
}
-keep enum kotlin.reflect.KVisibility {
  kotlin.reflect.KVisibility INTERNAL;
  kotlin.reflect.KVisibility PRIVATE;
  kotlin.reflect.KVisibility PROTECTED;
  kotlin.reflect.KVisibility PUBLIC;
}
-keepclassmembernames class kotlin.reflect.TypesJVMKt {
  public static java.lang.reflect.Type getJavaType(kotlin.reflect.KType);
}
-keepclassmembernames interface kotlin.sequences.Sequence {
  public java.util.Iterator iterator();
}
-keepclassmembernames class kotlin.sequences.SequenceScope {
  public java.lang.Object yield(java.lang.Object, kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlin.sequences.SequencesKt {
}
-keepclassmembernames class kotlin.sequences.SequencesKt__SequenceBuilderKt {
  public static kotlin.sequences.Sequence sequence(kotlin.jvm.functions.Function2);
}
-keepclassmembernames class kotlin.sequences.SequencesKt__SequencesKt$Sequence$1 {
}
-keepclassmembernames class kotlin.sequences.SequencesKt__SequencesKt {
  public static kotlin.sequences.Sequence asSequence(java.util.Iterator);
  public static kotlin.sequences.Sequence emptySequence();
  public static kotlin.sequences.Sequence flatten(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence generateSequence(java.lang.Object, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence generateSequence(kotlin.jvm.functions.Function0);
  public static kotlin.sequences.Sequence sequenceOf(java.lang.Object);
  public static kotlin.sequences.Sequence sequenceOf(java.lang.Object[]);
}
-keepclassmembernames class kotlin.sequences.SequencesKt___SequencesJvmKt {
  public static java.lang.Comparable max(kotlin.sequences.Sequence);
}
-keepclassmembernames class kotlin.sequences.SequencesKt___SequencesKt$filterIsInstance$1 {
}
-keepclassmembernames class kotlin.sequences.SequencesKt___SequencesKt {
  public static java.lang.Iterable asIterable(kotlin.sequences.Sequence);
  public static boolean contains(kotlin.sequences.Sequence, java.lang.Object);
  public static int count(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence drop(kotlin.sequences.Sequence, int);
  public static kotlin.sequences.Sequence filter(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence filterIndexed(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
  public static kotlin.sequences.Sequence filterNot(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence filterNotNull(kotlin.sequences.Sequence);
  public static java.lang.Object firstOrNull(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence flatMap(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence flatMapIterable(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static java.lang.String joinToString$default(kotlin.sequences.Sequence, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, java.lang.CharSequence, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public static kotlin.sequences.Sequence map(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence mapIndexed(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
  public static kotlin.sequences.Sequence mapNotNull(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, java.lang.Iterable);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, java.lang.Object);
  public static kotlin.sequences.Sequence plus(kotlin.sequences.Sequence, kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence sortedWith(kotlin.sequences.Sequence, java.util.Comparator);
  public static kotlin.sequences.Sequence take(kotlin.sequences.Sequence, int);
  public static kotlin.sequences.Sequence takeWhile(kotlin.sequences.Sequence, kotlin.jvm.functions.Function1);
  public static java.util.Collection toCollection(kotlin.sequences.Sequence, java.util.Collection);
  public static java.util.List toList(kotlin.sequences.Sequence);
  public static java.util.List toMutableList(kotlin.sequences.Sequence);
  public static java.util.Set toSet(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence withIndex(kotlin.sequences.Sequence);
  public static kotlin.sequences.Sequence zipWithNext(kotlin.sequences.Sequence, kotlin.jvm.functions.Function2);
}
-keepclassmembernames class kotlin.text.CharsKt {
}
-keepclassmembernames class kotlin.text.CharsKt__CharJVMKt {
  public static int checkRadix(int);
  public static boolean isWhitespace(char);
  public static java.lang.String lowercase(char, java.util.Locale);
}
-keepclassmembernames class kotlin.text.CharsKt__CharKt {
  public static boolean isSurrogate(char);
  public static java.lang.String titlecase(char);
}
-keepclassmembernames class kotlin.text.Charsets {
  public java.nio.charset.Charset UTF32_BE();
  public java.nio.charset.Charset UTF32_LE();
  kotlin.text.Charsets INSTANCE;
  java.nio.charset.Charset ISO_8859_1;
  java.nio.charset.Charset UTF_16BE;
  java.nio.charset.Charset UTF_16LE;
  java.nio.charset.Charset UTF_8;
}
-keepclassmembernames class kotlin.text.MatchGroup {
  public java.lang.String getValue();
}
-keepclassmembernames interface kotlin.text.MatchGroupCollection {
  public kotlin.text.MatchGroup get(int);
}
-keepclassmembernames class kotlin.text.MatchResult$Destructured {
  public kotlin.text.MatchResult getMatch();
}
-keepclassmembernames interface kotlin.text.MatchResult {
  public kotlin.text.MatchResult$Destructured getDestructured();
  public java.util.List getGroupValues();
  public kotlin.text.MatchGroupCollection getGroups();
  public kotlin.ranges.IntRange getRange();
  public java.lang.String getValue();
}
-keepclassmembernames class kotlin.text.Regex {
  public <init>(java.lang.String);
  public <init>(java.lang.String, kotlin.text.RegexOption);
  public boolean containsMatchIn(java.lang.CharSequence);
  public static kotlin.text.MatchResult find$default(kotlin.text.Regex, java.lang.CharSequence, int, int, java.lang.Object);
  public static kotlin.sequences.Sequence findAll$default(kotlin.text.Regex, java.lang.CharSequence, int, int, java.lang.Object);
  public java.lang.String getPattern();
  public kotlin.text.MatchResult matchAt(java.lang.CharSequence, int);
  public kotlin.text.MatchResult matchEntire(java.lang.CharSequence);
  public boolean matches(java.lang.CharSequence);
  public java.lang.String replace(java.lang.CharSequence, java.lang.String);
  public java.lang.String replace(java.lang.CharSequence, kotlin.jvm.functions.Function1);
  public java.util.List split(java.lang.CharSequence, int);
}
-keep enum kotlin.text.RegexOption {
  kotlin.text.RegexOption DOT_MATCHES_ALL;
}
-keepclassmembernames class kotlin.text.StringsKt {
}
-keepclassmembernames class kotlin.text.StringsKt__IndentKt {
  public static java.lang.String prependIndent$default(java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String trimIndent(java.lang.String);
  public static java.lang.String trimMargin$default(java.lang.String, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class kotlin.text.StringsKt__StringBuilderKt {
  public static java.lang.StringBuilder append(java.lang.StringBuilder, java.lang.String[]);
}
-keepclassmembernames class kotlin.text.StringsKt__StringNumberConversionsJVMKt {
  public static java.lang.Float toFloatOrNull(java.lang.String);
}
-keepclassmembernames class kotlin.text.StringsKt__StringNumberConversionsKt {
  public static java.lang.Integer toIntOrNull(java.lang.String);
  public static java.lang.Long toLongOrNull(java.lang.String);
}
-keepclassmembernames class kotlin.text.StringsKt__StringsJVMKt {
  public static java.lang.String decodeToString$default(byte[], int, int, boolean, int, java.lang.Object);
  public static java.lang.String decodeToString(byte[]);
  public static boolean endsWith$default(java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean equals(java.lang.String, java.lang.String, boolean);
  public static java.util.Comparator getCASE_INSENSITIVE_ORDER(kotlin.jvm.internal.StringCompanionObject);
  public static boolean regionMatches$default(java.lang.String, int, java.lang.String, int, int, boolean, int, java.lang.Object);
  public static boolean regionMatches(java.lang.String, int, java.lang.String, int, int, boolean);
  public static java.lang.String repeat(java.lang.CharSequence, int);
  public static java.lang.String replace$default(java.lang.String, char, char, boolean, int, java.lang.Object);
  public static java.lang.String replace$default(java.lang.String, java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.String, java.lang.String, int, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.String, java.lang.String, boolean, int, java.lang.Object);
  public static boolean startsWith(java.lang.String, java.lang.String, int, boolean);
  public static boolean startsWith(java.lang.String, java.lang.String, boolean);
}
-keepclassmembernames class kotlin.text.StringsKt__StringsKt {
  public static boolean contains$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static boolean contains$default(java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object);
  public static boolean contains(java.lang.CharSequence, char, boolean);
  public static boolean contains(java.lang.CharSequence, java.lang.CharSequence, boolean);
  public static boolean endsWith$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static kotlin.ranges.IntRange getIndices(java.lang.CharSequence);
  public static int getLastIndex(java.lang.CharSequence);
  public static int indexOf$default(java.lang.CharSequence, char, int, boolean, int, java.lang.Object);
  public static int indexOf$default(java.lang.CharSequence, java.lang.String, int, boolean, int, java.lang.Object);
  public static boolean isBlank(java.lang.CharSequence);
  public static int lastIndexOf$default(java.lang.CharSequence, char, int, boolean, int, java.lang.Object);
  public static int lastIndexOf$default(java.lang.CharSequence, java.lang.String, int, boolean, int, java.lang.Object);
  public static kotlin.sequences.Sequence lineSequence(java.lang.CharSequence);
  public static java.util.List lines(java.lang.CharSequence);
  public static java.lang.String padEnd$default(java.lang.String, int, char, int, java.lang.Object);
  public static java.lang.String padStart$default(java.lang.String, int, char, int, java.lang.Object);
  public static java.lang.String padStart(java.lang.String, int, char);
  public static java.lang.String removePrefix(java.lang.String, java.lang.CharSequence);
  public static java.lang.String removeSuffix(java.lang.String, java.lang.CharSequence);
  public static java.lang.String removeSurrounding(java.lang.String, java.lang.CharSequence);
  public static java.util.List split$default(java.lang.CharSequence, char[], boolean, int, int, java.lang.Object);
  public static java.util.List split$default(java.lang.CharSequence, java.lang.String[], boolean, int, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.CharSequence, char, boolean, int, java.lang.Object);
  public static boolean startsWith$default(java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object);
  public static java.lang.String substringAfter$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfter$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfterLast$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringAfterLast$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBefore$default(java.lang.String, char, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBefore$default(java.lang.String, java.lang.String, java.lang.String, int, java.lang.Object);
  public static java.lang.String substringBeforeLast(java.lang.String, char, java.lang.String);
  public static java.lang.String substringBeforeLast(java.lang.String, java.lang.String, java.lang.String);
  public static java.lang.Boolean toBooleanStrictOrNull(java.lang.String);
  public static java.lang.CharSequence trim(java.lang.CharSequence);
  public static java.lang.CharSequence trimEnd(java.lang.CharSequence);
}
-keepclassmembernames class kotlin.text.StringsKt___StringsKt {
  public static java.lang.String drop(java.lang.String, int);
  public static java.lang.String dropLast(java.lang.String, int);
  public static java.lang.Character getOrNull(java.lang.CharSequence, int);
  public static char last(java.lang.CharSequence);
  public static java.lang.String take(java.lang.String, int);
  public static java.lang.String takeLast(java.lang.String, int);
}
-keepclassmembernames class kotlin.time.AbstractLongTimeSource {
  public <init>(kotlin.time.DurationUnit);
  protected long read();
}
-keepclassmembernames interface kotlin.time.ComparableTimeMark {
  public int compareTo(kotlin.time.ComparableTimeMark);
  public int hashCode();
  public kotlin.time.ComparableTimeMark plus-LRDsOJo(long);
}
-keepclassmembernames class kotlin.time.Duration$Companion {
  public long getINFINITE-UwyO8pc();
  public long parse-UwyO8pc(java.lang.String);
}
-keepclassmembernames class kotlin.time.Duration {
  public static kotlin.time.Duration box-impl(long);
  public static int compareTo-LRDsOJo(long, long);
  public static long getInWholeMilliseconds-impl(long);
  public static long getInWholeSeconds-impl(long);
  public static boolean isNegative-impl(long);
  public static boolean isPositive-impl(long);
  public static long minus-LRDsOJo(long, long);
  public static long plus-LRDsOJo(long, long);
  public static long toLong-impl(long, kotlin.time.DurationUnit);
  public static java.lang.String toString-impl(long);
  public long unbox-impl();
  kotlin.time.Duration$Companion Companion;
}
-keepclassmembernames class kotlin.time.DurationKt {
  public static long toDuration(int, kotlin.time.DurationUnit);
  public static long toDuration(long, kotlin.time.DurationUnit);
}
-keep enum kotlin.time.DurationUnit {
  kotlin.time.DurationUnit MILLISECONDS;
  kotlin.time.DurationUnit SECONDS;
}
-keepclassmembernames class kotlin.time.TimeSource$Monotonic {
  kotlin.time.TimeSource$Monotonic INSTANCE;
}
-keepclassmembernames interface kotlin.time.TimeSource$WithComparableMarks {
  public kotlin.time.ComparableTimeMark markNow();
}
-keepclassmembernames interface kotlin.time.TimeSource {
}
-keepclassmembernames class kotlinx.coroutines.AbstractCoroutine {
  public <init>(kotlin.coroutines.CoroutineContext, boolean, boolean);
  public kotlin.coroutines.CoroutineContext getContext();
  public kotlin.coroutines.CoroutineContext getCoroutineContext();
  public void start(kotlinx.coroutines.CoroutineStart, java.lang.Object, kotlin.jvm.functions.Function2);
  public java.lang.String toString();
}
-keepclassmembernames class kotlinx.coroutines.BuildersKt {
  public static kotlinx.coroutines.Job launch$default(kotlinx.coroutines.CoroutineScope, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object runBlocking$default(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object runBlocking(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2);
  public static java.lang.Object runBlockingK$default(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, int, java.lang.Object);
  public static java.lang.Object withContext(kotlin.coroutines.CoroutineContext, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keepclassmembernames interface kotlinx.coroutines.CancellableContinuation {
  public void invokeOnCancellation(kotlin.jvm.functions.Function1);
  public void resume(java.lang.Object, kotlin.jvm.functions.Function1);
  public void resumeUndispatched(kotlinx.coroutines.CoroutineDispatcher, java.lang.Object);
}
-keepclassmembernames class kotlinx.coroutines.CancellableContinuationImpl {
  public <init>(kotlin.coroutines.Continuation, int);
  public java.lang.Object getResult();
  public void initCancellability();
}
-keepclassmembernames class kotlinx.coroutines.CancellableContinuationKt {
  public static void disposeOnCancellation(kotlinx.coroutines.CancellableContinuation, kotlinx.coroutines.DisposableHandle);
}
-keepclassmembernames interface kotlinx.coroutines.CompletableJob {
  public boolean complete();
}
-keepclassmembernames class kotlinx.coroutines.CoroutineDispatcher$Key {
}
-keepclassmembernames class kotlinx.coroutines.CoroutineDispatcher {
  public <init>();
  public void dispatch(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public void dispatchYield(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public kotlin.coroutines.Continuation interceptContinuation(kotlin.coroutines.Continuation);
  public boolean isDispatchNeeded(kotlin.coroutines.CoroutineContext);
  public java.lang.String toString();
  kotlinx.coroutines.CoroutineDispatcher$Key Key;
}
-keepclassmembernames class kotlinx.coroutines.CoroutineExceptionHandler$Key {
}
-keepclassmembernames interface kotlinx.coroutines.CoroutineExceptionHandler {
  public java.lang.Object fold(java.lang.Object, kotlin.jvm.functions.Function2);
  public kotlin.coroutines.CoroutineContext$Element get(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext$Key getKey();
  public void handleException(kotlin.coroutines.CoroutineContext, java.lang.Throwable);
  public kotlin.coroutines.CoroutineContext minusKey(kotlin.coroutines.CoroutineContext$Key);
  public kotlin.coroutines.CoroutineContext plus(kotlin.coroutines.CoroutineContext);
  kotlinx.coroutines.CoroutineExceptionHandler$Key Key;
}
-keepclassmembernames class kotlinx.coroutines.CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1 {
}
-keepclassmembernames class kotlinx.coroutines.CoroutineExceptionHandlerKt {
  public static void handleCoroutineException(kotlin.coroutines.CoroutineContext, java.lang.Throwable);
}
-keepclassmembernames class kotlinx.coroutines.CoroutineName {
  public <init>(java.lang.String);
}
-keepclassmembernames interface kotlinx.coroutines.CoroutineScope {
  public kotlin.coroutines.CoroutineContext getCoroutineContext();
}
-keepclassmembernames class kotlinx.coroutines.CoroutineScopeKt {
  public static kotlinx.coroutines.CoroutineScope CoroutineScope(kotlin.coroutines.CoroutineContext);
  public static void cancel$default(kotlinx.coroutines.CoroutineScope, java.util.concurrent.CancellationException, int, java.lang.Object);
  public static boolean isActive(kotlinx.coroutines.CoroutineScope);
}
-keep enum kotlinx.coroutines.CoroutineStart {
  kotlinx.coroutines.CoroutineStart DEFAULT;
  kotlinx.coroutines.CoroutineStart UNDISPATCHED;
}
-keepclassmembernames class kotlinx.coroutines.DebugKt {
  public static boolean getRECOVER_STACK_TRACES();
}
-keepclassmembernames class kotlinx.coroutines.DefaultExecutorKt {
  public static kotlinx.coroutines.Delay getDefaultDelay();
}
-keepclassmembernames interface kotlinx.coroutines.Delay {
  public java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public kotlinx.coroutines.DisposableHandle invokeOnTimeout(long, java.lang.Runnable, kotlin.coroutines.CoroutineContext);
  public void scheduleResumeAfterDelay(long, kotlinx.coroutines.CancellableContinuation);
}
-keepclassmembernames class kotlinx.coroutines.DelayKt {
  public static java.lang.Object awaitCancellation(kotlin.coroutines.Continuation);
  public static java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public static java.lang.Object delay-VtjQ1oo(long, kotlin.coroutines.Continuation);
}
-keepclassmembernames interface kotlinx.coroutines.DelayWithTimeoutDiagnostics {
  public java.lang.Object delay(long, kotlin.coroutines.Continuation);
  public kotlinx.coroutines.DisposableHandle invokeOnTimeout(long, java.lang.Runnable, kotlin.coroutines.CoroutineContext);
  public void scheduleResumeAfterDelay(long, kotlinx.coroutines.CancellableContinuation);
  public java.lang.String timeoutMessage-LRDsOJo(long);
}
-keepclassmembernames class kotlinx.coroutines.Dispatchers {
  public static kotlinx.coroutines.CoroutineDispatcher getDefault();
  public static kotlinx.coroutines.CoroutineDispatcher getIO();
  public static kotlinx.coroutines.MainCoroutineDispatcher getMain();
}
-keepclassmembernames interface kotlinx.coroutines.DisposableHandle {
  public void dispose();
}
-keepclassmembernames class kotlinx.coroutines.ExecutorsKt {
  public static kotlinx.coroutines.CoroutineDispatcher from(java.util.concurrent.Executor);
}
-keepclassmembernames @interface kotlinx.coroutines.ExperimentalCoroutinesApi {
}
-keepclassmembernames class kotlinx.coroutines.Job$Key {
}
-keepclassmembernames interface kotlinx.coroutines.Job {
  public void cancel(java.util.concurrent.CancellationException);
  public static kotlinx.coroutines.DisposableHandle invokeOnCompletion$default(kotlinx.coroutines.Job, boolean, boolean, kotlin.jvm.functions.Function1, int, java.lang.Object);
  public boolean isActive();
  public boolean isCompleted();
  public java.lang.Object join(kotlin.coroutines.Continuation);
  kotlinx.coroutines.Job$Key Key;
}
-keepclassmembernames class kotlinx.coroutines.JobImpl {
  public <init>(kotlinx.coroutines.Job);
  public boolean childCancelled(java.lang.Throwable);
}
-keepclassmembernames class kotlinx.coroutines.JobKt {
  public static kotlinx.coroutines.CompletableJob Job$default(kotlinx.coroutines.Job, int, java.lang.Object);
  public static java.lang.Object cancelAndJoin(kotlinx.coroutines.Job, kotlin.coroutines.Continuation);
  public static kotlinx.coroutines.Job getJob(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames class kotlinx.coroutines.JobSupport {
  public kotlin.sequences.Sequence getChildren();
  protected java.lang.Throwable getCompletionCause();
  public java.lang.Throwable getCompletionExceptionOrNull();
  public kotlinx.coroutines.selects.SelectClause0 getOnJoin();
  public boolean isCancelled();
  public boolean isCompleted();
  public java.lang.Object join(kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlinx.coroutines.MainCoroutineDispatcher {
  public <init>();
  public void dispatch(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public void dispatchYield(kotlin.coroutines.CoroutineContext, java.lang.Runnable);
  public kotlinx.coroutines.MainCoroutineDispatcher getImmediate();
  public boolean isDispatchNeeded(kotlin.coroutines.CoroutineContext);
}
-keepclassmembernames class kotlinx.coroutines.TimeoutCancellationException {
}
-keepclassmembernames class kotlinx.coroutines.TimeoutKt {
  public static java.lang.Object withTimeout(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
  public static java.lang.Object withTimeout-KLykuaI(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlinx.coroutines.YieldContext$Key {
}
-keepclassmembernames class kotlinx.coroutines.YieldContext {
  kotlinx.coroutines.YieldContext$Key Key;
  boolean dispatcherWasUnconfined;
}
-keepclassmembernames class kotlinx.coroutines.YieldKt {
  public static java.lang.Object yield(kotlin.coroutines.Continuation);
}
-keepclassmembernames class kotlinx.coroutines.android.HandlerDispatcher {
}
-keepclassmembernames class kotlinx.coroutines.android.HandlerDispatcherKt {
  public static kotlinx.coroutines.android.HandlerDispatcher from$default(android.os.Handler, java.lang.String, int, java.lang.Object);
}
-keep enum kotlinx.coroutines.channels.BufferOverflow {
}
-keepclassmembernames interface kotlinx.coroutines.channels.Channel {
}
-keepclassmembernames class kotlinx.coroutines.channels.ChannelKt {
  public static kotlinx.coroutines.channels.Channel Channel$default(int, kotlinx.coroutines.channels.BufferOverflow, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keepclassmembernames interface kotlinx.coroutines.channels.ReceiveChannel {
  public kotlinx.coroutines.selects.SelectClause1 getOnReceive();
  public java.lang.Object receive(kotlin.coroutines.Continuation);
}
-keepclassmembernames interface kotlinx.coroutines.channels.SendChannel {
  public java.lang.Object trySend-JP2dKIU(java.lang.Object);
}
-keepclassmembernames class kotlinx.coroutines.debug.internal.DebugProbesImpl {
  public void dumpCoroutines(java.io.PrintStream);
  public void install$kotlinx_coroutines_core();
  public boolean isInstalled$kotlinx_coroutines_debug();
  public void uninstall$kotlinx_coroutines_core();
  kotlinx.coroutines.debug.internal.DebugProbesImpl INSTANCE;
}
-keepclassmembernames interface kotlinx.coroutines.flow.Flow {
}
-keepclassmembernames class kotlinx.coroutines.flow.FlowKt {
  public static java.lang.Object first(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation);
}
-keepclassmembernames interface kotlinx.coroutines.flow.StateFlow {
}
-keepclassmembernames class kotlinx.coroutines.internal.CoroutineExceptionHandlerImplKt {
  public static void ensurePlatformExceptionHandlerLoaded(kotlinx.coroutines.CoroutineExceptionHandler);
}
-keepclassmembernames class kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed {
  kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed INSTANCE;
}
-keepclassmembernames interface kotlinx.coroutines.internal.MainDispatcherFactory {
  public kotlinx.coroutines.MainCoroutineDispatcher createDispatcher(java.util.List);
  public int getLoadPriority();
  public java.lang.String hintOnError();
}
-keepclassmembernames class kotlinx.coroutines.internal.MainDispatchersKt {
  public static boolean isMissing(kotlinx.coroutines.MainCoroutineDispatcher);
  public static kotlinx.coroutines.MainCoroutineDispatcher tryCreateDispatcher(kotlinx.coroutines.internal.MainDispatcherFactory, java.util.List);
}
-keepclassmembernames class kotlinx.coroutines.internal.MissingMainCoroutineDispatcherFactory {
  kotlinx.coroutines.internal.MissingMainCoroutineDispatcherFactory INSTANCE;
}
-keepclassmembernames class kotlinx.coroutines.internal.StackTraceRecoveryKt {
  public static java.lang.Throwable unwrapImpl(java.lang.Throwable);
}
-keepclassmembernames class kotlinx.coroutines.internal.ThreadSafeHeap {
  public <init>();
  public void addLast(kotlinx.coroutines.internal.ThreadSafeHeapNode);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode find(kotlin.jvm.functions.Function1);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode firstImpl();
  public boolean isEmpty();
  public boolean remove(kotlinx.coroutines.internal.ThreadSafeHeapNode);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode removeAtImpl(int);
  public kotlinx.coroutines.internal.ThreadSafeHeapNode removeFirstOrNull();
}
-keepclassmembernames interface kotlinx.coroutines.internal.ThreadSafeHeapNode {
  public kotlinx.coroutines.internal.ThreadSafeHeap getHeap();
  public int getIndex();
  public void setHeap(kotlinx.coroutines.internal.ThreadSafeHeap);
  public void setIndex(int);
}
-keepclassmembernames class kotlinx.coroutines.selects.OnTimeoutKt {
  public static void onTimeout-8Mi8wO0(kotlinx.coroutines.selects.SelectBuilder, long, kotlin.jvm.functions.Function1);
}
-keepclassmembernames interface kotlinx.coroutines.selects.SelectBuilder {
  public void invoke(kotlinx.coroutines.selects.SelectClause0, kotlin.jvm.functions.Function1);
  public void invoke(kotlinx.coroutines.selects.SelectClause1, kotlin.jvm.functions.Function2);
}
-keepclassmembernames interface kotlinx.coroutines.selects.SelectClause0 {
}
-keepclassmembernames interface kotlinx.coroutines.selects.SelectClause1 {
}
-keepclassmembernames class kotlinx.coroutines.selects.SelectImplementation {
  public <init>(kotlin.coroutines.CoroutineContext);
  public java.lang.Object doSelect(kotlin.coroutines.Continuation);
}
-keepclassmembernames interface kotlinx.serialization.DeserializationStrategy {
}
-keepclassmembernames interface kotlinx.serialization.KSerializer {
}
-keepclassmembernames class kotlinx.serialization.SealedClassSerializer {
  public <init>(java.lang.String, kotlin.reflect.KClass, kotlin.reflect.KClass[], kotlinx.serialization.KSerializer[], java.lang.annotation.Annotation[]);
}
-keepclassmembernames @interface kotlinx.serialization.SerialName {
  public java.lang.String value();
}
-keepclassmembernames @interface kotlinx.serialization.Serializable {
}
-keepclassmembernames interface kotlinx.serialization.SerializationStrategy {
}
-keepclassmembernames class kotlinx.serialization.UnknownFieldException {
  public <init>(int);
}
-keepclassmembernames class kotlinx.serialization.builtins.BuiltinSerializersKt {
  public static kotlinx.serialization.KSerializer getNullable(kotlinx.serialization.KSerializer);
}
-keepclassmembernames interface kotlinx.serialization.descriptors.SerialDescriptor {
}
-keepclassmembernames interface kotlinx.serialization.encoding.CompositeDecoder {
  public boolean decodeBooleanElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor);
  public int decodeIntElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public java.lang.Object decodeNullableSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.DeserializationStrategy, java.lang.Object);
  public boolean decodeSequentially();
  public java.lang.Object decodeSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.DeserializationStrategy, java.lang.Object);
  public java.lang.String decodeStringElement(kotlinx.serialization.descriptors.SerialDescriptor, int);
  public void endStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keepclassmembernames interface kotlinx.serialization.encoding.CompositeEncoder {
  public void encodeBooleanElement(kotlinx.serialization.descriptors.SerialDescriptor, int, boolean);
  public void encodeIntElement(kotlinx.serialization.descriptors.SerialDescriptor, int, int);
  public void encodeNullableSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.SerializationStrategy, java.lang.Object);
  public void encodeSerializableElement(kotlinx.serialization.descriptors.SerialDescriptor, int, kotlinx.serialization.SerializationStrategy, java.lang.Object);
  public void encodeStringElement(kotlinx.serialization.descriptors.SerialDescriptor, int, java.lang.String);
  public void endStructure(kotlinx.serialization.descriptors.SerialDescriptor);
  public boolean shouldEncodeElementDefault(kotlinx.serialization.descriptors.SerialDescriptor, int);
}
-keepclassmembernames interface kotlinx.serialization.encoding.Decoder {
  public kotlinx.serialization.encoding.CompositeDecoder beginStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keepclassmembernames interface kotlinx.serialization.encoding.Encoder {
  public kotlinx.serialization.encoding.CompositeEncoder beginStructure(kotlinx.serialization.descriptors.SerialDescriptor);
}
-keepclassmembernames class kotlinx.serialization.internal.ArrayListSerializer {
  public <init>(kotlinx.serialization.KSerializer);
}
-keepclassmembernames class kotlinx.serialization.internal.BooleanSerializer {
  kotlinx.serialization.internal.BooleanSerializer INSTANCE;
}
-keepclassmembernames interface kotlinx.serialization.internal.GeneratedSerializer {
  public kotlinx.serialization.KSerializer[] childSerializers();
  public java.lang.Object deserialize(kotlinx.serialization.encoding.Decoder);
  public kotlinx.serialization.descriptors.SerialDescriptor getDescriptor();
  public void serialize(kotlinx.serialization.encoding.Encoder, java.lang.Object);
}
-keepclassmembernames class kotlinx.serialization.internal.IntSerializer {
  kotlinx.serialization.internal.IntSerializer INSTANCE;
}
-keepclassmembernames class kotlinx.serialization.internal.PluginExceptionsKt {
  public static void throwMissingFieldException(int, int, kotlinx.serialization.descriptors.SerialDescriptor);
}
-keepclassmembernames class kotlinx.serialization.internal.PluginGeneratedSerialDescriptor {
  public <init>(java.lang.String, kotlinx.serialization.internal.GeneratedSerializer, int);
  public void addElement(java.lang.String, boolean);
}
-keepclassmembernames class kotlinx.serialization.internal.SerializationConstructorMarker {
}
-keepclassmembernames class kotlinx.serialization.internal.StringSerializer {
  kotlinx.serialization.internal.StringSerializer INSTANCE;
}
-keep enum kotlinx.serialization.json.ClassDiscriminatorMode {
  kotlinx.serialization.json.ClassDiscriminatorMode NONE;
}
-keepclassmembernames class kotlinx.serialization.json.Json {
  public java.lang.Object decodeFromString(kotlinx.serialization.DeserializationStrategy, java.lang.String);
  public kotlinx.serialization.modules.SerializersModule getSerializersModule();
}
-keepclassmembernames class kotlinx.serialization.json.JsonBuilder {
  public void setClassDiscriminatorMode(kotlinx.serialization.json.ClassDiscriminatorMode);
  public void setPrettyPrint(boolean);
  public void setPrettyPrintIndent(java.lang.String);
  public void setSerializersModule(kotlinx.serialization.modules.SerializersModule);
}
-keepclassmembernames class kotlinx.serialization.json.JsonContentPolymorphicSerializer {
  public <init>(kotlin.reflect.KClass);
  protected kotlinx.serialization.DeserializationStrategy selectDeserializer(kotlinx.serialization.json.JsonElement);
}
-keepclassmembernames class kotlinx.serialization.json.JsonElement {
}
-keepclassmembernames class kotlinx.serialization.json.JsonElementKt {
  public static java.lang.Boolean getBooleanOrNull(kotlinx.serialization.json.JsonPrimitive);
  public static kotlinx.serialization.json.JsonObject getJsonObject(kotlinx.serialization.json.JsonElement);
  public static kotlinx.serialization.json.JsonPrimitive getJsonPrimitive(kotlinx.serialization.json.JsonElement);
}
-keepclassmembernames class kotlinx.serialization.json.JsonKt {
  public static kotlinx.serialization.json.Json Json$default(kotlinx.serialization.json.Json, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keepclassmembernames class kotlinx.serialization.json.JsonObject {
  public java.lang.Object get(java.lang.Object);
}
-keepclassmembernames class kotlinx.serialization.json.JsonPrimitive {
  public boolean isString();
}
-keepclassmembernames class kotlinx.serialization.json.JvmStreamsKt {
  public static void encodeToStream(kotlinx.serialization.json.Json, kotlinx.serialization.SerializationStrategy, java.lang.Object, java.io.OutputStream);
}
-keepclassmembernames class kotlinx.serialization.modules.SerializersModule {
}
-keepclassmembernames class kotlinx.serialization.modules.SerializersModuleBuilder {
  public <init>();
  public kotlinx.serialization.modules.SerializersModule build();
  public void polymorphicDefaultDeserializer(kotlin.reflect.KClass, kotlin.jvm.functions.Function1);
}
-keep enum mozilla.appservices.places.BookmarkRoot {
  public java.lang.String getId();
  mozilla.appservices.places.BookmarkRoot Mobile;
}
-keepclassmembernames class mozilla.components.browser.engine.gecko.GeckoResultKt {
  public static java.lang.Object await(org.mozilla.geckoview.GeckoResult, kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.browser.engine.gecko.permission.GeckoSitePermissionsStorage {
  public java.lang.Object all(kotlin.coroutines.Continuation);
  public void clearTemporaryPermissions();
}
-keepclassmembernames class mozilla.components.browser.errorpages.R$string {
  int mozac_browser_errorpages_connection_failure_title;
  int mozac_browser_errorpages_no_internet_title_2;
  int mozac_browser_errorpages_safe_browsing_malware_uri_title;
  int mozac_browser_errorpages_safe_browsing_unwanted_uri_title;
  int mozac_browser_errorpages_safe_harmful_uri_title;
  int mozac_browser_errorpages_safe_phishing_uri_title;
  int mozac_browser_errorpages_unknown_host_title;
}
-keepclassmembernames class mozilla.components.browser.errorpages.R {
}
-keepclassmembernames class mozilla.components.browser.icons.Icon {
  public android.graphics.Bitmap getBitmap();
}
-keep enum mozilla.components.browser.icons.IconRequest$Size {
}
-keepclassmembernames class mozilla.components.browser.icons.IconRequest {
  public <init>(java.lang.String, mozilla.components.browser.icons.IconRequest$Size, java.util.List, java.lang.Integer, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class mozilla.components.browser.icons.generator.DefaultIconGenerator {
  public <init>(java.lang.Integer, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public mozilla.components.browser.icons.Icon generate(android.content.Context, mozilla.components.browser.icons.IconRequest);
}
-keepclassmembernames class mozilla.components.browser.menu.R$id {
  int mozac_browser_menu_recyclerView;
  int simple_text;
}
-keepclassmembernames class mozilla.components.browser.menu.R {
}
-keepclassmembernames class mozilla.components.browser.session.storage.RecoverableBrowserState {
  public java.util.List getTabs();
}
-keepclassmembernames class mozilla.components.browser.session.storage.SessionStorage {
  public void clear();
  public static mozilla.components.browser.session.storage.RecoverableBrowserState restore$default(mozilla.components.browser.session.storage.SessionStorage, kotlin.jvm.functions.Function1, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.browser.session.storage.serialize.BrowserStateWriter {
}
-keepclassmembernames class mozilla.components.browser.state.action.DownloadAction$AddDownloadAction {
  public <init>(mozilla.components.browser.state.state.content.DownloadState);
}
-keepclassmembernames class mozilla.components.browser.state.action.DownloadAction$RemoveAllDownloadsAction {
  mozilla.components.browser.state.action.DownloadAction$RemoveAllDownloadsAction INSTANCE;
}
-keepclassmembernames class mozilla.components.browser.state.action.DownloadAction {
}
-keepclassmembernames class mozilla.components.browser.state.action.RecentlyClosedAction$ReplaceTabsAction {
  public <init>(java.util.List);
}
-keepclassmembernames class mozilla.components.browser.state.action.RecentlyClosedAction {
}
-keepclassmembernames class mozilla.components.browser.state.action.SearchAction$SetSearchEnginesAction {
  public <init>(java.util.List, java.util.List, java.util.List, java.util.List, java.util.List, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List, java.lang.Integer);
}
-keepclassmembernames class mozilla.components.browser.state.action.SearchAction {
}
-keepclassmembernames class mozilla.components.browser.state.action.UndoAction$ClearRecoverableTabs {
  public <init>(java.lang.String);
}
-keepclassmembernames class mozilla.components.browser.state.action.UndoAction {
}
-keepclassmembernames class mozilla.components.browser.state.search.SearchEngine {
  public java.lang.String getId();
  public java.lang.String getName();
}
-keepclassmembernames class mozilla.components.browser.state.selector.SelectorsKt {
  public static mozilla.components.browser.state.state.TabSessionState getSelectedTab(mozilla.components.browser.state.state.BrowserState);
}
-keepclassmembernames class mozilla.components.browser.state.state.BrowserState {
  public java.util.List getClosedTabs();
  public java.util.Map getDownloads();
  public mozilla.components.browser.state.state.SearchState getSearch();
  public java.util.List getTabs();
  public mozilla.components.browser.state.state.UndoHistoryState getUndoHistory();
}
-keepclassmembernames class mozilla.components.browser.state.state.ContentState {
  public boolean getLoading();
  public boolean getPrivate();
  public int getProgress();
  public java.lang.String getTitle();
}
-keepclassmembernames class mozilla.components.browser.state.state.LastMediaAccessState {
}
-keepclassmembernames class mozilla.components.browser.state.state.MediaSessionState {
  public mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState getPlaybackState();
}
-keepclassmembernames class mozilla.components.browser.state.state.ReaderState {
}
-keepclassmembernames class mozilla.components.browser.state.state.SearchState {
  public java.util.List getAdditionalAvailableSearchEngines();
  public java.util.List getAdditionalSearchEngines();
  public boolean getComplete();
  public java.util.List getCustomSearchEngines();
  public java.util.List getDisabledSearchEngineIds();
  public java.util.List getHiddenSearchEngines();
  public java.lang.String getRegionDefaultSearchEngineId();
  public java.util.List getRegionSearchEngines();
  public java.util.List getRegionSearchEnginesOrder();
  public java.lang.Integer getSearchEnvironmentId();
  public java.lang.String getUserSelectedPrivateSearchEngineId();
  public java.lang.String getUserSelectedPrivateSearchEngineName();
  public java.lang.String getUserSelectedSearchEngineId();
  public java.lang.String getUserSelectedSearchEngineName();
}
-keepclassmembernames class mozilla.components.browser.state.state.SearchStateKt {
  public static java.util.List getAvailableSearchEngines(mozilla.components.browser.state.state.SearchState);
  public static mozilla.components.browser.state.search.SearchEngine getSelectedOrDefaultPrivateSearchEngine(mozilla.components.browser.state.state.SearchState);
  public static mozilla.components.browser.state.search.SearchEngine getSelectedOrDefaultSearchEngine(mozilla.components.browser.state.state.SearchState);
}
-keepclassmembernames class mozilla.components.browser.state.state.SecurityInfo {
}
-keepclassmembernames class mozilla.components.browser.state.state.SessionState$Source {
}
-keepclassmembernames interface mozilla.components.browser.state.state.SessionState {
}
-keepclassmembernames class mozilla.components.browser.state.state.TabSessionState {
  public mozilla.components.browser.state.state.ContentState getContent();
  public mozilla.components.browser.state.state.MediaSessionState getMediaSessionState();
}
-keepclassmembernames class mozilla.components.browser.state.state.TabSessionStateKt {
  public static mozilla.components.browser.state.state.TabSessionState createTab$default(java.lang.String, boolean, java.lang.String, mozilla.components.browser.state.state.TabSessionState, java.lang.String, java.util.Map, mozilla.components.browser.state.state.ReaderState, java.lang.String, java.lang.String, long, long, long, mozilla.components.browser.state.state.LastMediaAccessState, mozilla.components.browser.state.state.SessionState$Source, boolean, mozilla.components.concept.engine.EngineSession, mozilla.components.concept.engine.EngineSessionState, boolean, mozilla.components.browser.state.state.MediaSessionState, mozilla.components.concept.storage.HistoryMetadataKey, mozilla.components.concept.engine.manifest.WebAppManifest, java.lang.String, mozilla.components.concept.engine.EngineSession$LoadUrlFlags, java.util.Map, boolean, java.lang.String, boolean, java.lang.String, boolean, mozilla.components.browser.state.state.TrackingProtectionState, mozilla.components.browser.state.state.SecurityInfo, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.browser.state.state.TrackingProtectionState {
}
-keepclassmembernames class mozilla.components.browser.state.state.UndoHistoryState {
  public java.util.List getTabs();
  public java.lang.String getTag();
}
-keep enum mozilla.components.browser.state.state.content.DownloadState$Status {
  mozilla.components.browser.state.state.content.DownloadState$Status CANCELLED;
}
-keepclassmembernames class mozilla.components.browser.state.state.content.DownloadState {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.Long, long, mozilla.components.browser.state.state.content.DownloadState$Status, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, java.lang.String, java.lang.String, boolean, long, mozilla.components.concept.fetch.Response, java.lang.Integer, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public mozilla.components.browser.state.state.content.DownloadState$Status getStatus();
}
-keepclassmembernames class mozilla.components.browser.state.state.recover.RecoverableTab {
  public mozilla.components.browser.state.state.recover.TabState getState();
}
-keepclassmembernames class mozilla.components.browser.state.state.recover.TabState {
  public java.lang.String getId();
  public boolean getPrivate();
}
-keepclassmembernames class mozilla.components.browser.state.store.BrowserStore {
}
-keepclassmembernames class mozilla.components.browser.storage.sync.PlacesBookmarksStorage {
  public <init>(android.content.Context, int, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object addFolder-q6nJvHc(java.lang.String, java.lang.String, kotlin.UInt, kotlin.coroutines.Continuation);
  public java.lang.Object addItem-ZzzReZE(java.lang.String, java.lang.String, java.lang.String, kotlin.UInt, kotlin.coroutines.Continuation);
  public java.lang.Object deleteNode-gIAlu-s(java.lang.String, kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.browser.storage.sync.PlacesHistoryStorage {
  public <init>(android.content.Context, mozilla.components.concept.base.crash.CrashReporting, int, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object deleteEverything(kotlin.coroutines.Continuation);
  public java.lang.Object getVisited(kotlin.coroutines.Continuation);
  public java.lang.Object recordVisit(java.lang.String, mozilla.components.concept.storage.PageVisit, kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.browser.storage.sync.Tab {
  public <init>(java.util.List, int, long, boolean);
}
-keepclassmembernames class mozilla.components.browser.storage.sync.TabEntry {
  public <init>(java.lang.String, java.lang.String, java.lang.String);
}
-keepclassmembernames class mozilla.components.browser.toolbar.R$id {
  int mozac_browser_toolbar_url_view;
}
-keepclassmembernames class mozilla.components.browser.toolbar.R$string {
  int mozac_browser_toolbar_content_description_site_info;
  int mozac_clear_button_description;
}
-keepclassmembernames class mozilla.components.browser.toolbar.R {
}
-keepclassmembernames class mozilla.components.compose.base.R$string {
  int mozac_compose_base_link_text_links_available;
  int text_field_cross_trailing_icon_default_content_description;
}
-keepclassmembernames class mozilla.components.compose.base.R {
}
-keepclassmembernames class mozilla.components.compose.base.modifier.ModifierKt {
  public static androidx.compose.ui.Modifier onShown$default(androidx.compose.ui.Modifier, float, int, kotlin.jvm.functions.Function0, android.graphics.Rect, kotlin.jvm.functions.Function0, int, java.lang.Object);
}
-keep enum mozilla.components.compose.base.theme.Theme {
  mozilla.components.compose.base.theme.Theme Dark;
  mozilla.components.compose.base.theme.Theme Light;
  mozilla.components.compose.base.theme.Theme Private;
}
-keepclassmembernames class mozilla.components.compose.base.theme.layout.AcornLayout {
  public mozilla.components.compose.base.theme.layout.AcornSpace getSpace();
}
-keepclassmembernames class mozilla.components.compose.base.theme.layout.AcornSpace {
  public float getStatic200-D9Ej5fM();
}
-keepclassmembernames interface mozilla.components.concept.base.crash.CrashReporting {
}
-keepclassmembernames interface mozilla.components.concept.engine.Engine {
  public mozilla.components.concept.engine.Settings getSettings();
}
-keepclassmembernames class mozilla.components.concept.engine.EngineSession$LoadUrlFlags {
}
-keepclassmembernames class mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy {
}
-keepclassmembernames class mozilla.components.concept.engine.EngineSession {
}
-keepclassmembernames interface mozilla.components.concept.engine.EngineSessionState {
}
-keepclassmembernames class mozilla.components.concept.engine.Settings {
  public java.lang.Float getFontSizeFactor();
  public void setAutomaticFontSizeAdjustment(boolean);
  public void setFontInflationEnabled(java.lang.Boolean);
  public void setFontSizeFactor(java.lang.Float);
}
-keepclassmembernames class mozilla.components.concept.engine.manifest.WebAppManifest {
}
-keep enum mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState {
  mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState PAUSED;
  mozilla.components.concept.engine.mediasession.MediaSession$PlaybackState PLAYING;
}
-keepclassmembernames class mozilla.components.concept.engine.mediasession.MediaSession {
}
-keepclassmembernames interface mozilla.components.concept.engine.permission.SitePermissionsStorage {
}
-keepclassmembernames interface mozilla.components.concept.engine.webextension.MessageHandler {
  public java.lang.Object onMessage(java.lang.Object, mozilla.components.concept.engine.EngineSession);
  public void onPortConnected(mozilla.components.concept.engine.webextension.Port);
  public void onPortDisconnected(mozilla.components.concept.engine.webextension.Port);
  public void onPortMessage(java.lang.Object, mozilla.components.concept.engine.webextension.Port);
}
-keepclassmembernames class mozilla.components.concept.engine.webextension.Metadata {
  public java.lang.String getOptionsPageUrl();
}
-keepclassmembernames class mozilla.components.concept.engine.webextension.Port {
}
-keepclassmembernames class mozilla.components.concept.engine.webextension.WebExtension {
  public mozilla.components.concept.engine.webextension.Metadata getMetadata();
  public void registerBackgroundMessageHandler(java.lang.String, mozilla.components.concept.engine.webextension.MessageHandler);
}
-keepclassmembernames interface mozilla.components.concept.engine.webextension.WebExtensionRuntime {
  public void uninstallWebExtension(mozilla.components.concept.engine.webextension.WebExtension, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2);
}
-keepclassmembernames class mozilla.components.concept.fetch.Client {
}
-keepclassmembernames class mozilla.components.concept.fetch.Response {
}
-keepclassmembernames class mozilla.components.concept.storage.Address {
  public java.lang.String getGuid();
}
-keepclassmembernames class mozilla.components.concept.storage.BookmarkNode {
  public java.util.List getChildren();
  public java.lang.String getGuid();
}
-keepclassmembernames interface mozilla.components.concept.storage.BookmarksStorage {
  public static java.lang.Object getTree-0E7RQCE$default(mozilla.components.concept.storage.BookmarksStorage, java.lang.String, boolean, kotlin.coroutines.Continuation, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.concept.storage.CreditCard {
  public java.lang.String getGuid();
}
-keepclassmembernames interface mozilla.components.concept.storage.CreditCardsAddressesStorage {
}
-keepclassmembernames class mozilla.components.concept.storage.HistoryMetadataKey {
}
-keepclassmembernames interface mozilla.components.concept.storage.LoginsStorage {
}
-keepclassmembernames class mozilla.components.concept.storage.PageVisit {
  public <init>(mozilla.components.concept.storage.VisitType, mozilla.components.concept.storage.RedirectSource, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum mozilla.components.concept.storage.RedirectSource {
}
-keep enum mozilla.components.concept.storage.VisitType {
  mozilla.components.concept.storage.VisitType LINK;
}
-keepclassmembernames class mozilla.components.concept.sync.AuthType$Signin {
  mozilla.components.concept.sync.AuthType$Signin INSTANCE;
}
-keepclassmembernames class mozilla.components.concept.sync.AuthType {
}
-keepclassmembernames interface mozilla.components.concept.sync.OAuthAccount {
}
-keepclassmembernames class mozilla.components.feature.addons.Addon$LocalizedPermission {
  public <init>(java.lang.String, mozilla.components.feature.addons.Addon$Permission);
}
-keepclassmembernames class mozilla.components.feature.addons.Addon$Permission {
  public <init>(java.lang.String, boolean);
}
-keepclassmembernames class mozilla.components.feature.addons.Addon {
}
-keepclassmembernames class mozilla.components.feature.addons.AddonManager {
  public java.lang.Object getAddonByID(java.lang.String, kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.feature.addons.R$id {
  int add_button;
  int add_on_icon;
  int add_on_item;
  int add_on_name;
  int allow_in_private_browsing;
  int deny_button;
  int details_container;
  int rating;
  int review_count;
  int title;
}
-keepclassmembernames class mozilla.components.feature.addons.R$string {
  int mozac_extension_install_progress_caption;
  int mozac_feature_addons_enabled;
  int mozac_feature_addons_permissions_dialog_add;
  int mozac_feature_addons_permissions_dialog_cancel;
  int mozac_feature_addons_permissions_dialog_heading_optional_settings;
  int mozac_feature_addons_permissions_dialog_learn_more;
  int mozac_feature_addons_settings_allow_in_private_browsing_2;
}
-keepclassmembernames class mozilla.components.feature.addons.R {
}
-keepclassmembernames class mozilla.components.feature.addons.ui.AddonInstallationDialogFragment {
}
-keepclassmembernames class mozilla.components.feature.app.links.R$string {
  int mozac_feature_applinks_confirm_dialog_checkbox_label;
  int mozac_feature_applinks_confirm_dialog_confirm_2;
  int mozac_feature_applinks_normal_confirm_dialog_title_with_app_name_2;
}
-keepclassmembernames class mozilla.components.feature.app.links.R {
}
-keepclassmembernames class mozilla.components.feature.contextmenu.R$string {
  int mozac_feature_contextmenu_copy_link;
  int mozac_feature_contextmenu_download_link;
  int mozac_feature_contextmenu_open_link_in_external_app;
  int mozac_feature_contextmenu_open_link_in_new_tab;
  int mozac_feature_contextmenu_open_link_in_private_tab;
  int mozac_feature_contextmenu_share_link;
}
-keepclassmembernames class mozilla.components.feature.contextmenu.R {
}
-keepclassmembernames class mozilla.components.feature.customtabs.R$string {
  int mozac_feature_customtabs_exit_button;
  int mozac_feature_customtabs_share_link;
}
-keepclassmembernames class mozilla.components.feature.customtabs.R {
}
-keepclassmembernames class mozilla.components.feature.downloads.R$string {
  int mozac_feature_downloads_button_cancel;
  int mozac_feature_downloads_button_pause;
  int mozac_feature_downloads_button_resume;
  int mozac_feature_downloads_cancel_active_downloads_accept;
  int mozac_feature_downloads_cancel_active_downloads_warning_content_title;
  int mozac_feature_downloads_cancel_active_private_downloads_deny;
  int mozac_feature_downloads_dialog_cancel;
  int mozac_feature_downloads_dialog_download;
  int mozac_feature_downloads_dialog_title_with_unknown_size;
  int mozac_feature_downloads_paused_notification_text;
}
-keepclassmembernames class mozilla.components.feature.downloads.R {
}
-keepclassmembernames class mozilla.components.feature.findinpage.R$id {
  int find_in_page_close_btn;
  int find_in_page_next_btn;
  int find_in_page_prev_btn;
  int find_in_page_query_text;
}
-keepclassmembernames class mozilla.components.feature.findinpage.R {
}
-keepclassmembernames class mozilla.components.feature.prompts.R$id {
  int save_cancel;
}
-keepclassmembernames class mozilla.components.feature.prompts.R$string {
  int mozac_feature_prompt_before_unload_dialog_body;
}
-keepclassmembernames class mozilla.components.feature.prompts.R {
}
-keepclassmembernames class mozilla.components.feature.qr.R$string {
  int mozac_feature_qr_scanner;
}
-keepclassmembernames class mozilla.components.feature.qr.R {
}
-keepclassmembernames class mozilla.components.feature.readerview.R$id {
  int mozac_feature_readerview_color_dark;
  int mozac_feature_readerview_color_light;
  int mozac_feature_readerview_color_scheme_group;
  int mozac_feature_readerview_color_sepia;
  int mozac_feature_readerview_font_group;
  int mozac_feature_readerview_font_sans_serif;
  int mozac_feature_readerview_font_serif;
  int mozac_feature_readerview_font_size_decrease;
  int mozac_feature_readerview_font_size_increase;
}
-keepclassmembernames class mozilla.components.feature.readerview.R {
}
-keepclassmembernames class mozilla.components.feature.recentlyclosed.RecentlyClosedTabsStorage {
  public java.lang.Object getTabs(kotlin.coroutines.Continuation);
  public java.lang.Object removeAllTabs(kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.feature.search.SearchUseCases$AddNewSearchEngineUseCase {
  public void invoke(mozilla.components.browser.state.search.SearchEngine);
}
-keepclassmembernames class mozilla.components.feature.search.SearchUseCases$NewTabSearchUseCase {
}
-keepclassmembernames interface mozilla.components.feature.search.SearchUseCases$SearchUseCase {
  public static void invoke$default(mozilla.components.feature.search.SearchUseCases$SearchUseCase, java.lang.String, mozilla.components.browser.state.search.SearchEngine, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.feature.search.SearchUseCases$SelectSearchEngineUseCase {
  public void invoke(mozilla.components.browser.state.search.SearchEngine);
}
-keepclassmembernames class mozilla.components.feature.search.SearchUseCases {
  public mozilla.components.feature.search.SearchUseCases$AddNewSearchEngineUseCase getAddSearchEngine();
  public mozilla.components.feature.search.SearchUseCases$NewTabSearchUseCase getNewTabSearch();
  public mozilla.components.feature.search.SearchUseCases$SelectSearchEngineUseCase getSelectSearchEngine();
}
-keepclassmembernames class mozilla.components.feature.search.ext.SearchEngineKt {
  public static mozilla.components.browser.state.search.SearchEngine createSearchEngine$default(java.lang.String, java.lang.String, android.graphics.Bitmap, java.lang.String, java.lang.String, java.lang.String, boolean, int, java.lang.Object);
}
-keepclassmembernames interface mozilla.components.feature.session.SessionUseCases$LoadUrlUseCase {
  public static void invoke$default(mozilla.components.feature.session.SessionUseCases$LoadUrlUseCase, java.lang.String, mozilla.components.concept.engine.EngineSession$LoadUrlFlags, java.util.Map, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.feature.session.SessionUseCases {
}
-keepclassmembernames class mozilla.components.feature.session.SettingsUseCases$UpdateTrackingProtectionUseCase {
  public void invoke(mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy);
}
-keepclassmembernames class mozilla.components.feature.session.SettingsUseCases {
  public mozilla.components.feature.session.SettingsUseCases$UpdateTrackingProtectionUseCase getUpdateTrackingProtection();
}
-keepclassmembernames class mozilla.components.feature.sitepermissions.R$id {
  int do_not_ask_again;
}
-keepclassmembernames class mozilla.components.feature.sitepermissions.R$string {
  int mozac_feature_sitepermissions_storage_access_message;
}
-keepclassmembernames class mozilla.components.feature.sitepermissions.R {
}
-keep enum mozilla.components.feature.sitepermissions.SitePermissionsRules$Action {
  mozilla.components.feature.sitepermissions.SitePermissionsRules$Action BLOCKED;
}
-keepclassmembernames class mozilla.components.feature.sitepermissions.SitePermissionsRules {
}
-keepclassmembernames class mozilla.components.feature.summarize.R$string {
  int mozac_summarize_settings_gestures;
  int mozac_summarize_settings_learn_more;
  int mozac_summarize_settings_shake_to_summarize;
  int mozac_summarize_settings_summarize_pages;
}
-keepclassmembernames class mozilla.components.feature.summarize.R {
}
-keepclassmembernames interface mozilla.components.feature.tab.collections.TabCollection {
}
-keepclassmembernames class mozilla.components.feature.tab.collections.TabCollectionStorage {
  public <init>(android.content.Context, mozilla.components.browser.session.storage.serialize.BrowserStateWriter, java.io.File, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Long createCollection(java.lang.String, java.util.List);
}
-keepclassmembernames class mozilla.components.feature.tabs.TabsUseCases$AddNewTabUseCase {
}
-keepclassmembernames class mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase {
  public static void invoke$default(mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase, boolean, int, java.lang.Object);
  public void invoke(boolean);
}
-keepclassmembernames class mozilla.components.feature.tabs.TabsUseCases {
  public mozilla.components.feature.tabs.TabsUseCases$AddNewTabUseCase getAddTab();
  public mozilla.components.feature.tabs.TabsUseCases$RemoveAllTabsUseCase getRemoveAllTabs();
}
-keepclassmembernames class mozilla.components.feature.top.sites.PinnedSiteStorage {
  public java.lang.Object getPinnedSites(kotlin.coroutines.Continuation);
  public java.lang.Object removePinnedSite(mozilla.components.feature.top.sites.TopSite, kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.feature.top.sites.TopSite$Pinned {
}
-keepclassmembernames class mozilla.components.feature.top.sites.TopSite {
}
-keepclassmembernames class mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase {
  public static java.lang.Object invoke$default(mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase, java.lang.String, java.lang.String, boolean, kotlin.coroutines.Continuation, int, java.lang.Object);
}
-keepclassmembernames class mozilla.components.feature.top.sites.TopSitesUseCases {
  public mozilla.components.feature.top.sites.TopSitesUseCases$AddPinnedSiteUseCase getAddPinnedSites();
}
-keepclassmembernames class mozilla.components.lib.crash.R$string {
  int crash_reporting_ask;
  int crash_reporting_auto;
  int crash_reporting_never;
}
-keepclassmembernames class mozilla.components.lib.crash.R {
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$CancelForEverTapped {
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$CancelTapped {
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$CheckDeferred {
  public <init>(java.util.List);
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$CheckForCrashes {
  public <init>(java.util.List);
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$ReportTapped {
  public boolean getAutomaticallySendChecked();
  public java.util.List getCrashIDs();
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction$ShowPrompt {
  public <init>(java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class mozilla.components.lib.crash.store.CrashAction {
}
-keep enum mozilla.components.lib.crash.store.CrashReportOption {
  public java.lang.String getLabel();
  public static mozilla.components.lib.crash.store.CrashReportOption[] values();
  mozilla.components.lib.crash.store.CrashReportOption Ask;
  mozilla.components.lib.crash.store.CrashReportOption Auto;
  mozilla.components.lib.crash.store.CrashReportOption Never;
}
-keepclassmembernames interface mozilla.components.lib.state.Action {
}
-keepclassmembernames interface mozilla.components.lib.state.State {
}
-keepclassmembernames class mozilla.components.lib.state.Store {
  public void dispatch(mozilla.components.lib.state.Action);
  public mozilla.components.lib.state.State getState();
  public kotlinx.coroutines.flow.StateFlow getStateFlow();
}
-keepclassmembernames class mozilla.components.service.fxa.FirefoxAccount {
}
-keepclassmembernames interface mozilla.components.service.nimbus.NimbusApi {
}
-keepclassmembernames class mozilla.components.service.nimbus.NimbusUtilsKt {
  public static boolean evalJexlSafe(org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface, java.lang.String);
}
-keep enum mozilla.components.service.nimbus.messaging.ControlMessageBehavior {
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.FxNimbusMessaging$Features {
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getMessaging();
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.FxNimbusMessaging {
  public mozilla.components.service.nimbus.messaging.FxNimbusMessaging$Features getFeatures();
  mozilla.components.service.nimbus.messaging.FxNimbusMessaging INSTANCE;
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.Message {
  public java.lang.String getId();
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.MessageData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.lang.String, java.util.Map, org.mozilla.experiments.nimbus.StringHolder, java.util.List, java.lang.String, boolean, mozilla.components.service.nimbus.messaging.MicrosurveyConfig, java.lang.String, java.lang.String, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.String getButtonLabel();
  public java.lang.String getText();
  public java.lang.String getTitle();
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.Messaging {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.lang.String, java.util.List, java.util.Map, java.lang.String, java.util.Map, mozilla.components.service.nimbus.messaging.NotificationConfig, mozilla.components.service.nimbus.messaging.ControlMessageBehavior, java.util.Map, java.util.Map, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.Map getMessages();
  public java.util.Map getTriggers();
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.MicrosurveyConfig {
}
-keepclassmembernames interface mozilla.components.service.nimbus.messaging.NimbusMessagingControllerInterface {
  public java.lang.Object getMessages(kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.NotificationConfig {
}
-keepclassmembernames class mozilla.components.service.nimbus.messaging.StyleData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class mozilla.components.service.sync.autofill.AutofillCreditCardsAddressesStorage {
  public java.lang.Object deleteAddress(java.lang.String, kotlin.coroutines.Continuation);
  public java.lang.Object deleteCreditCard(java.lang.String, kotlin.coroutines.Continuation);
  public java.lang.Object getAllAddresses(kotlin.coroutines.Continuation);
  public java.lang.Object getAllCreditCards(kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.service.sync.logins.SyncableLoginsStorage {
  public java.lang.Object list(kotlin.coroutines.Continuation);
  public java.lang.Object wipeLocal(kotlin.coroutines.Continuation);
}
-keepclassmembernames class mozilla.components.support.base.log.logger.Logger {
  public <init>(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class mozilla.components.support.ktx.android.content.ContextKt {
  public static java.lang.String getAppName(android.content.Context);
}
-keepclassmembernames class mozilla.components.support.ktx.util.PromptAbuserDetector$Companion {
  public void setValidationsEnabled(boolean);
}
-keepclassmembernames class mozilla.components.support.ktx.util.PromptAbuserDetector {
  mozilla.components.support.ktx.util.PromptAbuserDetector$Companion Companion;
}
-keepclassmembernames class mozilla.components.support.ktx.util.URLStringUtils {
  public java.lang.CharSequence toDisplayUrl(java.lang.CharSequence);
  mozilla.components.support.ktx.util.URLStringUtils INSTANCE;
}
-keepclassmembernames class mozilla.components.support.license.R$id {
  int about_libraries_listview;
}
-keepclassmembernames class mozilla.components.support.license.R {
}
-keepclassmembernames class mozilla.components.support.locale.LocaleManager {
  public void resetToSystemDefault(android.content.Context, mozilla.components.support.locale.LocaleUseCases);
  public android.content.Context setNewLocale(android.content.Context, mozilla.components.support.locale.LocaleUseCases, java.util.Locale);
  mozilla.components.support.locale.LocaleManager INSTANCE;
}
-keepclassmembernames class mozilla.components.support.locale.LocaleUseCases {
}
-keepclassmembernames class mozilla.components.support.utils.ext.ContextKt {
  public static mozilla.components.support.utils.ext.PackageManagerCompatHelper getPackageManagerCompatHelper(android.content.Context);
}
-keepclassmembernames interface mozilla.components.support.utils.ext.PackageManagerCompatHelper {
  public android.content.pm.PackageInfo getPackageInfoCompat(java.lang.String, int);
}
-keepclassmembernames class mozilla.components.support.webextensions.WebExtensionSupport {
  public java.util.concurrent.ConcurrentHashMap getInstalledExtensions();
  mozilla.components.support.webextensions.WebExtensionSupport INSTANCE;
}
-keepclassmembernames class mozilla.components.ui.icons.R$drawable {
  int mozac_ic_shield_slash_multicolor_24;
}
-keepclassmembernames class mozilla.components.ui.icons.R {
}
-keepclassmembernames class mozilla.telemetry.glean.internal.RecordedEvent {
  public java.util.Map getExtra();
}
-keepclassmembernames class mozilla.telemetry.glean.private.EventMetricType {
  public static java.util.List testGetValue$default(mozilla.telemetry.glean.private.EventMetricType, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class mozilla.telemetry.glean.private.ObjectMetricType {
  public static kotlinx.serialization.json.JsonElement testGetValue$default(mozilla.telemetry.glean.private.ObjectMetricType, java.lang.String, int, java.lang.Object);
}
-keepclassmembernames class mozilla.telemetry.glean.testing.GleanTestLocalServer {
  public <init>(android.content.Context, int);
}
-keepclassmembernames class okio.AsyncTimeout {
  public <init>();
  public void enter();
  public boolean exit();
  protected java.io.IOException newTimeoutException(java.io.IOException);
  protected void timedOut();
}
-keepclassmembernames class okio.Buffer$UnsafeCursor {
  public <init>();
  public void close();
  public long expandBuffer(int);
  public int next();
  public long resizeBuffer(long);
  public int seek(long);
  byte[] data;
  int end;
  long offset;
  int start;
}
-keepclassmembernames class okio.Buffer {
  public <init>();
  public void clear();
  public okio.Buffer clone();
  public static okio.Buffer copyTo$default(okio.Buffer, okio.Buffer, long, int, java.lang.Object);
  public okio.Buffer copyTo(okio.Buffer, long, long);
  public boolean exhausted();
  public byte getByte(long);
  public long indexOfElement(okio.ByteString);
  public long indexOfElement(okio.ByteString, long);
  public java.io.InputStream inputStream();
  public boolean rangeEquals(long, okio.ByteString);
  public long read(okio.Buffer, long);
  public static okio.Buffer$UnsafeCursor readAndWriteUnsafe$default(okio.Buffer, okio.Buffer$UnsafeCursor, int, java.lang.Object);
  public okio.Buffer$UnsafeCursor readAndWriteUnsafe(okio.Buffer$UnsafeCursor);
  public byte readByte();
  public byte[] readByteArray();
  public okio.ByteString readByteString();
  public short readShort();
  public java.lang.String readUtf8();
  public java.lang.String readUtf8(long);
  public int readUtf8CodePoint();
  public long size();
  public void skip(long);
  public void write(okio.Buffer, long);
  public okio.Buffer write(okio.ByteString);
  public okio.Buffer write(okio.ByteString, int, int);
  public okio.Buffer write(okio.Source, long);
  public okio.Buffer write(byte[]);
  public okio.Buffer write(byte[], int, int);
  public long writeAll(okio.Source);
  public okio.Buffer writeByte(int);
  public okio.Buffer writeDecimalLong(long);
  public okio.Buffer writeHexadecimalUnsignedLong(long);
  public okio.Buffer writeInt(int);
  public okio.Buffer writeLong(long);
  public okio.Buffer writeShort(int);
  public okio.Buffer writeString(java.lang.String, int, int, java.nio.charset.Charset);
  public okio.Buffer writeString(java.lang.String, java.nio.charset.Charset);
  public okio.Buffer writeUtf8(java.lang.String);
  public okio.Buffer writeUtf8(java.lang.String, int, int);
  public okio.Buffer writeUtf8CodePoint(int);
}
-keepclassmembernames interface okio.BufferedSink {
  public okio.BufferedSink emit();
  public okio.BufferedSink emitCompleteSegments();
  public void flush();
  public okio.Buffer getBuffer();
  public okio.BufferedSink write(okio.ByteString);
  public okio.BufferedSink write(okio.Source, long);
  public okio.BufferedSink write(byte[]);
  public okio.BufferedSink write(byte[], int, int);
  public long writeAll(okio.Source);
  public okio.BufferedSink writeByte(int);
  public okio.BufferedSink writeDecimalLong(long);
  public okio.BufferedSink writeHexadecimalUnsignedLong(long);
  public okio.BufferedSink writeInt(int);
  public okio.BufferedSink writeIntLe(int);
  public okio.BufferedSink writeLong(long);
  public okio.BufferedSink writeLongLe(long);
  public okio.BufferedSink writeShort(int);
  public okio.BufferedSink writeString(java.lang.String, java.nio.charset.Charset);
  public okio.BufferedSink writeUtf8(java.lang.String);
  public okio.BufferedSink writeUtf8(java.lang.String, int, int);
  public okio.BufferedSink writeUtf8CodePoint(int);
}
-keepclassmembernames interface okio.BufferedSource {
  public boolean exhausted();
  public okio.Buffer getBuffer();
  public long indexOf(byte);
  public long indexOf(okio.ByteString);
  public long indexOf(okio.ByteString, long, long);
  public long indexOfElement(okio.ByteString);
  public java.io.InputStream inputStream();
  public okio.BufferedSource peek();
  public boolean rangeEquals(long, okio.ByteString);
  public long readAll(okio.Sink);
  public byte readByte();
  public byte[] readByteArray();
  public byte[] readByteArray(long);
  public okio.ByteString readByteString();
  public okio.ByteString readByteString(long);
  public long readDecimalLong();
  public void readFully(okio.Buffer, long);
  public void readFully(byte[]);
  public long readHexadecimalUnsignedLong();
  public int readInt();
  public int readIntLe();
  public long readLong();
  public long readLongLe();
  public short readShort();
  public java.lang.String readString(long, java.nio.charset.Charset);
  public java.lang.String readString(java.nio.charset.Charset);
  public java.lang.String readUtf8(long);
  public int readUtf8CodePoint();
  public java.lang.String readUtf8LineStrict();
  public java.lang.String readUtf8LineStrict(long);
  public boolean request(long);
  public void require(long);
  public int select(okio.Options);
  public void skip(long);
}
-keepclassmembernames class okio.ByteString$Companion {
  public okio.ByteString decodeBase64(java.lang.String);
  public okio.ByteString decodeHex(java.lang.String);
  public okio.ByteString encodeString(java.lang.String, java.nio.charset.Charset);
  public okio.ByteString encodeUtf8(java.lang.String);
  public static okio.ByteString of$default(okio.ByteString$Companion, byte[], int, int, int, java.lang.Object);
  public okio.ByteString of(byte[]);
  public okio.ByteString of(byte[], int, int);
}
-keepclassmembernames class okio.ByteString {
  public static java.lang.String base64$default(okio.ByteString, boolean, int, java.lang.Object);
  public java.lang.String base64();
  public void copyInto(int, byte[], int, int);
  public static okio.ByteString encodeUtf8(java.lang.String);
  public byte getByte(int);
  public int hashCode();
  public java.lang.String hex();
  public static int indexOf$default(okio.ByteString, okio.ByteString, int, int, java.lang.Object);
  public okio.ByteString md5();
  public okio.ByteString sha1();
  public okio.ByteString sha256();
  public int size();
  public boolean startsWith(okio.ByteString);
  public java.lang.String string(java.nio.charset.Charset);
  public static okio.ByteString substring$default(okio.ByteString, int, int, int, java.lang.Object);
  public okio.ByteString substring(int, int);
  public okio.ByteString toAsciiLowercase();
  public byte[] toByteArray();
  public java.lang.String utf8();
  okio.ByteString$Companion Companion;
  okio.ByteString EMPTY;
}
-keepclassmembernames class okio.DeflaterSink {
  public <init>(okio.Sink, java.util.zip.Deflater);
  public void close();
  public void flush();
  public void write(okio.Buffer, long);
}
-keepclassmembernames class okio.FileMetadata {
  public java.lang.Long getSize();
  public boolean isDirectory();
}
-keepclassmembernames class okio.FileSystem {
  public okio.Sink appendingSink(okio.Path);
  public void atomicMove(okio.Path, okio.Path);
  public void createDirectories(okio.Path);
  public void delete(okio.Path);
  public boolean exists(okio.Path);
  public java.util.List list(okio.Path);
  public okio.FileMetadata metadata(okio.Path);
  public okio.Sink sink(okio.Path);
  public okio.Sink sink(okio.Path, boolean);
  public okio.Source source(okio.Path);
  okio.FileSystem RESOURCES;
  okio.FileSystem SYSTEM;
}
-keepclassmembernames class okio.ForwardingFileSystem {
  public <init>(okio.FileSystem);
  public okio.Sink sink(okio.Path, boolean);
}
-keepclassmembernames class okio.ForwardingSink {
  public <init>(okio.Sink);
  public void close();
  public void flush();
  public void write(okio.Buffer, long);
}
-keepclassmembernames class okio.ForwardingSource {
  public <init>(okio.Source);
  public void close();
  public okio.Source delegate();
  public long read(okio.Buffer, long);
}
-keepclassmembernames class okio.ForwardingTimeout {
  public <init>(okio.Timeout);
  public okio.Timeout delegate();
  public okio.ForwardingTimeout setDelegate(okio.Timeout);
}
-keepclassmembernames class okio.GzipSink {
  public <init>(okio.Sink);
}
-keepclassmembernames class okio.GzipSource {
  public <init>(okio.Source);
}
-keepclassmembernames class okio.HashingSink$Companion {
  public okio.HashingSink sha256(okio.Sink);
}
-keepclassmembernames class okio.HashingSink {
  public okio.ByteString hash();
  okio.HashingSink$Companion Companion;
}
-keepclassmembernames class okio.InflaterSource {
  public <init>(okio.Source, java.util.zip.Inflater);
  public void close();
  public long readOrInflate(okio.Buffer, long);
}
-keepclassmembernames class okio.Okio {
  public static okio.Sink blackhole();
  public static okio.BufferedSink buffer(okio.Sink);
  public static okio.BufferedSource buffer(okio.Source);
  public static okio.Source limit$default(okio.Source, long, boolean, int, java.lang.Object);
  public static okio.Sink sink(java.io.OutputStream);
  public static okio.Socket socket(java.net.Socket);
  public static okio.Source source(java.io.File);
  public static okio.Source source(java.io.InputStream);
}
-keepclassmembernames class okio.Options$Companion {
  public okio.Options of(okio.ByteString[]);
}
-keepclassmembernames class okio.Options {
  public static okio.Options of(okio.ByteString[]);
  okio.Options$Companion Companion;
}
-keepclassmembernames class okio.Path$Companion {
  public static okio.Path get$default(okio.Path$Companion, java.io.File, boolean, int, java.lang.Object);
  public static okio.Path get$default(okio.Path$Companion, java.lang.String, boolean, int, java.lang.Object);
}
-keepclassmembernames class okio.Path {
  public okio.Path parent();
  public okio.Path resolve(java.lang.String);
  public java.io.File toFile();
  okio.Path$Companion Companion;
}
-keepclassmembernames interface okio.Sink {
  public void close();
  public void flush();
  public okio.Timeout timeout();
  public void write(okio.Buffer, long);
}
-keepclassmembernames interface okio.Socket {
  public void cancel();
  public okio.Sink getSink();
  public okio.Source getSource();
}
-keepclassmembernames interface okio.Source {
  public void close();
  public long read(okio.Buffer, long);
  public okio.Timeout timeout();
}
-keepclassmembernames class okio.Timeout$Companion {
  public long minTimeout(long, long);
}
-keepclassmembernames class okio.Timeout {
  public <init>();
  public okio.Timeout clearDeadline();
  public okio.Timeout clearTimeout();
  public long deadlineNanoTime();
  public okio.Timeout deadlineNanoTime(long);
  public boolean hasDeadline();
  public okio.Timeout timeout(long, java.util.concurrent.TimeUnit);
  public long timeoutNanos();
  okio.Timeout$Companion Companion;
  okio.Timeout NONE;
}
-keepclassmembernames class okio.Utf8 {
  public static long size$default(java.lang.String, int, int, int, java.lang.Object);
}
-keepclassmembernames @interface org.intellij.lang.annotations.Language {
  public java.lang.String value();
}
-keepclassmembernames @interface org.jetbrains.annotations.NotNull {
}
-keepclassmembernames @interface org.jetbrains.annotations.Nullable {
}
-keepclassmembernames @interface org.jetbrains.annotations.TestOnly {
}
-keepclassmembernames class org.jsoup.Jsoup {
  public static org.jsoup.nodes.Document parse(java.lang.String);
}
-keepclassmembernames class org.jsoup.nodes.Document {
}
-keepclassmembernames class org.jsoup.nodes.Element {
  public java.lang.String text();
}
-keepclassmembernames @interface org.jspecify.annotations.NonNull {
}
-keepclassmembernames class org.mozilla.experiments.nimbus.HardcodedNimbusFeatures {
  public <init>(android.content.Context, kotlin.Pair[]);
  public void connectWith(org.mozilla.experiments.nimbus.internal.FeatureManifestInterface);
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.NimbusInterface {
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface {
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.NimbusMessagingInterface {
  public static org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createMessageHelper$default(org.mozilla.experiments.nimbus.NimbusMessagingInterface, org.json.JSONObject, int, java.lang.Object);
  public org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createMessageHelper(org.json.JSONObject);
}
-keepclassmembernames class org.mozilla.experiments.nimbus.Res$Companion {
  public org.mozilla.experiments.nimbus.StringHolder string(java.lang.String);
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.Res {
  org.mozilla.experiments.nimbus.Res$Companion Companion;
}
-keepclassmembernames class org.mozilla.experiments.nimbus.StringHolder {
  public <init>(java.lang.Integer, java.lang.String);
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.Variables {
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.internal.FMLFeatureInterface {
}
-keepclassmembernames class org.mozilla.experiments.nimbus.internal.FeatureHolder {
  public org.mozilla.experiments.nimbus.internal.FMLFeatureInterface value();
  public void withInitializer(kotlin.jvm.functions.Function2);
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.internal.FeatureManifestInterface {
}
-keepclassmembernames class org.mozilla.experiments.nimbus.internal.NimbusException {
}
-keepclassmembernames interface org.mozilla.experiments.nimbus.internal.NimbusTargetingHelperInterface {
  public boolean evalJexl(java.lang.String);
}
-keepclassmembernames class org.mozilla.fenix.Config {
  public org.mozilla.fenix.ReleaseChannel getChannel();
  org.mozilla.fenix.Config INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.FenixApplication {
  public org.mozilla.fenix.components.Components getComponents();
  public void restoreMessaging$app();
}
-keepclassmembernames class org.mozilla.fenix.GleanMetrics.AppExitInfo {
  public mozilla.telemetry.glean.private.EventMetricType processExited();
  org.mozilla.fenix.GleanMetrics.AppExitInfo INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.GleanMetrics.NimbusSystem {
  public mozilla.telemetry.glean.private.ObjectMetricType recordedNimbusContext();
  org.mozilla.fenix.GleanMetrics.NimbusSystem INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.HomeActivity {
  public void recreate();
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.IntentReceiverActivity {
}
-keepclassmembernames class org.mozilla.fenix.NavGraphDirections$Companion {
  public androidx.navigation.NavDirections actionGlobalToInstalledAddonDetailsFragment(mozilla.components.feature.addons.Addon);
}
-keepclassmembernames class org.mozilla.fenix.NavGraphDirections {
  org.mozilla.fenix.NavGraphDirections$Companion Companion;
}
-keepclassmembernames class org.mozilla.fenix.R$color {
  int fx_mobile_private_surface;
  int fx_mobile_surface;
}
-keepclassmembernames class org.mozilla.fenix.R$drawable {
  int home_background_gradient;
  int ic_firefox;
  int ic_notification_permission;
  int ic_onboarding_customize_toolbar;
  int ic_onboarding_search_widget;
  int ic_onboarding_sync;
  int ic_onboarding_top_toolbar;
  int ic_onboarding_welcome;
}
-keepclassmembernames class org.mozilla.fenix.R$id {
  int about_content;
  int about_text;
  int add_ons_list;
  int add_ons_progress_bar;
  int addon_container;
  int ask_to_allow_radio;
  int block_radio;
  int build_date;
  int checkbox;
  int checkmark;
  int container;
  int custom_search_engines_learn_more;
  int custom_search_suggestions_learn_more;
  int delete_all_site_permissions_button;
  int delete_data;
  int edit_suggest_string;
  int email;
  int engineView;
  int engine_icon;
  int fourth_radio;
  int header_title;
  int history_delete;
  int history_empty_view;
  int history_list;
  int homepageView;
  int https_only_all_tabs;
  int https_only_private_tabs;
  int https_only_summary;
  int https_only_switch;
  int https_only_title;
  int locale_list;
  int name_collection_edittext;
  int navigationToolbar;
  int navigation_bar;
  int overflow_menu;
  int radio_button;
  int recently_closed_empty_view;
  int recently_closed_list;
  int recycler_view;
  int removeAllExceptions;
  int remove_add_on;
  int save_button;
  int search;
  int settings;
  int settings_button;
  int shareWrapper;
  int share_history_multi_select;
  int share_tab_favicon;
  int share_tab_title;
  int share_tab_url;
  int shared_site_list;
  int signInEmailButton;
  int signOutDisconnect;
  int studies_switch;
  int switchWidget;
  int switch_widget;
  int third_radio;
  int title;
  int toolbar;
  int url;
}
-keepclassmembernames class org.mozilla.fenix.R$plurals {
  int add_to_exiting_tab_group_content_description;
}
-keepclassmembernames class org.mozilla.fenix.R$string {
  int action_bar_up_description;
  int add_login_hostname_invalid_text_2;
  int add_login_hostname_invalid_text_3;
  int add_login_save_new_login_button_content_description;
  int addons_permissions_heading_required_permissions;
  int address_menu_save_address;
  int addresses_edit_address;
  int addresses_manage_addresses;
  int alternative_app_icon_group_featured;
  int alternative_app_icon_group_gradients;
  int alternative_app_icon_group_solid_colors;
  int alternative_app_icon_option_blue;
  int alternative_app_icon_option_cool;
  int alternative_app_icon_option_cuddling;
  int alternative_app_icon_option_dark;
  int alternative_app_icon_option_default;
  int alternative_app_icon_option_flaming;
  int alternative_app_icon_option_gradient_blue_hour;
  int alternative_app_icon_option_gradient_golden_hour;
  int alternative_app_icon_option_gradient_midnight;
  int alternative_app_icon_option_gradient_northern_lights;
  int alternative_app_icon_option_gradient_sunrise;
  int alternative_app_icon_option_gradient_sunset;
  int alternative_app_icon_option_gradient_twilight;
  int alternative_app_icon_option_green;
  int alternative_app_icon_option_light;
  int alternative_app_icon_option_minimal;
  int alternative_app_icon_option_momo;
  int alternative_app_icon_option_momo_subtitle;
  int alternative_app_icon_option_pixelated;
  int alternative_app_icon_option_pride;
  int alternative_app_icon_option_purple;
  int alternative_app_icon_option_purple_dark;
  int alternative_app_icon_option_red;
  int alternative_app_icon_option_retro_2004;
  int app_name;
  int app_name_firefox;
  int applinks_prompt_negative_button;
  int automatic_translation_option_always_translate_title_preference;
  int automatic_translation_option_never_translate_title_preference;
  int awesomebar_clipboard_title;
  int bookmark_add_new_folder_button_content_description;
  int bookmark_delete_bookmark_content_description;
  int bookmark_delete_negative;
  int bookmark_empty_list_root_title;
  int bookmark_import_bookmarks_button_content_description;
  int bookmark_import_destination_default_name;
  int bookmark_import_menu_button;
  int bookmark_menu_delete_button;
  int bookmark_menu_edit_button;
  int bookmark_menu_move_button;
  int bookmark_menu_open_in_new_tab_button;
  int bookmark_menu_open_in_private_tab_button;
  int bookmark_menu_share_button;
  int bookmark_navigate_back_button_content_description;
  int bookmark_search_button_content_description;
  int bookmark_select_folder_expand_folder_content_description;
  int bookmark_select_folder_new_folder_button_title;
  int bookmark_sort_menu_content_desc;
  int bookmarks_folder_description;
  int browser_menu_add_app_to_homescreen;
  int browser_menu_add_to_homescreen;
  int browser_menu_add_to_shortcuts;
  int browser_menu_back;
  int browser_menu_bookmark_this_page_2;
  int browser_menu_customize_homepage;
  int browser_menu_customize_reader_view_2;
  int browser_menu_default_banner_dismiss_promotion;
  int browser_menu_default_banner_subtitle_2;
  int browser_menu_default_banner_title;
  int browser_menu_delete_browsing_data_on_quit;
  int browser_menu_desktop_site;
  int browser_menu_discover_more_extensions;
  int browser_menu_edit_bookmark;
  int browser_menu_extension_plus_icon_content_description_2;
  int browser_menu_extensions;
  int browser_menu_find_in_page;
  int browser_menu_forward;
  int browser_menu_manage_extensions;
  int browser_menu_new_private_tab;
  int browser_menu_open_app_link;
  int browser_menu_open_in_fenix;
  int browser_menu_passwords;
  int browser_menu_print_2;
  int browser_menu_read;
  int browser_menu_read_close;
  int browser_menu_refresh;
  int browser_menu_remove_from_shortcuts;
  int browser_menu_save_as_pdf_2;
  int browser_menu_save_to_collection_2;
  int browser_menu_settings;
  int browser_menu_share;
  int browser_menu_sign_in;
  int browser_menu_summarize_page;
  int browser_menu_translated;
  int browser_menu_translations;
  int browser_menu_webcompat_reporter_2;
  int browser_toolbar_summarize_cfr_description;
  int browser_toolbar_translate;
  int camera_permissions_needed_negative_button_text;
  int camera_permissions_needed_positive_button_text;
  int clear_permission;
  int clear_permissions;
  int clear_permissions_negative;
  int clear_permissions_positive;
  int clear_site_data;
  int clear_site_data_dialog_description;
  int clear_site_data_dialog_negative_button_text;
  int clear_site_data_dialog_positive_button_text;
  int close_tab_and_delete_group_confirmation_dialog_cancel;
  int close_tab_and_delete_group_confirmation_dialog_confirm;
  int collections_header;
  int confirm_clear_permission_site;
  int confirm_clear_permissions_on_all_sites;
  int confirm_clear_permissions_site;
  int connection_security_panel_not_secure;
  int connection_security_panel_secure;
  int content_description_gallery;
  int content_description_menu;
  int content_description_private_browsing;
  int crash_reporting_description;
  int crash_reports_data_category;
  int create_collection_tab_saved_2;
  int create_tab_group_save_button;
  int credit_cards_edit_card;
  int credit_cards_name_on_card_validation_error_message_2;
  int credit_cards_number_validation_error_message_2;
  int credit_cards_saved_cards;
  int customize_toggle_bookmarks;
  int customize_toggle_contile;
  int customize_toggle_continue;
  int customize_toggle_pocket_3;
  int customize_toggle_pocket_sponsored;
  int customize_toggle_recently_visited;
  int customize_wallpapers;
  int default_locale_text;
  int delete_browsing_data_prompt_allow;
  int delete_browsing_data_prompt_cancel;
  int delete_browsing_data_prompt_message_3;
  int delete_from_history;
  int delete_history_prompt_body_2;
  int delete_history_prompt_button_everything;
  int delete_history_prompt_title;
  int delete_tab_group_confirmation_dialog_body;
  int delete_tab_group_confirmation_dialog_title;
  int dialog_delete_negative;
  int dialog_delete_positive;
  int download_completed_snackbar;
  int download_completed_snackbar_action_open;
  int download_delete_item;
  int download_delete_multi_select_dialog_confirm;
  int download_empty_description;
  int download_empty_message_2;
  int download_failed_snackbar_action_details;
  int download_in_progress_snackbar;
  int download_item_status_failed;
  int download_language_all_languages_item_preference_to_delete;
  int download_navigate_back_description;
  int download_navigate_settings_description;
  int download_pause_action;
  int download_retry_action;
  int download_share_file;
  int edit_bookmark_fragment_title;
  int edit_login_button_content_description;
  int edit_login_navigate_back_button_content_description;
  int etp_cryptominers_title;
  int etp_known_fingerprinters_title;
  int etp_redirect_trackers_title;
  int etp_suspected_fingerprinters_title;
  int felt_privacy_desc_card_title;
  int firefox;
  int firefox_suggest_header;
  int history_delete_item;
  int history_metadata_header_2;
  int history_search_group_sites_1;
  int home_bookmarks_title;
  int homepage_shortcuts_add_to_homepage;
  int homepage_shortcuts_add_website_title;
  int homepage_shortcuts_popular_sites;
  int lens_opt_out_title;
  int lens_opt_out_try_it_now_button;
  int lens_search_content_description;
  int library_bookmarks;
  int library_downloads;
  int library_history;
  int library_recently_closed_tabs;
  int login_deletion_confirmation_2;
  int login_detail_menu_button_content_description;
  int login_detail_menu_delete_button;
  int login_detail_menu_edit_button;
  int logins_navigate_back_button_content_description;
  int logins_password_copied;
  int logins_username_copied;
  int logins_warning_dialog_title_2;
  int micro_survey_continue_button_label;
  int micro_survey_feedback_confirmation;
  int micro_survey_submit_button_label;
  int micro_survey_survey_header_2;
  int microsurvey_prompt_printing_title;
  int no_site_exceptions;
  int notification_erase_text_android_14;
  int notification_erase_title_android_14;
  int nova_onboarding_continue_button;
  int nova_onboarding_marketing_title;
  int nova_onboarding_negative_button;
  int nova_onboarding_set_to_default_button;
  int nova_onboarding_set_to_default_subtitle;
  int nova_onboarding_set_to_default_title_2;
  int nova_onboarding_tou_body_line_1;
  int nova_onboarding_tou_body_line_1_link_text;
  int nova_onboarding_tou_body_line_2;
  int nova_onboarding_tou_body_line_2_link_text;
  int nova_onboarding_tou_body_line_3;
  int nova_onboarding_tou_body_line_3_link_text;
  int nova_onboarding_tou_subtitle;
  int onboarding_term_of_service_line_one_2;
  int onboarding_term_of_service_line_one_link_text_2;
  int onboarding_term_of_service_line_three;
  int onboarding_term_of_service_line_three_link_text;
  int onboarding_term_of_service_line_two_2;
  int onboarding_term_of_service_line_two_link_text;
  int onboarding_welcome_to_firefox;
  int open_in_app_cfr_info_message_2;
  int open_in_app_cfr_negative_button_text;
  int open_in_app_cfr_positive_button_text;
  int opening_screen_after_four_hours_of_inactivity;
  int opening_screen_homepage;
  int opening_screen_last_tab;
  int phone_feature_blocked_by_android;
  int phone_feature_blocked_intro;
  int phone_feature_blocked_step_settings;
  int pocket_stories_header_2;
  int pref_key_accessibility_auto_size;
  int pref_key_accessibility_font_scale;
  int pref_key_allow_screenshots_in_private_mode;
  int pref_key_application_exit_info_last_handled_time;
  int pref_key_camera_permissions_needed;
  int pref_key_customization_bookmarks;
  int pref_key_delete_browsing_data_on_quit;
  int pref_key_google_lens_integration;
  int pref_key_google_lens_integration_user_enabled;
  int pref_key_has_accepted_google_lens_first_run;
  int pref_key_https_only;
  int pref_key_https_only_in_all_tabs;
  int pref_key_https_only_in_private_tabs;
  int pref_key_open_links_in_apps;
  int pref_key_open_links_in_apps_always;
  int pref_key_open_links_in_apps_ask;
  int pref_key_open_links_in_apps_never;
  int pref_key_recent_tabs;
  int pref_key_save_logins;
  int pref_key_search_engine_list;
  int pref_key_show_search_suggestions;
  int pref_key_show_search_suggestions_in_private;
  int pref_key_start_on_home_after_four_hours;
  int pref_key_start_on_home_always;
  int pref_key_start_on_home_never;
  int pref_key_tab_groups_onboarding;
  int pref_key_toolbar_bottom;
  int pref_key_toolbar_expanded;
  int pref_key_tracking_protection_custom_option;
  int pref_key_tracking_protection_standard_option;
  int pref_key_tracking_protection_strict_default;
  int preference_accessibility_auto_size_2;
  int preference_accessibility_auto_size_summary;
  int preference_accessibility_force_enable_zoom;
  int preference_accessibility_force_enable_zoom_summary;
  int preference_bottom_toolbar;
  int preference_browser_feature_autoplay;
  int preference_enhanced_tracking_protection;
  int preference_enhanced_tracking_protection_custom_cookies_5;
  int preference_enhanced_tracking_protection_custom_description_2;
  int preference_enhanced_tracking_protection_custom_info_button;
  int preference_enhanced_tracking_protection_custom_tracking_content;
  int preference_enhanced_tracking_protection_custom_tracking_content_1;
  int preference_enhanced_tracking_protection_custom_tracking_content_2;
  int preference_enhanced_tracking_protection_standard_description_5;
  int preference_enhanced_tracking_protection_standard_info_button;
  int preference_enhanced_tracking_protection_strict_description_4;
  int preference_enhanced_tracking_protection_strict_info_button;
  int preference_exceptions;
  int preference_expanded_toolbar;
  int preference_feature_desktop_mode_default;
  int preference_gestures_swipe_toolbar_switch_tabs_2;
  int preference_gestures_website_pull_to_refresh;
  int preference_leakcanary;
  int preference_phone_feature_camera;
  int preference_phone_feature_location;
  int preference_phone_feature_microphone;
  int preference_phone_feature_notification;
  int preference_select_app_icon_title;
  int preference_simple_toolbar;
  int preference_summary_delete_browsing_data_on_quit_2;
  int preference_tab_strip_show;
  int preference_usage_data_2;
  int preferences_about;
  int preferences_accessibility;
  int preferences_add_private_browsing_shortcut;
  int preferences_add_search_widget_from_settings;
  int preferences_addresses;
  int preferences_addresses_add_address;
  int preferences_addresses_manage_addresses;
  int preferences_addresses_save_and_autofill_addresses_2;
  int preferences_addresses_save_and_autofill_addresses_summary_2;
  int preferences_ai_controls;
  int preferences_allow_screenshots_in_private_mode;
  int preferences_app_icon;
  int preferences_autofill;
  int preferences_category_content;
  int preferences_category_engines_in_search_menu;
  int preferences_category_permissions;
  int preferences_category_privacy_security;
  int preferences_credit_cards_2;
  int preferences_credit_cards_add_credit_card_2;
  int preferences_credit_cards_manage_saved_cards_2;
  int preferences_credit_cards_save_and_autofill_cards_2;
  int preferences_credit_cards_save_and_autofill_cards_summary_2;
  int preferences_credit_cards_sync_cards_across_devices;
  int preferences_customize;
  int preferences_daily_usage_ping_description;
  int preferences_daily_usage_ping_title;
  int preferences_data_collection;
  int preferences_default_search_engine;
  int preferences_delete_browsing_data;
  int preferences_delete_browsing_data_browsing_history_title;
  int preferences_delete_browsing_data_cached_files;
  int preferences_delete_browsing_data_cached_files_subtitle;
  int preferences_delete_browsing_data_cookies_and_site_data;
  int preferences_delete_browsing_data_cookies_subtitle;
  int preferences_delete_browsing_data_downloads;
  int preferences_delete_browsing_data_on_quit;
  int preferences_delete_browsing_data_site_permissions;
  int preferences_delete_browsing_data_snackbar;
  int preferences_delete_browsing_data_tabs_title_2;
  int preferences_downloads_2;
  int preferences_enable_autocomplete_urls;
  int preferences_extensions;
  int preferences_home_2;
  int preferences_https_only_title;
  int preferences_inactive_tabs_title;
  int preferences_language;
  int preferences_logins_add_login_2;
  int preferences_manage_search_shortcuts_2;
  int preferences_nimbus_experiments;
  int preferences_not_take_survey;
  int preferences_open_links_in_apps;
  int preferences_open_links_in_apps_always;
  int preferences_open_links_in_apps_ask;
  int preferences_open_links_in_apps_never;
  int preferences_opening_screen;
  int preferences_page_summaries;
  int preferences_passwords_autofill2;
  int preferences_passwords_logins_and_passwords_2;
  int preferences_passwords_save_logins_2;
  int preferences_passwords_save_logins_ask_to_save;
  int preferences_passwords_save_logins_never_save;
  int preferences_passwords_saved_logins_2;
  int preferences_passwords_saved_logins_description_empty_text_2;
  int preferences_passwords_saved_logins_password;
  int preferences_passwords_saved_logins_search_2;
  int preferences_passwords_saved_logins_site;
  int preferences_passwords_saved_logins_username;
  int preferences_private_browsing_options;
  int preferences_remote_debugging;
  int preferences_search;
  int preferences_set_as_default_browser;
  int preferences_show_clipboard_suggestions;
  int preferences_show_search_suggestions;
  int preferences_show_search_suggestions_in_private;
  int preferences_sign_in;
  int preferences_site_settings;
  int preferences_sync_debug;
  int preferences_tabs;
  int preferences_take_survey;
  int preferences_tracking_protection_exceptions;
  int preferences_translations;
  int preferences_usage_data_description_1;
  int protection_panel_banner_not_protected_description;
  int protection_panel_banner_not_protected_title;
  int protection_panel_banner_not_secure_description;
  int protection_panel_banner_not_secure_title;
  int protection_panel_banner_protected_no_blocked_trackers_description;
  int protection_panel_banner_protected_title;
  int protection_panel_etp_disabled_no_trackers_blocked;
  int protection_panel_etp_toggle_disabled_description_2;
  int protection_panel_etp_toggle_enabled_description_2;
  int protection_panel_etp_toggle_label;
  int protection_panel_etp_toggle_off;
  int protection_panel_etp_toggle_on;
  int recent_tabs_header_2;
  int recently_closed_empty_message;
  int restart_warning_dialog_body_2;
  int restart_warning_dialog_button_negative;
  int restart_warning_dialog_button_positive_2;
  int restart_warning_dialog_title;
  int saved_login_clear_hostname;
  int saved_login_clear_username;
  int saved_login_copy_username;
  int saved_login_open_site;
  int saved_login_password_required_2;
  int saved_login_reveal_password;
  int saved_login_username_required_2;
  int saved_logins_clear_password;
  int saved_logins_copy_password;
  int saved_logins_menu_dropdown_chevron_icon_content_description_2;
  int saved_logins_sort_strategy_alphabetically;
  int saved_logins_sort_strategy_last_used;
  int search_add_custom_engine_error_missing_template;
  int search_engine_add_custom_search_engine_title;
  int search_engine_delete;
  int search_engine_edit;
  int search_engine_selector_content_description;
  int search_hint;
  int search_settings_menu_item;
  int search_suggestions_onboarding_allow_button;
  int search_suggestions_onboarding_do_not_allow_button;
  int search_suggestions_onboarding_text;
  int search_suggestions_onboarding_title;
  int search_widget_voice;
  int settings;
  int share_device_subheader;
  int share_link_all_apps_subheader;
  int share_link_recent_apps_subheader;
  int share_save_to_pdf;
  int shortcut_name_hint;
  int snackbar_added_to_shortcuts;
  int studies_data_category;
  int studies_title_2;
  int tab_crash_send_report;
  int tab_crash_title_2;
  int tab_group_onboarding_grid_item_description;
  int tab_group_onboarding_item_dismiss_content_description;
  int tab_group_onboarding_item_title;
  int tab_group_onboarding_list_item_description;
  int tab_group_sheet_dismiss_description;
  int tab_manager_close_all_tabs_dialog_confirm;
  int tab_manager_empty_synced_tabs_page_description;
  int tab_manager_empty_synced_tabs_page_header;
  int tab_manager_empty_synced_tabs_page_sign_in_cta;
  int tab_manager_multiselect_menu_item_add_to_tab_group;
  int tab_manager_no_search_results;
  int tab_manager_no_search_results_additional_text;
  int tab_manager_open_tab_search;
  int tab_tray_multi_select_title;
  int tabs_menu_save_to_collection1;
  int technical_data_category;
  int toolbar_customize_shortcut_add_bookmark;
  int toolbar_customize_shortcut_back;
  int toolbar_customize_shortcut_homepage;
  int toolbar_customize_shortcut_new_tab;
  int toolbar_customize_shortcut_none;
  int toolbar_customize_shortcut_share;
  int toolbar_customize_shortcut_translate;
  int top_sites_edit_dialog_url_error;
  int top_sites_menu_settings;
  int top_sites_menu_sponsor_privacy;
  int top_sites_sponsored_label;
  int top_sites_toggle_top_recent_sites_4;
  int translation_option_bottom_sheet_always_translate;
  int translation_option_bottom_sheet_close_content_description;
  int translation_option_bottom_sheet_never_translate_in_language;
  int translation_option_bottom_sheet_never_translate_site;
  int translation_option_bottom_sheet_switch_description;
  int translation_option_bottom_sheet_title_heading;
  int translation_option_bottom_sheet_translation_settings;
  int translation_settings_automatic_never_translate_sites;
  int translation_settings_automatic_translation;
  int translation_settings_download_language;
  int translations_bottom_sheet_negative_button;
  int translations_bottom_sheet_negative_button_restore;
  int translations_bottom_sheet_positive_button;
  int translations_bottom_sheet_title_first_time;
  int translations_bottom_sheet_translate_from;
  int translations_bottom_sheet_translate_to;
  int translations_bottom_sheet_translating_in_progress_content_description;
  int unsubmitted_crash_dialog_negative_button;
  int unsubmitted_crash_dialog_negative_button_2;
  int unsubmitted_crash_dialog_positive_button;
  int unsubmitted_crash_dialog_positive_button_2;
  int unsubmitted_crash_dialog_title_2;
  int unsubmitted_crash_requested_by_devs_dialog_never_button;
  int unsubmitted_crash_requested_by_devs_dialog_title;
  int unsubmitted_crashes_requested_by_devs_dialog_title;
  int usage_data_category;
  int voice_search_content_description;
  int wallpapers_item_name_content_description;
  int webcompat_reporter_cancel;
  int webcompat_reporter_clear_reason_content_description;
  int webcompat_reporter_description_3;
  int webcompat_reporter_etp_checkbox_text_2;
  int webcompat_reporter_label_mandatory_description;
  int webcompat_reporter_label_optional_description;
  int webcompat_reporter_label_url;
  int webcompat_reporter_label_whats_broken_3;
  int webcompat_reporter_learn_more;
  int webcompat_reporter_preview_report;
  int webcompat_reporter_reason_load;
  int widget_picket_description;
}
-keepclassmembernames class org.mozilla.fenix.R {
}
-keep enum org.mozilla.fenix.ReleaseChannel {
  public boolean isReleased();
}
-keepclassmembernames class org.mozilla.fenix.addons.AddonPermissionsUpdateRequest {
  public java.util.List getDataCollectionPermissions();
  public java.util.List getOptionalPermissions();
  public java.util.List getOriginPermissions();
}
-keepclassmembernames class org.mozilla.fenix.addons.AddonsManagementFragment {
}
-keepclassmembernames class org.mozilla.fenix.addons.ui.AddonPermissionsScreenKt {
  public static void AddonPermissionsScreen(java.util.List, java.util.List, java.util.List, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, java.lang.String, androidx.compose.ui.Modifier, java.util.List, boolean, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keepclassmembernames class org.mozilla.fenix.components.AppStore {
}
-keepclassmembernames class org.mozilla.fenix.components.Components {
  public mozilla.components.feature.addons.AddonManager getAddonManager();
  public org.mozilla.fenix.components.AppStore getAppStore();
  public org.mozilla.fenix.components.Core getCore();
  public org.mozilla.fenix.components.NimbusComponents getNimbus();
  public org.mozilla.fenix.utils.Settings getSettings();
  public org.mozilla.fenix.perf.StrictModeManager getStrictMode();
  public org.mozilla.fenix.components.UseCases getUseCases();
}
-keepclassmembernames class org.mozilla.fenix.components.Core {
  public mozilla.components.service.sync.autofill.AutofillCreditCardsAddressesStorage getAutofillStorage();
  public mozilla.components.browser.storage.sync.PlacesBookmarksStorage getBookmarksStorage();
  public mozilla.components.concept.fetch.Client getClient();
  public mozilla.components.concept.engine.Engine getEngine();
  public org.mozilla.geckoview.GeckoRuntime getGeckoRuntime();
  public mozilla.components.browser.engine.gecko.permission.GeckoSitePermissionsStorage getGeckoSitePermissionsStorage();
  public mozilla.components.service.sync.logins.SyncableLoginsStorage getPasswordsStorage();
  public org.mozilla.fenix.components.PermissionStorage getPermissionStorage();
  public mozilla.components.feature.top.sites.PinnedSiteStorage getPinnedSiteStorage();
  public kotlin.Lazy getRecentlyClosedTabsStorage();
  public mozilla.components.browser.session.storage.SessionStorage getSessionStorage();
  public mozilla.components.browser.state.store.BrowserStore getStore();
  public org.mozilla.fenix.components.TabCollectionStorage getTabCollectionStorage();
  public org.mozilla.fenix.tabgroups.storage.repository.DefaultTabGroupRepository getTabGroupRepository();
  public org.mozilla.fenix.components.TrackingProtectionPolicyFactory getTrackingProtectionPolicyFactory();
}
-keepclassmembernames class org.mozilla.fenix.components.CoreKt {
  public static java.util.List getADDITIONAL_BUNDLED_SEARCH_ENGINE_IDS();
}
-keepclassmembernames class org.mozilla.fenix.components.GleanHelperKt {
  public static void initializeGlean(android.content.Context, mozilla.components.support.base.log.logger.Logger, boolean, mozilla.components.concept.fetch.Client);
}
-keepclassmembernames class org.mozilla.fenix.components.NimbusComponents {
  public org.mozilla.experiments.nimbus.NimbusMessagingHelperInterface createJexlHelper();
  public mozilla.components.service.nimbus.messaging.NimbusMessagingControllerInterface getMessaging();
  public mozilla.components.service.nimbus.NimbusApi getSdk();
}
-keepclassmembernames class org.mozilla.fenix.components.PermissionStorage {
  public <init>(android.content.Context, kotlin.coroutines.CoroutineContext, mozilla.components.concept.engine.permission.SitePermissionsStorage, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.Object deleteAllSitePermissions(kotlin.coroutines.Continuation);
  public java.lang.Object getSitePermissionsPaged(kotlin.coroutines.Continuation);
}
-keepclassmembernames class org.mozilla.fenix.components.TabCollectionStorage {
  public java.lang.Object getCollectionsList(kotlin.coroutines.Continuation);
  public java.lang.Object removeCollection(mozilla.components.feature.tab.collections.TabCollection, kotlin.coroutines.Continuation);
  public void setCachedTabCollections(java.util.List);
}
-keepclassmembernames class org.mozilla.fenix.components.TelemetryAccountObserver {
  public <init>(android.content.Context, org.mozilla.fenix.utils.Settings);
  public void onAuthenticated(mozilla.components.concept.sync.OAuthAccount, mozilla.components.concept.sync.AuthType);
}
-keepclassmembernames class org.mozilla.fenix.components.TrackingProtectionPolicyFactory {
  public static mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy createTrackingProtectionPolicy$default(org.mozilla.fenix.components.TrackingProtectionPolicyFactory, boolean, boolean, int, java.lang.Object);
}
-keepclassmembernames class org.mozilla.fenix.components.UseCases {
  public mozilla.components.support.locale.LocaleUseCases getLocaleUseCases();
  public mozilla.components.feature.search.SearchUseCases getSearchUseCases();
  public mozilla.components.feature.session.SettingsUseCases getSettingsUseCases();
  public mozilla.components.feature.tabs.TabsUseCases getTabsUseCases();
  public mozilla.components.feature.top.sites.TopSitesUseCases getTopSitesUseCase();
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$CollectionsChange {
  public <init>(java.util.List);
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$CrashActionWrapper {
  public <init>(mozilla.components.lib.crash.store.CrashAction);
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$MessagingAction$Evaluate {
  public <init>(java.lang.String);
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$MessagingAction {
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$SearchAction$SearchEnded {
  org.mozilla.fenix.components.appstate.AppAction$SearchAction$SearchEnded INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction$SearchAction {
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppAction {
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.AppState {
  public org.mozilla.fenix.messaging.MessagingState getMessaging();
  public org.mozilla.fenix.components.appstate.search.SearchState getSearchState();
  public org.mozilla.fenix.components.appstate.VoiceSearchState getVoiceSearchState();
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.VoiceSearchAction$VoiceInputRequestCleared {
  org.mozilla.fenix.components.appstate.VoiceSearchAction$VoiceInputRequestCleared INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.VoiceSearchAction {
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.VoiceSearchState {
  public java.lang.String getVoiceInputResult();
  public boolean isRequestingVoiceInput();
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.search.SearchState {
  public org.mozilla.fenix.components.appstate.search.SelectedSearchEngine getSelectedSearchEngine();
  public boolean isSearchActive();
}
-keepclassmembernames class org.mozilla.fenix.components.appstate.search.SelectedSearchEngine {
  public mozilla.components.browser.state.search.SearchEngine getSearchEngine();
}
-keepclassmembernames class org.mozilla.fenix.components.metrics.fonts.FontMetric {
  public long getCreated();
  public java.lang.String getFamily();
  public java.lang.String getFontVersion();
  public java.lang.String getFullName();
  public java.lang.String getHash();
  public long getModified();
  public int getRevision();
  public java.lang.String getSubFamily();
  public java.lang.String getUniqueSubFamily();
}
-keepclassmembernames class org.mozilla.fenix.components.metrics.fonts.FontParser {
  public org.mozilla.fenix.components.metrics.fonts.FontMetric parse(java.lang.String, java.io.InputStream);
  org.mozilla.fenix.components.metrics.fonts.FontParser INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.compose.list.ListItemKt {
  public static void IconListItem-XfM40Ao(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.Modifier, androidx.compose.material3.ListItemColors, int, java.lang.String, int, boolean, float, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, long, androidx.compose.ui.graphics.painter.Painter, java.lang.String, boolean, boolean, long, androidx.compose.foundation.layout.PaddingValues, androidx.compose.ui.graphics.painter.Painter, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int, int);
}
-keepclassmembernames interface org.mozilla.fenix.crashes.CrashActionDispatcher {
  public void dispatchCrashAction(mozilla.components.lib.crash.store.CrashAction);
}
-keepclassmembernames class org.mozilla.fenix.crashes.SettingsCrashReportCacheKt {
  public static mozilla.components.lib.crash.store.CrashReportOption crashReportOption(org.mozilla.fenix.utils.Settings);
}
-keepclassmembernames class org.mozilla.fenix.crashes.UnsubmittedCrashDialog$Companion {
  public org.mozilla.fenix.crashes.UnsubmittedCrashDialog create(java.util.List);
}
-keepclassmembernames class org.mozilla.fenix.crashes.UnsubmittedCrashDialog {
  public void setDispatcher$app(org.mozilla.fenix.crashes.CrashActionDispatcher);
  org.mozilla.fenix.crashes.UnsubmittedCrashDialog$Companion Companion;
}
-keepclassmembernames class org.mozilla.fenix.customtabs.ExternalAppBrowserActivity {
}
-keepclassmembernames class org.mozilla.fenix.debugsettings.data.DefaultDebugSettingsRepository {
  public <init>(android.content.Context, androidx.datastore.core.DataStore, kotlinx.coroutines.CoroutineScope, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public void setDebugDrawerEnabled(boolean);
}
-keepclassmembernames class org.mozilla.fenix.debugsettings.tabprocesstools.TabProcessToolsKt {
  public static void TabProcessTools(kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.DownloadsScreenKt {
  public static void DownloadsScreen(org.mozilla.fenix.downloads.listscreen.store.DownloadUIStore, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction$AddPendingDeletionSet {
  public boolean getRemoveFromDisk();
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction$DismissDeleteDialog {
}
-keepclassmembernames interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIAction {
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Companion {
  public org.mozilla.fenix.downloads.listscreen.store.DownloadUIState getINITIAL();
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState$DeleteConfirmation {
  public <init>(java.util.Set);
}
-keepclassmembernames interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState {
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Mode {
}
-keepclassmembernames interface org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$SnackbarState {
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIState {
  public static org.mozilla.fenix.downloads.listscreen.store.DownloadUIState copy$default(org.mozilla.fenix.downloads.listscreen.store.DownloadUIState, java.util.List, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Mode, java.util.Set, java.util.Set, java.lang.String, org.mozilla.fenix.downloads.listscreen.store.FileItem, org.mozilla.fenix.downloads.listscreen.store.RenameFileError, boolean, org.mozilla.fenix.downloads.listscreen.store.FileItem, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$DialogState, org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$SnackbarState, boolean, org.mozilla.fenix.downloads.listscreen.store.FileItem$ContentTypeFilter, int, java.lang.Object);
  org.mozilla.fenix.downloads.listscreen.store.DownloadUIState$Companion Companion;
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.DownloadUIStore {
  public <init>(org.mozilla.fenix.downloads.listscreen.store.DownloadUIState, java.util.List);
  int $stable;
}
-keep enum org.mozilla.fenix.downloads.listscreen.store.FileItem$ContentTypeFilter {
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.FileItem$Status$Completed {
  org.mozilla.fenix.downloads.listscreen.store.FileItem$Status$Completed INSTANCE;
}
-keepclassmembernames interface org.mozilla.fenix.downloads.listscreen.store.FileItem$Status {
}
-keepclassmembernames class org.mozilla.fenix.downloads.listscreen.store.FileItem {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, org.mozilla.fenix.downloads.listscreen.store.FileItem$Status, org.mozilla.fenix.downloads.listscreen.store.TimeCategory, java.lang.String);
}
-keepclassmembernames interface org.mozilla.fenix.downloads.listscreen.store.RenameFileError {
}
-keep enum org.mozilla.fenix.downloads.listscreen.store.TimeCategory {
  org.mozilla.fenix.downloads.listscreen.store.TimeCategory TODAY;
}
-keepclassmembernames class org.mozilla.fenix.ext.ConnectivityManagerKt {
  public static boolean isOnline$default(android.net.ConnectivityManager, android.net.Network, int, java.lang.Object);
}
-keepclassmembernames class org.mozilla.fenix.ext.ContextKt {
  public static org.mozilla.fenix.components.Components getComponents(android.content.Context);
  public static java.lang.String getPreferenceKey(android.content.Context, int);
}
-keepclassmembernames class org.mozilla.fenix.gecko.GeckoProvider {
  public org.mozilla.geckoview.GeckoRuntimeSettings createRuntimeSettings$app(android.content.Context, mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy);
  public org.mozilla.geckoview.GeckoRuntime getOrCreateRuntime(android.content.Context, kotlin.Lazy, kotlin.Lazy, mozilla.components.concept.engine.EngineSession$TrackingProtectionPolicy, kotlinx.coroutines.CoroutineScope);
  org.mozilla.fenix.gecko.GeckoProvider INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.messaging.CustomAttributeProvider {
  public org.json.JSONObject getCustomAttributes(android.content.Context);
  org.mozilla.fenix.messaging.CustomAttributeProvider INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.messaging.MessagingState {
  public java.util.List getMessages();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.CustomizationToolbarData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, int, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.fenix.nimbus.ToolbarType, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.nimbus.DefaultBottomToolbar {
  public boolean getEnabled();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.DefaultExpandedToolbar {
  public boolean getEnabled();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.ExtraCardData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.List, org.mozilla.fenix.nimbus.MarketingData, org.mozilla.fenix.nimbus.TermsOfServiceData, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.nimbus.FxNimbus$Features {
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getDefaultBottomToolbar();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getDefaultExpandedToolbar();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getHomescreen();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getIpProtection();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getJunoOnboarding();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getSuggestShippedDomains();
  public org.mozilla.experiments.nimbus.internal.FeatureHolder getTranslations();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.FxNimbus {
  public org.mozilla.fenix.nimbus.FxNimbus$Features getFeatures();
  org.mozilla.fenix.nimbus.FxNimbus INSTANCE;
}
-keep enum org.mozilla.fenix.nimbus.HomeScreenSection {
  org.mozilla.fenix.nimbus.HomeScreenSection JUMP_BACK_IN;
  org.mozilla.fenix.nimbus.HomeScreenSection POCKET;
  org.mozilla.fenix.nimbus.HomeScreenSection POCKET_SPONSORED_STORIES;
  org.mozilla.fenix.nimbus.HomeScreenSection TOP_SITES;
}
-keepclassmembernames class org.mozilla.fenix.nimbus.Homescreen {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.Map, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.nimbus.IpProtection {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, java.util.List, int, boolean, java.lang.String, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.nimbus.JunoOnboarding {
  public java.util.Map getConditions();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.MarketingData {
}
-keepclassmembernames class org.mozilla.fenix.nimbus.OnboardingCardData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.fenix.nimbus.OnboardingCardType, java.util.List, boolean, org.mozilla.fenix.nimbus.ExtraCardData, int, int, java.util.List, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum org.mozilla.fenix.nimbus.OnboardingCardType {
  org.mozilla.fenix.nimbus.OnboardingCardType ADD_SEARCH_WIDGET;
  org.mozilla.fenix.nimbus.OnboardingCardType DEFAULT_BROWSER;
  org.mozilla.fenix.nimbus.OnboardingCardType NOTIFICATION_PERMISSION;
  org.mozilla.fenix.nimbus.OnboardingCardType SYNC_SIGN_IN;
  org.mozilla.fenix.nimbus.OnboardingCardType TERMS_OF_SERVICE;
  org.mozilla.fenix.nimbus.OnboardingCardType TOOLBAR_PLACEMENT;
}
-keepclassmembernames class org.mozilla.fenix.nimbus.SuggestShippedDomains {
  public boolean getEnabled();
}
-keepclassmembernames class org.mozilla.fenix.nimbus.TermsOfServiceData {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, org.mozilla.experiments.nimbus.StringHolder, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keep enum org.mozilla.fenix.nimbus.ToolbarType {
  org.mozilla.fenix.nimbus.ToolbarType TOOLBAR_TOP;
}
-keepclassmembernames class org.mozilla.fenix.nimbus.Translations {
  public <init>(org.mozilla.experiments.nimbus.Variables, android.content.SharedPreferences, boolean, boolean, boolean, boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.onboarding.FenixOnboarding {
  public <init>(android.content.Context);
  public void finish();
}
-keepclassmembernames class org.mozilla.fenix.onboarding.view.OnboardingMapperKt {
  public static java.util.List toPageUiData(java.util.Collection, boolean, boolean, boolean, boolean, java.util.Map, kotlin.jvm.functions.Function1);
}
-keepclassmembernames class org.mozilla.fenix.onboarding.view.OnboardingMarketingData {
}
-keep enum org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type {
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type ADD_SEARCH_WIDGET;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type DEFAULT_BROWSER;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type NOTIFICATION_PERMISSION;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type SYNC_SIGN_IN;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type TERMS_OF_SERVICE;
  org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type TOOLBAR_PLACEMENT;
}
-keepclassmembernames class org.mozilla.fenix.onboarding.view.OnboardingPageUiData {
  public <init>(org.mozilla.fenix.onboarding.view.OnboardingPageUiData$Type, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List, org.mozilla.fenix.onboarding.view.OnboardingTermsOfService, org.mozilla.fenix.onboarding.view.OnboardingMarketingData, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.onboarding.view.OnboardingTermsOfService {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.onboarding.view.ToolbarOption {
  public <init>(org.mozilla.fenix.onboarding.view.ToolbarOptionType, int, java.lang.String);
}
-keep enum org.mozilla.fenix.onboarding.view.ToolbarOptionType {
  org.mozilla.fenix.onboarding.view.ToolbarOptionType TOOLBAR_TOP;
}
-keepclassmembernames class org.mozilla.fenix.perf.ApplicationExitInfoMetrics {
  public java.util.List getTRACKED_REASONS$app();
  public void recordProcessExits(android.content.Context);
  org.mozilla.fenix.perf.ApplicationExitInfoMetrics INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.perf.ProcessExitRecord {
  public <init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int);
}
-keepclassmembernames class org.mozilla.fenix.perf.RunBlockingCounter {
  public java.util.concurrent.atomic.AtomicInteger getCount();
  org.mozilla.fenix.perf.RunBlockingCounter INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.perf.StrictModeManager {
  public java.lang.Object allowViolation(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0);
  public java.util.concurrent.atomic.AtomicLong getSuppressionCount();
}
-keep enum org.mozilla.fenix.settings.PhoneFeature {
  public mozilla.components.feature.sitepermissions.SitePermissionsRules$Action getAction(org.mozilla.fenix.utils.Settings);
  org.mozilla.fenix.settings.PhoneFeature LOCATION;
}
-keep enum org.mozilla.fenix.settings.SupportUtils$SumoTopic {
  public java.lang.String getTopicStr$app();
  org.mozilla.fenix.settings.SupportUtils$SumoTopic CUSTOM_SEARCH_ENGINES;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic HELP;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic SPONSOR_PRIVACY;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic TOTAL_COOKIE_PROTECTION;
  org.mozilla.fenix.settings.SupportUtils$SumoTopic YOUR_RIGHTS;
}
-keepclassmembernames class org.mozilla.fenix.settings.SupportUtils {
  public static java.lang.String getSumoURLForTopic$default(org.mozilla.fenix.settings.SupportUtils, android.content.Context, org.mozilla.fenix.settings.SupportUtils$SumoTopic, java.util.Locale, boolean, int, java.lang.Object);
  org.mozilla.fenix.settings.SupportUtils INSTANCE;
}
-keep enum org.mozilla.fenix.settings.deletebrowsingdata.DeleteBrowsingDataOnQuitType {
  public static kotlin.enums.EnumEntries getEntries();
  public java.lang.String getPreferenceKey(android.content.Context);
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.DeleteTabGroupConfirmationDialogKt {
  public static void DeleteTabGroupConfirmationDialog(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.TabGroupCardKt {
  public static void TabGroupCard(org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemClickHandler, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, androidx.compose.ui.semantics.CollectionItemInfo, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.TabGroupRowKt {
  public static void TabGroupRow-yZUFuyM(org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Color, boolean, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.storage.data.TabGroupData {
  public java.util.Map getTabGroupAssignments();
  public java.util.List getTabGroups();
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase$Companion {
  public androidx.room.migration.Migration getMIGRATION_1_2();
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase {
  org.mozilla.fenix.tabgroups.storage.database.TabGroupDatabase$Companion Companion;
}
-keepclassmembernames class org.mozilla.fenix.tabgroups.storage.repository.DefaultTabGroupRepository {
  public java.lang.Object deleteAllTabGroupData(kotlin.coroutines.Continuation);
  public kotlinx.coroutines.flow.Flow getTabGroupDataFlow();
}
-keepclassmembernames interface org.mozilla.fenix.tabstray.TabManagementFeatureHelper {
  public boolean getOpeningAnimationEnabled();
  public boolean getTabGroupsDragAndDropEnabled();
  public boolean getTabGroupsEnabled();
  public boolean getTabGroupsLiveReorderEnabled();
  public boolean getTabGroupsOnboardingEnabled();
  public boolean getTabGroupsStripEnabled();
  public boolean getUngroupTabGroupEnabled();
}
-keepclassmembernames class org.mozilla.fenix.tabstray.TabManagementFeatureHelperKt {
  public static androidx.compose.runtime.ProvidableCompositionLocal getLocalTabManagementFeatureHelper();
}
-keepclassmembernames class org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState {
  public <init>(boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.controller.NoOpTabInteractionHandler {
  org.mozilla.fenix.tabstray.controller.NoOpTabInteractionHandler INSTANCE;
}
-keepclassmembernames interface org.mozilla.fenix.tabstray.controller.TabInteractionHandler {
}
-keep enum org.mozilla.fenix.tabstray.data.TabGroupTheme {
  org.mozilla.fenix.tabstray.data.TabGroupTheme Yellow;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.data.TabGroupTheme, java.util.List, boolean, long, boolean, int, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.lang.String getId();
}
-keepclassmembernames interface org.mozilla.fenix.tabstray.data.TabsTrayItem {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.data.TabsTrayItemKt {
  public static org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab createTab$default(java.lang.String, java.lang.String, java.lang.String, boolean, boolean, long, boolean, boolean, int, java.lang.Object);
  public static org.mozilla.fenix.tabstray.data.TabsTrayItem$TabGroup createTabGroup$default(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.data.TabGroupTheme, java.util.List, boolean, long, boolean, int, int, java.lang.Object);
}
-keepclassmembernames interface org.mozilla.fenix.tabstray.redux.action.TabsTrayAction {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.middleware.TabSearchNavigationMiddleware {
  public <init>(kotlin.jvm.functions.Function1);
}
-keep enum org.mozilla.fenix.tabstray.redux.state.Page {
  org.mozilla.fenix.tabstray.redux.state.Page NormalTabs;
  org.mozilla.fenix.tabstray.redux.state.Page PrivateTabs;
  org.mozilla.fenix.tabstray.redux.state.Page SyncedTabs;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabGroupFormState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabSearchState {
  public <init>(java.lang.String, java.util.List);
}
-keep enum org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$InactiveTabsState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode$Normal {
  org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode$Normal INSTANCE;
}
-keepclassmembernames interface org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$NormalTabsState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$PrivateBrowsingState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$SyncState {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState {
  public <init>(java.util.List, org.mozilla.fenix.tabstray.redux.state.TabGroupFormState, boolean, int, boolean, boolean, boolean, boolean, java.lang.String, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabsTrayConfig {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.state.TabsTrayState {
  public <init>(org.mozilla.fenix.tabstray.redux.state.Page, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode, java.lang.String, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$NormalTabsState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$InactiveTabsState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$PrivateBrowsingState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$SyncState, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabsTrayConfig, org.mozilla.fenix.tabstray.redux.state.TabSearchState, java.util.List, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public java.util.List getBackStack();
  public org.mozilla.fenix.tabstray.redux.state.TabSearchState getTabSearchState();
}
-keepclassmembernames class org.mozilla.fenix.tabstray.redux.store.TabsTrayStore {
  public <init>(org.mozilla.fenix.tabstray.redux.state.TabsTrayState, java.util.List);
  public <init>(org.mozilla.fenix.tabstray.redux.state.TabsTrayState, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$DeviceSection {
  public <init>(java.lang.String, java.util.List);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action$None {
  org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action$None INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem$Tab$Action, mozilla.components.browser.storage.sync.Tab);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.syncedtabs.SyncedTabsListItem {
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.syncedtabs.SyncedTabsListKt {
  public static void SyncedTabsList(java.util.List, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, java.util.List, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabGridTabItemKt {
  public static void TabGridTabItem(org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab, androidx.compose.material3.SwipeToDismissBoxState, boolean, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, int, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.semantics.CollectionItemInfo, java.util.List, androidx.compose.runtime.Composer, int, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabGroupOnboardingItemKt {
  public static void TabGroupOnboardingGridItem(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int);
  public static void TabGroupOnboardingListItem(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabItemAnimationsKt {
  public static androidx.compose.ui.semantics.SemanticsPropertyKey getAlphaKey();
  public static androidx.compose.ui.semantics.SemanticsPropertyKey getScaleKey();
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabListTabItemKt {
  public static void TabListTabItem(org.mozilla.fenix.tabstray.data.TabsTrayItem$Tab, androidx.compose.ui.Modifier, org.mozilla.fenix.tabstray.browser.compose.TabItemInteractionState, org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemClickHandler {
  public <init>(boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabitems.TabsTrayItemSelectionState {
  public <init>(boolean, boolean, boolean, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabpage.TabGroupListKt {
  public static void TabGroupList(java.util.List, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabpage.TabGroupsPageKt {
  public static void TabGroupsPage(org.mozilla.fenix.tabstray.redux.state.TabsTrayState$TabGroupState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabpage.TabLayoutKt {
  public static void TabLayout-WoebZNQ(java.util.List, boolean, boolean, boolean, boolean, int, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$Mode, boolean, org.mozilla.fenix.tabstray.controller.TabInteractionHandler, androidx.compose.ui.Modifier, boolean, java.lang.Integer, org.mozilla.fenix.tabstray.redux.state.TabsTrayState$DragProcessingState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, float, kotlin.jvm.functions.Function0, java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int, int, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.tabsearch.TabSearchScreenKt {
  public static void TabSearchScreen(org.mozilla.fenix.tabstray.redux.state.TabSearchState, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.tabstray.ui.theme.TabManagerThemeProvider {
  public <init>(org.mozilla.fenix.tabstray.redux.state.Page);
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.theme.DefaultThemeProvider {
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
  org.mozilla.fenix.theme.DefaultThemeProvider INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.theme.FirefoxTheme {
  public mozilla.components.compose.base.theme.layout.AcornLayout getLayout(androidx.compose.runtime.Composer, int);
  org.mozilla.fenix.theme.FirefoxTheme INSTANCE;
}
-keepclassmembernames class org.mozilla.fenix.theme.FirefoxThemeKt {
  public static void FirefoxTheme(mozilla.components.compose.base.theme.Theme, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int);
}
-keepclassmembernames interface org.mozilla.fenix.theme.ThemeProvider {
  public mozilla.components.compose.base.theme.Theme provideTheme(androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.theme.ThemeProviderKt {
  public static org.mozilla.fenix.theme.ThemeProvider getThemeProvider(androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.utils.Settings {
  public long getCrashPullDontShowBefore();
  public long getCrashReportDeferredUntil();
  public boolean getDeleteSitePermissions();
  public boolean getEnableFxSuggest();
  public boolean getEnableHomepageAsNewTab();
  public boolean getEnableHomepageTrendingRecentSearch();
  public float getFontSizeFactor();
  public boolean getHasAcceptedTermsOfService();
  public boolean getHasShownTabSwipeCFR();
  public boolean getHistoryMetadataUIFeature();
  public boolean getMicrosurveyFeatureEnabled();
  public boolean getNativeShareSheetEnabled();
  public boolean getOnboardingFeatureEnabled();
  public java.lang.String getOpenLinksInExternalApp();
  public android.content.SharedPreferences getPreferences();
  public boolean getPrivateModeAndStoriesEntryPointEnabled();
  public boolean getShakeToSummarizeFeatureFlagEnabled();
  public boolean getShakeToSummarizeToolbarCfrShown();
  public boolean getShouldShowOpenInAppBanner();
  public boolean getShouldUseAutoSize();
  public boolean getShouldUseBottomToolbar();
  public boolean getShouldUseExpandedToolbar();
  public boolean getShouldUseHttpsOnly();
  public boolean getShowAddressBarInFocusMode();
  public boolean getShowBookmarksHomeFeature();
  public boolean getShowPocketRecommendationsFeature();
  public boolean getShowRecentTabsFeature();
  public boolean getShowSecretDebugMenuThisSession();
  public boolean getShowVoiceSearchInDisplayToolbar();
  public boolean getShowWallpaperOnboarding();
  public boolean getTabManagerOpeningAnimationEnabled();
  public boolean getUseCustomTrackingProtection();
  public boolean getUseStrictTrackingProtection();
  public boolean isTabStripEnabled();
  public boolean isTelemetryEnabled();
  public void setCrashPullDontShowBefore(long);
  public void setCrashReportChoice(java.lang.String);
  public void setCrashReportDeferredUntil(long);
  public void setDeleteSitePermissions(boolean);
  public void setEnableHomepageAsNewTab(boolean);
  public void setEnableHomepageTrendingRecentSearch(boolean);
  public void setGoogleLensIntegrationEnabled(boolean);
  public void setGoogleLensIntegrationUserEnabled(boolean);
  public void setGridTabView(boolean);
  public void setHasAcceptedGoogleLensFirstRun(boolean);
  public void setHasAcceptedTermsOfService(boolean);
  public void setHasShownTabSwipeCFR(boolean);
  public void setHistoryMetadataUIFeature(boolean);
  public void setMicrosurveyFeatureEnabled(boolean);
  public void setNativeShareSheetEnabled(boolean);
  public void setOnboardingFeatureEnabled(boolean);
  public void setOpenLinksInExternalApp(java.lang.String);
  public void setPrivateModeAndStoriesEntryPointEnabled(boolean);
  public void setSetCameraPermissionNeededState(boolean);
  public void setShakeToSummarizeFeatureFlagEnabled(boolean);
  public void setShakeToSummarizeToolbarCfrShown(boolean);
  public void setShouldShowOpenInAppBanner(boolean);
  public void setShouldShowSearchSuggestionsInPrivate(boolean);
  public void setShouldUseBottomToolbar(boolean);
  public void setShouldUseExpandedToolbar(boolean);
  public void setShowAddressBarInFocusMode(boolean);
  public void setShowBookmarksHomeFeature(boolean);
  public void setShowPocketRecommendationsFeature(boolean);
  public void setShowRecentTabsFeature(boolean);
  public void setShowSecretDebugMenuThisSession(boolean);
  public void setShowVoiceSearchInDisplayToolbar(boolean);
  public void setShowWallpaperOnboarding(boolean);
  public void setSitePermissionsPhoneFeatureAction(org.mozilla.fenix.settings.PhoneFeature, mozilla.components.feature.sitepermissions.SitePermissionsRules$Action);
  public void setStrictETP();
  public void setTabGroupsOnboardingEnabled(boolean);
  public void setTabManagerOpeningAnimationEnabled(boolean);
  public void setTabStripEnabled(boolean);
  public void setWaybackMachineEnabled(boolean);
}
-keepclassmembernames class org.mozilla.fenix.utils.TransitionsAnimationKt {
  public static androidx.compose.animation.ExitTransition exitMenu$default(int, androidx.compose.animation.core.Easing, int, java.lang.Object);
}
-keep enum org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason {
  public int getDisplayStringId();
  org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason Media;
  org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason Slow;
}
-keepclassmembernames class org.mozilla.fenix.webcompat.store.WebCompatReporterState {
  public <init>(java.lang.String, java.lang.String, org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason, boolean, java.lang.String, java.lang.String, boolean, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  public org.mozilla.fenix.webcompat.store.WebCompatReporterState$BrokenSiteReason getReason();
}
-keepclassmembernames class org.mozilla.fenix.webcompat.store.WebCompatReporterStore {
  public <init>(org.mozilla.fenix.webcompat.store.WebCompatReporterState, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker);
  int $stable;
}
-keepclassmembernames class org.mozilla.fenix.webcompat.ui.EditUrlConfirmationDialogKt {
  public static void EditUrlConfirmationDialog(java.lang.String, kotlin.jvm.functions.Function1, boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.fenix.webcompat.ui.WebCompatReporterKt {
  public static void WebCompatReporter(org.mozilla.fenix.webcompat.store.WebCompatReporterStore, androidx.compose.runtime.Composer, int);
}
-keepclassmembernames class org.mozilla.gecko.util.ThreadUtils {
  public static void runOnUiThread(java.lang.Runnable);
}
-keepclassmembernames interface org.mozilla.geckoview.CrashPullController$Delegate {
  public void onCrashPull(java.lang.String[]);
}
-keepclassmembernames class org.mozilla.geckoview.CrashPullController {
}
-keepclassmembernames class org.mozilla.geckoview.GeckoResult {
}
-keepclassmembernames class org.mozilla.geckoview.GeckoRuntime {
  public org.mozilla.geckoview.CrashPullController$Delegate getCrashPullDelegate();
  public org.mozilla.geckoview.WebExtensionController getWebExtensionController();
}
-keepclassmembernames class org.mozilla.geckoview.GeckoRuntimeSettings {
  public java.lang.Boolean getExtensionsProcessEnabled();
}
-keepclassmembernames class org.mozilla.geckoview.WebExtension {
}
-keepclassmembernames class org.mozilla.geckoview.WebExtensionController {
  public org.mozilla.geckoview.GeckoResult ensureBuiltIn(java.lang.String, java.lang.String);
}

# Keep kotlin.jvm.functions out of the mapping; see FUNCTION_INVOKE_RULE.
-keepclassmembernames class kotlin.jvm.functions.** { *; }
