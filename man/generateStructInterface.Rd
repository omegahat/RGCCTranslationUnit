\name{generateStructInterface}
\alias{generateStructInterface}
\alias{createCopyStruct}
\title{Generate R and C interface code to create, access and set aspects
  of a C structure}
\description{
  This function is a high-level function that operates on
  the description of a single C level structure definition
  and generates the R and C code to interface to instances of
  that structure. It generates a parallel R class that
  has the same slot names as fields in the C structure
  with the equivalent types in R.
  Additionally, it creates a class that can be used to hold
  a pointer to a C-level instance of the C structure
  via an \code{externalptr} in R.
  Also, it generates R functions and corresponding C routines
  to create new instances of this C-level data type
  and to access the fields individually and also to copy an entire
  C-level instance to its R equivalent.
  In other words, it allows the R user to work with the
  structure either in R or in C and to access all parts of it.
}
\usage{
generateStructInterface(type, classDefs, typeMap = list(),
                          defaultBaseClass = "RC++StructReference")
createCopyStruct(def, className = def@name, isClass = FALSE, typeMap = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{type}{an object representing the \code{resolved} type definition
  of a C-level structure. In other words, it should be an object
  created by a call to \code{\link{resolveType}} (either implicitly or
  explicitly) and either a \code{StructDefinition}
  or a \code{TypedefDefinition} corresponding to a \code{typedef} in
  R which leads to a \code{StructDefinition}.
}
  \item{typeMap}{an optional type mapping specifying the correspondence
    between the R and C-level data types and how they can be converted
    from one to another. This is used to define the types of the R slots
   corresponding to the fields in the C structure and how to convert
   between them.  This is optional and the default mappings will work
   in pretty much all cases. This allows one to customize the mappings
   with contextual information/knowledge.}
  \item{classDefs}{the \code{\link{DefinitionContainer-class}} object associated with the 
      translation unit parser. This stores the resolved types so they do not need
      to be resolved many times, each time they are encountered.
      This is obtained from the translation unit parser (of class \code{\link{GCCTUParserDynClass-class}})
      via the \code{\link{DefinitionContainer}} function.}
  \item{def}{the description of the class/struct definition.}
  \item{className}{the name of the struct/C++ class}
  \item{isClass}{a logical value indicating wehther this is a C++ class
    or a regular C \code{struct}.}
  \item{defaultBaseClass}{the name of the R class which is used  as the
    base class for the class that is a reference to this struct/C++
    class.
     This allows the caller to use a different base class with a
     different representation or methods.}
}
\value{
  %XXX
  A list of class \code{CStructInterface} which can be
  passed to \code{writeCode}.
  The list has the following components:
  \item{generic}{}  
  \item{rFunctions}{}
  \item{cRoutines}{}
  \item{clasDefs}{}
  \item{coerce}{}
  \item{newInst}{}
  \item{freeInst}{}
}
\references{The GCC Translation Unit}
\author{Duncan Temple Lang}
\seealso{
 \code{\link{createInterface}}
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{meta-computing}
\concept{programmatically generated bindings}
\concept{interface}

