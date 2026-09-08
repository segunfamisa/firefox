# Applied to every minified build type unless `-PenableObfuscation` is passed.
#
# Kept in its own file so obfuscation can be toggled from the command line while we work through
# bug 1987619 (removing `-dontobfuscate`). Inlining it back into proguard-rules.pro would make it
# impossible to opt out without editing a tracked file.
-dontobfuscate
