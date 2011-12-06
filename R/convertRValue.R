
setGeneric("convertRValue",
           function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {

              if(is(parm, "ResolvedTypeReference")) 
                parm = resolveType(parm)
             
              if(is(parm, "PendingType")) {
                parm = resolvePendingType(parm)
                return(convertRValue(to, name, parm, parameters, typeMap))
              }
             
              map = lookupTypeMap(parm, typeMap)
              if(!is.null(map) && !is.null(op <- map$convertRValue ))  {
                 ans = userConversion(op, to, name, parm, parameters, typeMap)
                 if(!is.null(ans))   # add the ;
                   return( ans )
               }
              
              ans = standardGeneric("convertRValue")

              if(!inherits(ans, "Statement"))
                paste(to, if(to != "") " = ",  ans, ";", sep = "")
              else
                ans
            })


setMethod("convertRValue", c(parm = "SEXP"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                 return(name)
              })


setMethod("convertRValue", c(parm = "intType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                     paste("asInteger(", name, ")")
              })


setMethod("convertRValue",  c(parm = "doubleType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                  # Cast for inheritance
                   paste("(", parm@name, ")", "asReal(", name, ")")
              })

setMethod("convertRValue",  c(parm = "unsignedCharType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                   paste("(", parm@name, ")", "RAW(", name, ")[0]")
              })


setMethod("convertRValue", c(parm = "boolType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                   paste("asLogical(", name, ")")
              })

setMethod("convertRValue", c(parm = "complexType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                   paste("asComplex(", name, ")")
              })



setMethod("convertRValue", c(parm = "EnumerationDefinition"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                   if(is(parm@name, "TypedefEnumerationName"))
                      parm@name = parm@name[2]
                   paste('(', parm@name, ')', "INTEGER(", name, ")[0]")
              })


#
# We get ourselves into trouble here if we try to work with the 
# object and not the pointer to it _if_ the = operator is not available
# to us. See DECLARE_NO_COPY_CLASS.  We don't seem to be able to detect
# this by looking for private operator()= method since g++ is not giving us this.
#
# So the approach is treat it as a pointer and change the call to dereference the pointer
# e.g.
#    bool CanRead(const wxFSFile& file)
#     wxFSFile *file;
#      file = R_GET_REF_TYPE();
#      This->CanRead(*file);
#


setMethod("convertRValue", c(parm = "C++ReferenceType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                    # note the preceeding *  XXX
                    # removed for now.
                    # Want the type not to be a basic primitive type.
                   typeName = parm@type@name
                   refName = parm@type@name
                   if(is(parm@type, "PointerType")) {
                     typeName = getReferenceClassName(parm@type)
                     refName = parm@type@typeName
                   }

                decl = getNativeDeclaration("", PointerType(parm@type), addSemiColon = FALSE, const = FALSE)

                paste("(", decl, ")", derefNativeReference(name, parm@type, refName) )
              })


derefNativeReference =
function(name, type, refName)
{
  paste(
         " R_getNativeReference(", name, ", ",
#         paste('"', refName, '"', sep = ""),
        dQuote(refName),
         ", ",
#         paste('"', getReferenceClassName(type), '"', sep = ''),
         "NULL", #XXX  this is to allow for inheritance.  Perhaps want other mechanism.
         ")", sep = "")
}  



setMethod("convertRValue", c(parm = "PointerType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {

                    if(parm@depth == 1 && is(parm@type, "voidType"))
                       return(paste("TYPEOF(", name, ") == RAWSXP ?  (GET_LENGTH(", name, ") ? RAW(", name, ") : NULL) : ", derefNativeReference(name, "NULL", "NULL")))
                
                    if(parm@depth == 1 && length(parm@typeName) && parm@typeName == "char")
                       return(paste("GET_LENGTH(", name, ") > 0 ? CHAR(STRING_ELT(", name, ", 0)) : ", "NULL"))

                    if(is(parm@type, "BuiltinPrimitiveType")) {
                       op = BuiltinTypeTable[BuiltinTypeTable$RTypeClass == class(parm@type), "Caccessor"]
                       if(!is.na(op)) #??? When would it ever be NA??
                           return(paste(op, "(", name, ")"))


                          # Should be an paste(id, "ArrayRef"), not a regular Ref. 
                          # Not quite sure id is supposed to be. Looks like the class
                          # name to which we add a Ref. 
                       id = parm@type@name  #? check
                       ptrType = dQuote(paste(id, "Ptr", sep = ""))
                       ptrName = paste("_p_", sub("^r_", "", name), sep = "")
                       txt = c(paste("if(IS_S4_INSTANCE(", name, ", ", ptrType, "))"),
                               paste("\t", ptrName, "= R_getNativeReference(", name, ", ", ptrType, ",", ptrType, ");"))
                       txt = c(txt, "else", paste("\t", ptrName, "=", op, "(", name, ");"))
                       txt = paste(txt, collapse = "\n\t\t\t")
                       class(txt) = c("IfStatement", "Statement")
                       return(txt)
                    }


                   if(length(grep("^struct ", parm@typeName)) > 0) {
                     tmp = gsub("^struct ", "", parm@typeName)
#                     paste("(", parm@typeName, " *) R_getNativeReference(", name, ", \"", tmp, "\", \"", tmp, "\")", sep = "")
                     #XXX consolidate this with the same pattern in the else below!
                     paste("(", parm@typeName, " *) ", derefNativeReference(name, tmp, parm@typeName), sep = "")                     
                   } else
#                     paste("R_GET_REF_TYPE(", name, ", ", parm@typeName, rep("*", parm@depth - 1), ")")
                     paste("(", getNativeDeclaration("", parm, addSemiColon = FALSE, const = FALSE), ")",
                           derefNativeReference(name, parm, getReferenceClassName(parm)), 
                           sep = "")                    
#                   
#                   if(is(parm, "TypedefDefinition")) 
#                   else {
#                     tmp = paste('"', parm@typeName, '"', sep = "")
#                     paste("(",
#                            ifelse(is(parm, "StructDefinition"), "struct", "union"),
#                            parm@typeName, "*) R_getNativeReference(", name, ",", tmp, ",", tmp, ");")
#                   }
              })                    


