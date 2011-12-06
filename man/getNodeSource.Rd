\name{getNodeSource}
\alias{getNodeSource}
\alias{getNodeSource,GCCNode}
\alias{getNodeSource,GCC::Node::const_decl-method}
\alias{getNodeSource,GCC::Node::enumeral_type-method}
\alias{getNodeSource,GCC::Node::field_decl-method}
\alias{getNodeSource,GCC::Node::function_decl-method}
\alias{getNodeSource,GCC::Node::label_decl-method}
\alias{getNodeSource,GCC::Node::namespace_decl-method}
\alias{getNodeSource,GCC::Node::parm_decl-method}
\alias{getNodeSource,GCC::Node::result_decl-method}
\alias{getNodeSource,GCC::Node::template_decl-method}
\alias{getNodeSource,GCC::Node::type_decl-method}
\alias{getNodeSource,GCC::Node::using_decl-method}
\alias{getNodeSource,GCC::Node::var_decl-method}
\alias{getNodeSource,GCCNode-method}
\alias{getNodeSource,GCC::Node::translation_unit_decl}
\alias{getNodeSource,NativeRoutineDescription-method}
\title{Source file and line number information for a TU node}
\description{
 This returns the information in the TU node about the source
 file and line number in which the node is associated.
}
\usage{
getNodeSource(node)
}
\arguments{
  \item{node}{a node from the parsed translation unit (tu }
}
\value{
  A string of the form filename:num
}
\author{Duncan Temple Lang}
\note{}
\seealso{\code{\link{parseTU}}}
\examples{

}
\keyword{programming}
\keyword{interface}
