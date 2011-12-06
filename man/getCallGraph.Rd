\name{getCallGraph}
\alias{getCallGraph}
\alias{getCallGraph,ANY,ANY-method}
\alias{getCallGraph,ANY,GCC::Node::compound_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::function_decl-method}
\alias{getCallGraph,ANY,GCC::Node::call_expr-method}
\alias{getCallGraph,ANY,GCC::Node::expr_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::scope_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::for_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::while_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::var_decl-method}
\alias{getCallGraph,ANY,GCC::Node::modify_expr-method}
\alias{getCallGraph,ANY,NativeRoutineDescription-method}
\alias{getCallGraph,ANY,missing-method}
\alias{getCallGraph,ANY,GCC::Node::tree_list-method}
\alias{getCallGraph,ANY,GCC::Node::do_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::decl_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::return_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::if_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::init_expr-method}
\alias{getCallGraph,ANY,GCC::Node::init_cond_expr-method}
\alias{getCallGraph,ANY,GCC::Node::cond_expr-method}
\alias{getCallGraph,ANY,GCC::Node::lt_expr-method}
\alias{getCallGraph,ANY,GCC::Node::gt_expr-method}
\alias{getCallGraph,ANY,GCC::Node::eq_expr-method}
\alias{getCallGraph,ANY,GCC::Node::ge_expr-method}
\alias{getCallGraph,ANY,GCC::Node::le_expr-method}
\alias{getCallGraph,ANY,GCC::Node::ne_expr-method}
\alias{getCallGraph,ANY,GCC::Node::nop_expr-method}
\alias{getCallGraph,ANY,GCC::Node::convert_expr-method}
\alias{getCallGraph,ANY,GCC::Node::array_ref-method}
\alias{getCallGraph,ANY,GCC::Node::save_expr-method}
\alias{getCallGraph,ANY,GCC::Node::compound_expr-method}
\alias{getCallGraph,ANY,GCC::Node::component_expr-method}
\alias{getCallGraph,ANY,GCC::Node::indirect_ref-method}
\alias{getCallGraph,ANY,GCC::Node::component_ref-method}
\alias{getCallGraph,ANY,GCC::Node::plus_expr-method}
\alias{getCallGraph,ANY,GCC::Node::non_lvalue_expr-method}
\alias{getCallGraph,ANY,GCC::Node::plus_expr-method}
\alias{getCallGraph,ANY,GCC::Node::minus_expr-method}
\alias{getCallGraph,ANY,GCC::Node::mult_expr-method}
\alias{getCallGraph,ANY,GCC::Node::rdiv_expr-method}
\alias{getCallGraph,ANY,GCC::Node::trunc_div_expr-method}
\alias{getCallGraph,ANY,GCC::Node::floor_div_expr-method}
\alias{getCallGraph,ANY,GCC::Node::ceil_div_expr-method}
\alias{getCallGraph,ANY,GCC::Node::round_div_expr-method}
\alias{getCallGraph,ANY,GCC::Node::truth_andif_expr-method}
\alias{getCallGraph,ANY,GCC::Node::truth_orif_expr-method}
\alias{getCallGraph,ANY,GCC::Node::addr_expr-method}
\alias{getCallGraph,ANY,GCC::Node::postincrement_expr-method}
\alias{getCallGraph,ANY,GCC::Node::parm_decl-method}
\alias{getCallGraph,ANY,GCC::Node::field_decl-method}
\alias{getCallGraph,ANY,GCC::Node::target_expr-method}
\alias{getCallGraph,ANY,GCC::Node::rshift_expr-method}
\alias{getCallGraph,ANY,GCC::Node::lshift_expr-method}
\alias{getCallGraph,ANY,GCC::Node::negate_expr-method}
\alias{getCallGraph,ANY,GCC::Node::bit_ior_expr-method}
\alias{getCallGraph,ANY,GCC::Node::trunc_mod_expr-method}
\alias{getCallGraph,ANY,GCC::Node::bit_and_expr-method}
\alias{getCallGraph,ANY,GCC::Node::abs_expr-method}
\alias{getCallGraph,ANY,GCC::Node::fix_trunc_expr-method}
\alias{getCallGraph,ANY,GCC::Node::label_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::break_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::goto_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::switch_stmt-method}
\alias{getCallGraph,ANY,GCC::Node::constructor-method}
\alias{getCallGraph,ANY,GCC::Node::case_label-method}
\alias{getCallGraph,ANY,GCC::Node::preincrement_expr-method}
\alias{getCallGraph,ANY,GCC::Node::postincrement_expr-method}
\alias{getCallGraph,ANY,GCC::Node::postdecrement_expr-method}
\alias{getCallGraph,ANY,GCC::Node::predecrement_expr-method}
\alias{getCallGraph,ANY,GCC::Node::float_expr-method}
\alias{getCallGraph,ANY,RoutineNodeList-method}

\title{Compute call graph for a C/C++ routine or method}
\description{
  This actually works on arbitrary nodes within the
  translation unit parser array of nodes.
  So it can be used for examining code blocks,
  e.g. body of an if statement or a while loop.
}
\usage{
getCallGraph(nodes, defs = getRoutines(nodes), visited = new.env())
}
\arguments{
  \item{nodes}{the parser or array of nodes, used to lookup the
    references to other nodes within the \code{defs} object.}
  \item{defs}{for the caller, this is the routine returned from
    \code{\link{getRoutines}}.  In fact, it can also be any node in the
    parser array, i.e. a GCC::Node.... type.
  }
  \item{visited}{this is not intended to be supplied by the top-level
    caller, but rather is passed between the recursive calls to store
    information about which nodes have already been visited and so are
    not to be processed again should there be another node that refers
    to it.
  }
}
\details{
}
\value{
  A named vector giving the names of the routines that were
  found to be called within the routine/language node
  along with the position in the parser array of nodes
  so that one can quickly identify the actual declaration/definition.
}
\references{
  c-tree.texi in the gcc source distribution.
}
\author{Duncan Temple Lang}
\note{
  This does not handle invocations via "function pointers"
  in the C code. It can be made to  understand them, but
  not know which routine will be called. That is a run-time decision.
}
\seealso{
 \code{\link{parseTU}}
}
\examples{
\dontrun{
 filename = system.file("examples", "phast", "msa.c.tu", package = "RGCCTranslationUnit")

 p = parseTU(filename, language = "C")
 routines = getRoutines(p, "msa.c")

 calls = getCallGraph(p, routines$msa_new_from_file)
 names(calls)
 counts = table(names(calls))
}
}
\keyword{programming}
\keyword{interface}