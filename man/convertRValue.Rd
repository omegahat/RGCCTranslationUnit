\name{convertRValue}
\alias{coerceRValue}
\alias{convertValueToR}
\alias{convertRValue}
\alias{convertValueToR,ANY,CString-method}
\alias{coerceRValue,ANY,PendingType-method}
\alias{coerceRValue,ANY,C++ReferenceType-method}
\alias{coerceRValue,ANY,C++ClassDefinition-method}
\alias{coerceRValue,ANY,EnumerationDefinition-method}
\alias{coerceRValue,ANY,intType-method}
\alias{coerceRValue,ANY,doubleType-method}
\alias{coerceRValue,ANY,boolType-method}
\alias{coerceRValue,ANY,complexType-method}
\alias{coerceRValue,ANY,PointerType-method}
\alias{coerceRValue,ANY,ArrayType-method}
\alias{coerceRValue,ANY,TypedefDefinition-method}
\alias{coerceRValue,ANY,StructDefinition-method}
\alias{coerceRValue,ANY,CString-method}
\alias{coerceRValue,ANY,FunctionPointer-method}
\alias{coerceRValue,ANY,RDerivedMethodsList-method}
\alias{coerceRValue,ANY,SEXP-method}
\alias{coerceRValue,ANY,UnionDefinition-method}
\alias{coerceRValue,ANY,unsignedCharType-method}
\alias{coerceRValue,ANY,unsignedIntType-method}
\alias{coerceRValue,ANY,UserDataType-method}

\alias{convertRValue,ANY,complexType-method}
\alias{convertValueToR,ANY,PendingType-method}
\alias{convertValueToR,ANY,TypedefDefinition-method}
\alias{convertValueToR,ANY,intType-method}
\alias{convertValueToR,ANY,EnumerationDefinition-method}
\alias{convertValueToR,ANY,voidType-method}
\alias{convertValueToR,ANY,doubleType-method}
\alias{convertValueToR,ANY,boolType-method}
\alias{convertValueToR,ANY,complexType-method}
\alias{convertValueToR,ANY,PointerType-method}
\alias{convertValueToR,ANY,C++ReferenceType-method}
\alias{convertValueToR,ANY,ArrayType-method}
\alias{convertValueToR,ANY,C++ClassDefinition-method}
\alias{convertValueToR,ANY,StructDefinition-method}
\alias{convertValueToR,ANY,RoutineDefinition-method}

\alias{convertRValue,ANY,intType-method}
\alias{convertRValue,ANY,doubleType-method}
\alias{convertRValue,ANY,boolType-method}
\alias{convertRValue,ANY,EnumerationDefinition-method}
\alias{convertRValue,ANY,C++ReferenceType-method}
\alias{convertRValue,ANY,PointerType-method}
\alias{convertRValue,ANY,TypedefDefinition-method}
\alias{convertRValue,ANY,StructDefinition-method}
\alias{convertRValue,ANY,UnionDefinition-method}
\alias{convertRValue,ANY,C++ClassDefinition-method}
\alias{convertRValue,ANY,intType-method}
\alias{convertRValue,ANY,ArrayType-method}

\alias{convertRValue,ANY,ANY,ArrayType-method}
\alias{convertRValue,ANY,ANY,boolType-method}
\alias{convertRValue,ANY,ANY,C++ClassDefinition-method}
\alias{convertRValue,ANY,ANY,complexType-method}
\alias{convertRValue,ANY,ANY,C++ReferenceType-method}
\alias{convertRValue,ANY,ANY,doubleType-method}
\alias{convertRValue,ANY,ANY,EnumerationDefinition-method}
\alias{convertRValue,ANY,ANY,Field-method}
\alias{convertRValue,ANY,ANY,FunctionPointer-method}
\alias{convertRValue,ANY,ANY,intType-method}
\alias{convertRValue,ANY,ANY,PointerType-method}
\alias{convertRValue,ANY,ANY,SEXP-method}
\alias{convertRValue,ANY,ANY,StructDefinition-method}
\alias{convertRValue,ANY,ANY,TypedefDefinition-method}
\alias{convertRValue,ANY,ANY,UnionDefinition-method}
\alias{convertRValue,ANY,ANY,unsignedCharType-method}
\alias{convertRValue,ANY,ANY,UserDataType-method}

\alias{convertValueToR,ANY,Field-method}
\alias{convertValueToR,ANY,SEXP-method}
\alias{convertValueToR,ANY,UnionDefinition-method}
\alias{convertValueToR,ANY,unsignedCharType-method}


\title{Create C/C++ code to convert R value to C/C++ type}
\description{
  These three functions (and associated methods) perform the
  code generation to marshal values between R and C/C++.
  \code{coerceRValue} is used in the R wrapper function
  to ensure that the argument is coerced to the appropriate
  type in R before being passed to the C code. This can perform
  explicit coercion to change the object and also raise errors if it is
  not appropriate.
  \code{convertRValue}
  generates C/C++ code to convert an R value given as a \code{SEXP}
  to the specified target type in C/C++.
  And \code{convertValueToR} is used for converting native types
  to their R equivalents when they are being returned to R,
  e.g. as return values of routines or copying fields in a struct/class
  back to R.
}
\usage{
convertRValue(to, name, parm, parameters, typeMap = list(), helperInfo = NULL)
coerceRValue(name, parm, caller = NULL, typeMap = list(), helperInfo = NULL)
convertValueToR(name, parm, parameters, invoke = "", typeMap = list(),
                 out = FALSE, helperInfo = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{to}{the description of the native type to which the R value is
    to be converted.}
  \item{name}{the name of the C-level variable holding the R object.}
  \item{parm}{the type description for the target parameter. This is an
    object derived from \code{TypeDefinition-class}}
  \item{parameters}{a named list of the other paramter types.
    (Is this sometimes a character vector with just the names?)}
  \item{typeMap}{an object that provides customized options for
    different C/C++ types for any of the three different operations.}
  \item{invoke}{?}
  \item{helperInfo}{currently ignored.}
  \item{out}{currently ignored.}
  \item{caller}{an object that describes the routine that is calling for the coercion of the R object.}
  \item{...}{support for parameters that can be defined by particular methods}
}
\value{
  These functions return code segments.
}
\references{}
\author{Duncan Temple Lang}
\note{


}
\seealso{}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\keyword{interface}
