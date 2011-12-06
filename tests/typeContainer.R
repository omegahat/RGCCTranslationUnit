library(RGCCTranslationUnit)
my = parseTU("~/C++/myFun.cpp.tu")

e = RGCCTranslationUnit:::DefinitionContainer()


if(!RGCCTranslationUnit:::isResolved(my[[41]], e))
  RGCCTranslationUnit:::addPending(my[[41]], e)

RGCCTranslationUnit:::isPending(my[[41]], e)

t = resolveType(my[[41]])
RGCCTranslationUnit:::resolved(my[[41]], t, e)

RGCCTranslationUnit:::isPending(my[[41]], e)

objects(e)

resolveType(my[[41]], e)


library(RGCCTranslationUnit)

e = RGCCTranslationUnit:::DefinitionContainer()

my = parseTU("~/C++/recursive.cpp.tu")
v = resolveType(my[[6]], my, e)
