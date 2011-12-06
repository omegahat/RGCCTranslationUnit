\name{as.field.decl}
\alias{as.field.decl}
\alias{as.record.type}
\alias{as.parm.decl}
\alias{as.type.decl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Find appropriate sub-node}
\description{
  These functions attempt to search the given node
  in a sensible manner to find the relevant sub-node
  as indicated by the name of the function.
  Fror example,  \code{as.parm.decl} will
  search a \code{GCC::Node::function_decl}
  and find the first
  \code{GCC::Node::parm_decl} node, if it exists.

  These are meant as convenience functions  to find
  map from a high-level object to the first
  node of the target type so that we can then iterate over
  the nodes, starting at that one.
}
\usage{
as.field.decl(x, follow = TRUE, acceptableTypes =
                 c("GCC::Node::field_decl", "GCC::Node::var_decl",
                 "GCC::Node::const_decl"))
as.record.type(x, stopOnFail = TRUE)
as.parm.decl(x)
as.type.decl(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a reference to a Perl GCC::Node object obtained from
    parsing the translation unit.}
  \item{stopOnFail}{a logical value indicating whether to generate an
    error if the node could not be mapped to a record_type
    or simply return \code{NULL}}
  \item{follow}{(logical) controls whether to jump from the given node
    to one of its elements to find the definition of the field.}
  \item{acceptableTypes}{a character vector giving the names of the
    classes that are legitimate nodes for a field.}
}
\value{
  A reference to a Perl GCC::Node object or an error.
}
\references{http://www.omegahat.org/RGccTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{
 \code{\link{parseTU}}
}
\examples{

}
\keyword{interface}
\keyword{programming}

