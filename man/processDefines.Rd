\name{processDefines}
\alias{processDefines}
\alias{filterMacros}
\title{
 Organize and filter the raw macro definitions into categories.
}
\description{
  This function \code{processDefines} processes the lines of macro/pre-processor definitions
  (typically obtained by a call to \code{\link{getCppDefines}}
  and organizes the lines  by 
  combining multiple lines definitions into single macros
  and then   does an initial filtering to remove the basic
  definitions and duplicates.
  Finally, the function filters the definitions according to
  regular expressions and other, context specific
  \dQuote{rules} and arranges the macros into different
  categories identifying them as
  simple flags, constants, macros whose bodies need to be calculated
  in C code, parameterized macros (i.e. accepting arguments)
  and macros that are to be ignored, e.g. barriers for avoiding
  recursive inclusion of a header file (
  \code{#ifndef FOO_H.
    #define FOO_H
    ...
   #endif}.

  \code{filterMacros} is the default filtering mechanism used
  to identify macros that we don't want to map to the R interface
  and modify any that need to be changed for mapping into R.
  Instead of a single filter function, one can pass a list
  of these filter functions and they will be called in turn
  with the output from the previous function so that we
  progressively filter the collection of macro definitions.
  
}
\usage{
processDefines(lines, class = c("TopLevelConstants", "DefineConstants"),
               headerIfDefPattern = "(_H_{,2}|_H_BASE_)$",
               keepFlags = length(headerIfDefPattern) && nchar(headerIfDefPattern),
               filter = filterMacros, ..., tu = NULL)


filterMacros(qq, namePatterns = c("^SQL", "pthread"),
             valuePatterns = c(),
             globalConstants =
                computeGlobalConstants(tu, getGlobalVariables(tu, files), defs = typeDefs),
             enumDefs = computeGlobalEnumConstants(tu,
             getEnumerations(tu, files), defs = typeDefs),
             tu,
             typeDefs = DefinitionContainer(tu),
             files = character())
}
\arguments{
  \item{lines}{a character vector giving the
    lines from the pre-processor defining the macros,
    including multi-line macros whose contents are
    spread across multiple (contiguous) elements of this vector.
    Typically this is the output from a call to \code{getCppDefines},
    but other approaches to obtaining these lines are possible,
    e.g. grep.
    }
    \item{class}{a character vector, currently ignored,
      but intended to specify the S3 class label of the result of this
      call.}
%%  \item{removeDuplicates}{a logical value, 
%%     intended to indicate whether the
%%     function should find macro symbols which are defined more than
%%     once  and discard all but the last definition.
%%     This is currently unused but intended to be passed on to
%%     processDefinesAgain but this seems to have been rolled into
%%     filterDefines
%%    }
%% \item{getSkipped}{a logical value
%%   which specifies whether the function should return
%%   only the macro definitions that were discarded and not
%%   the ones which were kept. This is convenient  for
%%   diagnostic purposes to see what the filtering is
%%   omitting rather than keeping.
%%     This is currently unused but intended to be passed on to
%%     processDefinesAgain but this seems to have been rolled into
%%     filterDefines.
%% }
  \item{headerIfDefPattern}{a regular expression which
    is used to identify macro names which are used
    simply to avoid repeated #include's of
    header files.  This can be a patterned regular expression
    such as the default, or if one knows the header files
    and their barrier names, one can specify a literal
    OR'ed regular expression of the form, e.g.,
    \code{"(A_H|B_H)"}.
    This is only used if \code{keepFlags} is \code{TRUE}.
  }
\item{keepFlags}{a logical vector which, if \code{TRUE}, controls whether the function
  endeavors to process the macro symbols which are simply flags
  or whether it adds them to the list of ignored macros.
}
\item{filter}{a function or a list of functions. Each  function is called
    with the processed results and can perform further reductions and re-organiztations.
   When a list of functions is provided by the caller,
   the output of one function is passed as the input to the next function
   for continued filtering and the result is the object returned by the
   last of these functions. This allows one to use a collection of
   separate filters to do all the filtering that is needed.}
 \item{qq}{the collection of definitions from the pre-processing.
   This is a list with several elements - macros, calculate - that
   identify different types of definitions.}
 \item{namePatterns,valuePatterns}{a character vector giving
   patterns of macro names or macro values that we want to omit.}
  \item{globalConstants}{a collection of descriptions of global
             constants. These may be referenced in the macros.}
  \item{enumDefs}{a collection of definitions of enumerations in the
             translation unit. These may be referenced in the macros.}
  \item{tu}{the translation unit parser and the collection of nodes and
             resolved definitions.}
%  \item{types}{}
  \item{typeDefs}{the collection of type definitions for the data
             structures in the translation unit.}
  \item{files}{a pattern identifying the files to be processed.}
  \item{\dots}{additional arguments passed on to the call to the \code{filter} function.}
}
\value{
  The form of the result depends on the filter function(s)
  in the call. However, the default mechanism produces
  a list with five entries:
  \item{parameterizedMacros}{macros which take arguments}
  \item{macros}{simple macros which have constant/literal values.}
  \item{flagDefines}{simple macros definitions that are used merely to
    indicate a state that is TRUE or ON. These all have value \code{"TRUE"}.
  }
  \item{calculate}{macro definitions whose values are calls in the R
    sense,
    e.g. \code{A | B} or even -1 since that is parsed in R as a call to
      -.
      These can all be processed and read into R so the fact that some
      literals are treated this way is not important.
    }
    \item{ignored}{macros which are not understood by R or deliberately
      excluded.}
    \item{...}{passed to the call to \code{filter}, if that is non-\code{NULL}.}
}
\references{The GCC pre-processor}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{getCppDefines}}
  \code{\link{filterMacros}}
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{programming}
\concept{pre-processor macros}
\concept{meta-programming}


