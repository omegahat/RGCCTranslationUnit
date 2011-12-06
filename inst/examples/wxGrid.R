library(RGCCTranslationUnit)

wx = parseTU("inst/examples/wxGrid.cpp.tu")

klasses = getClassNodes(wx, "grid")

wxGrid = getClassMethods(wx[[klasses$wxGrid]])

# 322 of these
sort(names(wxGrid))

# Not listed in the documentation but is in the code.
# Although the body is empty.  We could determine this.
# Also, the second argument name is empty ("") since it is unused.
# The missing name means the argument is unused.
# See WXUNUSED().  This is a good hint when generating code.
# We need provide a default value for the argument, but do not include
# it in the R interface.

wxGrid$SetEditInPlace


# Overloaded methods
els = wxGrid[ "SetCellAlignment" == names(wxGrid) ]
tt = table(names(wxGrid))
tt[tt > 1]

# But we want to check whether a routine is polymorphic across other classes
# also

classDefs = lapply(klasses, function(id) getClassMethods(wx[[id]]))
tt = table(unlist(lapply(classDefs, names)))
names(tt)[tt > 1]

# So we have the names of the polymorphic routines.
# But which are shared across classes.


# At this point, we have not resolved the types and so cannot
# discard the tu and work with the R objects.

# Note that all include "this" argument, except static methods
sapply(els, function(x) length(x$parameters))


i = which(sapply(wxGrid, function(x) any(names(x$parameters) == "")))
which(!(sapply(wxGrid[i], function(x) isBodyEmpty(wx[[x$id]]))))


# To find the static methods
wxGrid[which(sapply(wxGrid, function(x) !("this" %in% names(x$parameters))))]

# This gives wxCreateObject(). This is defined in a macro.
#XXX The return type is simply ""


