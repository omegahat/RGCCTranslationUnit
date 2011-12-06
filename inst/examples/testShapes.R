# For the moment,

p = parseTU.Perl("inst/examples/shapes.cc.t00.tu")
klasses = getClassNodes(p, "shapes")
methods = lapply(klasses, getClassMethods)
def = DefinitionContainer(nodes = p)
resolvedMethods = lapply(methods, function(x) lapply(x, resolveType, p, def))

code = createDerivedClass("R_Rectangle", resolvedMethods["Rectangle"],
                           "Rectangle", getFields(klasses[["Rectangle"]]))

# Temporary
con = file("Rshapes.cc", "a"); cat('\n\n#include "constructor.cc"\n', file = con); close(con)


dyn.load("Rshapes.so")
setClass("RectanglePtr", contains = "RC++Reference")
source("Rshapes.R")


r = R_Rectangle(10, 11, 12, 13)
# r = .Call("R_Rectangle_new")

getRMethods(r)
setRMethods(r, setWidth = function(this, val) { cat("Hi there\n") ; NULL})
getRMethods(r)

.Call("MyTest", r)
