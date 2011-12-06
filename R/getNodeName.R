OperatorNames = c(assign = "=",
                  eq = "==",
                  ne = "!=",
                  gt = ">",
                  lt = "<",
                  land = "&&",
                  lor = "||",
                  or = "|",
                  and = "&",
                  lshift = "<<",
                  lshiftassign  = "<<=",
                  rshift  = ">>",
                  rshiftassign  = ">>=",
                  ref = "->",
                  subs = "[]",
                  call = "()",
                  plus = "+",
                  minus  = "-",
                  postinc = "++",
                  postdec = "--",
                  mult = "*",
                  div = "/",
                  plusassign = "+=",
                  minusassign = "-=",
                  multassign = "*=",
                  divassign = "/=",
                  le = "<",
                  ge = ">",
                  not = "~",
                  lnot = "!",
                  xor = "^",
                  xorassign = "^=",
                  orassign = "|=",
                  andassign = "&=",
                  modassign = "%=",
                  mod = "%",
                  memref = "->*",
                  compound = ","
                 )
                  

getOperatorSymbol =
  #
  # given the name (e.g. as in the TU), get the symbol such as [] or <<
  #
function(name, addOperator = FALSE)
{
  i = match(name, names(OperatorNames))
  if(is.na(i))
    return(name)

  if(addOperator)
    paste("operator", OperatorNames[i])
  else
    OperatorNames[i]
}

getOperatorName =
  #
  #  map the symbol to the  name.
  #
function(name)
{
  i = match(name, OperatorNames)
  if(is.na(i))
    name
  else
    names(OperatorNames)[i]
}  


getNodeName =
function(node, addPrefix = TRUE, raw = FALSE)
{
 
  if(inherits(node, "GCC::Node::function_decl")) {

      if("operator" %in% names(node)) 
          return(getOperatorName(node[["operator"]]))
 
  } else if(inherits(node, "GCC::Node::identifier_node")) {

      if("string" %in% names(node))
          return(node[["string"]])
    
  } else if(inherits(node, "GCC::Node::addr_expr")) {

       op = node[["operand"]]
       return(getNodeName(op[[1]], addPrefix, raw))
  }

  getPrefix =
  function(node, ans) {
    
     if(addPrefix && "scpe" %in% names(node)) {
       pre = getNodeName(node[["scpe"]], FALSE)
       if(length(pre) && nchar(pre))
         return( paste(pre, ans, sep = "::") )
     }

     ans
   }
 

  # When is a type_decl or record_type supposed to have a struct
  # in front of it?
  # If it is a C++ class, no struct.
  # If it is a typedef
   
  if("name" %in% names(node)) {
     val = getNodeName(node[["name"]], addPrefix, raw = raw)
#    if(inherits(node, "GCC::Node::record_type")
#        && any(type <- (c("struct", "union") %in% names(node)))
#          && ("artificial" %in% names(node[["name", convert = FALSE]]))) {
#     # val = paste("struct", val)
#     }

     #return(val)
     return(getPrefix(node, val))
   }
    
  
 if(inherits(node, "GCC::Node::type_decl")) {
   if("name" %in% names(node)) {

       ans = getNodeName(node[["name"]],  addPrefix)
#       recover()
#       return(ans)
       return(getPrefix(node, ans))
       
   } else if("type" %in% names(node)) {

       tmp = node[["type"]]
       return(paste(ifelse("struct" %in% names(tmp), "struct",  "union"), getNodeName(tmp, addPrefix)))

     }
 }

  as.character(node[["INDEX"]])
} 
