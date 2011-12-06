library(RGCCTranslationUnit)
p = parseTU("typemap.c.tu", language = "C")
r = getRoutines(p, "typemap.c")
getLine = resolveType(r$getLine, p)

TypeMap =
if(TRUE) {
  typeMap( "FILE *" = list(target = "FILE *",
                             # Can be a string, e.g. asFILE, but then couldn't get the mode 'r' in.
                           coerceRValue = function(name, ...) paste("asFILE(", name, ", 'r')"),
                           convertRValue = "R_openFile",
                           convertValueToR = NULL
                          ))
} else
  typeMap( "FILE *" = list(target = "FILE *",
                           coerceRValue = function(name, ...) {
                                            structure(paste("f = as(", name, ", 'FILERef')\n\ton.exit(.Call('R_closeFile', ", name, "))"),
                                                      class = "RCode")
                                          }
                          ))


iface = createMethodBinding(getLine, typeMap = TypeMap)

writeCode(iface, "r")

 con = file("RtypemapCode.c", "w")
 rcon = file("Rtypemap.R", "w")
 writeIncludes('Rtypemap.h', con, append = '"')

  writeCode(iface, "native", con, includes = "Rtypemap.h")
  writeCode(iface, "r", rcon)

 close(con)
 close(rcon)
