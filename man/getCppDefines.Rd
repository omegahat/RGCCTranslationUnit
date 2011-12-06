\name{getCppDefines}
\alias{getCppDefines}
\title{Compute the C/C++ pre-processor macro definitions}
\description{
  The \code{getCppDefines} function attempts to get the definitions of the
  pre-processor definitions from one or more header/source files
  by using GCC's ability to emit the table of macro definitions.
  It compares the collection of defined symbols to that without
  the source file (but with specified system header files) so as
  to find the ones that are actually defined within the user-level
  source files and not the system definitions.
  These can then be processed further to organize them into different
  categories using, e.g.
  \code{\link{processDefines}} and \code{\link{filterMacros}}.
}
\usage{
getCppDefines(fileName = character(), cppFlags = "", cpp = "g++",
               flags = "-E -P -dM", sysIncludes = c("stdlib.h", "stdio.h"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fileName}{the name of the C/C++ source file which is to be
    passed to the pre-processor. This is the file containing the code
    for which we want to extract the pre-processor definitions.}
  \item{cppFlags}{any extra C/C++ pre-processor flags needed for
    processing \code{filename}. These can be literal strings
    giving the flags or alternatively, a shell command
    that computes the flags within the execution of the shell
    command to run the pre-processor. Such dynamic flags
    should be enclosed within double quotes with the command
    in back-quotes, e.g.
    \code{"`wx-config --cflags`"}.
    And this is platform-specific, working on Mac OS X and UNIX/Linux.
   }
   \item{cpp}{the name of the C/C++ pre-processor. By default, we use
     the GCC C++ compiler and instruct it to only run the pre-processor
     phase of the compilation via the \code{flags} arguments.
     One can specify an executable and flags here as the
     strings are pasted together to form the command.
     By separating the flags and the executable, we make it easier to
     specify
     a different executable, e.g. in a different location/directory than
     the default. 
     }
   \item{flags}{additional flags or command line-arguments to be passed
     to the pre-processor command (i.e. \code{cpp}).
     These control how the processor is invoked relative to
     executable which may be the regular compiler.
   }
   \item{sysIncludes}{a character vector which gives the names of the
     system-level include files which are to be treated as the baseline.
     These are used by first computing all the macro definition symbols
     that occur in these files (and the compiler/pre-processor itself)
     and removing these from the symbols that are found when
     we apply the pre-processor to the the user-specified source file, i.e.,
     \code{fileName}.
   }
}
\details{
  This uses the GCC suite's ability to dump the table of
  pre-processor symbols via command line arguments.
}
\value{
  A character vector giving the set of macro definitions
  as lines of the form \code{"#define SYM definition"}.
  Macros that have multi-line definitions will have multiple
  entries in this vector with the subsequent lines of the definition
  being successive elements in the result.
  These are manipulated and pulled into single
  definitions using \code{\link{processDefines}}.
}
\references{The GCC pre-processor}
\author{Duncan Temple Lang}
\seealso{
 \code{\link{processDefines}}
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{meta-programming}
\concept{programmatically generated bindings}
