
lookupTypeMap =
  #
  # find the element in the type map that corresponds to the
  # given type
  # Compares by name or if type is a TypeDefinition object,
  # compares those to the element target in each element of the map.
function(type, map)
{
  if(is.character(type)) {
     return(map [[ type ]])
  } else if(length(type@name) && type@name[ length(type@name) ] %in% names(map)) {
      return(map[[ type@name[length(type@name)] ]])
  } else {
       # otherwise, go through the map and see if we can find a match
       # What is a match?
    for(i in seq(along = map)) {
      m = map[[i]]
      if("target" %in% names(m)) {
        if(sameType( m[["target"]], type))
          return(m)
      } else {
        n = names(map)[i]
        if(n != "" && sameType(n, type))
          return(m)
      }
    }
  }

  return(map[[".default"]])
}  


sameType =
function(src, target)
{
   if(is(src, "character")) {
      tmp = as(target, "character")
      if(length(tmp))
        return( tmp ==  src)
   }

  if(identical(src, target))
    return(TRUE)
  
  if(class(src) != class(target) && !is.character(src))
    return(FALSE)

  if(is(src, "TypeDefinition"))
     id = src@name
  else
     id = as(src, "character")

  n = is.na(c(id, target@name))
  if(!all(n)  || (!any(n) && (id != target@name)))
    return(FALSE)

  if(is(src, "PointerType")
      && (src@depth != target@depth
          || !sameType(src@type, target@type)))
    return(FALSE)

  else if(is(src, "C++ReferenceType")
           && !sameType(src@type, target@type))
    return(FALSE)


  return(TRUE)
}  


userConversion =
function(op, name, ...)
{
   if(is.character(op)) {
     if(length(op) == 1)
        ans = paste(op, "(", name, ")")
     else if(any(is.na(op))) {
        op[ is.na(op) ] <- name
        ans = paste(op, collapse = " ")
     } else
        ans = paste(c(op[1], name, op[-1]), collapse = " ")
   } else if(is.function(op)) 
     ans = op(name, ...)
   else
     stop("typeMap should currently contain strings or functions.")
   return(ans)
}  


typeMap =
function(...)
{
  map = list(...)
  check = sapply(map,
                 function(x)
                    all(names(x) %in% c("target", "coerceRValue", "convertRValue", "convertValueToR")))

  if(!all(check))
    warning("unused names in type map element(s)", which(check))

  class(map) = "TypeMap"

  map
}  
