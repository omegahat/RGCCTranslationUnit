#
setGeneric("getRTypeName",
            function(type, typeMap = list(), ...)
              standardGeneric("getRTypeName"))


setMethod("getRTypeName", "SEXP",
           function(type, typeMap = list(), ...) {
              "ANY"
          })



setMethod("getRTypeName", "TypedefEnumerationName",
           function(type, typeMap = list(), ...) {
              type[2]
          })


setMethod("getRTypeName", "BuiltinPrimitiveType",
           function(type, typeMap = list(), ...) {
            BuiltinTypeTable[BuiltinTypeTable$RTypeClass == class(type), "R"]
          })

setMethod("getRTypeName", "voidType",
           function(type, typeMap = list(), isPointer = FALSE, ...) {
#XXX depends on the context being called, e.g. pointer, ...             
             if(isPointer)
               "raw"
            else
                "" 
           })

setMethod("getRTypeName", "CString", 
           function(type, typeMap = list(), ...) {
             "character"
           })

setMethod("getRTypeName", "TypeDefinition",
           function(type, typeMap = list(), ...) {
              paste(type@name, collapse = "::")
           })

setMethod("getRTypeName", "TypedefDefinition",
           function(type, typeMap = list(), ...) {
              paste(type@name, collapse = "::")
           })

setMethod("getRTypeName", "EnumerationDefinition",
           function(type, typeMap = list(), ...) {
              if(is(type@name, "TypedefEnumerationName"))
                  getRTypeName(type@name, typeMap, ...)
              else
                  paste(type@name, collapse = "::")
           })


# Examples/tests
# getRTypeName(PointerType(new("intType")))    # integer
# getRTypeName(PointerType(new("intType"), 1)) # integer
# getRTypeName(PointerType(new("intType"), 2)) # intPtrPtr

# getRTypeName(PointerType(new("charType"), 1)) # character
# getRTypeName(PointerType(new("charType"), 2)) # character
# getRTypeName(PointerType(new("charType"), 3)) # charPtrPtrPtr

setMethod("getRTypeName", "PointerType",
           function(type, typeMap = list(), ...) {

             if(is(type@type, "ResolvedTypeReference")) { type@type = resolveType(type@type);} #  cat("Resolved pointer type", class(type@type), "\n")
             
             if(is(type@type, "voidType"))
               return(getRTypeName(type@type, typeMap, TRUE))

             w = which(class(type@type) == BuiltinTypeTable$RTypeClass)
             if(length(w) > 0 && type@depth == 1)
               return(paste(type@type@name, "Ptr", sep = "")) # BuiltinTypeTable[w, "R"])

                # 
             if(!is.na(type@typeName) && type@typeName == "char" && (type@depth == 2 || type@depth == 1) ) # XXX Added the 1 here for RGCCTUFFI.
                 return("character")
             
             if(length(w) && !is.na(w) && type@depth > 1) {
                 # e.g. double **
               return(paste(c(BuiltinTypeTable[w, "C"], rep("Ptr", type@depth)), collapse = ""))
             }

      #XXX   
             return(getReferenceClassName(type))
             
             ifelse(!is.na(type@name),  type@name, type@typeName)
           })


setMethod("getRTypeName", "CString",
           function(type, typeMap = list(), ...) {
              "character"
           })

setMethod("getRTypeName", "ArrayType",
           function(type, typeMap = list(), ...) {

             if(is(type@type, "BuiltinPrimitiveType"))
                return(getRTypeName(type@type, typeMap))

            # XXX
             warning("Needs to be fixed")
             ifelse(!is.na(type@name),  type@name, type@typeName)             
           })


setMethod("getRTypeName", "Field",
           function(type, typeMap = list(), ...) {
             getRTypeName(type@type, typeMap)
           })



setMethod("getRTypeName", "character",
            # All we have is the built-in types, so we try to map from C to R for these
           function(type, typeMap = list(), ...) {
             idx = match(type, BuiltinTypeTable[, "C"])
             if(is.na(idx))
               type
             else
               BuiltinTypeTable[idx, "R"]
           })


######################################
# For the raw node types (for use with signature.R)
#
#
#

setMethod("getRTypeName", "GCCNode",
          function(type, typeMap = list(), ...) {
               # Then map to the R equivalent.
              getNodeName(type)
          })

#XXXX  Fill these in....
setMethod("getRTypeName", "GCC::Node::integer_type",
           function(type, typeMap = list(), ...) {
              "integer"
           })

setMethod("getRTypeName", "GCC::Node::pointer_type",
           function(type, typeMap = list(), ...) {          
             
           })
