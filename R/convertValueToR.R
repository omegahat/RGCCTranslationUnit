# The out parameter was added probably erroneous. See collectOutVars()

setGeneric("convertValueToR",
            function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {

              if(is(parm, "ResolvedTypeReference")) 
                parm = resolveType(parm)

              
              map = lookupTypeMap(parm, typeMap)
              if(!is.null(map) && !is.null(op <- map$convertValueToR )) {
                 ans = userConversion(op, name, parm, parameters, typeMap)
                 if(!is.null(ans)) 
                   return( ans )
               }

              standardGeneric("convertValueToR")              
            })


setMethod("convertValueToR", c(parm = "SEXP"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ..) {
                 return(name)
              })


setMethod("convertValueToR",  c(parm = "PendingType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   convertValueToR(name, resolvePendingType(parm), parameters, invoke, typeMap, out, helperInfo, ...)
              })


setMethod("convertValueToR",  c(parm = "TypedefDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   convertValueToR(name, parm@type, parameters, invoke, typeMap, out, helperInfo, ...)
              })

setMethod("convertValueToR",  c(parm = "intType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarInteger(", name, ")")
              })

setMethod("convertValueToR",  c(parm = "unsignedIntType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarReal(", name, ")")
              })


setMethod("convertValueToR", c(parm = "EnumerationDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                coerceRToEnumeration(name, parm, parameters, typeMap = typeMap)
              })

setMethod("convertValueToR",  c(parm = "voidType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("R_NilValue")
              })


setMethod("convertValueToR", c(parm = "doubleType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarReal(", name, ")")
              })

setMethod("convertValueToR", c(parm = "unsignedCharType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarRaw(", name, ")")
              })

setMethod("convertValueToR", c(parm = "boolType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarLogical(", name, ")")
              })


setMethod("convertValueToR", c(parm = "complexType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                   paste("ScalarComplex(", name, ")")
              })


setMethod("convertValueToR", c(parm = "PointerType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                
#                 typeName = if(!is.na(parm@typeName)) parm@typeName else parm@type@name
                   typeName = getReferenceClassName(parm, isClass = is(parm@type, "C++ClassDefinition"))
                
                   if(parm@depth == 1 && !is.na(typeName) && typeName == "char")
                      return(paste("mkString(", name, " ? ", name, ": \"\")"))

                    # Macro that is part of the compile-time utilities we use with these bindings.
                    # Need the entire list of class names here.
#                   paste("R_MAKE_REF_TYPE( (void *) ", name, ", ", getReferenceClassName(parm), ")")
                   createNativeReference(name, parm, typeName)
              })


createNativeReference =
function(name, parm, typeName, addAmpersand = NA,
         refClass = getReferenceClassName(parm))
{
  if(is(parm, "ResolvedTypeReference"))
    parm = resolveType(parm)
  
  if(is(parm, "ArrayType")) {
    rclass =  getCopyArrayName(parm, c("", ""))
    dims = getArrayDimension(parm)
    ans = paste("R_createArrayReference(", name, ", ", dQuote(rclass), ", ", dQuote(refClass), ", ",
                 "(int[]) {", paste(dims, collapse = ", "), "},",  length(dims),
                 ", sizeof(", getSizeofTypeName(parm), "))")

    return(ans)
  }

#########################  

  if((!is.na(addAmpersand) && addAmpersand) ||
         (is.na(addAmpersand) && (is(parm, "BuiltinPrimitiveType") || !is(parm, "PointerType")))) {
      name = paste("&(", name, ")")
   }

  
  paste("R_createNativeReference( (void *) ",
        name,
        ", ",
        dQuote(refClass),
        ",",
        dQuote(refClass),  # was typeName
        ")")
}


setMethod("convertValueToR", c(parm = "C++ReferenceType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                  if(is(parm@type, "ResolvedTypeReference"))
                     parm@type = resolveType(parm@type)

                  if(is(parm@type, "C++ClassDefinition")) {
                    return(convertValueToR(paste("&", name), PointerType(parm@type), parameters, invoke, typeMap, out, helperInfo, ...))
                  }
                  else if(is(parm@type, "PointerType")) {
                      #XXX Should this be the address of the pointer?
                    return(convertValueToR(name, parm@type, parameters, invoke, typeMap, out, helperInfo, ...))
                  }
                  else if(is(parm@type, "TypedefDefinition")) {
                      #XXX Should this be the address of the pointer?
                    tp = parm@type@type
                    return(convertValueToR(name, PointerType(tp), parameters, invoke, typeMap, out, helperInfo, ...))
                  }
                  else if(is(parm@type, "EnumerationDefinition")) {
                      #XXX Should this be the address of the pointer?
                    return(convertValueToR(name, parm@type, parameters, invoke, typeMap, out, helperInfo, ...))
                  }
                  else if(is(parm@type, "BuiltinPrimitiveType")) {
                      #XXX Should this be the address of the pointer?
                    return(convertValueToR(name, parm@type, parameters, invoke, typeMap, out, helperInfo, ...))
                  }                  

                  #else!
recover()
                  warning("convertValueToR for C++ReferenceType but not for a C++ClassDefinition ", parm@name)
                  paste('\n#error "for convertValueToR(C++ReferenceType) ', parm@name, '"\n')
              })                    





