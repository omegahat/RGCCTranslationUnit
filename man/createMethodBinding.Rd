\name{createMethodBinding}
\alias{createMethodBinding}
\title{Generate R and C/C++ code to interface to an C++ method}
\description{
  This function generates text defining an R function and a
  corresponding  C/C++ routine that  can be used to invoke
  the underlying method from R.
  The code takes care of marshalling the arguments from R
  to C/C++ and onto the original routine and converting the
  answer back to an R value.

  In the future, it will be easier to customize this conversion.
}
\usage{
createMethodBinding(m,
                    className = if (is(m, "ResolvedNativeClassMethod"))
                                   m$className
                                else
                                   character(),
                    isPolymorphic = FALSE,
                    addRFunctionNames = !isPolymorphic && length(inheritedClassNames) == 0,
                    name = m$name,
                    nodes = list(),
                    typeMap = list(),
                    paramStyle = if("paramStyle" \%in\% names(m))
                                    m$paramStyle
                                 else
                                    rep(NA, length(m$parameters)),
                    defaultRValues = list(),
                    ifdef = character(),
                    helperInfo = NULL,
                    resolvedMethods = list(),
                    extern = length(className) > 0,
                    useClassNameMethod = FALSE,
                    force = FALSE, signature = NULL,
                    dispatchInfo = data.frame(),
                    useSignatureParameters = TRUE)
}
\arguments{
  \item{m}{the description of the method, with the parameter and return
    type information fully resolved.}
  \item{className}{the name of the C++ class to which the method belongs.}
  \item{isPolymorphic}{a logical value}
  \item{addRFunctionNames}{a logical value indicating whether to assign
    R functions to a name. By default, if the method has multiple
    versions, i.e. is polymorphic, then the function is anonymous so
    that these functions can be used in other composite functions/methods.}
  \item{name}{the name of the C++ method being processed. This is
    usually available from the method itself, but can be specified here
    to override that default name or if, for some reason, it is not
    available.
    This allows us to specify the name for the wrapper routine to
    disambiguate between different overloaded methods.
    This essentially allows us to override the general action if
    \code{isPolymorphic} is \code{TRUE}.

    If this character vector has 2 or more elements, the second element
    is taken as the name of the R function and the first element is the
    name of the C/C++ routine.
  }
  \item{nodes}{the array of TU nodes, typically returned from a call to
    \code{\link{parseTU}}.
    This is used to resolve other nodes within the TU graph if this is
    necessary.
  }
  \item{typeMap}{a list whose elements indicate how to map a value
    between R and C/C++.  Each element should be a list containing
    4 elements named target, coerceR, convertToC, convertToR.
    The target is an object that describes what to match. This should
    currently be an explicit \code{\link{TypeDefinition-class}} object
    of the appropriate sub-class.
    The other elements are eithers strings identifying R or C/C++
    function or routine names that perform the relevant operation.
    The coerceR entry is used in the R wrapper function for a C/C++
    routine when coercing the R argument to the approriate type before
    passing it to the C/C++ routine in the \code{\link[base]{.Call}}.
    convertToC is used in the C/C++ wrapper routine to marshall the
    value from an R object (\code{SEXP}) to a C/C++ value.
    And convertToR is used when converting a native C/C++ value back to
    an R object.

    The converter elements can also be functions rather than strings.
    
  }
  \item{paramStyle}{a character vector with the same length as the
    parameter list (even for a constructor) with elements which are
    simply empty strings, in, out or inout
    indicating whether the parameters are to be treated as
    standard (""), input only with no interest in the output ("in"),
    only for output and so not accepted as arguments in the call
    ("out"),
    and both input and output arguments.
    out parameters are collapsed in the bindings so that they do not
    appear in the signature of the R function, but are returned in the
    result.   When a routine has any inout or out arguments, the result
    becomes a list containing the actual return value from the C/C++
    routine
    and the out and inout values named according to the parameter names.
  }
  \item{defaultRValues}{a named character vector giving
    default R expressions/values for the parameters in the R function.
    One need not specify values for all parameters, only those of
    interest.
    If no value is supplied for a parameter, any value in
    the parameter's \code{defaultValue} field is used, so one can set
    this prior to the call in the \code{m} object.
    The translation unit parser will find default values for C++
    routines and methods when they are identified in the code
    and will make an attempt to create the corresponding R expression.

    This parameter will be generalized to accept a list of expressions/calls
    or strings.
  }
   \item{ifdef}{a character string which, if non-empty, is used to enclose
   the entire generated code within and \code{#ifdef string ... #endif}
   block.
   This allows one to generate code that is conditionally compiled,
   e.g. for specific platforms.}
  \item{resolvedMethods}{a collection of all the resolved methods, for
    this and other classes (?). Certainly the related, ancestor classes
    and perhaps the descendant classes}
  \item{helperInfo}{a mutable (environment) object that allows us to
    collect information about what is being defined and what other
    definitions will be needed.}
  \item{extern}{doesn't appear to be used.}
  \item{useClassNameMethod}{a logical value which controls whether we
    prefix the names of routines with the C++ class name for which they are
    to be used. This avoids overloading issues.}
  \item{force}{a logical which controls whether to generate bindings for
         protected and private methods}
  \item{signature}{ A collection of the future generics across the entire code base that we are considering.
            So this tells us what functions are overloaded.}
 \item{dispatchInfo}{ a data frame. This is passed to and from the different
   helper functions and builds up information about the number of
   possible arguments for different methods.
 }
 \item{useSignatureParameters}{a logical controlling whether to use the
   parameters from the local definition or the centralized overloaded method.
 }
}

\value{
  A list containing the generated code text for each of the languages,
  native (C/C\+\+) and R.
  \item{native}{text for the C/C++ routine}
  \item{r}{text for the R function (with no variable name/assignment information)}
}

\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\note{
  In the future, we could allow for name to be a vector of length
  2 and this would give us the name of the C routine and the
  name of the C++ method.

}

\seealso{
  \code{\link{readTU}}
  \code{\link{getClassNodes}}
  \code{\link{getClassMethods}}
  \code{\link{resolveType}}
}
\examples{
\dontrun{
 library(RGCCTranslationUnit)
 my = parseTU(system.file("examples", "ABC.cpp.tu", package = "RGCCTranslationUnit"))

 k = getClassNodes(my)
 m = getClassMethods( k$B )
 s = resolveType(m$shift, my)

 z = createMethodBinding(s, "B")


#XXX
 p = parseTU(system.file("examples", "structs.cpp.t00.tu", package = "RGCCTranslationUnit"))
 d = getAllDeclarations(p, "structs")
 r = getRoutines(p, "structs")

 # RGCCTranslationUnit:::processFunction( p [[ r[[ "createA" ]][["INDEX"]]  ]])
}
}
\keyword{interface}
\keyword{programming}
