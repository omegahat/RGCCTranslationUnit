\name{CRoutineDefinition-class}
\docType{class}
\alias{CRoutineDefinition-class}
\alias{C++RoutineDefinition-class}
\alias{CodeDefinition-class}
\alias{NativeRoutineDefinition-class}
\alias{RFunctionDefinition-class}

\title{Class "CRoutineDefinition"}
\description{
  This hierarchy of classes from CodeDefinition
  to RFunctionDefinition and CRoutineDefinition
  are used as a simple representation of text that is code for a
  particular function/routine entity.}
\section{Objects from the Class}{
  Use the constructor functions \code{CRoutineDefinition}
  and \code{RFunctionDefinition} to 
  create an instance of the appropriate class. These take care of 
 fixing the code to indent "appropriately" and put it into a single
 string.  See the internal function \code{formatCode} for how this is
 done if you want to enhance it.
}
\section{Slots}{
  \describe{
    \item{\code{code}:}{Object of class \code{"character"} giving the
    name of the routine, i.e. how one would call it and not the declaration.}
    \item{\code{name}:}{Object of class \code{"character"} 
      the entire code for the routine in a single string}
    \item{\code{prototype}:}{Object of class \code{"character"} that
      provides the prototype or declaration for the routine  that would
      be put in a header/include file.
    }
  }
}
\section{Methods}{
No methods defined with class "CRoutineDefinition" in the signature.
}
\references{ }
\author{Duncan Temple Lang}

\seealso{
  The internal function \code{formatCode} can be used to format
  code.
}
\examples{
CRoutineDefinition("square", c("double", 
                               "square(double x)", 
                               "{",
                               "return( x  * x);",
                               "}"))
}
\keyword{classes}
