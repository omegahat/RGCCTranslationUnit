#
# This will recursively walk nodes
#  following relevant references to find
# places where parameters are modified.

# The basic strategy starts out as follows:
#
# 1) identify the mutable parameters,
#    e.g. of type PointerType or C++ReferenceType
#
# 2) follow the code and find out where the parameters are modified
#
# 3) if any expression assigns a parameter to a (local) variable,
#    follow that variable from that point on.
#    (May get complicated with variables defined within a sub-scope/block of
#     the routine, but recursion will help us here by passing new variables down, but
#     not up.)
#
#  4) if a parameter is passed to another routine, identify whether that is an in/inout argument.
#

#
#  msa_partition_by_category is a good one.
#  The cats_to_do parameter can be NULL in which case
#  a local variable is allocated and mutate. Otherwise,
#  the local variable is set to this parameter input.
#  So it is a conditional inout and the test is quite
#  simple.
#

setGeneric("getInOutArgs",
           function(routine, nodes, params = list()) {
#             cat("getInOutArgs ", class(routine)[1], ifelse(inherits(routine, "PerlReference"), routine[["INDEX"]], ""), "\n")
               standardGeneric("getInOutArgs")
#              cat("<result getInOutArgs>", class(ans)[1], length(ans), "\n")
           })



setMethod("getInOutArgs", c("ResolvedNativeRoutine", "TUParser"),  # "GCC::TranslationUnit::Parser"),
          function(routine, nodes, params = list()) {
            params = getMutableParameters(routine)

            if(length(params) == 0)
              return(list())
            
            decl = nodes[[ routine[["INDEX"]], convert = FALSE ]]
            idx = getInOutArgs(decl, nodes, params) 
            routine$parameters[ idx ]
          })


tmp =
 function(routine, nodes, params = list()) {
   if(!("body" %in% names(routine)))
     stop("No body available in ", routine[["INDEX"]])

      #XXX what about the "next" field also.
     
   getInOutArgs(routine[["body", convert = FALSE]], nodes, params)
}  

setMethod("getInOutArgs", "GCC::Node::function_decl", tmp)
setMethod("getInOutArgs", "GCC::Node::compound_stmt", tmp)

rm(tmp)

setMethod("getInOutArgs", "GCC::Node::scope_stmt",
             function(routine, nodes, params = list()) {          
                 if(! ("next" %in% names(routine)))
                   return(character())

                 getInOutArgs(routine[["next", convert = FALSE]], nodes, params)
               })

setMethod("getInOutArgs",  "GCC::Node::tree_list",
function(routine, nodes, params = list()) {          
  getInOutArgsFromFields(c("valu", "purp", "chan"), routine, nodes, params)
})



setMethod("getInOutArgs", c("GCC::Node::return_stmt"),
         function(routine, nodes, params = list())
               getInOutArgs(routine[["expr", convert = FALSE]], nodes, params)
         )

setMethod("getInOutArgs", c( "GCC::Node::if_stmt"),
         function(routine, nodes, params = list())
                 getInOutArgsFromFields(c("cond", "then", "else", "next"), routine, nodes, params)
         )


getInOutArgsFromFields =
function(fields, routine, nodes, params = list())
{
#  cat("<getInOutArgsFromFields>", class(routine), "\n")  
  fieldNames = names(routine)
  
  ans = unlist(lapply(fields,
                  function(el) {
                     if(el %in% fieldNames)
                        getInOutArgs(routine[[ el, convert = FALSE ]], nodes, params)
                     # manage new params
                  }))

  unique(ans)
}  


setMethod("getInOutArgs", c("GCC::Node::var_decl"),
         function(routine, nodes, params = list())          
{
  ans  = 
  if("init" %in% names(routine))
     getInOutArgs(routine[[ "init", convert = FALSE ]], nodes, params)
  else
     list()
#browser()
  ans
})


