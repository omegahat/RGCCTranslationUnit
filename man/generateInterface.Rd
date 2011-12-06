\name{generateInterface}
\alias{generateInterface}
\alias{generateInterface,character,ANY-method}
\alias{generateInterface,TUParser,ANY-method}
\alias{generateInterface,TUParser,character-method}
\alias{generateInterface,TUParser,ResolvedRoutineList-method}
\title{High-level function for creating R interface to C/C++ code}
\description{
  This is the high-level function that attempts to provide a simple
  interface for R users to generate code to allow her or other R users
  to invoke C/C++ routines and work with C/C++ data strucutres.
  It attempts to find all or a subset of the routines in a translation
  unit and generate an R interface to each along with the supporting
  functionality for converting and working with the data structures
  that are inputs or outputs to these routines. 
  
  The function expects a translation unit file (or parsed translation unit)
  and by default creates an R interface for each C/C++ routine
  in that TU. One can specify the routines of interest by name to
  identify a subset.
  The function determines which data structures are needed in
  this interface and generates R and C/C++ code for each these
  also. One can specify additional data types (e.g. enumerations that
  are not explicitly used in the routines) for the code generation.
  And one can also identify the global variables of interest by name.

}
\usage{
generateInterface(tu, routines = character(), dataTypes = character(), 
                  variables = getGlobalVariables(tu, files),
                  outfile = gsub(".[0-9]t.tu", "", basename(tu)),
                  includes = character(), language = NA, 
                  omitPattern = character(), files = character(), typeMap = list(),
                  dllName = gsub(".R$", "", basename(outfile[1])), ...) 
}

\arguments{
  \item{tu}{the name of the TU file, or the parsed TU object itself
    giving the collection of nodes in the TU.}
  \item{routines}{usually the names of the routines of interest which
    are found in the \code{tu} object. Alternatively,
    one can find and filter the routines prior to calling
    \code{generateInterface} (with \code{\link{getRoutines}})
    and then resolve them via \code{\link{resolveType}}.
  }
  \item{dataTypes}{like \code{routines}, typically the names of the
    data structures of interest. One has to deal with duplicate matches
    and fetching the "wrong" data type when there are type definitions
    in effect.   Alternatively, one can use
    \code{\link{getDataStructures}} prior to calling
    \code{generateInterface}  and so filter and identify the data
    structures of interest.
    Code to interface to these data structures is generated as part of
    this function. You do not need to identify data structures that are
    used  in routines, either as parameters or return types, as these
    are automatically processed and an interface for each type generated.
  }
  \item{variables}{the list of nodes identifying the variables we want to be able to access (query and possibly set)
   via our interface to the C code.}
  \item{outfile}{a character vector giving either the names of the R and
    C/C++ files into which the generated code will be written, or
    alternatively a single string which provides the base name of the
    file to which the appropriate prefixes will be added to
    generate the R and C/C++ file names.
   }
   \item{includes}{a character vector containing the
   files to \code{#include} in the generated C/C++ code so that all the
   native definitions are available. This is in the same form as
   for \code{\link{writeCode}} and \code{\link{writeIncludes}}
   and should have the names of the files enclosed in quotes or
   \code{<>}.
 }
  \item{language}{ a string giving the native language of the C/C++ code}
  \item{omitPattern}{a regular expression which is used to identify
    routines which are to be discarded by matching the names of the
    routines with this regular expression.  All matching names are
    omitted. This provides a convenient mechanism for saying "all but
    these routines" rather than having to enumerate a lengthy list
    of those to include.
  }
  \item{files}{a character vector which if specified is passed to
    \code{\link{getRoutines}} and \code{\link{getDataStructures}}
    to filter routine and data structure definitions. Only those
    routines and data structures defined within these files will be
    included.
  }
  \item{typeMap}{a list of mappings for customizing the
    generated code.  Such elements provide information, for example,
    about how to convert a particular C-level data structure to R or
    vice verse.}
  \item{dllName}{the name of the file that will be compiled, linked
   and dynamically loaded into R containing the C-level interface to the
   native code.  This is used in the generated code in the \code{.Call}
   expressions to identify the DLL specifically via the \code{PACKAGE} argument.}
  \item{\dots}{additional arguments passed on to \code{\link{createMethodBinding}}.}
}
\note{This current does not process C++ classes.
  This will be added later and can be done using
  other functions, e.g. \code{\link{getClasses}}
  and \code{\link{createMethodBinding}} and
  \code{\link{writeCode}}.
}

\value{
  A list with the following elements
  \item{source}{a character vector giving the names of the files to
    which the    code was written}
  \item{routines}{the names of the routines for which code was
    generated}
  \item{dataTypes}{the names of all the data structures for which
    interfaces were generated. This is the combination of both
    structures specified by the caller (via \code{dataStructures})
    and those determined by the function to be needed in
    any of the interfaces to the routines.
  }
}
\references{The GNU compiler suite.}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{parseTU}}
  \code{\link{getRoutines}}
  \code{\link{getDataStructures}}
  \code{\link{getClasses}}
}  
\examples{
\dontrun{
generateInterface("rlimit.cc.001t.tu", 
                  c("getrlimit", "setrlimit"), 
                  dataTypes = "__rlimit_resource", 
                  outfile = "rlimit", 
                  includes = c("<sys/time.h>", "<sys/resource.h>", '"RConverters.h"'), 
                  language = "C")


v = generateInterface("rlimit.cc.001t.tu", , , 
                       outfile = "bar", 
                       includes = c("<sys/time.h>", "<sys/resource.h>", '"RConverters.h"'),
                       language = "C", omitPattern = "64", files = "resource.h")

v = generateInterface("tmp.c.001t.tu", , , 
                       outfile = "bar", 
                       includes = c("<sys/time.h>", "<sys/resource.h>", '"RConverters.h"'),
                       language = "C", omitPattern = "64")
}
}

\keyword{programming}
\concept{meta-programming}

