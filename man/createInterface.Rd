\name{createInterface}
\alias{createInterface}
\title{Top-level function for generating code to interface to code in a
  translation unit.}
\description{
  The idea is that this will be the top-level entry point
  which a caller can use to generate an interface to a translation unit.
  This would then generate all the code for interfacing to the code in
  that translation unit. The results could then be written via
  \code{\link{writeCode}} and the resulting C/C++ and R code
  would be runnable, assuming the availability of the dependencies
  such as RAutoGenRunTime.
}
\usage{
createInterface(decls, files = character(0), ...,
                 classes = getClassNodes(decls, files))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{decls}{the translation unit parser object returned from
    e.g. \code{\link{parseTU}} which is a vector of the
    nodes in the tu file.
   }
   \item{files}{the names of the files (without the directory part)
     identifying the files in which the definitions of interest are
     located. This is used to filter our the symbols that are not
     of interest, e.g. the system level symbols.
   }
  \item{\dots}{passed in each call to \code{\link{createClassBindings}} for each class node.}
  \item{classes}{the TU nodes that correspond to the classes of interest.}
}
%\details{}
%\value{}
\references{
The GCC suite and translation units
}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{parseTU}}
  \code{\link{createClassBindings}}
}
\examples{
}
\keyword{programming}

