\name{getValue}
\alias{getValue}
\alias{getValue.GCC::Node::addr_expr}
\alias{getValue.GCC::Node::aggr_init_expr}
\alias{getValue.GCC::Node::bit_and_expr}
\alias{getValue.GCC::Node::bit_ior_expr}
\alias{getValue.GCC::Node::bit_xor_expr}
\alias{getValue.GCC::Node::call_expr}
\alias{getValue.GCC::Node::const_decl}
\alias{getValue.GCC::Node::function_decl}
\alias{getValue.GCC::Node::indirect_ref}
\alias{getValue.GCC::Node::integer_cst}
\alias{getValue.GCC::Node::nop_expr}
\alias{getValue.GCC::Node::real_cst}
\alias{getValue.GCC::Node::string_cst}
\alias{getValue.GCC::Node::target_expr}
\alias{getValue.GCC::Node::var_decl}
\alias{getValue.GCC::Node::cast_expr}
\alias{getValue.GCC::Node::component_ref}
\alias{getValue.GCC::Node::constructor}
\alias{getValue.GCC::Node::identifier_node}
\alias{getValue.GCC::Node::if_stmt}
\alias{getValue.GCC::Node::lt_expr}
\alias{getValue.GCC::Node::scope_ref}
\alias{getValue.GCC::Node::template_type_parm}
\alias{getValue.GCC::Node::tree_list}
\alias{getValue.GCC::Node::truth_andif_expr}
\alias{getValue.GCC::Node::truth_not_expr}
\title{Get the literal value associated with a GCC node}
\description{
  This function and its methods allow us to query the value
  associated with a particular node in the translation unit.
  Often these are literals or constants.
}
\usage{
getValue(node, defaultValue = NA, symbolic = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{node}{the translation unit node}
  \item{defaultValue}{if no value is available, return this value}
  \item{symbolic}{never used. The idea was (I think) to allow the value
    be returned symbolically as an expression if it were more than a
   literal, e.g. x + 1 or PI + 1}
}
\value{
 An object!
}
\references{
}
\author{
Duncan Temple Lang
}


\seealso{

}
\examples{
 tu = parseTU(system.file("examples", "value.cc.001t.tu", package = "RGCCTranslationUnit"))
 getValue(tu[[23]]) # 3.1415
 getValue(tu[[20]]) # pi - an identifier_node

 getValue(tu[[22]]) # y - variable declaration

 getValue(tu[[27]]) # -1

 getValue(tu[[3]]) # C routine name. foo

 getValue(tu[[39]]) # 'foo'
 getValue(tu[[67]]) # 'foo bar chicken    '
}
\keyword{programming}
\concept{meta-programming}
