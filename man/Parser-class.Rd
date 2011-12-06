\name{GCC::TranslationUnit::Parser-class}
\alias{GCCTUNativeParser-class}
\alias{GCCTUParserDynClass-class}

\docType{class}
\alias{[[}
\alias{$}
\alias{[[,GCC::TranslationUnit::Parser,character,missing-method}
\alias{GCC::TranslationUnit::Parser-class}
\alias{lapply,GCCTUNativeParser-method}
%\alias{sapply,GCCTUNativeParser-method}
\alias{length,GCCTUNativeParser-method}
\alias{sapply,GCC::TranslationUnit::Parser-method}
\alias{lapply,GCC::TranslationUnit::Parser-method}
\alias{[[,GCCTUNativeParser,ANY-method}
\alias{[[,GCCTUNativeParser,NativeTUParserIndex-method}      
\alias{[[,GCCTUNativeParser,TUParserIndex-method}            

\alias{asReference}% Appropriate place for these?XXX
\alias{asReference,ANY-method}
\alias{asReference,VariableReference-method} 

\title{Class "GCC::TranslationUnit::Parser"
  A convenience class for supporting an indexing method for
 the Perl array of nodes.}
\description{ This class is merely a convience class that is used to
  represent in R the result of parsing a translation unit from GCC using
  Perl tools.  The class identifies a reference to a Perl array of
  nodes.  We typically get this array via a call to
  \code{\link{readTU}} and then we access elements
  of the array by "following"nodes based on the
  INDEX field of another node.
  These INDEX values are strings that identify the nominal
  index of the element of interest. However, these need
  to be converted to the actual index by adding 1 to the
  integer value.
  The purpose of this class is to provide a method that
  handles indexing by these INDEX strings which does the
  necessary conversion.  This makes the manipulation
  of the node paths easier at an interactive level.
}
\section{Objects from the Class}{A virtual Class: No objects may be created from it.}
\section{Extends}{
  Class \code{"oldClass"}, directly.
  This is an old-style, S3 class that is used simply to
  provide a method for \code{[[}.  
}
\section{Methods}{
  Currently, there are methods for accessing individual elements
  using the position or the node name.  These take into account the
  extra first element in the Perl array that requires us to add one to
  the node name to get the actual index in the array.

  The other two methods defined for this class are 
 \code{lapply} and \code{sapply}. These hide the details how we loop
 over the Perl array. They might be better defined for PerlArray
 references directly in the RSPerl package.
} 
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}


\seealso{
  \code{\link{readTU}}
  The internal function \code{getIndex}
  which returns the actual integer index of a node
  along with its string identifier which is one less.
}
\examples{
}
\keyword{classes}
