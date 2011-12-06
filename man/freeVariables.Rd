\name{freeVariables}
\alias{freeVariables}
\alias{freeVariables,GCC::Node::function_decl-method}
\alias{freeVariables,GCC::Node::var_decl-method}
\alias{freeVariables,GCC::Node::tree_list-method}
\alias{freeVariables,NativeRoutineDescription-method}
\alias{freeVariables,RoutineNodeList-method}
\alias{freeVariables,ANY-method}

\title{Determine the free (non-local) variables in a C/C++ routine/method}
\description{
  This function examines the body of a C/C++ routine or method
  and finds the references to variables 
  that are neither parameters or declared within the body.

  This requires that the TU contain information about the body 
  of routine/methods. This typically requires compiling the code
  with \code{g++}, even if the code is regular C.
}
\usage{
freeVariables(def, nodes, vars = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{def}{the node defining the routine (not the body)}
  \item{nodes}{the TU parser object providing the list of all the TU nodes}
  \item{vars}{this is a named list of variables that we pass from
    function to function as we process each expression and build
    up a collection of local variables that we have encountered within
    the scope.}
}

\value{
    
}
\author{Duncan Temple Lang}
\seealso{}
\examples{

}
\keyword{programming}
