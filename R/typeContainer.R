DefinitionContainer =
  # tu$resolvedDefinitions = DefinitionContainer(tu, force = TRUE)
function(parser = NULL, e = structure(new.env(TRUE), class = "DefinitionContainer"),
         nodes = NULL, reportDuplicates = FALSE, verbose = FALSE,
         force = FALSE)
{
    # retrieve the version created with the parser
    # unless it is not there or force is TRUE
 if(!is.null(parser)) {
    if(is(parser, "GCCTUParserDynClass")) {
       a = parser@typedefs
    } else {
       a = unclass(parser)$resolvedDefinitions
    }
    class(a) <- "DefinitionContainer"
    if(!is.null(a) && !force)
      return(a)
  }
  
 class(e) <- "DefinitionContainer"

 if(!is.null(parser))
   assign(".parser", parser)
 
 assign(".nodes", nodes, envir = e)
 assign(".reportDuplicates", reportDuplicates, envir = e)
 
 if(!exists(".pending", e))
   e$.pending <- new.env(TRUE)  # character(0)
 if(!exists(".resolved", e))
   e$.resolved <- new.env(TRUE) # character(0)
 e$.resolvedNodes <- new.env(TRUE)
 
 e$.verbose = verbose

 e
}


clearDefinitions <-
function(defs)
{
  if(inherits(defs, "GCC::TranslationUnit::Parser") || is(defs, "TUParser"))
    defs = DefinitionContainer(defs)
  
  if(exists(".resolved", envir = defs)) 
    assign(".resolved",  new.env(TRUE), envir = defs)

  if(exists(".pending" , envir = defs))
     assign(".pending", new.env(TRUE), envir = defs)
  remove(list = objects(defs$.resolvedNodes), envir = defs$.resolvedNodes)
  remove(list = objects(defs), envir = defs) 
  
  invisible(defs)
}  

isResolved <-
function(node, defs)
{
  exists(as.character(node), envir = defs$.resolved)
}

isPending <-
function(node, defs)
{
  exists(as.character(node), envir = defs$.pending)
}



getType <-
function(node, defs)
{
  #idx = node[["INDEX"]]
  idx = node

# The material commented out here is in resolveType.
#  if(!isResolved(idx, defs)) {
#
#    if(isPending(node, defs))
#      return(new("PendingType", index = idx, env = defs))
#    
#    stop(idx, " not resolved at this point")
#  }

  return(get(idx, envir = defs$.resolvedNodes))
#XXX  
  name = get(idx, envir = defs$.resolved)
  if(defs$.verbose) 
    cat("<getType> mapped", idx, "to", name, "\n")

  get(name, envir = defs) 
}  

addPending <-
function(node, defs)
{
  if(!isPending(node, defs)) {
     assign(as.character(node), TRUE, envir = defs$.pending)
     if(defs$.verbose)
       cat("added", node, "to pending\n")
     TRUE
  } else {
     cat(node, "is already in pending\n")
     FALSE
  }
}  


getNodeID =
function(node)
{
  if(length(grep("GCC::Node", class(node)[1])))
     idx = node[["INDEX"]]
  else if(inherits(node, "TUParserIndex"))
    idx = names(node)
  else
    UseMethod("getNodeID")
}

getNodeID.default =
function(node)
    stop("Not certain what we are dealing with here")

getNodeID.NativeTUParserIndex =
function(node)
 as.character(node)

getNodeID.NativeClassMethod =
function(node)
  names(node[["INDEX"]])


getNodeID.NativeRoutineDescription =
function(node) {
  as.character(node[["INDEX"]])
#  names(node$INDEX)  # Should this be names?
}

getNodeID.PendingType =
function(node) {
  x = names(node@INDEX)
  if(!length(x))
    node@INDEX
  else
    x
}  



registerType = resolved <-
  # 
  #  Register a resolved type definition with the container
  #
  #
function(type, node, defs, name = type@name[1], force = FALSE)
{
    # some times we return a registered value and then a calling function
    # attempts to register it also. So prohibit this and just return
    # the already registered value.

  if(is(type, "ResolvedTypeReference"))
      return(resolveType(type))

 
  if(is(type, "PendingType")) 
    return(FALSE)


  #XXX Put an on.exit() here to clean up if there is an error.
  
  idx = as.character(getNodeID(node))

  if(length(name) == 0 || is.na(name)) {
    if(!any(inherits(node, c("GCC::Node::pointer_type", "GCC::Node::parm_decl", "GCC::Node::var_decl",
                         "GCC::Node::enumeral_type", "GCC::Node::reference_type",
                         "GCC::Node::array_type"))))
      warning("NA value for name for node with index ", idx, " with class ", class(node)[1])
    name = idx
  }
  
  # May end up with duplicates
  # e.g. int for different flavors of int.
#  if(name %in% objects(defs)) {
  if(defs$.reportDuplicates && exists(name , envir = defs)) {
    cur = get(name, envir = defs)
#XXXX    
    curIdx = names(defs$.resolved)[name ==  defs$.resolved]
    warning(name, " already in type container: current class ", class(cur)[1], ", new class ", class(type)[1], ". new index: ", idx, ", original: ", paste(curIdx, collapse = ", "))
  }

  assign(as.character(name)[1], type, envir = defs)

  if(defs$.verbose)
    cat("registering", name, "\n")

  assign(idx, type, envir = defs$.resolvedNodes)

  assign(idx, name, envir = defs$.resolved)
  if(defs$.verbose)
    cat("resolved", idx, "as", name, "\n")

  
#  id = node[["INDEX"]]
  id = idx
  if(defs$.verbose && !force && (is.na(id) || (name != id && exists(id, envir = defs))))         # id %in% objects(defs)))
    warning("type is already defined for this node ", id, " in the type container")

  if(inherits(id, "TUParserIndex"))
    id = names(id)[1]
  
  assign(as.character(id), type, envir = defs)
  
  if(exists(idx, envir = defs$.pending)) {
     remove(list = idx, envir = defs$.pending)
     if(defs$.verbose)
       cat("Removed", idx, "from pending\n")
  } else {
     if(defs$.verbose)
       cat(idx, "was not in pending\n")
  }

  new("ResolvedTypeReference", 
         name = name, index = getIndex(node), container = defs)
}  

setMethod("lapply", "DefinitionContainer",
          function(X, FUN, ...) {
            lapply(objects(X), function(id) FUN(get(id, envir = X), ...))
          })

setMethod("sapply", "DefinitionContainer",
          function(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE) {
            sapply(objects(X), function(id) FUN(get(id, envir = X), ...), simplify = simplify, USE.NAMES = USE.NAMES)
          })

setMethod("names", "DefinitionContainer",
          function(x) {
            objects(x, all = TRUE)
          })
