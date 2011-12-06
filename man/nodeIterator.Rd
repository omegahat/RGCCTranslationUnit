\name{nodeIterator}
\alias{nodeIterator}
\title{Walk and process the list of linked/chained nodes.}
\description{
  This function is the workhorse for processing the nodes in different
  ways.  This function takes care of looping over the sequence of nodes
  and uses a predicate function \code{type} to determine if the
  function is of interest.
}
\usage{
nodeIterator(node, op, type = TRUEp, verbose = FALSE, addPrefix = FALSE)
}
\arguments{
  \item{node}{the node from which to start the iteration.
    This can be an arbitrary node in the array of translation unit nodes.}
  \item{op}{the function to process the node.
    If this returns NULL, the value is discared.
    Otherwise, it is added to the list of results.
    An attempt is made to compute the name of
    the give node to identify the element in the
    resulting list.

    This function can of course work on other nodes aside
    from the one it is passed.  And it can store information in its
    own environment rather than relying on the construction of the
    appropriate list by \code{nodeIterator}.  However, this is not
    necessary.
  }
  \item{type}{a function or the class name(s) of the type of node to
    process.
    If this is a character vector of class names, \code{nodeIterator}
    creates a simple function that calls inherits.
    This is simple "static" type checking of the nodes.
    A user can provide a function that checks the contents of the
    node, dynamically.

    The function is called for each node in the sequence. If it
    returns \code{FALSE}, the iterations stop and the result
    returned. So this checks whether the processing is complete
    for the given sequence and allows for termination of the
    looping over the chained nodes before the end of the chain is
    reached.
  }
  \item{verbose}{a logical value with \code{TRUE} indicating that
    information about what nodes are currently being processed,
    e.g. the source and desition or to and from nodes,
    is to be displayed on the console as the iterations proceed.}
  \item{addPrefix}{(logical) passed to \code{\link{getNodeName}} when computing
    the name of the node to use in the names of the returned list.
    This controls whether the C++ namespace of the enclosing scope is
    included (\code{TRUE}) in the name or dropped (\code{FALSE}).
  }
}
\value{
  A list with an element for each node processed.
  For each such node, the name of the element in the list is taken from
  the "name" attribute of the node, if available.
}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{
  \code{\link{getAllDeclarations}}
  \code{\link{getGlobalVariables}}
  \code{\link{getFunctions}}
  \code{\link{getClassNodes}}

  These functions are all implemented using \code{nodeIterator}.
}
\examples{
  tu = parseTU(system.file("examples", "myFun.cpp.tu", package = "RGCCTranslationUnit"))

  nodeIterator(tu[[4]], function(node) node[["INDEX"]])

}
\keyword{interface}
\keyword{programming}