setMethod("getInOutArgs", c("GCC::Node::call_expr"), 
function(routine, nodes, params = list())
{
   # Check it isn't an actual call but rather and addr_expr.
  funName = getNodeName(routine[["fn", convert = FALSE]])
#  cat("getInOutArgs::call_expr", getNodeName(routine[["fn", convert = FALSE]]), "\n")

  if("args" %in% names(routine))
     ans = names(params)[refersTo(routine[["args", convert = FALSE]], params, nodes)]
                                        # getInOutArgs(routine[["args", convert = FALSE]], nodes, params)
  else
     ans = character()
  
  if(length(ans))
    cat("found references to mutable parameters", paste(ans, collapse = ", "), "in call to", funName, ". Need to resolve that routine.\n")
  ans
})


setMethod("getInOutArgs", c("GCC::Node::for_stmt"), 
function(routine, nodes, params = list())
{
  getInOutArgsFromFields(c("init", "cond", "expr", "body", "next"),
                         routine, nodes, params)
})

tmp = function(routine, nodes, params = list())
{
  getInOutArgsFromFields(c("cond", "body", "next"), routine, nodes, params)
}

setMethod("getInOutArgs", c("GCC::Node::while_stmt"), tmp)
setMethod("getInOutArgs", c("GCC::Node::do_stmt"), tmp)



setMethod("getInOutArgs", c("GCC::Node::decl_stmt"), 
function(routine, nodes, params = list())
{
  d = routine[["decl", convert = FALSE]]
  
  ans = getInOutArgs(d, nodes, params)
  if("next" %in% names(routine))
     ans = c(ans, getInOutArgs( routine[[ "next", convert = FALSE ]], nodes, params))
  ans
})




if(USE_PERL_TU_PARSER) {
tmp =
function(routine, nodes, params = list())
{  
 ops = routine[["operand", convert = FALSE]]
 ans = unlist(lapply(seq(length = .PerlLength(ops)), function(i) getInOutArgs(ops[[i, convert = FALSE]], nodes, params)))
 unique(ans)
}

sapply(c( "GCC::Node::init_expr",
          "GCC::Node::cond_expr",
           "GCC::Node::lt_expr",
          "GCC::Node::ne_expr",
          "GCC::Node::le_expr",
          "GCC::Node::gt_expr",
          "GCC::Node::ge_expr",
          "GCC::Node::eq_expr",
          
          "GCC::Node::nop_expr",
          "GCC::Node::convert_expr",
          
          "GCC::Node::array_ref",
          
          "GCC::Node::save_expr",
          
          "GCC::Node::compound_expr",
          
          "GCC::Node::component_ref",
          "GCC::Node::indirect_ref",
          
          "GCC::Node::non_lvalue_expr",
          
          "GCC::Node::plus_expr",
          "GCC::Node::minus_expr",
          "GCC::Node::mult_expr",
          "GCC::Node::rdiv_expr",
          "GCC::Node::trunc_div_expr",
          "GCC::Node::floor_div_expr",
          "GCC::Node::ceil_div_expr",
          "GCC::Node::round_div_expr",
          
          "GCC::Node::truth_andif_expr",
          "GCC::Node::truth_orif_expr",
          "GCC::Node::postincrement_expr",
          
          "GCC::Node::addr_expr"),
 function(k)
       setMethod("getInOutArgs", k, tmp))
}



setMethod("getInOutArgs", "ANY",
             function(routine, nodes, params = list()) {
                 if(!any(inherits(routine, c("GCC::Node::integer_cst", "GCC::Node::result_decl",
                                         "GCC::Node::string_cst",
                                         "GCC::Node::continue_stmt", "GCC::Node::addr_expr"))))
                   cat("* FIXME * Default/degenerate method for getInOutArgs for", class(routine), ".  Please report to maintainer of the package\n")


                 if("next" %in% names(routine))
                   return(getInOutArgs(routine[["next", convert = FALSE]], nodes, params)) 

                 character()
         }) 


setMethod("getInOutArgs",
          "GCC::Node::parm_decl",
          function(routine, nodes, params = list()) {character()})
setMethod("getInOutArgs",
          "GCC::Node::field_decl",
          function(routine, nodes, params = list()) {character()})

# XXX Need to follow this for inout args to see if the init
# references any of the parameters.
setMethod("getInOutArgs",
          "GCC::Node::var_decl",
          function(routine, nodes, params = list()) { character()})

