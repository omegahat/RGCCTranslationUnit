library(RGCCTranslationUnit)
p = parseTU("inst/examples/structs.c.tu");

dd = getAllDeclarations(p, "structs")

typedefs = RGCCTranslationUnit:::DefinitionContainer()
#types = lapply(dd, function(x, nodes, defs) resolveType(nodes[[x]], nodes,  defs), p, typedefs)
types = lapply(dd, resolveType, p, typedefs)
