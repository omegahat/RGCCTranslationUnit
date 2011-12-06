
createTU =
   # Create the .tu file from C or C++ source file.
  #
  # createTU(paste("~/Projects/R/R-devel/src/library/stats/src", c("filter.c", "isoreg.c"), sep = "/"), outdir = ".", "CC=/usr/bin/gcc")
  # Not quite working yet.
function(src, outdir = getwd(), ..., make = "make", verbose = FALSE)
{
  cur = getwd()
  setwd(outdir)
  on.exit(setwd(cur))

  print(getwd())
  existing = list.files(".", pattern = "tu$", full.names = TRUE)
    # Be careful not to exceed the command length limit.
  cmd = paste(make, "-f",
               system.file("etc", "make", "GNUmakefile", package = "RGCCTranslationUnit"),
               paste(path.expand(src), ".tu", sep = "", collapse = " "),
               ...)

  if(verbose)
     cat(cmd, "\n")
  status = system(cmd)

    # Possible that other processes wrote into this filesystem.
    # Should look for the ones matching the src names
  setdiff(list.files(".", pattern = "tu$", full.names = TRUE), existing)
}  

    # Information for the different types of interfaces
    # the data type of the registration table, and the name of the variable to use for
    # the table for this type.
registrationInfo =
   matrix(c("R_CMethodDef" , "CEntries",
            "R_CallMethodDef", "CallEntries",
            "R_FortranMethodDef", "FortEntries",
            "R_ExternalMethodDef", "ExternalEntries"), , 2, byrow = TRUE,
          dimnames = list(c(".C", ".Call", ".Fortran", ".External"), c("type", "var")))


generateRegistrationCode =
  #
  # Process the pool of routines to generate code that will 
  # register the routines for dynamic loading/resolution in R
  # for the different interfaces, .C & .Call. We don't generate
  # any .External or .Fortran callable routines.

  # routines is a list with entries for the .C- and .Call- accessible routines.
  #
  #
  # e.g. 
  #   tu = parseTU("tmp.c.001t.tu", language = "C")
  #   rr = resolveType(getRoutines(tu, "resource.h"), tu)
  #   b = createMethodBindings(rr)
  #   generateRegistrationCode(list(.Call = b), "rlimit")
  #
  # OR
  #
  #   z = generateRegistrationCode(list(.Call = lapply(b, function(x) x$registrationInfo)), "rlimit")
function(routines, packageName = NA, dynamicSymbols = FALSE)  
{
   # Check we have some routines.
  if(sum(sapply(routines, length)) == 0)
    return(character())

    # Determine whether we are to create the initialization routine for the package
    # This is triggered by providing a name for the package
  createInit = !(length(packageName) == 0 || is.na(packageName))


  txt = sapply(names(routines),
                   function(type) {
                      if(length(routines[[ type ]]) == 0)
                           return(NA)

                      r = routines[[ type ]]                      
                           # The names in the list can differ from the actual names of the routines to allow for aliases.
                      els = sapply(names( r ),
                                      function(id) {
                                        generateRegistrationEntry(r[[id]], id, type %in% c(".C", ".Fortran"))
                                      })
                      paste("static const", registrationInfo[type, "type"], registrationInfo[type, "var"], "[] = {\n",
                           paste(els, ",", collapse = "\n"),
                           "\n    {NULL, NULL, 0}",
                          "\n};\n")
                      
                    })
  

  if(createInit) {
    txt["init"] = a = generateRegistrationRoutine(routines, packageName, dynamicSymbols)
    txt["namespace"] = generateRegistrationNamespaceInfo(routines, packageName)
  } else {
     # txt["init"] = txt["namespace"] = character()
  }

  txt["packageName"] = packageName

  class(txt) <- "NativeRegistrationInfo"
  
  txt
}

generateRegistrationNamespaceInfo =
  #
  #  Expects a list with elements corresponding to .C, .Call, .Fortran, .External, ...
  #  Each element is a list with the registration information including the name
  #  And the names for each list can be supplied to provide aliases for the routines
  #  that will be registered in the 
function(routines, packageName)
{
    actual = unlist(lapply(routines, function(x) sapply(x, function(x) x$name)))
    alias =  unlist(lapply(routines, names))

    if(!all(alias == actual))  {
      i = which(alias != "")
      if(length(i))
        actual[i] = paste(alias[i], actual[i], sep = " = ")
      map = actual
#      map = paste(actual, alias, sep = " = ")
    } else
      map = character()
    
     paste("useDynlib(", packageName,
           if(length(map))
             paste(",", paste(map, collapse = ", ")),
           ")")
}  

generateRegistrationRoutine =
  #
  # routines is the same as for generateRegistrationNamespaceInfo
  #
  #
function(routines, packageName, dynamicSymbols = FALSE)
{
       # Find which type of entries we have  so we can put these variable names into the call to R_registerRoutines()
  entries = registrationInfo[, "var"]
  idx = match(names(entries), names(routines))
  entries[is.na(idx)] = "NULL"
#  entries[ names(txt)[is.na(txt)] ] = "NULL"

  CRoutineDefinition(
                     paste("R_init_", packageName),
       c(externC,
        "void",
        "#ifdef HAVE_VISIBILITY_ATTRIBUTE",
        '__attribute__ ((visibility ("default")))',
        "#endif",
        paste("R_init_", packageName, "(DllInfo *dll)", sep = ""),
        "{",
        paste("R_registerRoutines(dll, ",  paste(entries, collapse = ", "), ");"),
        paste("R_useDynamicSymbols(dll,", dynamicSymbols, ");"),
        "}\n"))@code
                     

}  


