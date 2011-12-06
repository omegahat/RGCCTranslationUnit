#
# The idea here is to find the size/length of a dynamic length array
# given by a pointer.  We are interested in finding the symbolic
# expression that tells us the length of this array.  For example,
# in a
#

getModifyFieldExpressions =
function(p, fields, mods = getAll(p, "GCC::Node::modify_expr"))
{
  w = sapply(mods, assignsToField, fields)
  if(!any(w))
    return(list())
  # Now find the type and name of the object whose field
  # is being accessed.
  # And then filter on this and get the rhs.
  mods = mods[w]
  rhs = lapply(mods,
               function(mod) {
                 ops = mod[["operand"]]
                 rhs = ops[[2]]

                 ops = mod[["operand"]]
                 obj = ops[[1]]
                 # Follow obj and get its var_decl or parm_decl.
                 # If it is a computation, i.e. not a "literal" name,
                 # then we are in trouble at this early point.
                 
                 list(obj = obj, rhs = rhs, mod = mod)
               })
  rhs
}


assignsToField =
function(mod, fields) {
  ops = mod[["operand"]]
  lhs = ops[[1]]
  
  if(!inherits(lhs, "GCC::Node::component_ref"))
    return(FALSE)

  ops = lhs[["operand"]]
  lhs = ops[[2]]
  print(getNodeName(lhs))
  getNodeName(lhs) %in% fields
}
