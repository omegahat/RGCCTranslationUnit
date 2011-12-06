library(RGCCTranslationUnit)

  # Read the tu file.
shapes = parseTU("shapes.cc.t00.tu")

  # Find all the classes.
k = getClassNodes(shapes, "shapes")

code = generateClassCode(k, shapes, dynamicCast = FALSE)


writeCode(code, "native", "tmp/Rshapes.cc")
writeCode(code, "r", "tmp/Rshapes.R")


if(FALSE )  {
############################################################################################
  # Now, write out the code to the different files.
RconversionRoutines = objects(code$helperInfo)
decls = sapply(RconversionRoutines,
                  function(id) {
                    obj = get(id, helperInfo)[[1]]
                    d = getNativeDeclaration("", PointerType(obj), addSemiColon = FALSE)
                     # Watch for duplicate constants. Can do this by looking at the qualifiers
                     # slot, but do it this way for the moment.
                    if(length(grep("^const", d)) == 0)
                      d = paste("const", d)
                    decl = paste("SEXP", id, "(",  d, ");")
                  })


con = file("tmp/Rshapes.cc", "w")

cat(paste(decls, "\n"), file = con)

writeIncludes(dQuote(c("shapes.h", "RConverters.h")), con)

sapply(code$classBindings, writeCode, "native", file = con)
close(con)

con = file("tmp/Rshapes.R", "w")
sapply(code$classBindings, writeCode, "r", file = con)
close(con)
}




