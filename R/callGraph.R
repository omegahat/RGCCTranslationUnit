# library(RGCCTranslationUnit) ; tu = parseTU("inst/examples/callGraph.cpp.tu"); r = getRoutines(tu, "callGraph")
# f  = tu [[ r$b$index ]]
# b = f[["body", convert = FALSE]]
# getCallGraph(tu, b)

# constructor

#XXX Change the signature of the generic, ... to be def, nodes
# and no default for getRoutines() unless we are prepared to do the
# entire thing.  Which is reasonable.


  # Maybe add additional arguments:
  # follow is a list of the indices that we are interested in following.
  # Can filter these out later.
  # May want to stay within this same file, i.e. routines defined within the same file as the routine being processed.
  


setGeneric("getCallGraph",
            function(nodes, defs = getRoutines(nodes), visited = new.env()) {
#                cat(class(defs)[1], "   ", defs[["INDEX"]], "\n")

                if("INDEX" %in% names(defs)) {
              
                  idx = defs[["INDEX"]]

                  if(is.numeric(idx))
                     idx = names(idx)
                
                  if(exists(idx, visited)) 
                    return(integer())
                }
                
                ans = standardGeneric("getCallGraph")

                if("INDEX" %in% names(defs)) 
                  assign(idx, TRUE, envir = visited)

                ans
            })

setMethod("getCallGraph", c(defs = "RoutineNodeList"),
            function(nodes, defs = getRoutines(nodes), visited = new.env())  {
               lapply(defs, function(x) getCallGraph(nodes, x, visited))
             }) 


setMethod("getCallGraph", c(defs = "NativeRoutineDescription"),
            function(nodes, defs = getRoutines(nodes), visited = new.env())  {
               getCallGraph(nodes, nodes[[ defs$INDEX ]], visited)
             }) 


setMethod("getCallGraph", c(defs = "missing"),
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  cat("getCallGraph mssing defs\n")
  # Go through the body of each routine and each expression, etc

  lapply(defs, function(x) {
                 def = nodes[[ x ]]
                 if(!("body" %in% names(def)))
                    return(integer())
                  # Do we need to check wheter it is undefined
                  # defined in this file, etc.
                 
                 getCallGraph(nodes, def[["body"]], visited)
                })
          
})


tmp = function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  # XXX if C++, need to chase down the default values for parameters.
    if(! ("body" %in% names(defs)))
      return(integer())
    
    b = defs[["body"]]
    ans = getCallGraph(nodes, b, visited)

    if("next" %in% names(defs))
      ans = c(ans, getCallGraph(nodes, defs[["next"]], visited))

    ans
}

setMethod("getCallGraph", c(defs = "GCC::Node::compound_stmt"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::function_decl"), tmp)
rm(tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::scope_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  if(! ("next" %in% names(defs)))
     return(integer())

  getCallGraph(nodes, defs[["next"]], visited)
})

setMethod("getCallGraph", c(defs = "GCC::Node::expr_stmt"),
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("expr", "next"), nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::tree_list"),
# Avoid the recursive call and do it iteratively to avoid
# blowing the stack. The recursive version works except
# we are seeing problems with, e.g., graphics.c when we
# enocunter a very large constructor/initialization
# with 800 or so elements of an array, i.e. the ColorDatabase.
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  # getCallGraphFromFields(c("valu", "purp", "chan"), nodes, defs, visited)  
  ans = numeric()

  while(TRUE) {
    ans = c(ans, getCallGraphFromFields(c("valu", "purp"), nodes, defs, visited))
    if(! ("chan" %in% names(defs)))
      break
      
    defs = defs[["chan", convert = FALSE]]
  }
  ans
})




setMethod("getCallGraph", c(defs = "GCC::Node::decl_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  d = defs[["decl", convert = FALSE]]
  
  ans = getCallGraph(nodes, d, visited)
  if("next" %in% names(defs))
     ans = c(ans, getCallGraph(nodes, defs[[ "next", convert = FALSE ]], visited))
  ans
})


setMethod("getCallGraph", c(defs = "GCC::Node::for_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("init", "cond", "expr", "body", "next"),
                         nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::target_expr"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("next"),
                         nodes, defs, visited)
})



setMethod("getCallGraph", c(defs = "GCC::Node::label_stmt"),
#XXX what about labl
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields("next", nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::break_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields("next", nodes, defs, visited)
})

setMethod("getCallGraph", c(defs = "GCC::Node::goto_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields("next", nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::case_label"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields("next", nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::switch_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("cond", "body","next"), nodes, defs, visited)
})



setMethod("getCallGraph", c(defs = "GCC::Node::constructor"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields("elts", nodes, defs, visited)
})


setMethod("getCallGraph", c(defs = "GCC::Node::while_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("cond", "body", "next"), nodes, defs, visited)
})

setMethod("getCallGraph", c(defs = "GCC::Node::do_stmt"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  getCallGraphFromFields(c("cond", "body", "next"), nodes, defs, visited)
})

getCallGraphFromFields =
function(fields, nodes, defs = getRoutines(nodes), visited = new.env())
{
#  cat("<getCallGraphFromFields>", defs[["INDEX"]], "\n")
  fieldNames = names(defs)
  unlist(lapply(fields,
                  function(el) {
                     if(el %in% fieldNames)
                        getCallGraph(nodes, defs[[ el, convert = FALSE ]], visited)
                  }))
}  

