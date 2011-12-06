\name{RC++Reference-class}
\docType{class}
\alias{RC++Reference-class}
\alias{$,RC++Reference-method}

\alias{SEXP-class}

\title{Basic class for representing external C++ objects}
\description{
   These are the basic, top-level R classes  for representing references
   to C/C++ objects that are maintained as external pointers.

   The \code{SEXP} class is for representing C data types that
    correspond to R objects of any type.
}
\section{Objects from the Class}{
 Typically, this class is not used directly.  Rather, R classes are
 defined that extend this one and mirror the corresponding C++ class.
 The purpose of this class is to provide methods for accessing fields
 and methods in the underlying C++ object via the \code{$} operator.
 Instances of this class are typically created directly in the C/C++.

 This class and related code can be used directly by programmers. 
 However, they are offered here as support for machine generated code.
 They can be used within the R-SWIG interface, as well as  other
 approaches to interfacing with C/C++ code.
}
\section{Slots}{
	 \describe{
    \item{\code{ref}:}{Object of class \code{"externalptr"}.  This is
 the value of the memory address of the actual C/C++ object. }
    \item{\code{classes}:}{Object of class \code{"character"} .
     This vector stores the names of all the ancestor classes for an
     instance of this specific class.    This information  is used 
   in C/C++ code when dereferencing the address stored in
    the \code{ref} slot.   It checks that this reference is compatible
   with the target class by comparing the target name to each of the
  class names in this slot.
   }
  }
}
\section{Methods}{
 \describe{
  \item{\$}{\code{signature(x = "RC++Reference")}}:
    this provides the basic syntactic-sugar for invoking methods and
 accessing fields  in the underlying C++ object using the form
   \code{obj$method(arg1, arg2, .....)} and \code{obj$field}
}
}

\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}


\seealso{
  
}
\examples{

}
\keyword{classes}
