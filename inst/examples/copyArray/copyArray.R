library(RGCCTranslationUnit)
p = parseTU("copyArray.c.tu", "C")
types = DefinitionContainer()
tt = resolveType(p[["3"]], p, types)

iface = generateStructInterface(tt)
