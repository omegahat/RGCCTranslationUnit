\name{getDataStructures}
\Rdversion{1.1}
\alias{getDataStructures}
\alias{getDataStructures,DefinitionContainer-method}
\alias{getDataStructures,TUParser-method}

\title{Find the nodes in a translation unit corresponding to data structure definitions}
\description{
 This function searches the nodes in a parsed translation unit object in R
 and finds the nodes that define data types in C/C++.
 These nodes include struct and union types, typedef declarations.
 They do not (currently) include enumerations or C++ classes (?).
 One can change the type of nodes considered via the \code{types} parameter.

 One can fetch all the declarations or restrict to one or more
 source files by specifying their (partial) name.
}
\usage{
getDataStructures(p, files = character(), types = c("GCC::Node::type_decl", "GCC::Node::record_type"), includeMissingSource = TRUE)
}
\arguments{
  \item{p}{the translation object returned by \code{\link{parseTU}}.}
  \item{files}{a character vector giving the names (or partial names) of 
      files of interest. This is used as part of a filter 
      that compares the source attribute of a matching node
      to elements of this vector. If they "match",
      the node is included in the return. The concept of match 
      uses \code{\link[base]{pmatch}} by default
  }
  \item{types}{a character vector specifying the }
  \item{includeMissingSource}{a logical value that controls whether
    nodes which have no source attribute are included or excluded in the
    resulting list of nodes}
}
\value{

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Duncan Temple Lang
}

\seealso{
}
\examples{

}
\keyword{programming}
\keyword{interface}
