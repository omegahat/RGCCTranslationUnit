getValue =
  #
  # What does this do?  Gets the value for an expression, e.g. a default parameter value.
  #
  
function(node, defaultValue = NA, symbolic = FALSE)
{
 UseMethod("getValue")
}

"getValue.GCC::Node::integer_cst" =
function(node, defaultValue = NA, symbolic = FALSE) {
   if("low" %in% names(node)) as.integer(node[["low"]]) else defaultValue
}

"getValue.GCC::Node::tree_list" =
function(node, defaultValue = NA, symbolic = FALSE) {
   ans = list()
   while(TRUE) {
      ans[[length(ans) + 1]] = getValue(node[["valu"]], defaultValue, symbolic)
      if(!("chan" %in% names(node)))
          break
      node = node[["chan"]]
   }
   ans
}



"getValue.GCC::Node::string_cst" =
function(node, defaultValue = NA, symbolic = FALSE) {
#   if("string" %in% names(node))  dQuote(node[["string"]]) else defaultValue
    if("string" %in% names(node))  node[["string"]] else defaultValue
}


"getValue.GCC::Node::function_decl" =
function(node, defaultValue = NA, symbolic = FALSE) {
  getNodeName(node)
}


"getValue.GCC::Node::component_ref" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  ops = ops(node)
  structure(getValue(ops[[2]]),
            names = getValue(ops[[1]]))
}


"getValue.GCC::Node::identifier_node" =
function(node, defaultValue = NA, symbolic = FALSE) {
  node[["string"]]
}



"getValue.GCC::Node::real_cst" =
function(node, defaultValue = NA, symbolic = FALSE) {
   if("valu" %in% names(node))
      as.numeric(node[["valu"]])
   else
      defaultValue
}


"getValue.GCC::Node::var_decl" =
  #
  # Add symbolic argument which would just return the name of the argument.
  #
function(node, defaultValue = NA, symbolic = FALSE)
{
  #XXX
   return(structure(getNodeName(node), class = "VariableDeclaration"))
  
  if(symbolic)
    return(getNodeName(node))

  if("init" %in% names(node))
    getValue(node[["init"]])
  else
    structure(getNodeName(node), class = "VariableDeclaration")
}
 

"getValue.GCC::Node::const_decl" =
  #
  # XXX need to fix.
  #
function(node, defaultValue = NA, symbolic = FALSE)
{
  val = getValue(node[["cnst"]], defaultValue)
  if("name" %in% names(node)) {
     # browser() # below was node[["name"]]$string. Checking stack overflow.
     names(val) = node[["name"]][["string"]]
  }
  val
}

"getValue.GCC::Node::nop_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  while(any(inherits(node, c("GCC::Node::nop_expr", "GCC::Node::addr_expr")))) {
     node = ops(node)[[1]]
   }

  getValue(node, defaultValue)
}  

## truth_not_expr

"getValue.GCC::Node::target_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  v = node[["init", convert = FALSE]]
  getValue(v, defaultValue)
}

"getValue.GCC::Node::call_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  e = expression(f())[[1]]
  e[[1]] = getValue(node[["fn", convert = FALSE]], defaultValue)
  
  if("args" %in% names(node)) {
    args = getValue(node[["args", convert = FALSE]], defaultValue, symbolic)
    e[1 + (1:length(args))] = args
  }
  e
}

"getValue.GCC::Node::negate_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
   getValue( node[["op"]], defaultValue, symbolic )
}

"getValue.GCC::Node::addr_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  ops = ops(node)
  if(length(ops) != 1)
    warning("getValue for addr_expr with number of operands != 1")
  getValue(ops[[1]], defaultValue)  
}


"getValue.GCC::Node::constructor" =
  #
  # XXX need to fix.
  #
function(node, defaultValue = NA, symbolic = FALSE)
{
  # idx = sapply(node[["idx"]], getValue) + 1L
  # browser()
  sapply(node[["val"]], getValue)
}


"getValue.GCC::Node::aggr_init_expr" =
  #
  # chase the "fn" element down and see if we can build up a symbolic 
  # computation to do the call.  Need the particular routine/method being
  # called and then the arguments from this node.
  # When turning this into an expression in R for the default value, we need
  # to find the corresponding R function from the "fn" element.
