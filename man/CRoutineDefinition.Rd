\name{CRoutineDefinition}
\alias{CRoutineDefinition}
\alias{C++MethodDefinition}

\alias{coerce,RFunctionDefinition,character-method}
\alias{coerce,RMethodDefinition,character-method}
\alias{coerce,NativeRoutineDefinition,character-method}
\alias{coerce,C++ClassDefinition,character-method}
\alias{coerce,ResolvedTypeReference,C++ClassDefinition-method}
\alias{coerce,TypeDefinition,character-method}
\alias{coerce,TypedefDefinition,character-method}
\alias{coerce,BuiltinPrimitiveType,character-method}
\alias{coerce,BuiltinPrimitiveType,C++ClassDefinition-method}
\alias{coerce,BuiltinPrimitiveType,EnumerationDefinition-method}
\alias{coerce,PointerType,character-method}
\alias{coerce,C++ReferenceType,character-method}



\alias{coerce,ActiveBinding,character-method}
\alias{coerce,EnumerationDefinition,character-method}
\alias{coerce,GCCNode,character-method}
\alias{coerce,GCCNode,list-method}
\alias{coerce,NativeSignature,character-method}
\alias{coerce,RAsDefinition,character-method}
\alias{coerce,ResolvedNativeClassConstructor,character-method}
\alias{coerce,ResolvedNativeClassMethod,character-method}
\alias{coerce,ResolvedNativeRoutine,character-method}
\alias{coerce,RGenericDefinition,character-method}
\alias{coerce,RMethodDefinition,RAnonymousFunctionDefinition-method}
\alias{coerce,TypedefDefinition,FunctionPointer-method}


\title{Create a code object}
\description{
  These constructor functions are used to create a text representation of
  code that we can output later. We can represent a C routine or an R function
  with the actual definition and also its name
  and declaration/prototype for C routines.
}
\usage{
CRoutineDefinition(name, code, nargs = NA,
                   declaration = getDeclaration(code),
                   className = character(),
                   obj =  new("CRoutineDefinition"),
                   formatCode = TRUE)
}
%RCode(..., .txt = unlist(list(...)), indent = "", class = "RCode")
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{the name of the C routine}
  \item{code}{a character vector giving the code for the routine including the declaration, etc.
   The return type should be on a separate line.(?)}
  \item{obj}{the object to be filled in and returned}
  \item{nargs}{the number of parameters}
  \item{className}{if specified, this is used to provide the namespace qualifier for the function.}
  \item{declaration}{the declaration for the routine. This will be enclosed within a \code{#ifdef __cplusplus}.}
  \item{formatCode}{a logical value controlling whether to process the text of the code to format it appropiately.}
% \item{...}{}
% \item{txt}{}
% \item{indent}{}
% \item{class}{}
}
\details{
}
\value{
  An object of class \code{\link{CRoutineDefinition-class}}
  or \code{\link{RFunctionDefinition-class}} depending on which
  constructor is invoked!
}
\note{The RCode function uses S3-style classes and is less structured
  than the C routine representation as it does not need to know
  the name of the function, etc. but is merely a textual representation
  of R code.
}
\references{ }
\author{Duncan Temple Lang}
\seealso{
  Any functions that we use to generate a C/C++ routine definition
  or an R function or R code.
}
\examples{

}
\keyword{programming}