setMethod("convertValueToR", c(parm = "EnumerationDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                #XXX
                # need to put the name on things.
                # Generate routine to do this.
                   paste("ScalarInteger(", name, ")")
              })

 
 

setMethod("convertValueToR", c(parm = "ArrayType"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {

                 parm = fixArrayElementTypeNames(parm)
                     # this is for controlling the copying of the elements. If these are builtin primitive types
                     # then we can only copy them so hasCopy is FALSE.
                 hasCopy = !is(parm@type, "BuiltinPrimitiveType")
                 hasCopy = FALSE # TRUE #XXX
                 
                       # If we don't know the length, we have problems.
                 if(length(parm@length) && is.na(parm@length)) 
                   return(convertValueToR(name, PointerType(parm@type), parameters, invoke, typeMap, out, helperInfo, ...))

                 dims = getArrayDimension(parm)
                       # The array routine is called with the dimensions one after the other
                       # the reference to the array, i.e. the variable name, 
                       # if we can get a reference to the elements i.e. hasCopy is TRUE
                       # then we add a 1. 
                       # Then we give the start and end values.
 #XXX add if(hasCopy) ", 1"
 #XXX
                 paste(getCopyArrayName(parm), "(", name, ",", paste(dims, collapse = ", "), ", 0,", parm@length - 1, ")")
#                   stop("Need training on converting ArrayType to R for this particular type ", parm@type@name)
              })


                
setMethod("convertValueToR",  c(parm = "C++ClassDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                 refClassName = getReferenceClassName(parm)
                 if(length(parameters) && "copy" %in% names(parameters)) {
                            #XXX don't we need an & in front of the name?
                     if(!is.null(helperInfo)) {
                         rname = paste("R_copy_", parm@name, "_to_R", sep = "")
                         assign(rname, structure(list(parm), names = rname, class = "CopyToRRoutine"), helperInfo)
                     }                  
                   ans = paste(paste("(INTEGER(r_copy)[0] == R_DEEP_COPY) ?\n\t\t\tR_copy_", parm@name, "_to_R(", paste("&", name), ") :", sep = ""),
                   #XXX Check there is such a constructor for this class.
                             paste("\t\t\t", "( (INTEGER(r_copy)[0] == R_DUPLICATE) ?\n\t\t\t\t R_MAKE_REF_TYPE( new ", parm@name, "(", name, "), ", refClassName, ")", sep = ""),
                   # local variable reference!!XXX
                             paste("\t\t\t\t", " : R_MAKE_REF_TYPE( &", name, ", ", refClassName, "))", sep = ""),
                             sep = "\n")
                } else
#XXX                   ans = paste("R_MAKE_REF_TYPE( &", parm@name, "(", name, "), ", refClassName, "))")
                   # & will make it a reference to a local variable !
                   # So would need to copy it
                   ans = paste("R_MAKE_REF_TYPE( ", paste("&", name), ", ", refClassName, ")")                   
                 #class(ans) <- "C++Block"
                 ans
               })


setMethod("convertValueToR",
              c(parm = "StructDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {

	           # call the deep copy routine by default. 
                   # XXX need to find out what the name of the .copy argument is.

#XXXX & make sense in some cases, not others.ar                
                   return(paste(getStructCopyRoutineName(parm), "( &", name, " )", sep = ""))

                   structure(      #XXX is this C++ code? Needs to be available for C also.
                             paste(parm@name, "* __r_tmp = new ", parm@name,
                                               "(", invoke, ")",
                                               ";", "\n",
#                                   "*__r_tmp = ", name, ";", "\n",
                                   "r_ans = R_MAKE_REF_TYPE( (void *) __r_tmp, ", parm@name, ");"),
                             class = c("C++Block", "InlineInvocation"))
                    
              })


setMethod("convertValueToR", c(parm = "RoutineDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                    # we don't know the name so use NULL
                    #XXX add support to RAutoGenRunTime.

                   # The RoutineDefinition has a list of Parameter objects.
                 paste("createRRoutineReference(", name, ", (char *)NULL, ", dQuote(parm@returnType@name), ", ",
                                           length(parm@parameters), ", ",
                                                  # Lose the name of the parameter and any default value.
                                                  #XXX Need to deal with types that don't have a simple name.
                                                  # Using typeName() now for the present.
                                           paste(sapply(parm@parameters, function(x) dQuote(typeName(x@type))), collapse = ", "), ")")
              })




setMethod("convertValueToR", c(parm = "Field"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                convertValueToR(name, parm@type, parameters, invoke, typeMap, out, helperInfo, ...)
              })



setMethod("convertValueToR",  c(parm = "UnionDefinition"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ...) {
                  convertValueToR(paste("name", parm@fields[[1]]@name, sep = "."),  parm@fields[[1]]@type, parameters, invoke, typeMap, out, helperInfo, ...)
              })


setMethod("convertValueToR", c(parm = "CString"),
              function(name, parm, parameters, invoke = "", typeMap = list(), out = FALSE, helperInfo = NULL, ..) {
                 sprintf("mkString(%s)", name)
              })