function(node, defaultValue = NA, symbolic = FALSE)
{
#  warning("unhandled case for getValue - aggr_init_expr for node ", node[["INDEX"]])
#  return(NA)
  
  args = getUnnamedParameters(node[["args", convert = FALSE]])
  structure(list(args = args,
                 functionId = node[["fn", convert = FALSE]]), #XXX need convert?
            class = "InitializerValue")
}

"getValue.GCC::Node::lt_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  e = expression(a < b)[[1]]
  op = ops(node)
  e[[2]] = getValue(op[[1, convert = FALSE]], defaultValue, symbolic)
  e[[3]] = getValue(op[[2, convert = FALSE]], defaultValue, symbolic)
  e
}

"getValue.GCC::Node::truth_andif_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  e = expression(a && b)[[1]]
  op = ops(node)
  e[[2]] = getValue(op[[1, convert = FALSE]], defaultValue, symbolic)
  e[[3]] = getValue(op[[2, convert = FALSE]], defaultValue, symbolic)
  e
}

"getValue.GCC::Node::truth_not_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  e = expression(!a)[[1]]
  op = ops(node)
  e[[2]] = getValue(op[[1, convert = FALSE]], defaultValue, symbolic)
  e
}



"getValue.GCC::Node::if_stmt" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  e = expression(if(x) {y})[[1]]
  e[[2]] = getValue(node[["cond", convert = FALSE]], defaultValue, symbolic)
  e[[3]] = getValue(node[["then", convert = FALSE]], defaultValue, symbolic)
  if("else" %in% names(node))
     e[[4]] = getValue(node[["else", convert = FALSE]], defaultValue, symbolic)

  e
}


"getValue.GCC::Node::indirect_ref" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  op = ops(node)
#  if(!inherits(op, "PerlArrayReference"))
#    stop("Expecting a PerlArrayReference in getValue.....indirect_ref")

  if(length(op) != 1)  # .PerlLength(op)
     warning("getValue.GCC::Node::indirect_ref: expected an operand with only one element")

  getValue(op[[1]], defaultValue)
}


"getValue.GCC::Node::bit_ior_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  op = ops(node)
  a = getValue(op[[1, convert = FALSE]], defaultValue)
  b = getValue(op[[2, convert = FALSE]], defaultValue)
  structure(list(a, b), class = "bit_ior")
}

"getValue.GCC::Node::bit_and_expr" =
  # BTW, bit_and_expr may have a @type attribute.
function(node, defaultValue = NA, symbolic = FALSE)
{
  op = ops(node) 
  a = getValue(op[[1, convert = FALSE]], defaultValue)
  b = getValue(op[[2, convert = FALSE]], defaultValue)
  structure(list(a, b), class = "bit_and")
}
"getValue.GCC::Node::bit_xor_expr" =
function(node, defaultValue = NA, symbolic = FALSE)
{
  op = ops(node)
  a = getValue(op[[1, convert = FALSE]], defaultValue)
  b = getValue(op[[2, convert = FALSE]], defaultValue)
  structure(list(a, b), class = "bit_xor")
}

# XXX scope_ref

"getValue.GCC::Node::scope_ref" =
function(node, defaultValue = NA, symbolic = FALSE)
{
#  if(length(names(node)) == 0 || all(names(node) %in% c("INDEX", "position")))
#    return(NULL)

   NULL
}  



"getValue.GCC::Node::cast_expr" =
function(node, defaultValue = NA, symbolic = FALSE) {
  getValue(node[["type"]], defaultValue, symbolic)
}

"getValue.GCC::Node::template_type_parm" =
function(node, defaultValue = NA, symbolic = FALSE) {
  if(length(node[["type"]]))
     getValue(node[["type"]], defaultValue, symbolic)
  else {
      getNodeName(node[["name"]])
  }
}


"getValue.GCC::Node::tree_list" =
function(node, defaultValue = NA, symbolic = FALSE) {
   ans = list()
   while(TRUE) {
      ans[[length(ans) + 1]] = getValue(node[["valu", convert = FALSE]], defaultValue, symbolic)
      if(!("chan" %in% names(node)))
          break
      node = node[["chan", convert = FALSE]]
   }
   ans
}
