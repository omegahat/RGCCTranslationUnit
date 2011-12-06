\name{TypeDefinition-class}
\docType{class}
\alias{TypeDefinition-class}
\alias{PointerType-class}
\alias{ArrayType-class}
\alias{TypedefDefinition-class}
\alias{TypedefEnumerationDefinition-class}
\alias{ContainerDefinition-class}
\alias{StructDefinition-class}
\alias{C++ClassDefinition-class}
\alias{UnionDefinition-class}
\alias{EnumerationDefinition-class}
\alias{RoutineDefinition-class}
\alias{PendingType-class}
\alias{StructField-class}
\alias{C++ReferenceType-class}

\alias{coerce,StructDefinition,character-method}
\alias{coerce,StructField,character-method}

\title{Classes representing C/C++ types in a translation unit description}
\description{
  This is a collection of related classes that are used to describe the
  basic and derived types in C/C++ code.

  Structures and unions in C/C++ are different types of aggregators
  that contain one or more fields.  In this framework, we use a common
  base class \code{ContainerDefinition} to represent the information
  so that we can define methods for that virtual class to be inherited
  by both actual types of data structures.

  The \code{PendingType} class is a little different than the others.
  It is used when processing a type which may have references
  to itself or some other types that are also being processed
  recursively.
  The simplest example is a structure which has a field that is a
  pointer to an instance of the same class. This occurs in a linked
  list, for example.  Then when resolving the definitin of this
  structure, we would end up resolving the type of this field
  and so would end up in an infinite loop.
  The call to \code{\link{resolveType}} arranges to check the
  collection of already resolved classes, and if it finds 
  a definition for the target node, it uses that.  When it starts
  actually resolving  a previously unprocessed type, it puts 
  a \code{PendingType} definition in the catalog of definitions
  to avoid the potential recursive loop.

  \code{C++ReferenceType} is used for typedefs and aliases
  where we have a type definition  that refers to another type
  definition. In this sense, the object is a type definition
  but the type it represents is another type definition.
  This is not to be confused with the \code{RC++Reference} class
  which is used at run-time as the base class for a
  reference/pointer to a C++ instance.
}
\section{Objects from the Class}{
  Instances of these classes are typically created via
  \code{\link{resolveType}}.
  Mostly, these are constructed directly using \code{new(class-name, ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{name}:}{Object of class \code{"character"} giving the
      "human" readable name for the type that is used when generating code.}
    \item{\code{typeName}:}{Object of class \code{"character"},
      identifying the base type of the pointer}
    \item{\code{depth}}{an integer indicating the level of indirection
      of this pointer type, i.e. that this is a pointer to
      a pointer to a pointer ...
      A simple pointer to an actual type has a depth value of 1.}
    \item{\code{qualifiers}}{a character vector returned from a call to
      \code{node$quals()} on the underlying Perl GCC::Node object.
      This gives the qualifiers for the node including things such as
      const, C, volatile, etc. that give us more information about the
      definition of the type.
    }
    \item{\code{scope}}{currently, a character vector with zero or a single
      named entry. If this is the empty vector, then the scope is the
      top-level. If this contains an element, that value is the index of
      the node in the TU array/parser that defines the scope. The name
      of the element gives the human readable name.
      This field is used to determine whether the type is visible at the
      top-level, i.e. C/C++ code that interfaces to the code.

      It is not clear that all TypeDefinition objects need this field,
      but it seems reasonable at the moment.
    }
  }
}
\section{Methods}{
No methods defined with class "TypeDefinition" in the signature.
}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\note{}


\seealso{
  \code{\link{resolveType}}
  The built-in primitive types
   i.e. \code{\link{boolType-class}}, etc.
}
\examples{

}
\keyword{classes}
