setGeneric("getNativeDeclaration", 
             function(name, v, variableNames, addSemiColon = TRUE, const = NA) {

                 ans = standardGeneric("getNativeDeclaration")

                 # This used to be before the call to standardGeneric..
                 # But since we deal with it here, we have possibility of duplicating which happens
                 # for a const char *
                 if(is.na(const) && !is(v, "PointerType")) {
                   const = is(v, "TypeDefinition") && length(v@qualifiers) && "const" %in% v@qualifiers
                 }
               

                 if(addSemiColon == FALSE && length(ans)) 
                   ans = gsub(";", "", ans)

                 ans = gsub("^[ ]*", "", ans)
                 ans = gsub("[ ]*$", "", ans)                 

                 if(!is.na(const) && const == TRUE)
                   ans = paste("const", ans)
                   
                 ans
            })


setMethod("getNativeDeclaration", c(v = "PendingType"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
   v = resolvePendingType(v)
   if(inherits(v, "PendingType"))
     return(paste("?", name))

   getNativeDeclaration(name, v, variableNames, addSemiColon, const)
})

setMethod("getNativeDeclaration", c(v = "ResolvedTypeReference"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  getNativeDeclaration(name, resolveType(v), variableNames, addSemiColon, const)
})


setMethod("getNativeDeclaration", c(v = "TypeDefinition"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  ans = getNativeDeclaration(name, v@name, variableNames, addSemiColon, const)
})


setMethod("getNativeDeclaration", c(v = "EnumerationDefinition"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  if(is(v@name, "TypedefEnumerationName"))
      getNativeDeclaration(name, v@name[2], variableNames, addSemiColon, const)
  else
    ans = getNativeDeclaration(name, paste("enum", paste(v@name, collapse = "::")), variableNames, addSemiColon, const)
})

setMethod("getNativeDeclaration", c(v = "TypedefEnumerationDefinition"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  ans = getNativeDeclaration(name, v@typedef, variableNames, addSemiColon, const)
})


setMethod("getNativeDeclaration", c(v = "StructDefinition"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
 if(length(v@alias) && !is.na(v@alias))
   return(structure(paste(v@alias, name, ifelse(addSemiColon, ";", "")), names = name))
 
 structure(paste("struct ", v@name, name, ifelse(addSemiColon, ";", "")), names = name)
})


setMethod("getNativeDeclaration", c(v = "C++ClassDefinition"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
# return("")
 # We do the conversion inline
 structure(paste("    ", v@name, #XXX "&",
                 name,
#XXX                  "=", paste("DEREF_REF( r_", name, ", ", v@name, ")", sep = ""),
                 ";"), names = name)
})

setMethod("getNativeDeclaration", c(v = "PointerType"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  #XXX using a string as second argument!
#XXXWrong:  ans = getNativeDeclaration(name, paste(v@typeName, paste(rep("*", v@depth), collapse = "")), variableNames)
  origName = name
  name = structure(paste(paste(rep("*", v@depth), collapse = ""), name), names = name)

    # Can do this here or in the VoidType method.
  if(is(v@type, "voidType"))
    return(paste("void", name, if(addSemiColon) ";"))
  
  ans = getNativeDeclaration(name, v@type, variableNames, addSemiColon, const)

  names(ans) = origName

  
  ans
})

setMethod("getNativeDeclaration", c(v = "ArrayType"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
#  getNativeDeclaration(name, paste(v@type@name, paste(rep("*", 1), collapse = "")), variableNames, addSemiColon, const)

   dims = getArrayDimension(v)
  # fix if no name
   if(length(v@name) == 0) v = fixArrayElementTypeNames(v)

 # Should we use the declaration in [10][12][123] form or use pointers, i.e. ***
#   paste(v@name, paste("[", dims, "]", collapse = ""), name, if(addSemiColon) ";")
   
   paste(v@name, paste(rep("*", length = length(dims)), collapse = ""), name, if(addSemiColon) ";")
#    getNativeDeclaration(name, paste(v@type@name, paste(rep("*", 1), collapse = "")), variableNames, addSemiColon, const)  
})


PointerType =
function(type, depth = 1, name = type@name, typeName = type@name, alias = character())
{
   if(is(type, "PointerType")) {
      type@depth = type@depth + as.integer(depth)
      return(type)
   }
  
 new("PointerType", depth = as.integer(depth),
                    type = type,
                    name = as.character(name),
                    alias = alias,
                    typeName = as.character(typeName))
}

setMethod("getNativeDeclaration", c(v = "C++ReferenceType"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  if(is(v@type, "PointerType")) 
    return(getNativeDeclaration(name, v@type, variableNames, addSemiColon, const))


# Use for return values.
#  if(is(v@type, "C++ClassDefinition"))
#    return(paste(getNativeDeclaration("", v@type, variableNames, addSemiColon = FALSE), "&", name, ifelse(addSemiColon, ";", "")))
  
#  ans = getNativeDeclaration( paste("&", name), v@type, variableNames, addSemiColon)

    # Const may be missing if this is a ResolvedTypeReference. So force it.
  if(is(v@type, "ResolvedTypeReference"))
    v@type = resolveType(v@type)

  if(is.na(const))
     const =  "const" %in% v@type@qualifiers
  
  ans = paste(if(!is.na(const) && const) "const", v@name, "&", name, if(addSemiColon) ";")

#  ans = getNativeDeclaration( name, PointerType(v@type, typeName = v@name, alias = v@name), variableNames, addSemiColon, const)

  ans
})


setMethod("getNativeDeclaration", c(v = "voidType"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{ #XXX
  paste(if(!is.na(const) && const) "const", "void", name, if(addSemiColon) ";")
})


setMethod("getNativeDeclaration", c(v = "character"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  if(name == "this")
    name = "This"

  structure(paste(if(!is.na(const) && const) "const", v, name, if(addSemiColon) ";"), names = name)
})


setMethod("getNativeDeclaration", c(v = "FunctionPointer"),
function(name, v, variableNames, addSemiColon = TRUE, const = NA)          
{
  #XXX Use v@alias  if we have it.
  paste(RoutineDefinitionDeclaration(v, paste("(*", name, ")")), if(addSemiColon) ";")
})

