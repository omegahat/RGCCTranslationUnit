\name{DefinitionContainer}
\alias{DefinitionContainer}
\alias{DefinitionContainer-class}
\alias{sapply,DefinitionContainer-method}
\alias{lapply,DefinitionContainer-method}
\alias{names,DefinitionContainer-method}
\alias{names}
\alias{coerce,GCCTUParserDynClass,DefinitionContainer-method}

\title{Create a DefinitionContainer object for managing resolved type nodes}
\description{
  This function is the constructor function for creating a
  DefinitionContainer object.  Such an object is simply an environment
  that  we use for mutability across function calls as we recursively
  process nodes and across top-level calls to \code{\link{resolveType}}.
  This manages the types returned by \code{\link{resolveType}}
  and avoids reprocessing the same node from different paths in the
  graph.
  Also, this therefore avoids problems of resolving recursively defined
  nodes, e.g. structs with an element which is a pointer to that type
  being defined such as a linked list.

  There are names and apply methods for finding out what is in the
  container and looping over the elements.
}
\usage{
DefinitionContainer(parser = NULL, e = structure(new.env(TRUE), class = "DefinitionContainer"), 
                     nodes = NULL, reportDuplicates = FALSE,  verbose = FALSE, force = FALSE)
}
\arguments{
  \item{parser}{the parser, i.e. array of nodes to be associated with
    the node-type mapping.  Don't use a definition container populated
    from one set of nodes with a different set of nodes!}
  \item{e}{the environment to use }
  \item{nodes}{the TU parser object which is the container for the TU nodes.}
  \item{reportDuplicates}{a logical value which  specifies whether to
    emit a warning if two different nodes are resolved and map to the
    same human-readable name, i.e. other than their node index name.
  }
  \item{verbose}{a logical value which if \code{TRUE} causes lots of
    information to be displayed on the console when the container is
    managing the transactions of querying and inserting the table.}
  \item{force}{a logical value indicating whether to force the creation
   of a new \code{DefinitionContainer} (\code{TRUE}) or to use the one already in the
  \code{parser} (\code{FALSE}). This is rarely used in regular calls but
  for use internally when creating the TU parser and DefinitionContainer.
  }
}
\details{
}
\value{
  An object of class DefinitionContainer.
}
\references{}
\author{Duncan Temple Lang}
\note{}
\seealso{
 \code{\link{resolveType}}
}
\examples{

}
\keyword{interface}
\keyword{programming}
\concept{meta-programming}
