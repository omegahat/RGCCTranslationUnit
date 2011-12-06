\name{getAllDeclarations}
\alias{getAllDeclarations}
\alias{getGlobalVariables}
\alias{getFunctions}
\alias{getRoutines}
\alias{getClassNodes}
%\alias{getDataStructures}
\alias{getEnumerations}


\title{Find top-level translation unit nodes representing different
  types of entities/constructs within the source code.}
\description{
  These functions are useful, top-level functions for finding
  the different entities within the source code via the translation unit
  array.
  These find things such as global variable declarations,
  function and data structure declarations and classes.
  These identify the nodes of interest and then we can
  process these nodes to turn them into more
  directly useful and high-level information
  such as class and function descriptions.

  These functions use \code{\link{nodeIterator}}
  to find the nodes of interest, using different
  filter functions.

  \code{getFunctions} and \code{getRoutines} are identical.
  They are provided as I use the term routines to refer to
  what many people call functions which are in native code.
  This draws a distinction between R and C/C++ "functions"
  and gives us a clearer vocabulary that is also more consistent with
  computer science definitions.

  \code{getEnumerations} is slightly different from the other
  functions documented on this page. While its return value
   is, like the others, a list of indices identifying the target nodes
  in the translation unit, the way in which it traverses the nodes is
  different.
  This function  loops over all of the nodes with the translation unit
   lookng for enumeration declarations, i.e. Perl nodes of class
  \code{GCC::Node::enumeral_type}.
  It does this because enumerations may be defined outside of the
  regular declarations.
  Since we loop over the entire array of tu nodes, this is done
  directly in Perl to avoid the overhead of transferring control
  between R and Perl for each element.
}
\usage{
getAllDeclarations(dcls, files = character(0), dropArtificial = TRUE)
getGlobalVariables(dcls, files = character(0), static = TRUE,
                    resolve = FALSE, checkSourceFile = checkSource, ...)
getFunctions(dcls, files = character(0), static = FALSE,
               checkSourceFile = checkSource, ...)
getRoutines(dcls, files = character(0), static = FALSE,
              checkSourceFile = checkSource, ...)
getClassNodes(dcls, files = character(0), ignoreClasses = character(0),
               ..., validateSource = checkSource)
getEnumerations(dcls, files = character(),
                  extensions = c("c", "cpp", "C", "h"))
}

\arguments{
  \item{dcls}{the starting node from which to iterate over the chain.}
  \item{files}{a character vector. If this is specified, the filters
    only return information from nodes that have a source
    attribute (srcp) which corresponds to an element in the
    \code{files} argument.
    The source attribute is modified to remove the
    line number and extension.
    
    Note that for \code{getEnumerations}, this must be "" and not
   \code{character(0)} as it is passed to Perl.
  }
  \item{ignoreClasses}{this itself is currently ignored!}
  \item{\dots}{any additional arguments that are passed on to the
    \code{\link{nodeIterator}} call which in turn are passed on also
    to the calls to the \code{op} function within \code{nodeIterator}.}
  \item{dropArtificial}{a logical value indicating whether to omit any
    nodes that are \dQuote{artificially} created by the compiler.
    In general, these are good things to omit.
  }
  \item{static}{a logical value indicating whether to omit routines that
    are declared as static and so not visible outside of the specified
    files or if \code{FALSE} to include them in the result.}
  \item{resolve}{(logical) controls whether the resulting TU nodes are
    then resolved using \code{\link{resolveType}}.
  }
  \item{checkSourceFile}{a function that determines whether the source attribute
   of the node (i.e. the C or header file associated with the routine or
   type definition being described) is appropriate. This should return
   TRUE or FALSE. }
  \item{validateSource}{a function that is called for each potential node
        to determine if it is of interest based on its \code{source}
        attribute. The function is called with the value of the \code{source}
        attribute and the vector \code{files}. It is only called if 
         \code{files} has elements.
       }
  \item{extensions}{ a character vector giving the names of extensions
    of source code files to search.}
}
\value{
  A list with elements corresponding to the processed
  nodes  of interest. The nature of those elements depends
  on the type of node.
  They all however identify the index of the node.
}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{
  \code{\link{readTU}}
  \code{\link{getBaseClasses}}
}
\examples{
\dontrun{
 my = parseTU(system.file("examples", "ABC.cpp.tu", package = "RGCCTranslationUnit"))

  # All the declarations found when processing this file, including the
  #  '#included' files via the pre-processor.
 k = getAllDeclarations(my)

  # Just the declarations defined in ABC.cpp, ABC.h, ...,
  # i.e. with a source field starting with "ABC."
 k = getAllDeclarations(my, "ABC")


 my = parseTU(system.file("examples", "myFun.cpp.tu", package = "RGCCTranslationUnit"))
 d = getAllDeclarations(my, "myFun")
 names(d)

    # Get the node types
 types = sapply(d, function(i) class(my[[i]])[1])
 table(types)

  
  # Focusing on the global variables only, we can get them from types
  # or by querying the TU for them alone.
 vars = getGlobalVariables(my[[4]], "myFun")
 vars
#XXX  fails on a pointer to a function_type (no method for this type) in a recursive call.
# lapply(vars, function(x) resolveType(my[[ x ]], my))
}
}
\keyword{interface}
\keyword{programming}