setMethod("convertRValue", c(parm = "TypedefDefinition"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                  
                  # txt = paste('FAIL("cannot convert C/C++ typedef yet:', parm@name, '")')
                  # class(txt) = "FailedConversion"

                if(is(parm@type, "FunctionPointer"))
                  return(convertRValue("", name, parm@type, parameters, typeMap, helperInfo))

	        if(is(parm@type, "PointerType") && !is(parm@type@type, "RoutineDefinition")) {
                    paste('DEREF_REF_PTR(', name, ", ", parm@name, ')')
                } else
                     paste('DEREF_REF(', name, ", ", parm@name, ')')   # name
              })

setMethod("convertRValue",  c(parm = "StructDefinition"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
#                   warning("Need converter for struct type ", parm@name)
                   rtype = dQuote(getReferenceClassName(parm))
                   cast = getNativeDeclaration("", parm, addSemiColon = FALSE, const = FALSE)
                   txt = paste("* (", cast, ' *) R_getNativeReference(', name, ',', rtype, ",", rtype, ")")

#                   class(txt) = "FailedConversion"               

                   txt
              })


#XXXX
setMethod("convertRValue", c(parm = "C++ClassDefinition"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                warning("convertRValue for C++ClassDefinition is ignored currently as there is no obvious general, faithful mapping: class ", parm@name)
                ""  # XXX    character(0)
              })



setMethod("convertRValue",  c(parm = "UnionDefinition"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                   txt = paste('FAIL("cannot convert raw C/C++ struct yet, only pointers to structs: ', parm@name, '")')
                   class(txt) = "FailedConversion"
                   txt
              })


setMethod("convertRValue", c(parm = "ArrayType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                    # If we have a pointer object, dereference that, checking it is of the correct type.
                    # Otherwise, if it is a builtin type, use that

                if(is(parm@type, "CString")) {
#XXX Handle case we have a char **

                code = c("  {",
                    "   int i;",
                    "   char **els = NULL;",
                    paste("   int isStringVector = TYPEOF(", name, ") == STRSXP;"),
                    paste("   if(!isStringVector)"),
                    paste('        els = DEREF_REF_PTR(', name, ", ", getNativeDeclaration("", parm@type, , FALSE, FALSE), ');'),
                    paste("   for(i=0; i <", parm@length, "; i++) {"),
                  #XXX strdup ? Need allocation
                    paste("         ", to, "[i] = isStringVector ? strdup(CHAR(STRING_ELT(", name, ", i))) : els[i];" ),
                    "   }",
                    "  }")
                  return(structure(code, class = c("StatementBlock", "Statement")))                  
                }
                
               txt = paste('DEREF_REF_PTR(', name, ", ", getNativeDeclaration("", parm@type, , FALSE, FALSE), ')')
               ptype = new("PointerType", type = parm@type, typeName = parm@type@name, depth = as.integer(1))
               if(is(parm@type, "BuiltinPrimitiveType"))
                 txt = paste("IS_S4_OBJECT(", name, ") ? ", txt, ":", convertRValue("", name, ptype, parameters, typeMap)) #XXX


               setEls = if(is(parm@type, "BuiltinPrimitiveType")) {
                                          #  && Make the test check the types are not the same                      != ) 
                           paste("  ", c("int i;",  copyRArrayElementsToNative(parm, to, name)))
                        } else
                           c(getNativeDeclaration("_tmp", parm),
                             paste("_tmp = ",  txt, ";"),                             
                             paste("memcpy(", to, ", _tmp, sizeof(",  parm@type@name, ") *", parm@length, ");"))
               
               structure(
                c(" {", # extra space to avoid formatCode thinking this is a potential beginning!
                  setEls,
                  " }"), class = c("StatementBlock", "Statement"))
              })


setMethod("convertRValue", c(parm = "FunctionPointer"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
              #  Need to know the name of the routine in which this is being used so that we can
              # access the relevant stack.
              #  Could use GCC when compiling the resulting code to find the name of the routine !!!! :-)
              # But we arrange for the code that calls this generic convertRValue to supply the information
              # as an attribute on the type.

                m = attr(parm, "Caller")
                decl = if(length(parm@alias))
                          parm@alias
                       else
                          RoutineDefinitionDeclaration(parm)
                funName = if(!is.null(m)) paste(m$name, c("fun", "stack"), sep = "_")
                          else c("NULL", "NULL")
                paste("(",  decl, ") R_asFunctionPointer(", name, ", ", funName[1], ", ", funName[2], ");")
              })


setMethod("convertRValue", c(parm = "UserDataType"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                 paste("TYPEOF(", name, ") == EXTPTRSXP ? R_ExternalPtrAddr(", name, ") :  (void *)", name)
              })

setMethod("convertRValue", c(parm = "Field"),
              function(to, name, parm, parameters, typeMap = list(), helperInfo = NULL) {
                convertRValue(to, name, parm@type, parameters, typeMap, helperInfo)
              })

