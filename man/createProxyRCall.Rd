\name{createProxyRCall}
\alias{createProxyRCall}
\title{Generate C routine to act as proxy for a C routine pointer}
\description{
 This function is used to create  C code that one can use as a function pointer
 as a callback which will in turn call an R function. This allows an R programmer
 to provide an R function where a C routine is expected.
}
\usage{
createProxyRCall(func, name, functionVar = paste("R", name, "function_var", sep = "_"), preamble = character(), typeMap = list())
}
\arguments{
  \item{func}{a \code{FunctionPointer} object that provides the description of the C routine for which we want to create
   a proxy which will call an R function.
  }
  \item{name}{the name of the new C routine being created.}
  \item{functionVar}{a string the provides C code which is used to obtain
   the R function to call.  This might be to cast an argument of the routine,
   access a global variable, or a call to a C routine which will return a \code{SEXP}.}
  \item{preamble}{additional code that is inserted into the generated C routine
     at the end of the declarations but before the calls.
  }
  \item{typeMap}{mappings from C types to converters between R and C and providing corresponding variable types in the different languages. }
}
\value{
 a \code{CRoutineDefinition} object containing the generated C routine code.
}
\author{
Duncan Temple Lang
}


\seealso{

}
\examples{
    # 
    #  Create the description of a C routine that returns an integer
    #  and accepts 2 parameters - an integer and a double.
    # 
  funDef = new("FunctionPointer", 
                  returnType = new("intType"),
                  parameters = list(new("Parameter", name = "a", type = new("intType")),
                                    new("Parameter", name = "b", type = new("doubleType"))))

  funDef

      # now create the proxy routine that would call an R function.
  code = createProxyRCall(funDef, "foo")
  print(code)

\dontrun{
      #XXX  correct the name of the doubleType for the pointer in the createNativeReference.
  funDef = new("FunctionPointer", 
                  returnType = new("intType"),
                  parameters = list(new("Parameter", name = "a", type = new("intType")),
                                    new("Parameter", name = "b", type = new("PointerType", type = new("doubleType", name = "double")))))
}
}

\keyword{programming}

