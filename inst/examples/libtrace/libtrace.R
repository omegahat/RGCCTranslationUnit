tu = parseTU("trace.c.001t.tu")
routines = getRoutines(tu, "libtrace")
names(routines)

 # Takes some time.
resolved.routines = resolveType(routines, tu)


generateInterface(tu, routines)
