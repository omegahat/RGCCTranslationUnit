\name{computeGlobalEnumConstants}
\alias{computeGlobalEnumConstants}
\title{Compute top-level enumeration definitions}
\description{
  This function processes the translation unit nodes and finds
  the enumeration definitions, i.e. the symbolic constants that are
  defined at the C/C++ level using the \code{enum} keyword.
  The result are named values of numerical values. In some cases,
  the enumeration collection has a name by way of a typedef.
  Additionally, some enumeration collections are simple
  "sequence" of values  (some times not contiguous) which is used
  primarily to differentiate the values. It acts like a factor.
  In other cases, the values are intended to be OR'ed together
  in C to indicate one or more combined states. These are
  bitwise values.
  This function attempts to guess which type an enumeration
  definition falls into and
  returns the information in the appropriate class, i.e.
  \code{EnumerationDefinition} or  \code{BitwiseEnumerationDefinition}.
  
  The function then returns the collection of
  both named and anonymous enumeration collections which
  can be used to create corresponding variables
  for use in R.
}
\usage{
computeGlobalEnumConstants(tu = NULL, enums = getEnumerations(tu, files),
                            files = character(),
                             defs = DefinitionContainer(tu), anonymousOnly = FALSE)
}
\arguments{
  \item{tu}{the translation unit nodes obtained from a call to \code{\link{parseTU}}}
  \item{enums}{the list of TU nodes that define the enumeration
    definitions of interest.}
  \item{files}{a character vector giving the names of the files in which
  the enumeration definitions of interest are located. This is used when
  calculating the default value of \code{enums} and is used to eliminate
  enumeration definitions for files such as system header files for
   which   we do not want the definitions.
 }
  \item{defs}{a DefinitionContainer that is used for resolving the
    values of the different types and nodes with the TU.}
%  \item{defsOnly}{}
  \item{anonymousOnly}{a logical value indicating whether we only want
    the anonymous, i.e. not typedef'ed enumeration collection definitions.}
}
\value{
  An object of class \code{TopLevelEnumDefs}.
  This is a list in which entry is an object
  of class \code{EnumerationDefinition},
  with some being \code{BitwiseEnumerationDefinition}
  objects identifying bitwise enumerations.

}
\references{ The GCC compiler suite}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{computeGlobalConstants}}
}
\examples{
 tu = parseTU(system.file("examples", "distance.c.t00.tu", package = "RGCCTranslationUnit"))
 e = computeGlobalEnumConstants(tu)
 table(sapply(e, class))
 names(e)

 # the anonymous enums
 grep("^[.]", names(e), value = TRUE)

  # the named entries
 grep("^[^.]", names(e), value = TRUE)
}
\keyword{programming}
\concept{meta-programming}

