print.ResolvedNativeClassMethod =
function(x, ...)
{
#  parms = sapply(names(x$parameters), function(id) getNativeDeclaration(id, x$parameters[[id]]$type, addSemiColon = FALSE))
#  print(paste(x$className, "::", x$name, "(", paste(parms, collapse = ", "), ")"))
  print(as(x, "character"))
}  

setOldClass("ResolvedNativeRoutine")
setOldClass(c("ResolvedNativeClassMethod", "ResolvedNativeRoutine"))
setOldClass(c("ResolvedNativeClassConstructor", "ResolvedNativeClassMethod"))

setOldClass(c("ResolvedNativeClassCopyConstructor", "ResolvedNativeClassConstructor"))
setOldClass(c("ResolvedNativeClassEmptyConstructor", "ResolvedNativeClassConstructor"))


setOldClass(c("ResolvedNativeOperatorClassMethod", "ResolvedNativeRoutine"))


setAs("ResolvedNativeClassConstructor", "character",
      function(from) {
        from$parameters = from$parameters[-1]
        as(structure(from,  class = "ResolvedNativeClassMethod"), "character")
     })
      

ResolvedNativeClassMethodDeclaration =
function(from, addClassName = TRUE, sep = " ")
{
        parms = sapply(names(from$parameters),
                        function(id) {
                           param = from$parameters[[id]]
                           x = getNativeDeclaration(id, param$type, addSemiColon = FALSE)
                           if(!is.na(param$defaultValue))
                             paste(x, "=", as(param$defaultValue, "character"))
                           else
                             x
                        })

     paste(getNativeDeclaration("", from$returnType, , FALSE), if(sep == "") " ",
           if(addClassName) paste(from$className, "::"),
            getName(from), "(", paste(parms, collapse = ", "), ")",
           sep = sep)
}

# For ResolvedNativeRoutine
#XXX Merge these classes so that we have just one
RoutineDefinitionDeclaration =
function(from, name = getName(from), sep = " ")
{
        ids = names(from@parameters)
        parms = sapply(seq(along = from@parameters),
                        function(i) {
                           param = from@parameters[[i]]
                           id = if(length(ids)) ids[i] else ""
                           x = getNativeDeclaration(id, param@type, addSemiColon = FALSE)
                           if(!is.null(param@defaultValue) && !is.na(param@defaultValue))
                              paste(x, "=", as(param@defaultValue, "character"))
                           else
                              x
                        })

     paste(getNativeDeclaration("", from@returnType, , FALSE), if(sep == "") " ",
            name, "(", paste(parms, collapse = ", "), ")",
           sep = sep)
}


setMethod("show", "RoutineDefinition",
           function(object)
             show(RoutineDefinitionDeclaration(object)))


setGeneric("getName", function(obj, ...) standardGeneric("getName"))

setMethod("getName", "ResolvedNativeOperatorClassMethod",
          function(obj, ...)
            paste("operator", getOperatorSymbol(obj$name)))

setMethod("getName", "ResolvedNativeRoutine",
          function(obj, ...)
            obj$name)

setMethod("getName", "RoutineDefinition",
          function(obj, ...)
            obj@name)

setMethod("getName", "FunctionPointer",
          function(obj, ...)
            "(*)")

setAs("ResolvedNativeRoutine", "character",
       function(from) ResolvedNativeClassMethodDeclaration(from, FALSE))

setAs("ResolvedNativeClassMethod", "character",
       function(from) ResolvedNativeClassMethodDeclaration(from, TRUE))



setMethod("show", "ResolvedNativeRoutine",
           function(object)
            cat(as(object, "character"), "\n"))

print.ResolvedNativeRoutine = 
  function(x, ...)
    print(as(x, "character"))


print.TypedefDefinition =
function(x, ...)
{
  cat(x@name, "=>", "\n")
  print(x@type)
}  


setAs('StructDefinition', 'character',
         function(from) {
         x = from
         paste(
         sapply(names(x@fields),
            function(p) {
              type = x@fields[[p]]@type
                   #XXX for arrays, we need to put the p before the array.
              if(is(type, "ArrayType")) {
                  #XXX what about arrays of arrays
                dims = getArrayDimension(type)
                cat(as(type@type, 'character'), p, paste("[", dims, "]", collapse = ""), ";")
              } else
                 paste(as(type, 'character'), p, ";")
             }), collapse = "\n")
         })

print.StructDefinition =
function(x, ...)
{
  invisible(cat(as(x, 'character'), "\n", ...))
}  

setAs("BuiltinPrimitiveType", "character",
        function(from) {
          from@name
        })

setAs("TypeDefinition", "character",
        function(from) {
          from@name
        })


setAs("PointerType", "character",
        function(from) {
          paste(as(from@type, "character"), paste(rep("*", from@depth), collapse = ""))
        })
