# Need to remove parameters  that are local but that alias/mask global variables
# Also, need to compare ids rather than names.

#XXX Todo
# Identify globals that are const and "ignore" those. Can be done outside of the search.
# Identify which variables are modified as opposed to merely the value being accessed.
# Identify which should be declared const.
# Identify which can be accessed "atomically" ??
# deal with masked variables  (parameters (done), local declarations, target_expr)

# See c-tree.texi for target_expr explanation. It is a temporary variable.


# May need to make the options(expressions) larger, e.g. 10000
# Some of these recursive calls can get big, e.g. Query in par.c

setGeneric("freeVariables",
             function(def, nodes, vars = list()) {
#              cat("<freeVariables>", def[["INDEX"]], class(def)[1],"\n")
                  i = match(class(def)[1], WalkOperand)
                  if(!is.na(i))
                    return(getFromOperands(nodes, def, vars, freeVariables ))
                  
                  i = match(class(def)[1], names(WalkFields))
                  if(!is.na(i))
                    return(getFromFields(WalkFields[[i]], nodes, def, vars, freeVariables))

                 standardGeneric("freeVariables")
#                 cat("</freeVariables>", def[["INDEX"]], "\n")
             })


# We store the names of the classes for which we did not have a method
# so that we can debug.
#
#  caught identifier_node and result_decl
#

UndefFreeVariables = new.env(TRUE)
ignoreClasses = paste("GCC::Node", c("integer_cst", "string_cst"), sep = "::")


setMethod("freeVariables", "RoutineNodeList",
             function(def, nodes, vars = list()) {
                lapply(def, freeVariables, nodes, vars)
             })

setMethod("freeVariables", "ANY",
             function(def, nodes, vars = list()) {
               if(!(class(def)[1] %in% ignoreClasses))
                   assign(class(def)[1], TRUE, UndefFreeVariables)
               character()
             })



# Do this iteratively rather than recursively,
# assumes we only see tree_lists all the way down.
setMethod("freeVariables", "GCC::Node::tree_list",
             function(def, nodes, vars = list()) {
               ans = character()
               while(TRUE) {
                 ans = c(ans, getFromFields(c("value", "purp"), nodes, def, vars, freeVariables))
                  if(!( "chan" %in% names(def)))
                    break
                 def = def[["chan"]]
               }
               ans
             })


#     "GCC::Node::tree_list" = c("valu", "purp", "chan"),     



# Avoids defining the function parameter list
# which is the same as the generic and so
# can be retreved from that.  If we change the
# generic, then we can re-run this code and
# nothing else needs to be changed except the
# functions that use the new parameter.
SetMethod = function(name, sig, body, ...)
  {
    g = getGeneric(name)
    body = substitute(body)
    body(g) = body
    setMethod(name, sig, g, ...)
  }



setMethod("freeVariables",
          "NativeRoutineDescription" ,
function(def, nodes, vars = list())
{
  d = nodes [[ def[["INDEX"]] ]]

  freeVariables(d, nodes, vars)
}  
)

setMethod("freeVariables",
    "GCC::Node::function_decl",
     function(def, nodes, vars = list())
     {
       # type = def[["type", convert = FALSE]]

       params = getParameters(def)
       idx = match(names(params), names(vars))
       if(any(!is.na(idx)))
         vars = vars[ - idx[!is.na(idx)] ]

       b = def[["body"]]

       unique(freeVariables(b, nodes, vars))
     }
)

          # Deal with code blocks that define local variables. 
          # Need to handle all the different types of nodes.

getFromFields =
function(fields, nodes, def, vars, fun)
{
#  cat("<getFromFields>", def[["INDEX"]], class(def)[1], paste(fields, collapse = ", "), "\n")
  fieldNames = names(def)
  unlist(lapply(fields,
                  function(el) {
                     if(el %in% fieldNames)
                        fun(def[[ el]], nodes, vars)
                  }))
}  


getFromOperands =
function(nodes, def, vars, fun)  
{
# cat("<getFromOperands>", def[["INDEX"]], class(def)[1],"\n")  
 ops = def[["operand"]]
 ans = unlist(lapply(seq(length = .PerlLength(ops)), function(i) fun(ops[[i]], nodes, vars)))
 unique(ans)
}


setMethod("freeVariables", "GCC::Node::var_decl",
          function(def, nodes, vars = list()) {
             yes = (as.numeric(def[["INDEX"]]) + 1) %in% vars


#             cat("Looking at", id, "in", paste(names(vars), collapse = ", "), "\n")

             if(yes) {
               id = getNodeName(def)
#               cat("<match>", id, "\n")
               return(id)
             }

             character()
          })


WalkFields =
list(
     "GCC::Node::compound_stmt" = c("body", "next"),
     "GCC::Node::scope_stmt" = "next",
     "GCC::Node::label_stmt" = "next",
     "GCC::Node::break_stmt" = "next",     
     "GCC::Node::case_label" = "next",     
     "GCC::Node::tree_stmt" = c("valu", "purp", "chan"), # valid?
     "GCC::Node::return_stmt" = "expr",     
     "GCC::Node::if_stmt" = c("cond", "then", "else", "next"),
     "GCC::Node::for_stmt" = c("init", "cond", "expr", "next", "body"),
     "GCC::Node::while_stmt" = c("cond", "body", "next"),
     "GCC::Node::do_stmt" = c("cond", "body", "next"),
     "GCC::Node::decl_stmt" = c("decl", "next"),
     "GCC::Node::expr_stmt" = c("expr", "next"),
     "GCC::Node::call_expr" = c("args"), # fn also?
     "GCC::Node::switch_stmt" = c("cond", "body", "next")
     )  

#XXX target_expr - see if it masks a variable
     "GCC::Node::target_expr" = c("decl", "init") #XXX

WalkOperand =
 c(       "GCC::Node::init_expr",
          "GCC::Node::cond_expr",
          "GCC::Node::lt_expr",
          "GCC::Node::ne_expr",
          "GCC::Node::le_expr",
          "GCC::Node::gt_expr",
          "GCC::Node::ge_expr",
          "GCC::Node::eq_expr",

          "GCC::Node::bit_and_expr",
          "GCC::Node::bit_or_expr",   
          
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

          "GCC::Node::float_expr",
   
          "GCC::Node::addr_expr",
          "GCC::Node::modify_expr",

         "GCC::Node::plus_expr",
         "GCC::Node::minus_expr",
         "GCC::Node::mult_expr",
         "GCC::Node::nop_expr",
         "GCC::Node::convert_expr",
         "GCC::Node::non_lvalue_expr",
         "GCC::Node::save_expr",
         "GCC::Node::postincrement_expr",
         "GCC::Node::postdecrement_expr"      
   
)
          


# switch_stmt

#string_cst
# integer_cst
# field_decl
# parm_decl


# 
# freeVariables(r$SortNodes, p)
