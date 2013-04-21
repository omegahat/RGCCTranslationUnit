externC =
  c("#ifdef __cplusplus",
    'extern "C"',
    "#endif")


getAccessibleFields =
function(def, access = c("public"), fields = def@fields, classDefs = NULL)
{
  if(is(def, "StructDefinition"))
    return(fields)
  
  inherited = list()
  if(!is.null(classDefs) && length(def@ancestorClasses)) {
    inherited = unlist(lapply(classDefs[def@ancestorClasses], getAccessibleFields, access), recursive = FALSE)
    names(inherited) = sapply(inherited, function(x) x@name)
  }

  
  if(length(fields) == 0)
    return(inherited)

 isField = sapply(fields, inherits, "C++ClassField")
 if(!any(isField))
   return(inherited)

  fields = fields[isField]
  
  accessible = sapply(fields, function(x) 
                                  x@access %in% access)
                                   
  c(fields[accessible], inherited)
}


 # see structs.r
createRFieldAccessors=
  #
  # Generate the R and C code to be able to access fields in a reference to a C/C++ structure or class.
  #
  #  Handles either get and set via get and can be told which operator to use [[ or $
  #  Can also control access to protected fields.
  #
  # See ../inst/doc/fields.xml
  #
function(def, className = def@name, get = TRUE, typeMap = list(), access = c("public", "protected"),
          operator = "$", fields = getAccessibleFields(def, access), genericOnly = FALSE, tu = NULL)
{
  if(is(def, "ResolvedTypeReference"))
    def = resolveType(def)
  
  type = def
                   #XXX Cleanup this code  and rationalize it wrt struct A or A as an untypedef'ed struct or not.
  if(is(def, "TypedefDefinition")) {
    if(missing(className))
      className = def@name
    def = def@type
  }

  if(startsWith("@", className))
     stop("Erroneous name for structure type")
  
  rClassName = getReferenceClassName(def, className)

  def@fields = fields
  
  if(length(def@fields) == 0)
    return(list())

    # XXX match this with the name of the access routines we generate.
  classNames = sapply(def@fields, function(x) if(is(x, "C++Field")) x@definedIn else rClassName)
  funCall = paste(classNames,  ifelse(get, "get", "set"),  names(def@fields), sep = "_")
  names(funCall) = names(def@fields)
    
  func = paste(".fieldFuns = c(", paste(sQuote(names(def@fields)), backquote(funCall), sep = " = ", collapse = ",\n\t\t"), ")")
  fieldNames = paste(names(def@fields), collapse = ", ")

  # names(funCall) = names(def@fields)

  fullNames = sapply(def@fields, function(x) paste(if(is(x, "C++Field")) x@definedIn else rClassName, x@name, sep = "::"))

  #XXX Can make this faster in the case of get = TRUE by going straight to the C code
  # since we know the name of the routine.

  addCopy = sapply(def@fields, function(f) !is(f@type, "BuiltinPrimitiveType"))
  hasCopy = get && any(addCopy)

  withCopyCode = c(paste(".hasCopyParam = c(", paste(addCopy, collapse = ", "), ")"), # don't need names since positions same so use idx
                  "if(.hasCopyParam[idx])",
                    paste("  return(.fieldFuns[[idx]](x, as.integer(", if(operator == "$") "TRUE" else "copy", ")))")
                  )  
  
 if(operator == "[[") {
     # See if we need the copy parameter - if ANY of the fields are not a primitive type
  
    func = c(func,
               "idx = (if(exact) match else pmatch)(i, names(.fieldFuns))",
               'if(is.na(idx)) {',
               paste('   idx = (if(exact) match else pmatch)(i, c(', paste(sQuote(fullNames), collapse=", "), '))'),
               '   if(is.na(idx))',
               paste('    stop("no such field ", i, " in ', className, '. Should be one of ", paste(names(.fieldFuns), collapse = ", "))', sep = ""), "}")
    
    
      func = c(func,
               if(hasCopy)  #XXX If length(def@fields) == 1
                    withCopyCode,
                paste(".fieldFuns[[idx]](x", if(!get) ", value" , ")", sep = ""))
    
      generic = RDoubleBracketDefinition(rClassName, func, !get, hasCopy)
  
  } else { # Assuming "$"

       func = c(func,
                "idx = pmatch(name, names(.fieldFuns))",
                '   if(is.na(idx))',
                paste('    stop("no such field ", name, " in ', className, '. Should be one of ", paste(names(.fieldFuns), collapse = ", "))', sep = ""))    
       func = c(func, if(hasCopy) withCopyCode, paste(".fieldFuns[[idx]](x", if(!get) ", value" else if(hasCopy) ", TRUE" , ")", sep = ""))    
                
       generic = RDollarDefinition(rClassName, func, !get)
  }

  if(genericOnly)
    return(generic)

  
  isLocal = sapply(def@fields, function(x) !is(x, "C++Field") || x@definedIn == className)
  def@fields = def@fields[isLocal]
  funCall = funCall[isLocal]

  
   # generate the individual field accessor R functions and the corresponding

  rfuncs = lapply(seq(along = def@fields),
                    function(i) {
                       id = names(def@fields)[i]
                       code = c(if(!get) paste("\tvalue =",  coerceRValue("value", def@fields[[id]]@type, typeMap = typeMap)), 
                                paste("\t.Call('", paste("R", funCall[ id ], sep = "_"), "',",
                                                    paste("as(x,", dQuote(rClassName), ")"),  #XXX get the reference class name, i.e. Ptr - not className
                                                   if(!get) ", value" else if(hasCopy) ", as.integer(copy)", ")", sep = "")
                               )
                                  #XXX note that we are not using the name of the field, just a generic x.
                       defaults = if(hasCopy) c("copy" = "TRUE") else character()
                       RFunctionDefinition(funCall[id], code, c("x", if(!get) "value" else if(hasCopy) "copy"), defaults)
                       })
  names(rfuncs) = funCall


  tagName = type@name
  tmp = tagName
  thisDef = getNativeDeclaration("*obj", type, const = get)

  cast = gsub("obj ;$", "", thisDef)
                               #XXX tmp seems wrong in the general scheme. But should be that now anyway.
  deref = paste("obj = (", cast, ")", derefNativeReference("r_obj", type, tmp), ";")


  cfuncs = sapply(names(def@fields), makeCFieldAccessorRoutine, def, tu, funCall, hasCopy, deref, typeMap, thisDef, get)

  names(cfuncs) = funCall
  
    # The registration information is in the name of cRoutines
    # The exports are the methods for $ and $<-.  The other R functions should be
    # hidden.
   structure(list(generic = generic, rFunctions = rfuncs, cRoutines = cfuncs),
              class = "StructAccessors")
}  

