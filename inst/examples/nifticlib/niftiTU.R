tu = parseTU("inst/examples/nifticlib/nifti.c.t00.tu")
nifti.routines = getRoutines(tu, c("nifti1", "fslio"))
ds = getDataStructures(tu, c("nifti1", "fslio"))

FslInit = resolveType(nifti.routines$FslInit, tu)

defs = DefinitionContainer(tu)

defs$FSLIO
names(defs$FSLIO@fields)

o = resolveType(defs$FSLIO@fields$niftiptr@type@type)
o@name


# 64 fields.
names(o@fields)


fieldTypes = sapply(o@fields, function(x) class(x@type))
table(fieldTypes)

<r:output>


sapply(o@fields[ fieldTypes == "ArrayType" ], function(x) x@type@length)


enums = getEnumerations(tu)
 # Get the values of the enum.
resolveType(enums[[1]], tu)@values


