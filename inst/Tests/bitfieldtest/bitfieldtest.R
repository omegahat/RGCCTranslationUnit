#This test currently doesn't generate the problem seen in Rpcap
library(RGCCTranslationUnit)
oldops = options(useFancyQuotes=FALSE)

tu = parseTU(system.file("Tests","bitfieldtest", "bitfieldtest.C.001t.tu",
  package="RGCCTranslationUnit"))

structs = getDataStructures(tu)

resolved = resolveType(structs[[1]], nodes=tu)
resolved2 = resolveType(resolved, nodes=tu)

iface = generateStructInterface(resolved2, DefinitionContainer(tu))
mycon = file("bitfieldgen.C", "w")
writeCode(iface, target="native", file=mycon, includes= c('"RConverters.h"', '"bitfieldtest.h"'))
close(mycon)

options(oldops)
#system(paste(getwd(),"/", "R CMD COMPILE"," bitfieldgen.C", sep=""))