makeCFieldAccessorRoutine =
function(fieldName, def, tu, funCall, hasCopy, deref, typeMap, thisDef, get) 
{
      ftype = forceResolve( def@fields[[fieldName]]@type, tu)
      fieldAccessor = paste("obj->", fieldName, sep = "")

      decls = character()

      useCopyCode = is(ftype, "PointerType") || is(ftype, "ArrayType")


     if(!get)  {
            # So doing a set
        if(!useCopyCode)
          decls = paste(
                    getNativeDeclaration("value", ftype, character(), addSemiColon = FALSE),
                    "=", convertRValue("value", "r_value", ftype, typeMap = typeMap), ";"
                   )
        else {
          decls = character() # Don't need
        }
      }


      funName = paste("R_", funCall[ fieldName ], sep = "")
      els =
           c(externC, "SEXP",
             paste(funName, "(SEXP r_obj", if(!get) ", SEXP r_value", if(hasCopy) ", SEXP r_copy", ")"), "{",
               # get the reference to the value
               #
              thisDef,
              
              decls,

              deref,  #XXX Check got the right thing in deref : A or APtr (e.g. numericVariables and struct A)


              if(get) {
                  val = convertValueToR(fieldAccessor, ftype, parameters = character(), typeMap = typeMap)

                  if(hasCopy) {
                        #XXX  If there is a copy parameter, then arrange to get a reference to the object.

                        #   if(is(ftype, "ResolvedReferenceType")) ftype = resolveType(ftype)
                        #???  & or no &
                     ref = createNativeReference(fieldAccessor, ftype, ftype@typeName)
                     val = paste( " INTEGER(r_copy)[0] ?", val, ":", ref)
                  }
                  paste("return(", val, ");")
               } else { # could  return the previous value, but that is useful in
                      # x$foo = val because the $<- method must return x

                     # Move this to a setNativeValue method, but have to deal with the different 
                     # expectations about what is in the parameters 
                  if(useCopyCode)
                      getCopyFieldCode(fieldName, ftype, c(to = "obj", from ="r_value"))
                  else
                      setNativeValue(ftype, structure(c("obj", fieldName), class = "StructField"),  
                                         "value", typeMap)
               },
          if(!get) "return(r_obj);",
         "}")

                   
     CRoutineDefinition(name = funName, code = els, nargs = hasCopy + if(get) 1L else 2L)
         #   paste(c(els[1:6],  paste("\t", els[4:(length(els)-1)]), els[length(els)]), collapse = "\n")
}

setOldClass("StructField")
setAs("StructField", "character",
       function(from) {
          paste(from, collapse = " -> ")
       })

setGeneric("setNativeValue",
            function(type, dest, src, typeMap = list()) {

              map = lookupTypeMap(type, typeMap)
              if(!is.null(map) && !is.null(op <- map$setNativeValue ))  {
                 ans = op(type, dest, src, typeMap)
                 if(!is.null(ans))   # add the ;
                   return( ans )
               }

               standardGeneric("setNativeValue")
            })

setMethod("setNativeValue", "ANY",
           function(type, dest, src, typeMap = list()) {            
                dest = as(dest, "character")
                sprintf("%s = %s;", dest, src)
            })

if(FALSE) {
writeCode.StructAccessors =
  # Not used! See writeCode.CStructInterface in bindings.R
  #
function(obj, target, file = stdout(), ..., includes = character())
{

  if(target == "r") {
     sapply(obj$rFunctions, function(x) cat(x, "\n\n", file = file, ...))
     # Do we need to ensure that $ and $<- is a generic.
     cat(obj$generic, "\n",  file = file, ...)     
  } else if(target == "native") {
     sapply(obj$cRoutines, function(x) cat(x, "\n", file = file, ...))
  } else if(target == "namespace") {
     cat("exportMethods('$', '$<-')", file = file, ...)
  }

  invisible(TRUE)
}  
}
