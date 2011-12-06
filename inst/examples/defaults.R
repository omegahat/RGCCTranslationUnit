library(RGCCTranslationUnit)
tu = parseTU("defaults.cpp.001t.tu")
f = getRoutines(tu)
sapply(f$foo$parameters, function(x) x$defaultValue)
