library(RGCCTranslationUnit)
tu = parseTU(system.file("Tests", "arraytest", "arraytest.R", package="RGCCTranslationUnit"))

datstructs = getDataStructures(tu)

struct = resolveType(datstructs[[1]], tu)

mysint = generateStructInterface(struct, classDefs=DefinitionContainer(tu))

#here is the problem, the ( r_value )[i] needs an INTEGER in front of it in this case,
#can't access SEXP vector objects as arrays in this manner directly.
mysint$cRoutines$outerPtr_set_bar
