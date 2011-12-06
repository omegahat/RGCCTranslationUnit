
 # coerceRValue is called to generate the R-level code that
# coerces an argument to the R function into a suitable R
# value that can be passed to the wrapper routine in C/C++.

setGeneric("coerceRValue",
            function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {

              if(is(parm, "ResolvedTypeReference")) 
                parm = resolveType(parm)
              
              map = lookupTypeMap(parm, typeMap)
              if(!is.null(map) && !is.null(op <- map$coerceRValue ))  {
                 ans = userConversion(op, name, parm, caller, typeMap)
                 if(!is.null(ans))
                   return(ans )
               }

              
              standardGeneric("coerceRValue")
            })



setMethod("coerceRValue", c(parm = "PendingType"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
              parm = resolvePendingType(parm)
              coerceRValue(name, parm, caller, typeMap, helperInfo)
           })


setMethod("coerceRValue", c(parm = "C++ReferenceType"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
            rname =  parm@type@name #XXX get the name of the R reference class associated with the type.
            paste("as(", name, ",", dQuote(rname), ")")
           })


setMethod("coerceRValue", c(parm = "C++ClassDefinition"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
            paste('as(', name, ', ',  dQuote(parm@name), ')', sep = "")
           })


setMethod("coerceRValue", c(parm = "SEXP"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
              name
           })

setMethod("coerceRValue", c(parm = "RDerivedMethodsList"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
             paste("RAutoGenRunTime:::makeDerivedMethodsList(", name, ",",  dQuote(parm@className), ")")
           })


setMethod("coerceRValue", c(parm = "CString"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
             paste("as(", name, ", 'character')")
           })




coerceRToEnumeration =
  #
  # used also when converting C value back to R.
  #
 function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
             bob = NA
             con = textConnection("bob", "w", local = TRUE)
             on.exit(close(con))
             dput(parm@values, con)
             paste("asEnumValue(", name, ",", paste(bob, collapse = "\n\t"),
                               ", class =", if(any(is.na(parm@name))) "" else dQuote(paste(parm@name, collapse = "::")), ")")
           }


setMethod("coerceRValue", c(parm = "EnumerationDefinition"),  coerceRToEnumeration)


     # Perhaps these should change the mode of the object.

setMethod("coerceRValue",  c(parm = "intType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                   paste("as(", name, ", 'integer')")
              })

setMethod("coerceRValue",  c(parm = "unsignedIntType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                   paste("asUnsigned(", name, ", 'numeric')")  # Look up BuiltinTypeTable.
              })


setMethod("coerceRValue",  c(parm = "unsignedCharType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                   paste("as(", name, ", 'raw')")  # Look up BuiltinTypeTable.
              })


setMethod("coerceRValue", c(parm = "doubleType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                   paste("as(", name, ", 'numeric')")
              })

setMethod("coerceRValue", c(parm = "boolType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                   paste("as(", name, ", 'logical')")
              })


setMethod("coerceRValue", c(parm = "complexType"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
               paste("as(", name, ", 'complex')")
           })



setMethod("coerceRValue", c(parm = "PointerType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {

                   if(is(parm@type, "BuiltinPrimitiveType"))  {
                      refType = paste(parm@type@name, "Ptr", sep = "")
                      txt = paste("if(is(", name, ", '", refType, "'))", sep = "")                     
                      return(paste(txt, paste("\t   ",name), "\t else", paste("\t    as.", getRTypeName(parm@type, typeMap), "( ", name, " )", sep = ""),  sep = "\n   "))
                   }

#                   if(parm@typeName == "char")
#                      return(paste("as.character(", name, ")"))

                    # Macro that is part of the compile-time utilities we use with these bindings.
                   refClass = getReferenceClassName(parm@type)  #XXX_ was parm@typeName
                   paste("asReference(", name, ", ", paste('"', refClass, '"', sep = ""), ")")
              })                    


setMethod("coerceRValue", c(parm = "ArrayType"),
              function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
                  
                   if(is(parm@type, "BuiltinPrimitiveType")) {
                      txt = coerceRValue(name, parm@type, parm, typeMap, helperInfo)
#                      txt <- paste("as.", getRTypeName(parm@type, typeMap), "( ", name, " )", sep = "")
                   } else if(is(parm@type, "CString")) {
                        #XXX character or pointer to char **
                      txt = paste("as.character(", name, ")")
                   } else
                      txt <- paste("as.list(", name, ")")

                   txt <- paste(txt, "\n\n",
                          "\tif(length(", name, ") !=", parm@length, ") {\n",
                                       "\t    ", name, "= fixArrayLength(", name, ", ", parm@length, ")\n",
                                       "\t    length(", name, ") <- ", parm@length,
                                       "\n\t}\n\n")
                   txt
              })                    






setMethod("coerceRValue", c(parm = "TypedefDefinition"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
#               if(is(parm@type, "PointerType"))

                if(is(parm@type, "FunctionPointer"))
                  return(coerceRValue(name, parm@type, caller, typeMap, helperInfo))               
             
               paste("as(", name, ", '",  getReferenceClassName(parm), "')", sep = "")


             #  paste('stop("Cannot yet handle typedef\'ed structures: failed for type ', parm@name, '")', sep = "")
           })

setMethod("coerceRValue",
           c(parm = "StructDefinition"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
#               paste("asReference(", name, ", ", paste('"', parm@name, '"', sep = ""), ")")
             paste("as(", name, ",", sQuote(getReferenceClassName(parm)), ")")
           })


setMethod("coerceRValue", c(parm = "UserDataType"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
               name  # structure(name, class = "NoOp")
           })

setMethod("coerceRValue", c(parm = "FunctionPointer"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {

             hasUserData = !is.null(caller) && any(w <- sapply(caller$parameters, function(x) is(x$type, "UserDataType")))
             
             # The types we want depend on whether we have user data or not

             f = function(var = name, n = 0) {
                num = length(parm@parameters) - n
                types = paste("c(", paste(sQuote(sapply(parm@parameters[seq(length = num)], function(x) getRTypeName(x@type))), collapse = ", "), ")")
                paste("asFunctionPointer(", var, ", ", num, ", ", types, ")")
             }
             
               # Give the types here so we can do a check against information in a C routine
               # or an R method if we are using its name as the callback.


             if(hasUserData) {
               data = names(caller$parameters)[which(w)[1]]
               paste("if(is.function(", name, ")) {",
                               data, "=", f(name, 1), ";",
                               "getNativeSymbolInfo(", sQuote(proxyCallbackName(caller$name)), ")$address",
                             "} else", f())
             } else
               f()

           })


setMethod("coerceRValue", c(parm = "UnionDefinition"),
           function(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL) {
               name  # structure(name, class = "NoOp")
           })
