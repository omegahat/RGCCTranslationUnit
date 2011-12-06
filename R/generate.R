setGeneric("generateInterface",
           function(tu, routines = character(),
                         dataTypes = character(),
                         variables = getGlobalVariables(tu, files),                     
                         outfile = gsub(".[0-9]t.tu", "", basename(tu)),
                         includes = character(),
                         language = NA,
                         omitPattern = character(),
                         files = character(),
                         typeMap = list(),
                         dllName = gsub(".R$", "", basename(outfile[1])), ...)
             standardGeneric("generateInterface"))


setMethod("generateInterface",
           "character",
            function(tu, routines = character(),
                         dataTypes = character(),
                         variables = getGlobalVariables(tu, files),                     
                         outfile = character(),
                         includes = character(),
                         language = NA, omitPattern = character(), files = character(),
                         typeMap = list(),
                         dllName = gsub(".R$", "", basename(outfile[1])), ...)
               generateInterface(parseTU(tu, language), routines, dataTypes, variables, outfile, includes, language, omitPattern, files, typeMap, dllName, ...)
          )


setMethod("generateInterface",
           c("TUParser"), #"character"),
            function(tu, routines = character(),
                         dataTypes = character(),
                         variables = getGlobalVariables(tu, files), 
                         outfile = character(), includes = character(),
                         language = NA, omitPattern = character(), files = character(),
                         typeMap = list(), dllName = gsub(".R$", "", basename(outfile[1])), ...)
          {

                # Routines are the names, so fetch the routine nodes and filter using the names.

                if(length(routines)) {
                  if(is.list(routines))
                    rr = routines
                  else {
                    rr = getRoutines(tu, files)
                    rr = rr[routines]
                  }
                }

                    


                # and then filter by omitPattern regexp.
                if(length(omitPattern)) {
                  i = grep(omitPattern, names(rr))
                  if(length(i)) {
                     rr = rr[-i]
                  }
                }
                  

                # Resolve the routines so we can work with those.
                rr = resolveType(rr, tu)

                if(length(dataTypes)) {
                  ds = getDataStructures(tu, files)
                  i = match(dataTypes, names(ds))
                  if(any(!is.na(i)))
                    ds = ds[i]
                  else
                    ds = list()
                  if(any(is.na(i))) {
                    enums = getEnumerations(tu, files)
                    j = match(dataTypes[is.na(i)], names(enums))
                    if(any(is.na(j))) 
                      stop("can't find data types ", paste(dataTypes[is.na(i)][is.na(j)], collapse = ", "))

                    ds = c(ds, enums[j])
                  }

                  dataTypes = resolveType(ds, tu)
                }
                generateInterface(tu, rr, dataTypes, variables, outfile, includes, language, omitPattern, files, dllName = dllName, ...)
            })


