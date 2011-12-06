library(RGCCTranslationUnit)
p = parseTU("msa.c.tu", language = "C")
routines = getRoutines(p, "msa.c")

types = DefinitionContainer()
rr = resolveType(routines, p, types)

TypeMap =
  list(
        list(target = new("PointerType", typeName = "char", type = new("intType", name = "char"), depth = as.integer(2)),
             coerceR = "as.character",
             convertToC = "getRStringArray" # function(name) paste("CHAR(STRING_ELT(", name, ", 0))
#             convertToR = "R_makeNames"
             ))

msa_iface = generateStructInterface(types$MSA, TypeMap)

#msa_iface = generateStructInterface(types$MSA, TypeMap)


writeCode(msa_iface, "native", "Rmsa.c", includes = c("<msa.h>", "<sufficient_stats.h>", '"RConverters.h"'))
writeCode(msa_iface, "r", "Rmsa.R")



if(FALSE) {
dyn.load("Rmsa.so")
source("Rmsa.R")

setClass("charRef", "RC++Reference")

mm = new_MSA()
names(mm)
mm$nseqs
mm$nseqs <- 100
mm$nseqs

x = c("Duncan", "Temple", "Lang")
mm$names = x
mm$names
}
