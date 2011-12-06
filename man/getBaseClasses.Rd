\name{getBaseClasses}
\alias{getBaseClasses}
\alias{getBaseClasses,C++ClassDefinition-method}
\alias{getBaseClasses,GCC::Node::record_type-method}
\alias{getBaseClasses,GCC::Node::type_decl-method}

\title{Compute names of base or ancestor classes}
\description{
  This function determines the names and nodes of the
  different classes from which  the target class inherits.
  These are the base or parent classes.

  By default, the function returns the parent classes,
  i.e. those classes which this class directly extends.
  If there is more than one parent class,
  this indicates multiple inheritance.

  Alternatively, via the \code{recursive} argument,
  we can compute the entire ancestry of base classes.
  In other words, we can get the parents, their parents, and so on.

  For any base class, the function can return either its
  identifier in the translation unit (i.e. the node index),
  or the \dQuote{raw} information about the class.
  This is a reference to a Perl hash table which contains
  just three elements: access, virtual and class.
  The first two indicate whether the class is
  extended in a public, protected  or private manner,
  and whether the parent class is virtual or not.
  The third field, class, gives information about the
  class definition via a \code{GCC::Node::record_type}
  object.
  
}
\usage{
getBaseClasses(node, getReferences = FALSE, recursive = FALSE)
}
\arguments{
  \item{node}{the node in the translation unit array that defines the
    method. This is typically one of the elements references from the
    'fncs' attribute of the class' \code{record_type} node.
  }
  \item{getReferences}{ a logical value which controls whether
    the raw array of class information is returned (\code{TRUE})
    or, by default, just the indices of the translation unit nodes
    which define the parent classes  are returned.
  }
  \item{recursive}{a logical value, which if \code{TRUE}
   causes the function to recursively process the parent nodes and find
   their parent classes, and then their parent classes, and so on.}
}

\value{

  If \code{getReferences} is \code{TRUE},
  a Perl array is returned. This has as many
  elements as there are direct base or parent classes
  for this class definition.
  Each element is a \code{GCC::Node::record_type}
  in the parsed TU collection, and 
  this gives the class definition.

  Rather than simply being a Perl array, the return value
  when  \code{getReferences} is \code{TRUE} is an object
  of class \code{BaseClassInfo}. This is  a simple S3
  class label that is used to provide convenient access to the elements
  of the Perl array by the class name each element defines.
  
}
\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}


\seealso{
  \code{\link{readTU}}
  \code{\link{getAllDeclarations}}
}
\examples{
\dontrun{
   # Find the classes in ABC.h/ABC.cpp
 my = parseTU(system.file("examples", "ABC.cpp.tu", package = "RGCCTranslationUnit"))
 k = getClassNodes(my)

 names(k)

 getBaseClasses(  k$B  )
 getBaseClasses(  k$C  )

  # get the entire ancestry of C
 getBaseClasses( k$C, recursive = TRUE)
  # Just the immediate classes.
 getBaseClasses( k$C, recursive = FALSE)

   # return the class definiiton nodes for the base class
   # and not just the name.
 r = getBaseClasses( k$B, getReferences = TRUE)

 names(r)
 .PerlLength(r)

   # Explore the class Other via its node.
   # We could do this from k[["Other"]] also
 names(r[["Other"]])
 r[["Other"]][["access"]]
 r[["Other"]][["virtual"]]

 def = r[["Other", convert = FALSE]][["class", convert = FALSE]]
 names(def)
}
}

\keyword{interface}
\keyword{programming}