setMethod("generateInterface",
           c("TUParser", "ResolvedRoutineList"),
           function(tu, routines = character(),
                    dataTypes = character(),
                    variables = getGlobalVariables(tu, files), 
                    outfile = character(), includes = character(),
                    language = NA, omitPattern = character(), files = character(),
                    typeMap = list(),
                    dllName = gsub(".R$", "", basename(outfile[1])), ...)
           {
              info = helperInfo()
              routineCode = createMethodBinding(routines, helperInfo = info) #, ...)

              dot.dot = list(...)
              
              if("defaultBaseClass" %in% names(dot.dot))
                defaultBaseClass = dot.dot[["defaultBaseClass"]]
              else
                defaultBaseClass = formals(getReferencedDataTypes)[["defaultBaseClass"]]

              
                  # now get the data structures, enumerations, etc.
              typeFun = genProcessTypes(tu, typeMap, defaultBaseClass)
              getReferencedDataTypes(routines, tu, typeMap, defaultBaseClass, typeFun$processor)

                 # Get the type information for the globals.
              lapply(variables, function(x) { typeFun$processor(resolveType(x, tu)@type) })
              dataTypes = typeFun$ans()

              # The intent is that the user should be able to specify the names of variables and we will
              # do the necessary subsettting.              
              if(is.character(variables))
                variables = getGlobalVariables(tu, files)[variables] 
              

              vars = generateGlobalVariableCode(tu, files, variables)
                  # reduceClassDefs reorganizes the dataTypes from a list with elements for
                  # each type to classDefs and types.
              dataTypes$types = reduceClassDefs(dataTypes$types)
              

              # gather the registration information for the C routines that were created as part of this interface.
              # Now add the coercion code (both directions),
              #  accessors for the fields in structures, constructors for structures

             rinfo = lapply(routineCode, function(x) list(name = names(x$registrationInfo$name), nargs = x$registrationInfo$nargs))
             rinfo = c(rinfo, vars$vars$registration)
             names(rinfo) = sapply(rinfo, function(x) x$name)
             regInfo = list(.Call = c(rinfo,
                                      dataTypes$registrationInfo
                                      ))


              regRoutine = generateRegistrationCode(regInfo, dllName)

                  # discard the registrationInfo
              dataTypes = dataTypes$types

              ans = structure( list(dataTypes = dataTypes, routineCode = routineCode, globals = vars, registration = regRoutine,
                                    info = info),
                               class = "NativeInterfaceCode")

              if(length(outfile) == 0 || is.na(outfile))
                   # This can be handed directly to writeCode.
                return(ans)
              
              if(length(outfile) == 1) {
                outfile = paste(outfile, c("R", if(isCPlusPlus(tu)) "cc" else "c"), sep = ".")
                names(outfile) = c("R", "native")
              }


              writeCode(list(dataTypes, routineCode, vars),  "r", outfile[1])
              writeCode(list(dataTypes[-1], routineCode, vars, regRoutine),  "native", outfile[2],
                            includes = if(!inherits(includes, "AsIs")) c(includes, "<RConverters.h>") else includes)

                 # return the names of the generated files and the names of the routines and data structures.
#             list(source = outfile, routines = names(routines), dataTypes = names(dataTypes), registrationInfo = regInfo, globals = vars)
#             list(dataTypes = dataTypes, routineCode = routineCode, globals = vars, info = info, registration = regRoutine)              
             ans
           })



if(FALSE) {
   # Instead of post-hoc cleaning, we'll try to arrange to avoid
   # duplicating the creation.
   # Sometimes we may want to be able to have the data types separately
   # but that should be releatively easy to do.
cleanDataTypes =
function(dataTypes, omitPattern = character())
{
    tapply(dataTypes, sapply(dataTypes, class),
             mergeFields)

  
   if(length(omitPattern)) {
     i = grep(omitPattern, names(dataTypes))
     if(length(i)) 
       dataTypes = depends[ - i]
   }

   dataTypes
}


mergeFields =
function(x) {
  if(length(x) == 0)
    return(list())

  ans = sapply(names(x[[1]]),
                function(id) {
                   els = unlist(lapply(x, el, id), recursive = FALSE)
                   c(x[[1]][[id]], els) #??? 
                })
  
  names(ans) = names(x[[1]])
  ans
}
}

makeOutFiles =
function(filename, extensions = c(c = "c", cxx = "cxx", r = "R"),
          derived = "Derived", prefix = "R", C = FALSE)
{
 filename = paste(prefix, gsub("\\..*", "", filename), sep = "")

 type = if(C) "c" else "cxx"
 structure(paste(filename, c("", "", derived, derived), ".", extensions[c(type, type, "r", "r")], sep = ""),
           names = c("native","nativederived", "r", "rderived"))
}

makeOutfiles = 
function(name)
{
  prefix = matrix(c(rep("RDerived", 2), rep("R", 2), rep(c("c", "R"), 2)),
                   , 2, dimnames = list(c("nativederived", "rderived", "native", "r"), NULL))

  structure(sprintf("%s%s.%s", prefix[,1], name, prefix[,2]), names = rownames(prefix))
}

