\name{DerivedClassCode}
\alias{DerivedClassCode-class}
\docType{class}
\title{Generated code for a derived C++ class implementation with R functions}
\description{
  This represents the different pieces of generated code that defines
  and implements  an extensions or derived class of a C++ class
  which allows the virtual methods to be implemented via R functions.
}
\section{Constructors}{}
\section{Slots}{
\describe{
  \item{\code{className}:}{the name of the R and C++ class}
  \item{\code{classDefinition}:}{the C++ definition of the new class,
    i.e. the C++ code that lists the fields, methods, inheritance, etc.}
  \item{\code{rsetClass}:}{the R code to define the R class}
  \item{\code{rfieldAccessors}:}{the R code to access an individual
    field of an instance of this newly derived class. This provides the
    method for \code{\[\[} so that \code{obj\[\["x"\]\]} retrieves the value of the C++  field %]]
    named "x". This function knows about the available methods for this
    class and if there is no match, delegates to an inherited method so
    that the calls consult the ancestor classes.}  
% \item{\code{rsetMethods}:}{C++ interface code to allow a call from R
%   to set the methods as one collection (environment or list)}
% \item{\code{rgetMethods}:}{C++ interface code to allow R to retrieve the current values of
%   the methods implemented via R functions for this object}
% \item{\code{rsetMethodsFunction}:}{R function to set the methods}
% \item{\code{rgetMethodsFunction}:}{R function to retrieve the current
%   set of methods}
% \item{\code{setMethods}:}{C++ code to set individual }
  \item{\code{rconstructors}:}{R function(s) to create instances of these objects.}
  \item{\code{methodNames}:}{a character vector giving the signatures of
    the methods and the names corresponding to the internal fields used to
    store the R functions that act as a method when using individual method fields.}
   \item{\code{functionNames}:}{}
   \item{\code{destructor}:}{}
   \item{\code{RmethodIdRoutine}:}{}
   \item{\code{methodImplementation}:}{}
   \item{\code{methodNamesArray}:}{}
   \item{\code{methodAccessors}:}{}
   \item{\code{nativeClassConstructors}:}{}
   \item{\code{ifdef}:}{}
   \item{\code{callInherited}:}{}
   \item{\code{sharedMethods}:}{}
   \item{\code{sharedMethodsDef}:}{}
   \item{\code{namesMethod}:}{}
   \item{\code{protectedMethods}:}{}
  
 }
}

\section{Methods}{}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}
\seealso{
  
}
