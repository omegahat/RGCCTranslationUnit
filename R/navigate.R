# Coercion functions that look through a node and its chain to find a node of the
# appropriate type.

as.parm.decl =
  #
  #  Convert the node into a parm_decl by following its chain if possible
  #  but only locally, i.e as a child of the specified node.
  #
function(x) {
  orig = x

  if(inherits(x, "GCC::Node::function_decl")) {
    getArgList(x)
  }

  if(!inherits(x, "GCC::Node::parm_decl"))
    stop("Don't know how to get parm_decl from ", class(orig)[1])
  
  x
}


as.type.decl =
function(x)
{
  if(inherits(x, "GCC::Node::type_decl"))
    return(x)
  
  if(inherits(x, "GCC::Node::parm_decl"))
    x = x[["type", convert = FALSE]]
  
  if(!inherits(x, "GCC::Node::type_decl"))
    stop("can't resolve type_decl")

  x
}

as.field.decl =
function(x, follow = TRUE,
          acceptableTypes = c("GCC::Node::field_decl", "GCC::Node::var_decl", "GCC::Node::const_decl"))
{
  if(any(inherits(x, acceptableTypes)))
    return(x)
 
  if(inherits(x, "GCC::Node::type_decl")) {
    x = as.record.type(x, FALSE)
    if(is.null(x))
      return(NULL)
    x = x$fields(convert = FALSE)
  }

  if(inherits(x, "GCC::Node::record_type")) {
    x = x$fields(convert = FALSE)
  }

  
  if(!inherits(x, acceptableTypes)) {
    if(follow) {
       x = getNextNode(x)
       while(!is.null(x) && !inherits(x, acceptableTypes))
          x = getNextNode(x)
    }
#    if(is.null(x))
#      stop("can't resolve field_decl")
  }

  x
}  

as.record.type =
function(x, stopOnFail = TRUE) {  
  if(inherits(x, "GCC::Node::type_decl")) {
      tmp = x[["type"]]
      if(inherits(tmp, "GCC::Node::record_type"))
        x = tmp
      else {
        if(stopOnFail)
           stop("type_decl didn't lead to a record_type")
        return(NULL)
      }
   }

  if(!inherits(x, "GCC::Node::record_type"))
    stop("Don't know how to get record_type from ", class(x)[1])
  
  x
}
