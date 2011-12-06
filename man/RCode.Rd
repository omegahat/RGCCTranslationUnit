\name{RCode}
\alias{RCode}
\alias{RDollarDefinition}
\alias{RClassDef}
\alias{RAsDefinition}
\title{Functions for creating representations of R code as text}
\description{
  These functions allow us to represent R objects
  which represent various types of R code, functions  and methods.
  These also simplify indenting the code.

}
\usage{
RCode(..., .txt = unlist(list(...)), indent = "", class = "RCode")
}
\arguments{
  \item{\dots}{character strings giving the text for the code}
  \item{.txt}{an alternative way to provide the strings for the code}
  \item{indent}{the string to prefix the text, i.e. indent.}
  \item{class}{the type of object. This allows us to use the same function
   to construct different types of objects}
}
\value{
 An instance of class \code{class} containing the code
 as a single string concatenated togther with a new line
 character (\\n).
}
\author{Duncan Temple Lang}

\seealso{}
\examples{
  RCode("if(is.null(x))", "   stop('x is null')", "x[[2]]")
}
\keyword{programming}