setMethod("getInOutArgs",
          "GCC::Node::expr_stmt",
         function(routine, nodes, params = list()) {
            ans = getInOutArgs(routine[["expr", convert = FALSE]], nodes, params)
            if("next" %in% names(routine))
              ans = c(ans,  getInOutArgs(routine[["next", convert = FALSE]], nodes, params))
            ans
         })

setMethod("getInOutArgs",
          "GCC::Node::modify_expr",
         function(routine, nodes, params = list()) {  
            ops = routine[["operand", convert = FALSE]]
            lhs = ops[[1, convert = FALSE]]
            w = refersTo(lhs, params, nodes)
            names(params[w])
#            w
         })

##############################################################################################################

# Returns a logical with element for each parameter.
setGeneric("refersTo",
           function(node, params, nodes) {
#             cat("refersTo", class(node)[1], node[["INDEX"]], getNodeName(node), "\n")             
             standardGeneric("refersTo")
           })


setMethod("refersTo", "GCC::Node::component_ref",
          function(node, params, nodes) {
             ops = node[["operand", convert = FALSE]]
             # second entry is just the field_decl (?)
             refersTo(ops[[1, convert = FALSE]], params, nodes)
          })

setMethod("refersTo", "GCC::Node::indirect_ref",
          function(node, params, nodes) {
             ops = node[["operand", convert = FALSE]]
             refersTo(ops[[1, convert = FALSE]], params, nodes)
          })


if(USE_PERL_TU_PARSER) {
refersToOperand =
function(node, params, nodes)
{  
  ops = node[["operand", convert = FALSE]]
  ans = rep(FALSE, length(params))
  for(i in seq(length = .PerlLength(ops)))
    ans = ans | refersTo(ops[[i, convert = FALSE]], params, nodes)
  ans
}

setMethod("refersTo", "GCC::Node::plus_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::mult_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::minus_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::nop_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::convert_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::non_lvalue_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::save_expr", refersToOperand)
setMethod("refersTo", "GCC::Node::addr_expr", refersToOperand)
}

setMethod("refersTo", "GCC::Node::string_cst", function(node, params, nodes) rep(FALSE, length(params)))

setMethod("refersTo", "GCC::Node::call_expr",
           function(node, params, nodes) {
             cat("refersTo::call_expr", getNodeName(node[["fn", convert = FALSE]]), "\n")
                 # Deal with fn element.
              if("args" %in% names(node))
                ans =  refersTo(node[["args", convert = FALSE]], params, nodes)
              else
                ans = rep(FALSE, length(params))

              if(any(ans))
                cat("refersTo:  function", getNodeName(node[["fn", convert = FALSE]]), "call with mutable parameters", names(params)[ans], "\n")
              ans
             })


setMethod("refersTo", "GCC::Node::tree_list",
           function(node, params, nodes) {
                 # Deal with fn element.
              ans = rep(FALSE, length(params))
              nodeNames = names(node)
              for(i in c("purp", "valu", "chan")) {
                if(i %in% nodeNames)
                ans = ans | refersTo(node[[i, convert = FALSE]], params, nodes)
              }
              ans
             })



# Do nothing!
setMethod("refersTo", "GCC::Node::integer_cst", function(node, params, nodes) { rep(FALSE, length(params))})


tmp =
  #
  # See if this node is in our params list.
  #
function(node, params, nodes)
{
  ans = params %in% node[["INDEX"]] # %in% params
  names(ans) = names(params)
  ans
}
setMethod("refersTo", "GCC::Node::parm_decl", tmp)
setMethod("refersTo", "GCC::Node::var_decl", tmp)

rm(tmp)


####################################################################################################################

getMutableParameters =
function(routine)
{
 w = sapply(routine$parameters, function(x)  {
                                   if(is(x$type, "PointerType")) {
                                      return(!("const" %in% x$type@qualifiers) &&
                                              !("const" %in% x$type@type@qualifiers))
                                   }
                                   else if(is(x$type, "C++ReferenceType"))
                                     return(!("const" %in% x$type@qualifiers))

                                   FALSE
                                 })

 if(!any(w))
   return(list())
 
 unlist(lapply(routine$parameters[w], function(x) names(x$INDEX)))
}  


