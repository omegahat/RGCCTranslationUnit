\name{getNativeDeclaration}
\alias{getNativeDeclaration}
\alias{getNativeDeclaration,ANY,TypeDefinition-method}
\alias{getNativeDeclaration,ANY,StructDefinition-method}
\alias{getNativeDeclaration,ANY,C++ClassDefinition-method}
\alias{getNativeDeclaration,ANY,PointerType-method}
\alias{getNativeDeclaration,ANY,C++ReferenceType-method}
\alias{getNativeDeclaration,ANY,voidType-method}
\alias{getNativeDeclaration,ANY,character-method}
\alias{getNativeDeclaration,ANY,ArrayType-method}
\alias{getNativeDeclaration,ANY,ResolvedTypeReference-method}
\alias{getNativeDeclaration,ANY,EnumerationDefinition-method}
\alias{getNativeDeclaration,ANY,TypedefEnumerationDefinition-method}
\alias{getNativeDeclaration,ANY,FunctionPointer-method}
\alias{getNativeDeclaration,ANY,PendingType-method}

\title{Compute C/C++ declaration for specified variable}
\description{
  This function is responsible for creating the text
  that declares a C/C++ variable of the specified type
  so that it can be used as a parameter in a
  C/C++ routine or as a local variable within the routine.
  It combines a type and a symbol name to create the
  declaration code.
  It can optionally put a ; at the end of the code.
}
\usage{
getNativeDeclaration(name, v, variableNames, addSemiColon = TRUE, const = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{the name for the variable or parameter}
  \item{v}{a description of the type of the variable being declared.
    This is typically obtained by resolving a type definition
    from the translation unit using \code{\link{resolveType}}
    but can be created manually.
  }
  \item{variableNames}{the names of other known variables in the routine
    definition which could be used to avoid conflicts.}
  \item{addSemiColon}{a logical value indicating whether to
    add a `;' at the end of the generated declaration code.
    When generating parameter declarations for a routine, we
    don't want the ;. But for local variables, we do.
  }
 \item{const}{this is used in some of the methods
   to qualify the declaration as being a constant/immutable
   "variable". This information can also be determined
   in many cases from the type \code{v}.
   If this is \code{NA}, the value is determined from \code{v}.
   Otherwise, it should be a logical value with \code{TRUE} indicating
   to add a const qualifier to the generated code declaration.
 }
}
\details{
}
\value{
  A string (character vector of length 1) giving the
  declaration for the code.
}
\references{}
\author{Duncan Temple Lang}

\seealso{}
\examples{
}
\keyword{programming}
\keyword{interface}