setMethod("writeCode", "NativeRegistrationInfo", 
function(obj, target, file = stdout(), ..., includes = character())
{

   if(target == "namespace") 
       cat(obj["namespace"], file = file, ...)
   else if(target == "native") {

     cat("/* registration information for the C/C++ routines accessible by R */\n\n", file = file)
     cat("#include <R_ext/Rdynload.h>\n\n", file = file, ...)
     
     els = obj[ match(rownames(registrationInfo), names(obj), 0) ]
     if(length(els))  
           sapply(els, cat, "\n", file = file, ...)


     init = match("init", names(obj))
     if(!is.na(init))  
        cat(obj["init"], file = file, ...)

   }
   # case for "r" is a no-op.
})  



getNativeType =
  #
  #  Get the primitive type for the registration of the .C/.Fortran data types.
  #
function(type)
{
  types = c("double" = "REALSXP",
            "char" = "STRSXP",
            "int" = "INTSXP")

  idx = match(type@typeName, names(types))
  types[idx]
}  

generateRegistrationEntry =
  #
  #  Create an entry for the registration table for the specified routine
  #
  # id is the name by which the routine is known in R
  # def is the description of the routine.
  # addParameterTypes is a logical value which is TRUE for .C/.Fortran callable
  #  routines and specifies the types of the parameters.
  #
function(def, id = def$name, addParameterTypes = is(def$returnType, "voidType"))
{
  parmTypes = character()

  if(addParameterTypes && length(def$parameters)) {
      parmTypes = paste(", (R_NativePrimitiveArgType[]) {",
                        paste(sapply(def$parameters, function(x) getNativeType(x$type)), collapse = ", "),
                       "}")
  }


  nargs = if("parameters" %in% names(def))
              length( def$parameters )
          else if("nargs" %in% names(def))
              def$nargs
          else
              0
  
  paste(c("   {",
          paste('"', id, '"', sep = ""), ",",
          "(DL_FUNC) &", def$name, ",",
          nargs,
          parmTypes,
          "}"),
        collapse = " ")
}  


gatherRegistrationInfo =
  #
  # This is for finding the information about C/C++ routines that can be called
  # by R via the .C and .Call interfaces.
  #
  # fileName is a string (or character vector) giving the name of the .tu file
  #  Find the routines defined in the file and arrange the ones that can be 
  #  called from R into the different interfaces.
  #
function(fileName, tu = parseTU(fileName),
          r = getRoutines(tu,  gsub("(.t00.tu|.tu)$", "", basename(fileName))),
          dir = dirname(fileName))
{
   if(length(fileName) > 1) {
     ans = list(".C" = list(), ".Call" = list())
     for(f in fileName) {
         # r = getRoutines(parseTU(f), gsub("(.t00.tu|.tu)$", "", basename(fileName)))
         #generateRegistrationInfo
        tmp = gatherRegistrationInfo(f) # gatherRegistrationInfo(f, tu, r, dir)
        ans$.C = c(ans$.C, tmp$.C)
        ans$.Call = c(ans$.Call, tmp$.Call)        
    }
     return(ans)
   }

    # Now deal with the single file case.
   
    if(missing(tu)) 
       tuFile = list.files(dir, pattern = paste(basename(fileName), "\\..+\\.tu", sep = ""), full.names = TRUE)
 
    r = lapply(r, resolveType, tu)

     # Find the ones for use with .C
    dotC = w = sapply(r, is.CCompatible)
    dotC = if(any(w))
               r[ dotC ]
           else
               list()
 
     # Find the ones in the remainder that are for .Call.
    r = r[! w ]
    if(length(r)) {
      dotCall = sapply(r, is.CallCompatible) 
      dotCall = r[ dotCall]
    } else
      dotCall = list()
   
    structure(list(".C" = dotC, ".Call" = dotCall),  class = "RegistrationRoutines")
}


is.CCompatible =
  # Is the function defintion suitable for use in a .C() call.
function(def)
{
  tt = def$returnType
  if(!is(tt, "voidType"))
    return(FALSE)

  all(sapply(def$parameters, is.CParameterType))
}

is.CParameterType =
    # Is the parameter compatible with a .C() call.
function(def)
{
  tt = def$type
  if(!is(tt, "PointerType"))
    return(FALSE)

  if(tt@depth != 1 && !(tt@depth == 2 && tt@typeName == "char"))
    return(FALSE)

  tt@typeName %in% c("double", "int", "char")
}  

is.CallCompatible =
  # Is this function suitable for use with .Call()
function(def)
{
  if(!isSEXPType(def$returnType))
    return(FALSE)

  all(sapply(def$parameters, function(x) isSEXPType(x$type)))
}  


isSEXPType =
  # Doe the type correspond to a SEXP
  # 
function(type)
{
  if(!is(type, "PointerType"))
    return(FALSE)

  type@typeName == "SEXP"
}
