\name{gatherRegistrationInfo}
\alias{gatherRegistrationInfo}
\alias{getRegistrationInfo}
\title{Collect information about native routines for registering with
  R's dynamic lookup mechanism}
\description{

  There are two approaches to collecting the registration information
  for native routines in an DLL loaded into R.  One is to take
  the existing C code and find all the possible routines that can be
  called by R and register those. The other starts with the R code
  and finds all the code that makes calls to C/C++ routines via the
  .C and .Call functions   and then registers information only for the
  corresponding routines. Which you use depends on the style in which
  you write the R and C code, specifically which comes first.

  
  The \code{gatherRegistrationInfo} function starts with the C/C++ code
  and  reads one or more C/C++ source code file
  descriptions and collects the routines defined within those files
  that can be called from R via one of the native interface
  mechanisms into the different groups.  This is information can then be used to
  generate R registration information for  the routines  that can be called via the
  .C, .Call and .External interfaces.  (.External is not differentiated from the .Call at present.)
%XXX  This information can then be passed to \code{\link{generateRegistrationCode}}.

  The \code{getRegistrationInfo} provides he other approach, starting
  with the R/S code.
  It reads code in the specified package and finds all the
  .C, .Call, .Fortran calls and identifies their routines.
  Then it reads all the TU files in the specified directory,
  typically the source directory for the package, and
  tries to match the R routine names to the routines in the C code.
  If there are mismatches, it uses fuzzy matching to try to suggest
  possible matches due to typos.
  Otherwise, if there are no matches, it continues on generates
  code that can be inserted into a C source file and
  compiled with the package to perform the registration
  of the routines with R when the DLL is loaded.

  The results of these functions can be passed to
  \code{\link{writeCode}} to output the resulting C code
  to a file for use in an programmatically generated interface.
}
\usage{
gatherRegistrationInfo(fileName, tu = parseTU(fileName),
                       r = getRoutines(tu,  gsub("(.t00.tu|.tu)$", "", basename(fileName))),
                       dir = dirname(fileName))

getRegistrationInfo(package, tu.dir,
                    foreignCalls = getNativeRoutineCalls(package),
                    routines = readRoutines(tu.dir),
                    robject = "SEXP")
}

\arguments{
  \item{fileName}{a character vector giving the name of one or more
    files.  The file names are used to identify the .tu file
    and can be given as the name of the source file
    with or without the .c or .c++/.cpp/.cxx/.C extension.
    This is then used to find the .tu file and find the definitions of
    the routines within that particular file, i.e. as the
    \code{files} parameter for the \code{\link{getRoutines}} function.
    In other words, we use the name of the file to filter the
    nodes in the TU to those relating to this particular file.
    So rather than specifying, e.g., distance.c, or distance.c.tu,
    we use simply "distance" and the function determines the .tu file
    from this.
  }
  \item{tu}{rather than specifying the file name, one can pass the
    previously read array of translation unit nodes.  This is useful if
    the TU file is very large, and/or you are doing additional
    operations on the contents of the file.}
  \item{r}{a list of the routines of interest. This is computed by
    calling \code{\link{getRoutines}} on the \code{tu} object.
    If however, the routines have already been identified,
    passing them directly avoids the overhead of reprocessing them.
  }
  \item{dir}{the directory in which the tu files are located.
    This parameer is convenient when one is specifying a collection of
    files within a different directory. Rather than having to paste the
    directory name to the file names, we can specify thes directory and
    file names separately.
  }
  \item{package}{this can be one of several types supported by the
    internal function \code{getNativeRoutineCalls}.
    These include a package name as a string, e.g. \code{"XML"}, \code{"stats4"},
    or the package name with the \code{"package:"} prefix,
    e.g. \code{"package:XML"}. One can also identify an already loaded
    package in the search path by giving the index of the package in the
    vector returned by \code{\link[base]{search}}.
    Alternatively, one can pass it the name of one or more directories  containing
    R source files and it will process each of the files ending in the
    extension  .R, .S, .r or .s.
    Also, one can give it a list of function objects that have already
    been  defined in R.
  }
  \item{tu.dir}{a string giving the name of a directory in which to find
  .tu files representing the translation units for the different source
  files in which we search for top-level routines.}
  \item{foreignCalls}{typically omitted, this is the information
    containing the collection of calls to the .C, .Call, etc. functions
    within the package or R source code specified by \code{package}.}
  \item{routines}{the collection of C/C++ routine descriptions read from
    the translation unit(s). By default, we find all the .tu files in
    the directory specified by \code{tu.dir} and read those and extract
    the top-level  routines that might be callable by R.
    If the TU file(s) has been read into R already, one typically
    wants to extract the routines from that and resolve them and
    pass those rather than repeating that potentially lengthy process.
  }
  \item{robject}{the "word" in C for the native/internal data type
    representing an R or S object. This is here to allow us to use a
    more general name such as USER_OBJECT_ deployed in some macros used
    by Omegahat, and also to facilitate use with S-Plus.}
}

\value{
  A list containing two elements
  \code{.C} and \code{.Call}.
  These are lists of descriptions of routines for the two different interfaces.
}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{
  \code{\link{writeCode}}
  \code{\link{parseTU}}
}
\examples{
\dontrun{
  files = paste(system.file("examples", package = "RGCCTranslationUnit"), c("arima", "distance"), sep = .Platform$file.sep)
  f = gatherRegistrationInfo(files)

  o = generateRegistrationCode(f, "myPackage")

  writeCode(o, "native")
  writeCode(o, "namespace")

   # Note that we are starting with the R code.
 rfile = system.file("examples", "foo.R", package = "RGCCTranslationUnit")
 l = getRegistrationInfo(rfile, tu.dir = system.file("examples", package = "RGCCTranslationUnit"))

   # write the code to the console
   # specify the name of the DLL as "duncan" to compute the name of the
   # init routine.
   # Also, turn off dynamic lookup and use registration only
writeCode(l, "native", dll = "duncan", dynamic = FALSE)

writeCode(l, "namespace", dll = "duncan")
}
}
\keyword{interface}
\keyword{programming}
