library(RGCCTranslationUnit)

tu = parseTU("ABC.cpp.001t.tu")

classNodes = getClassNodes(tu)

z = createClassBindings(classNodes[["B"]], tu)
a = createClassBindings(classNodes[["A"]], tu)


createDerivedClass(c(Bob = "B"), tu)
