\name{computeGlobalConstants}
\alias{computeGlobalConstants}
\title{Find the top-level/global variables that are constant}
\description{
  This function searches the translation unit for non-local
  or top-level  C/C++ variables and determines whether
  they are constant (i.e. declared with the qualifier \code{const}).
  The function then generates C code which can be run and in turn outputs
  R code to define R variables with the same values as these C level
  constants.  This works for simple types.
}
\usage{
computeGlobalConstants(tu = NULL, gvars = getGlobalVariables(tu, files),
                        files = character(),
                         defs = DefinitionContainer(tu),
                           varsOnly = FALSE, symbolic = FALSE,
                             access = c("public", "protected"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tu}{the translation unit node/parser, obtained by a call to \code{\link{parseTU}}}
  \item{gvars}{the global variable nodes. In some cases, these will
    already have been computed and then one only needs to pass these and
    not \code{files}.
    }
  \item{files}{a character vector identifying the names of the files
    mentioned in  the TU nodes in which we are interested, i.e. those
    in which the variables of interest are declared/defined.
    If \code{gvars} is specified, this is not used.
   }
   \item{defs}{the table of resolved nodes and data types and routines.
     This is a mutable object of class \code{DefinitionContainer} and
     we typically have just one of these for each translation unit
     and we reuse it across many of these functions which process
     the TU nodes further and resolve the different types.
   }
   \item{varsOnly}{a logical value which, if \code{TRUE} merely
     returns the indices of the elements in \code{gvars} which are
     constant. In general, the caller will want the generated code
     to calculate these values and so the default of \code{FALSE}
     is appropriate.
   }
   \item{symbolic}{a logical value indicating whether we want the
     values of the constants to be returned as values or symbolically in terms of
     other constant variables, e.g. \code{int x = a + b;} as
     \code{7} if \code{a = 3} and \code{b = 4} or as the expression
     \code{a + b}}
   \item{access}{a character vector containing any of
     \dQuote{public}, \dQuote{protected} and \dQuote{private}
     which is used to filter the constants returned.  This is relevant
     only for C++ code.
     This specifies whether we want public,   protected and/or private global variables.
    }
}
\value{
  An object of S3 class \code{ComputeConstants}.
  This is a list with two elements:
  \item{cmds}{a character vector with names giving the names of the
    global variables and entries giving C/C++ code to calculate the
    constant value or an \code{NA}}
  \item{filenames}{a character vector that parallels cmds and gives the
    names of the header file in which the variable is declared.
    This is used when we emit the C code to compute the values of these
    constants as R values as we need to include the header files to
    ensure  the constants are defined and accessible to our generated code.
    As with all TU files, we don't have the full path name but merely
    the base name of the file and some more computations are warranted
    to get the proper access to these files for the \code{#include} in
    the generated code.}
}
\references{The GCC compiler suite}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{parseTU}}
  \code{\link{computeGlobalEnumConstants}}
  \code{\link{getCppDefines}}
}
\examples{
  tu = parseTU(system.file("examples", "globals", "globals.c.tu", package = "RGCCTranslationUnit"))
  g = computeGlobalConstants(tu)
  names(g)
  names(g$cmds)
  g$filenames
}
\keyword{interface}
\concept{programmatically generated bindings}
\concept{meta-programming}

