\name{getNodeByType}
\alias{getNodeByType}
\title{Get TU nodes based on type}
\description{
  This function is used to traverse the entire
  collection of nodes and find the nodes that
  correspond to the type(s) of interest.
  These might be top-level variable declarations,
  routines, data structure definitions, and so on.
}
\usage{
getNodeByType(parser, types, from)
}
\arguments{
  \item{parser}{the TU parser object that is a collection of the TU nodes.}
  \item{types}{a character vector giving the names of the classes of the nodes for which we are searching.}
  \item{from}{a number giving the index of the node in the parser list at which to start the search.
   This allows us to start a search at different points, and continue looking at a point ended in a previous search.}
}
\value{

}
\references{
}
\author{
Duncan Temple Lang
}

\seealso{
  \code{\link{getRoutines}}
  \code{\link{getDataStructures}}
}
\examples{

}
\keyword{programming}

