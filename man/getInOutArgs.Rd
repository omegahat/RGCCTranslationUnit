\name{getInOutArgs}
\alias{getInOutArgs}
\alias{getInOutArgs,GCC::Node::function_decl,ANY-method}
\alias{getInOutArgs,GCC::Node::compound_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::scope_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::tree_list,ANY-method}
\alias{getInOutArgs,GCC::Node::return_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::if_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::var_decl,ANY-method}
\alias{getInOutArgs,GCC::Node::call_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::for_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::while_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::do_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::decl_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::init_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::cond_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::lt_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::ne_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::le_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::gt_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::ge_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::eq_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::nop_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::convert_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::array_ref,ANY-method}
\alias{getInOutArgs,GCC::Node::save_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::compound_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::component_ref,ANY-method}
\alias{getInOutArgs,GCC::Node::indirect_ref,ANY-method}
\alias{getInOutArgs,GCC::Node::non_lvalue_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::plus_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::minus_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::mult_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::rdiv_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::trunc_div_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::floor_div_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::ceil_div_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::round_div_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::truth_andif_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::truth_orif_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::postincrement_expr,ANY-method}
\alias{getInOutArgs,GCC::Node::addr_expr,ANY-method}
\alias{getInOutArgs,ANY,ANY-method}
\alias{getInOutArgs,GCC::Node::parm_decl,ANY-method}
\alias{getInOutArgs,GCC::Node::field_decl,ANY-method}
\alias{getInOutArgs,GCC::Node::expr_stmt,ANY-method}
\alias{getInOutArgs,GCC::Node::modify_expr,ANY-method}
\alias{getInOutArgs,ResolvedNativeRoutine,TUParser-method}
\title{Determine which parameters are also output values}
\description{
  This function (and the collection of supporting methods
  for recursive processing of the nodes)
  attempts to determine whether any of the mutable parameters,
  i.e. pointers or references, are actually modified
  with the body of the routine. If they are, these are
  probably out variables that we would want to return
  to the R user in a call to the specified routine.

  This is incomplete at present and more a working
  prototype for people to add methods for new cases.

  It does not try to determine inout variables, but
  just out.  An inout parameter is one whose value 
  is also used as an input to the code, i.e.
  is on the right hand side or in a call to another routine
  within the code and not just assigned a value.
  
}
\usage{
getInOutArgs(routine, nodes, params = list())
}
\arguments{
  \item{routine}{the resolved routine of interest.
    In the future, we will add support for working with the
    simple routine description or node returned from
    \code{\link{getRoutines}}, i.e. one will not have to resolve the
    routine,  although this is not typically a hardship.
  }
  \item{nodes}{the parser, i.e. array of nodes. This is the return value
    from \code{\link{parseTU}} and is a reference to a Perl object
   of class \code{GCC::TranslationUnit::Parser}.}
 \item{params}{this is not usually specified by the top-level caller but
   calculated from the definition of the routine and passed to the
   recursive calls.  This is the character vector giving the index or
   identifier of the parm_decl nodes corresponding to the mutable
   parameters of the routine.}
}
\details{
  We need to enhance this to deal with assignments
  to local variables which are themselves modified.
  Also, we need to add a mechanism to identify the
  routines that are called with any of these parameters and
  the identity of the parameters so we can recursively determine
  things.
}
\value{

}
\references{}
\author{Duncan Temple Lang}
\note{
}
\seealso{
 \code{\link{createMethodBinding}}
 \code{\link{getCallGraph}}
}
\examples{
 filename = system.file("examples", "inout", "inout.c.tu", package = "RGCCTranslationUnit")
 o = parseTU(filename)
 rr = getRoutines(o, "inout.c")
 routines = resolveType(rr, o)
 getInOutArgs(routines$foo, o)
 getInOutArgs(routines$bar, o)
}
\keyword{programming}
\keyword{interface}
