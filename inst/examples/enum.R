library(RGCCTranslationUnit)
tu = parseTU("enum.c.t00.tu")
e = getEnumerations(tu)
re = resolveType(e, tu)

sapply(re, class)
sapply(re, function(x) class(x@name))
sapply(re, function(x) x@name)
