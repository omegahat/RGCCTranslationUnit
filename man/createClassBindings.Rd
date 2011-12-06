\name{createClassBindings}
\alias{createClassBindings}
\title{Generate R and C/C++ code bindings for a C++ class.}
\description{
  This function is used to generate code that provides
  an R-language interface to a C++ class.
  Currently, it generates code to access the instances of the class as
  references. This makes sense for C++ classes.

}
\usage{
createClassBindings(def, nodes, className = rdef@name, # rdef computed in function from def.
                    types = DefinitionContainer(nodes),
                    polymorphicNames = unique(names(mm)[duplicated(names(mm))]),
                    abstract = isAbstractClass(mm, nodes),
                    resolvedMethods = resolveType(getClassMethods(def), nodes, types),
                    typeMap = list(),
                    generateOverloaded = TRUE, ifdef = character(),
                    helperInfo = NULL, access = "public",
                    dynamicCast = list(),
                    otherClassMethods = NULL, useClassNameMethod = FALSE,
                    signatures = list(),
                    useSignatureParameters = TRUE,
                    dispatchInfo = data.frame(),
                    defaultBaseClass = if(useClassNameMethod)
                                          "RC++ReferenceUseName"
                                       else
                                          "RC++Reference",
                    classDefs = NULL, ...)
}
\arguments{
  \item{def}{the node giving the class definition.
    In the future, we will allow this object to be a fully resolved
   description of the class, i.e. with the methods and types resolved.}
 \item{nodes}{the TU parser returned from \code{\link{parseTU}}
     which is an array of the tu nodes.
   }
 \item{className}{the name of the C++ class being processed}
 \item{types}{the collection of resolved data types, routines, etc.
   typically a \code{DefinitionContainer}.}
 \item{polymorphicNames}{a character vector giving the names of the
   methods that are overloaded, typically just within this class.} 
 \item{abstract}{a logical value indicating if this class is an abstract
   class for which there can be no C++-level instances.} 
 \item{resolvedMethods}{a list of the fully resolved methods, typically
   obtained from a call to \code{\link{resolveType}} on the methods
   returned by \code{\link{getClassMethods}}.
   This can be either a list of all the resolved methods 
  } 
% \item{methods}{a list of the unresolved methods.} 
 \item{typeMap}{a user-specifiable list of "hints" for mapping 
   particular data types in the generated code, i.e. for
   converting between R and C/C++ and coercing in R functions to the 
   appropriate type for the C/C++ method.
  } 
 \item{\dots}{additional arguments that are passed on to
   \code{\link{createMethodBinding}}.}
 \item{generateOverloaded}{a logical value XXX}
 \item{ifdef}{a character string which, if non-empty, is used to enclose
   the entire generated code within and \code{#ifdef string ... #endif}
   block.
   This allows one to generate code that is conditionally compiled,
   e.g. for specific platforms.}
 \item{helperInfo}{passed on to each call to \code{\link{createMethodBinding}}.}
 \item{access}{a character vector containing one or more of
   public, protected, private to indicate which methods should be
   processed.  For each method, we compare its accessability value
   to this vector and only process it if there is a corresponding
   entry in this vector. Thus, a value of \code{c("public",
     "protected")}  will process both the public and protected methods.
 }
 \item{dynamicCast}{a logical value or a list that controls how dynamic
   casting code is generated.}
 \item{otherClassMethods}{methods from other classes}
 \item{useClassNameMethod}{prefix methods, etc. with the name of hte
   class rather than using translation unit-wide overloading}
 \item{signatures}{a list of the signatures of all functions/methods in
   the translation unit.}
 \item{dispatchInfo}{ a data frame. This is passed to and from the different
   helper functions and builds up information about the number of
   possible arguments for different methods.
 }
 \item{useSignatureParameters}{a logical controlling whether to use the
   parameters from the local definition or the centralized overloaded method.
 }
 \item{defaultBaseClass}{the name of the base C++ class to use for
   defining a new class.}
 \item{classDefs}{a collection of the resolved type descriptions of the
   classes in the translation unit.}
}
\value{

}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\note{
For regular C/C++ structures, we can access the fields and
  work with instances rather than references to instances,
  passing such objects between R and C/C++ representations
  by explicitly copying the fields.
}
\seealso{
 \code{\link{writeCode}}
 \code{\link{parseTU}}
}
\examples{

}
\keyword{programming}
\keyword{interface}
