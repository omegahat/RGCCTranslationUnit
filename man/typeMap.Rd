\name{typeMap}
\alias{typeMap}
\title{Create table of type mappings for generating interfaces}
\description{
  The code generation mechanism in this package allow for various
  types of customization. A type map is a table
  that identifies a native type (a target)
  and optional operations for converting
  between that type and R values.
  This  function collects the arguments into a map.
  Each element applies to a particular native type,
  e.g. an int, an unsigned long, a pointer to a structure,
  a typedef.
  Each element is a list.
  The native type is identified in one of 2 ways.
  The name of the map element can be the familiar
  stringified declaration form of the native type,
  e.g. \code{int}, \code{FILE *}.
  Alternatively, the element can have a \code{target}
  element which is either a string in the same form as above,
  or an actual type object of class \code{TypeDefinition}.

  Having identified the target native type, an element in this map can
  have
  any of the following elements
  coerceRValue,
  convertRValue,
  convertValueToR.
  Each of these can be a string giving the name of an R function or C
  routine
  as appropriate. The generated code will be a simple call to this
  function/routine with the parameter in the code.
  That is, if we are trying to convert a C object held in the variable
  \code{ans}   back to R, and the convertValueToR element is given
  as \code{"R_matrix"}, the generated code is \code{R_matrix(ans)}.

  If simply pasting the name of a function/routine and the variable name
  together is too simple, one can provide a function as the value of any
  of these elements.  In that case, the function is called with three
  arguments: the name of the variable being processed,
  a list of all the variables being processed giving their names and
  types,  and this type map which can be used for further conversions.

  A function can return a simple string and the different functions
  use this in their default manner. Alternatively, one can
  return a string which is an RCode object and it will be
  inserted as-is with no subsequent processing, e.g.
  prefixed with \code{"var = "}.
  
}
\usage{
typeMap(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
    a collection of map elements.
    Names can be specified in the call and these can be used to match
    against the different type objects being looked up in the map.
    Each element can have
    elements named target, coerceRValue, convertRValue and
    convertValueToR. These can be function/routine names
    or functions that take 3 arguments.
  }
}
\details{

}
\value{
  A list with S3 class \code{TypeMap} to help
  identify it in computations..
  
}
\references{ ~put references to the literature/web site here ~ }
\author{Duncan Temple Lang }
\seealso{
  \code{\link{createMethodBinding}}  
  \code{\link{coerceRValue}}
  \code{\link{convertRValue}}
  \code{\link{convertValueToR}}  
}
\examples{

  typeMap( "FILE *" = list(target = "FILE *",
                             # Can be a string, e.g. asFILE, but then couldn't get the mode 'r' in.
                           coerceRValue = function(name, ...) paste("asFILE(", name, ", 'r')"),
                           convertRValue = "R_openFile",
                           convertValueToR = NULL
                          ))

   # coercion in R is a function and returns an as-is RCode block.
  typeMap( "FILE *" = list(target = "FILE *",
                           coerceRValue = function(name, ...) {
                                            structure(paste("f = as(", name, ", 'FILERef')\n\ton.exit(.Call('R_closeFile', ", name, "))"),
                                                      class = "RCode")
                                          }
                          ))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{meta-data}