setMethod("getCallGraph", c(defs = "GCC::Node::var_decl"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
   # Need to only visit this node once.
  if("init" %in% names(defs))
     getCallGraph(nodes, defs[[ "init", convert = FALSE ]], visited)
  else
     integer()
})



setMethod("getCallGraph", c(defs = "ANY"),
             function(nodes, defs = getRoutines(nodes), visited = new.env()) {
                 if(!inherits(defs, c("GCC::Node::integer_cst", "GCC::Node::result_decl",
                                      "GCC::Node::string_cst", "GCC::Node::bit_field_ref",
                                      "GCC::Node::real_cst", "GCC::Node::string_cst",
                                      "GCC::Node::error_mark",
                                      "GCC::Node::continue_stmt", "GCC::Node::addr_expr")))
                   cat("* FIXME * Default/degenerate method for getCallGraph for", class(defs), ".  Please report to maintainer of the package\n")

                  ans = integer()
                 if("next" %in% names(defs))
                   return(getCallGraph(nodes, defs[["next", convert = FALSE]], visited)) 

                 integer()
         }) 


setMethod("getCallGraph", c(defs = "GCC::Node::return_stmt"),
             function(nodes, defs = getRoutines(nodes), visited = new.env())
               if("expr" %in% names(defs))
                 getCallGraph(nodes, defs[["expr", convert = FALSE]], visited)
               else
                 integer()
         )

setMethod("getCallGraph", c(defs = "GCC::Node::if_stmt"),
             function(nodes, defs = getRoutines(nodes), visited = new.env()) {
                 getCallGraphFromFields(c("cond", "then", "else", "next"), nodes, defs, visited)
         })



if(USE_PERL_TU_PARSER) {

   # Nicer way to do this, but need to stop Perl converting the operand objects.  
   #     unlist(lapply(defs[["operand", convert = FALSE]], function(x) getCallGraph(nodes, x)))
tmp =
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
# cat("<getCallGraphFromOperands>", defs[["INDEX"]], "\n") 
 ops = defs[["operand", convert = FALSE]]
 unlist(lapply(seq(length = .PerlLength(ops)), function(i) getCallGraph(nodes, ops[[i, convert = FALSE]], visited)))
}

setMethod("getCallGraph", c(defs = "GCC::Node::rshift_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::lshift_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::negate_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::bit_ior_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::trunc_mod_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::bit_and_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::init_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::cond_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::modify_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::abs_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::lt_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::ne_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::le_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::ge_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::gt_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::eq_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::fix_trunc_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::nop_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::convert_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::array_ref"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::save_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::compound_expr"), tmp)

#XXX probably only need to follow the first op. Second one is field name.
setMethod("getCallGraph", c(defs = "GCC::Node::component_ref"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::indirect_ref"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::non_lvalue_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::plus_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::minus_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::mult_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::rdiv_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::trunc_div_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::floor_div_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::ceil_div_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::round_div_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::truth_andif_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::truth_orif_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::postincrement_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::preincrement_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::predecrement_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::postdecrement_expr"), tmp)
setMethod("getCallGraph", c(defs = "GCC::Node::postincrement_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::addr_expr"), tmp)

setMethod("getCallGraph", c(defs = "GCC::Node::float_expr"), tmp)

#setMethod("getCallGraph", c(defs = "GCC::Node::result_decl"), tmp)
}

setMethod("getCallGraph", c(defs = "GCC::Node::parm_decl"),
function(nodes, defs = getRoutines(nodes), visited = new.env()) {
  #XXX what about default values?
   if(isCPlusPlus(nodes))
      warning("Ignoring GCC::Node::parm_decl in getCallGraph")
   integer()
})

setMethod("getCallGraph", c(defs = "GCC::Node::field_decl"),
function(nodes, defs = getRoutines(nodes), visited = new.env()) {
  #XXX can we ever have an initialization here.
   warning("Ignoring GCC::Node::field_decl in getCallGraph")
   integer()
})



getCallInfo =
  # This is the function that actually identifies the routine being
  # called. It is not a method for getCallGraph as we only call it
  # when we have a call_expr with a relevant type in the fn field.
  # Note: this not to be set as the method for getCallGraph for
  #  GCC::Node::addr_expr.
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
    # Looking for the 'op 0' attribute
  f = defs[["operand", convert = FALSE]]
  fun = f[1, convert = FALSE]

  if(inherits(fun, c("GCC::Node::string_cst")))
    return(integer(0))

  #XXX Assuming it is a function_decl, and not a pointer to a routine.
  # return the position in array of nodes of the function definition
  # and put its name on it.
  idx = getIndex(fun)

  names(idx) = getNodeName(fun)  
 
  if(length(grep("^[0-9]+$", names(idx))) > 0)
    warning("Including an unsual node from class ", class(fun), ". Please report to maintainer of the package.")

  idx
}

setMethod("getCallGraph", c(defs = "GCC::Node::call_expr"), 
function(nodes, defs = getRoutines(nodes), visited = new.env())
{
  f = defs[["fn", convert = FALSE]]
  
#  tmp = getCallGraph(nodes, f, visited)
  if(inherits(f, "GCC::Node::addr_expr")) {
    ans = getCallInfo(nodes, f, visited)    # getCallGraph(nodes, f, visited)
  } else 
    ans = integer()

    # follow the arguments
  if("args" %in% names(defs)) {
    tmp = getCallGraph(nodes, defs[["args", convert = FALSE]], visited)
    ans = c(ans, tmp)
  }

  ans
})


