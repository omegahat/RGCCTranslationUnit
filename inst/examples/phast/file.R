library(RGCCTranslationUnit)
p = parseTU("msa.c.tu", language = "C")
routines = getRoutines(p, "msa.c")

types = DefinitionContainer()
rr = resolveType(routines, p, types)

dd = getDataStructures(types)

load("FILE.rda")

TypeMap =
 list(
      list(target = new("PointerType", typeName = "FILE", depth = 1,
                           type = FILE),
           )
      )

createMethodBinding(rr$msa_new_from_file)

# Coerce a character string to an open FILE *.
# for reading.
setAs("character", "FILERef",
      function(from) {
        FILE_Open(from)
      })

FILE_Open =
function(filename, mode = "r")
{
   if(!file.exists(filename))
     stop("File ", filename, "does not exist")

   filename = path.expand(filename)
   .Call("R_open", filename, "r")
}  





