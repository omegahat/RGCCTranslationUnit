\name{getRClassDefinitions}
\alias{getRClassDefinitions}
\title{Compute R classes corresponding to a C++ class}
\description{
  This function takes a translation unit node defining a class and
  then computes information about it to define an R class corresponding
  to that C++ class.
  It provides the R code to define this class as well as providing
  information about the ancestor classes.
  When working in recursive mode, the function can generate the R code
  to define classes for the entire hierarchy of ancestor classes.
}
\usage{
getRClassDefinitions(node, recursive = FALSE, className = getNodeName(node),
                      defaultBaseClass = "RC++Reference")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{node}{a translation parser node which defines a C++ class.
    This has class \code{GCC::Node::type_decl} and is a reference to a
    Perl object.}
  \item{recursive}{a logical value indicating whether to process the
    node and its ancestor classes recursively or just this leaf node by
    itself. If this is \code{TRUE}, the function returns a list
    with information about each of the classes in the ancestor chain.
  }
  \item{className}{the name to use for the R base of the class
    name. Note that \code{"Ptr"} is appended to this.}
  \item{defaultBaseClass}{the name of the base R class to use in the R
    class definition if the
    specified C++ class does not have any ancestors.
   }
}
\details{

}
\value{
  If \code{recursive} is \code{FALSE} (the default)
  this returns an object of S3 class \code{ClassDefinition}
  which has fields named:
  \item{definition}{}
  \item{baseClasses}{a named character vector giving the names of the
     classes from which this C++ class is derived. The names for this
     vector are the node identifiers in the translation unit of the
     corresponding class nodes for these parent classes.}
  \item{ancestors}{a named character vector giving the name of the C++
    class and the name of that element is the corresponding R class name}
  \item{className}{the name of the class being defined}

  If \code{recursive} is \code{TRUE}, the function returns a list
  with elements of class \code{ClassDefinition} as described
  in the previous paragraph.
  
}
\references{The GCC compiler suite}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{getClassNodes}}
  \code{\link{setClass}}
}
\examples{

}
\keyword{programming}

