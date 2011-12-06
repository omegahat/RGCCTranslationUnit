library(RGCCTranslationUnit)
p = parseTU("msa.c.tu", language = "C")
defs = getDataStructures(p, "msa")

msa = resolveType(defs$MSA, p)
sapply(generateStructSetAs(msa)$routines, function(x) cat(x@code, "\n"))

iface = generateStructInterface(msa)

names(iface)


