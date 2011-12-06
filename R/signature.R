#
#  The intent is to avoid an enormous amount of resolveType() calls to get the entire information
#  about the types involved method dispatch. Instead, we just get the type names for use in the S4
#  signatures. We will assume that the classes are going to be defined separately and relatively cheaply.
#

setGeneric("getSignature",
function(method, nodes= getTUParser(method$node), typeMap = list(), ...)
           standardGeneric("getSignature"))

setOldClass("NativeClassMethod")
setOldClass(c("NativeOperatorClassMethod", "NativeClassMethod"))
setOldClass(c("NativeClassConstructor", "NativeClassMethod"))

setOldClass("ShortNativeSignature")
setOldClass(c("NativeSignature", "ShortNativeSignature"))
setOldClass(c("NativeMethodSignature", "NativeSignature"))


setAs("NativeSignature", "character",
      function(from) {
        paste("(", paste(from$types, names(from$types), collapse = ", "), ")")
      })

setMethod("getSignature", "NativeClassMethod",
function(method, nodes = getTUParser(method$node), typeMap = list(), paramNamesOnly = FALSE, ...)
{
  types = sapply(method$parameters,
                  function(x, typeMap) {
                    type = x[["type"]]
                    quickResolveType(type, nodes)

                  }, typeMap)

  names(types) = names(method$parameters)

  if(paramNamesOnly)
    return(structure(types, class = "ShortNativeSignature"))
  
     # Need to know if a parameter has a default value when determining the R method signatures.
  defaults = !sapply(method$parameters, function(x) is.na(x$defaultValue))
  
  structure(list(types = types, hasDefaults = defaults), class = c("NativeMethodSignature", "NativeSignature"))
})


setMethod("getSignature", "UnresolvedClassMethods",
function(method, nodes, typeMap = list(), ...) {
  lapply(method, function(x) if(!is.null(x)) getSignature(x, nodes, typeMap, ...))
})

setMethod("getSignature", "NULL",
function(method, nodes, typeMap = list(), ...) {
  return(list())
})

############################

setGeneric("quickResolveType",
function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
 standardGeneric("quickResolveType")
# ans = standardGeneric("quickResolveType")
# if(target == "R") # && !is.character(ans))#XXX fix this.
#   getRTypeName(ans)
# else
#    ans
})

setMethod("quickResolveType",
           c("ANY"),
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
             resolveType(node, nodes, classDefs, ...)
           })

setMethod("quickResolveType",
           c("GCC::Node::record_type"),
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
               `c++class` = isCPlusPlus(nodes) && !("C" %in% names(node[["name"]][["lang"]]))
               val = getNodeName(node, raw = FALSE)

               if(`c++class`)
                  I(val)
               else
                  val
           })

setMethod("quickResolveType",
           c("GCC::Node::reference_type"),
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
               quickResolveType(node[["refd"]], nodes, classDefs, ...)
           })

setMethod("quickResolveType",
           "GCC::Node::enumeral_type",
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
               getNodeName(node)
           })

setMethod("quickResolveType",
           "GCC::Node::integer_type",
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
#XXX  Deal with the different types/names unsigned, char, ...      Should be done in getNodeName - yes!
               ans = getNodeName(node)
               if(target == "R")
                 getRTypeName(ans)
               else
                 ans
           })
setMethod("quickResolveType",
           "GCC::Node::real_type",
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {
               ans = getNodeName(node)
               if(target == "R")
                 getRTypeName(ans)
               else
                 ans               
           })

setMethod("quickResolveType",
           c("GCC::Node::pointer_type"),
           function(node, nodes = getTUParser(node), classDefs = DefinitionContainer(nodes), target = "R", ...) {

             type = node[["ptd"]]

             depth = 1
             while(inherits(type, "GCC::Node::pointer_type")) {
               depth <- depth + 1
               type = type[["ptd"]]     
             }

             
             typeName = quickResolveType(type, nodes, classDefs, target, ...)

             if(typeName == "character" && depth == 1)
               return("character")

             if(!inherits(typeName, "AsIs"))
                 paste(typeName, paste(rep("Ptr", depth), collapse = ""),  sep = "")
             else
                 unclass(typeName)
           })



#setAs("NativeRoutineDescription", "character",
makeMethodsSig.un = 
function(from, tu)
{
      paste("(", paste(sapply(from$parameters, function(x) quickResolveType(x$type, tu, target = "R")), collapse = ", "), ")")
}
