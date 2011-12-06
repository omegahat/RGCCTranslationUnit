\name{getExportNames}
\alias{getExportNames}
\title{Get names of R objects to be exported from generated bindings}
\description{
  This generic function is used to collect the names of the
  R functions, classes and generic functions
  that are to be added to the NAMESPACE file of a generated
  package that includes these machine-generated bindings.
}
\usage{
getExportNames(obj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{the object from which to get the generated binding
    information. Currently, this is the object returned from
    \code{createClassBindings}, but will be extended to
    handle higher-level aggregates for an entire file
    and its declarations and collections of files making up a
    native code library.
   }
}

\value{

}

\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}
\seealso{
 \code{\link{createClassBindings}}
}
\examples{

}
\keyword{programming}
\keyword{interface}
\concept{meta-computing}

