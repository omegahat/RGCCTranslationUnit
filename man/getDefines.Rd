\name{getDefineConstants}
\alias{getDefineConstants}
\alias{getDefines}
\title{Find the constants defined via the pre-processor}
\description{
  This attempts to find the definitions of literal constants
  that are created by the C/C++ pre-processor and not in the
  C/C++ language.  This finds entries such as
  \code{#define FOO 1} or \code{#define STR "my string"}.
  It does not handle conditional definitions, i.e. within \code{#ifdef}
  statements.

  This works by making a system call to grep on the files in the
  target directory. (It does not work recursively, but could easily do
  so if that was useful rather than excessive.)
  It discards lines that start with a C++ comment or with #include.
  Then it delegates the identification of literal constant definitions
  to the internal function \code{processDefines} which looks for
  all lines that start with #define.

  A "better" approach is to use \code{\link{getCppDefines}}
  which works directly from the output of the pre-processor.
}
\usage{
getDefines(dir = character(), pattern = ".*", files = "*",
           class = c("TopLevelConstants", "DefineConstants"),
           removeDuplicates = TRUE, getSkipped = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dir}{ the directory containing the header files}
  \item{pattern}{pattern for \code{grep}.}
  \item{files}{shell glob pattern to identify the files to search}
  \item{class}{the class of the resulting object. Currently ignored.}
  \item{removeDuplicates}{a logical value that controls whether to remove duplicate definitions, leaving the 
    last ones.}
  \item{getSkipped}{a logical value.}
}
\details{
}
\value{
}
\references{ }
\author{Duncan Temple Lang}
\seealso{
 \code{\link{getCppDefines}}
}
\examples{

}
\keyword{programming}

