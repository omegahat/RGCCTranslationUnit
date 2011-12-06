 library(RGCCTranslationUnit)   
 p = parseTU("globals.c.tu", language = "C")

 gg = generateGlobalVariableCode(p, "globals.c")
 writeCode(gg$consts, "native", "globalConstants.c", includes = '"globals.h"')
 system("make globalConstants.R")
 writeCode(gg, "native", "Rglobals.c", includes = '"Rglobals.h"')

 r = getRoutines(p, "globals.c")
 rr = lapply(r, resolveType, p)
 bindings = lapply(rr, createMethodBinding)

 con = file("RglobalsCode.c", "w")
 rcon = file("Rglobals.R", "w")

 writeCode(gg, "r", rcon)
 writeIncludes("Rglobals.h", con, append = '"')

   sapply(bindings, writeCode, "native", file = con, includes = '"Rglobals.h"')
   sapply(bindings, writeCode, "r", file = rcon)

   ds = getDataStructures(p, "globals")
   tt = resolveType(ds[[1]], p)  
   iface = generateStructInterface(tt)
   writeCode(iface, "r", file = rcon)
   writeCode(iface, "native", file = con)

 close(con)
 close(rcon)

 