generateTUWrapper =
#XXX define makeOutfiles
function(tu, includes, outfile = makeOutfiles(tu$filename), # Add whether this is C or C++ based on the tu. What's the check?
         limitTo = gsub("\\..*", "", includes))
{
  library(RGCCTranslationUnit)
  if(is.character(tu))
    tu = parseTU(tu)

  klasses = getClassNodes(tu, "Classes")
  classDefs = getClassDefs(tu, klasses = klasses)
    # twist the order to align them with classDefs which is
    # the right way in terms of class precedence.
  klasses = klasses[names(classDefs)]
  
  methods = lapply(klasses, getClassMethods)
  resolved.methods = lapply(methods, resolveType, tu)

  resolved.methods = filterInheritedVirtualMethods(resolved.methods, classDefs)
  derivedClasses = lapply(names(resolved.methods),
                           function(id)
                               createDerivedClass(id, tu, classNodes = klasses, 
                                                   methods = resolved.methods, classDefs = classDefs))
  names(derivedClasses) = names(resolved.methods)

  con = file(outfile["nativederived"], "w")
  writeIncludes(includes, con)
  sapply(derivedClasses, writeCode, "native", file = con)
  close(con)
  
  con = file(outfile["rderived"], "w")
  sapply(derivedClasses, writeCode, "r", file = con)
  close(con)

  ifaces = lapply(names(klasses),
                   function(i) createClassBindings(klasses[[i]], tu, resolvedMethods = resolved.methods[[i]], classDefs = classDefs))
  names(ifaces) =  names(klasses)

  writeCode(ifaces, "native", outfile["native"], includes = c(includes, '<RDerivedClass.h>'))
  writeCode(ifaces, "r", outfile["r"])
}


getRegInfo =
  #
  # Local fun for getReferenceDataTypes
  #
function(x, nargs = x@nargs)
   list(name = x@name, nargs = nargs)


genProcessTypes =
function(tu, typeMap = list(), defaultBaseClass = "RC++StructReference", types = list(), regInfo = list(), ignore = character())  
{
  omit = ignore
  processType =
   function(type) {

     # In this function, we try to avoid duplicates by maintaining a list of what we have seen before by using
     # a key that should be reasonably unique.

       # First fix up the type by resolving it, descending within it, ignoring it
    if(is(type, "PointerType")) 
      type = fixPointerTypeNames(type)

       # Replace this with   type = forceResolve(type)
    if(is(type, "ResolvedTypeReference"))
       type = resolveType(type)

    if(is(type, "Field"))
      type = type@type

    if(is(type, "ResolvedTypeReference"))
       type = resolveType(type)

    if(is(type, "BuiltinPrimitiveType"))
      return(NULL)

    
    if(is(type, "ArrayType"))
       type = fixArrayElementTypeNames(type)
    
         # Try to avoid duplicating our efforts. Do so by working with
         # We'd like the TU index of the type here!
     id = paste(type@name, if(TRUE || is(type, "ArrayType")) getNativeDeclaration("", type, , FALSE, FALSE), class(type), sep = "<>")  # type@type@name
    
     if(id %in% omit) {
           # Separate this into seen before and really ignoring.
        #warning("[genProcessTypes] Ignoring ", id)
        return(NULL)
     } else
       omit <<- unique(c(id, omit))

    if(is(type, "StructDefinition") || is(type, "C++ClassDefinition")) {
       lapply(type@fields, processType)
       types[[type@name]] <<- o <- generateStructInterface(type, DefinitionContainer(tu), typeMap, defaultBaseClass)
       tmp =     c(
                    lapply(o$coerce$routines, getRegInfo),
                    lapply(o$cRoutines[names(o$cRoutines) != ""], getRegInfo),
                    list(getRegInfo(o$freeInst$free, nargs = 1)),
                    list(getRegInfo(o$newInst$c, 0)),
                    list(getRegInfo(o$duplicate$c))         
                  )


       regInfo <<- c(regInfo, tmp)
       
    } else  if(is(type, "ArrayType")) {
      decl = getNativeDeclaration("", type@type, ,FALSE, NA)

      type = fixArrayElementTypeNames(type)
      processType(type@type)

      code = generateCopyArrayToR(type, typeMap = typeMap)
      regInfo <<- c(regInfo, lapply(code[c("raccess", "rgetSubset", "rsetSubset")], getRegInfo))
      tmp = types[[length(types) + 1]] <<- list(classDefs = code[["rclassDef"]], native = code[c("native", "raccess", "rsetSubset", "rgetSubset", "rsetCells")], r = code["r"])
      names(types)[length(types)] <<-  decl #paste("Array", type@type@name, sep = "_")
      
    } else  if(is(type, "EnumerationDefinition")) {
          #XXX changed this to use type rather than tmp as the rhs. tmp was not defined.
      types[[length(types) + 1]] <<- type
      names(types)[length(types)] <<- type@name
    } else  if(is(type, "PointerType")) {
      decl = getNativeDeclaration("", type, addSemiColon = FALSE, const = FALSE)

      if(type@depth > 1L) {
        processType(PointerType(type@type, type@depth - 1L))
          # recursive array type, one less than this.
      #XXX  processType(mimicArrayType(type))
      }
      className = getReferenceClassName(type)
      def = RClassDef(paste("setClass(", sQuote(className), ", contains = 'RC++Reference')"), className)
      types[[length(types) + 1]] <<- list(classDefs = def)
      names(types)[length(types)] <<- decl
    }
  }

  results =
    function() {
         names(regInfo) = sapply(regInfo, function(x) x$name)
         regInfo = regInfo[unique(names(regInfo))]
         class(regInfo) = "NativeRegistrationInformation"      

         structure(list(types = types, #[unique(names(types))],
                        registrationInfo = regInfo), class = "GeneratedTypeInfo")
      }

  structure(list(processor = processType, ans = results), class = "TypeCollector")
}


