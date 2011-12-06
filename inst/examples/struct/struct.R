library(RGCCTranslationUnit)
p = parseTU("struct.c.tu", language = "C")
routines = getRoutines(p, "struct.c")

types = DefinitionContainer()
ds = getDataStructures(p, "struct.c")

out =
function()
{  
r = file("Rstruct.R", "w")
native = file("Rstruct.c", "w")
writeIncludes(c('"RConverters.h"', '"struct.h"'), native)
on.exit({close(native) ; close(r)})
sapply(c("Named", "struct Unnamed", "Both"),
       function(i) {
         tp = resolveType( ds[[i]], p)
         iface = generateStructInterface(tp)
         writeCode(iface, "native", native)
         writeCode(iface, "r", r)
       })
 TRUE
}

out()

