library(RGCCTranslationUnit)
p = parseTU("inst/examples/structs.c.tu");

dd = getAllDeclarations(p, "structs")

types = lapply(dd[c("A", "struct F")], resolveType, p)

ifaces = lapply(types, generateStructInterface)

r = getRoutines(p, "structs")
r = lapply(r, resolveType, p)
cc = lapply(r, createMethodBinding)


con = file("inst/examples/auto_structs.R")
open(con, "w")

sapply(ifaces, writeCode, "r", file = con)
sapply(cc, function(x, con) writeCode(x, "r", file = con), con)

close(con)


con = file("inst/examples/auto_structs.c")
open(con, "w")

cat('#include "RConverters.h"\n', file = con)
cat('#include "Rdefines.h"\n', file = con)

cat('#include "structs.h"\n\n', file = con)

sapply(ifaces, writeCode, "native", file = con)
sapply(cc, writeCode, "native", file = con)

close(con)





if(FALSE) {

dyn.load("inst/examples/structs.so")
source("inst/examples/auto_structs.R")
  
a = createA()
a$x
a$y
a$str

a$xx # error

as(a, "A")

b = returnA()
b$x
b$y
b$str

c = returnA( .copy = FALSE )
c$x
c$y
c$str

}



