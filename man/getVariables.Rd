\name{getVariables}
%\Rdversion{1.1}
\alias{getVariables}
\alias{getVariables,GCCTUParserDynClass-method}
\title{Find the translation unit nodes corresponding to variable declarations}
\description{
This function searches a translation object in R 
for nodes that correspond to variable declarations.
This returns the raw nodes. These can then be resolved
to get complete descriptions of the variables and their data types.
}
\usage{
getVariables(dcls, addNames = TRUE, ...)
}
\arguments{
  \item{dcls}{the translation unit object as returned by \code{\link{parseTU}}.}
  \item{addNames}{a logical value indicating whether to compute the names of the
   variables and put them on the resulting list}
  \item{\dots}{additional parameters for methods}
}
\value{
  A list whose elements are objects of class \code{GCC::Node::var_decl}.
}
\references{
}
\author{
Duncan Temple Lang
}

\seealso{
 \code{\link{parseTU}}
 \code{\link{resolveType}}
}
\examples{
 tu = parseTU(system.file("examples", "struct.c.t00.tu", package = "RGCCTranslationUnit"))
 v = getVariables(tu)
 names(v)

 vars = lapply(v, resolveType, tu)
}
\keyword{programming}