mimicArrayType =
function(type)
{
  
  ans = new("ArrayType")
  cur = type@type
  for(i in seq(length = type@depth)) {
    cur = new("ArrayType", name = type@name, type = cur, length = 1L)
  }
  ans@type = cur

  ans
  
#  type = type@type, length = rep(1L, length = type@depth))                    
}  



f = function(types, field = "classDefs")
{
    tmp = lapply(types, el, field)
    classNames = as.character(unlist(lapply(tmp, function(x) if(is(x, "RClassDef")) names(x) else lapply(x, names))))
    defs = structure(unlist(tmp), names = classNames)
    defs[!duplicated(names(defs))]  
}


reduceClassDefs =
function(types)
{
  defs = f(types, "classDefs")
    # remove the class defs in the types
  types = lapply(types, function(x) {
                          structure(x[! names(x) %in% c("classDefs")], class = class(x))
                        })

  list(classDefs = structure(defs, class = "RClassDefsCollection"), 
                             types = types)
}



getReferencedDataTypes =
  #
  # Look through the routines and find the data types that each of these refers to.
  #
  #
function(routines, tu, typeMap = NULL, defaultBaseClass = "RC++Reference", processType = genProcessTypes(defaultBaseClass))
{
 if(is.null(processType))  # to allow the caller to specify it as NULL but meaning the default!
   processType = genProcessTypes()$processor
  
  sapply(routines,
           function(x) {
               lapply(x$parameters,
                      function(x)
                        processType(x$type))
               processType(x$returnType)
             })

   environment(processType)$results()
}




##############################################################
#XXXX UNUSED!
if(FALSE) {
DataTypeCollector =
  # This is used as we generate code for routines, etc.
  # to collect the referenced data structures so that
  # at the end of the code generation, we also have all
  # the information about the other code we need to generate
  # to have a complete system, i.e. support for each struct,
  # enumeration, typedef, etc.
  # This is an environment as we need to update its state.
function()  # e = new.env())
{
  add =
  function(def, name = def@name) {
      # Need to do lots of checks here.
     assign(name, def, env)
  }

  env = environment(add)

  e = list(add, values = function() env)
  
  class(e) = "DataTypeCollector"

  e
}  
}
