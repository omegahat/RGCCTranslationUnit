\name{readDependencies}
\alias{readDependencies}
\title{Read source code file dependencies on other files}
\description{
  This function is used to post-process the output
  of a call to the GCC compiler (gcc or g++)
  to generate the list of files on which
  a particular source file depends, i.e.
  includes either directly or indirectly.
  This information is then used to filter
  the symbols, routines, data structures, etc.
  in which we are interested by limiting
  them to files typically other than these
  or by matching these to ones in a known
  directory of interest.

  This function does not perform the call to
  the compiler to generate the dependencies.
  Instead
}
\usage{
readDependencies(filename)
}
\arguments{
  \item{filename}{the name of the file to which the dependency
    information was written in the call to the GCC compiler, or
    the output itself, i.e. the raw lines emitted by the compiler.}
}
\details{

}
\value{
  A character vector giving the fully-qualified names of the included
  files and the names of the elements in this vector are the
  corresponding base names of these  files.
  Since the TU output discards the directory information,
  we return this base name form for easy comparison
  but maintain the directory information for completeness.
  So often we use the \code{names()} of the result for use with TUs.
  Additionally, the name of the file from which the dependencies
  were computed, i.e. the source file passed to the compiler,
  is available via the attribute \code{"source"}.
}
\references{The GCC compiler suite}
\author{ Duncan Temple Lang}

\seealso{
  %XXX any more of these
  \code{\link{getClassNodes}} 
  \code{\link{getAllDeclarations}}
  \code{\link{getRoutines}}
  \code{\link{getGlobalVariables}}
  \code{\link{getEnumerations}}  
}
\examples{
  fname = paste(tempfile(), ".c", sep = "")
  cat("#include <stdio.h>\n", file = fname)
  ll = system(paste("gcc -M", fname), intern = TRUE)
  readDependencies(ll)

  oname = tempfile()
  ll = system(paste("gcc -M", fname, ">", oname), intern = TRUE)
  readDependencies(oname)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{included header files}
\concept{C source code}
