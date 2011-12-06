\name{boolType-class}
\docType{class}
\alias{BuiltinPrimitiveType-class}
\alias{boolType-class}
\alias{intType-class}
\alias{doubleType-class}
\alias{longType-class}
\alias{voidType-class}

\title{Classes for representing primitive/built-in data types.}
\description{
  These are classes for representing data types in C code for the
  built-in data types in the C language, e.g. int, double, float, etc.
  At present, we have the basic classes and differentiate between,
  e.g. int and unsigned int, based on the name in the class.
  This is typically detected from the name in the translation unit.

  These classes are intended to be instantiated as part of
  resolving type information in the translation units via
  \code{\link{resolveType}}.
}
\section{Objects from the Class}{
  Typically instances of these classes are created in the evaluation
  of  a call to \code{\link{resolveType}}.
  However, objects can be created directly by calls of the form
  \code{new("boolType", ...)}.
  The \code{\link{resolveType}} tends to get the name right from the
  information in the translation unit nodes.
}
\section{Slots}{
	 \describe{
	   \item{\code{name}:}{Object of class \code{"character"}.
	   This gives the human readable name such as "int", "char",
	   "unsigned int", etc.}
  }
}
\section{Extends}{
Class \code{"BuiltinPrimitiveType"}, directly.
Class \code{"TypeDefinition"}, by class \code{"BuiltinPrimitiveType"}.
}
\section{Methods}{
No methods defined with class "boolType" in the signature.
}
\references{http://www.omegahat.org/RGccTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{

}
\examples{

}
\keyword{classes}
\keyword{programming}
