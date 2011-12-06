\name{getRTypeName}
\Rdversion{1.1}
\alias{getRTypeName}
\alias{getRTypeName,ArrayType-method}
\alias{getRTypeName,BuiltinPrimitiveType-method}
\alias{getRTypeName,character-method}
\alias{getRTypeName,EnumerationDefinition-method}
\alias{getRTypeName,Field-method}
\alias{getRTypeName,GCCNode-method}
\alias{getRTypeName,GCC::Node::integer_type-method}
\alias{getRTypeName,GCC::Node::pointer_type-method}
\alias{getRTypeName,PointerType-method}
\alias{getRTypeName,SEXP-method}
\alias{getRTypeName,TypedefDefinition-method}
\alias{getRTypeName,TypedefEnumerationName-method}
\alias{getRTypeName,TypeDefinition-method}
\alias{getRTypeName,voidType-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Name of R type corresponding to native type}
\description{
 This function is used to find the name of the R type
 corresponding to the native type description.
}
\usage{
getRTypeName(type, typeMap = list(), ...)
}
\arguments{
  \item{type}{the native type object}
  \item{typeMap}{a caller-specifiable list of native type and conversion information.
   This can be used to override the default methods and allows one to customize the
   the code generation process for particular types that one wants to deal with in special ways.}
  \item{\dots}{additional parameters for methods}
}
\value{
 A string.
}
\references{
}
\author{
Duncan Temple Lang <duncan@wald.ucdavis.edu>
}

\seealso{
}
\examples{
}
\keyword{programming}
