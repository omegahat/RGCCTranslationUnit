\name{createDerivedClass}
\alias{createDerivedClass}
\alias{createDerivedClass,character,TUParser,ANY,ANY,ANY-method}
\alias{createDerivedClass,C++ClassDefinition,ANY,ANY,ANY,list-method}

\title{Generate code for a derived C++ class with R functions as methods}
\description{

  The goal of this function is to define a new C++ class that extends
  the specified C++ class and which allows implementations of the
  virtual methods within that class (and ancestors)
  via R functions. This allows us to override some or all of the methods
  entirely within R and have those R functions  be transparently available to
  other C++ code.
  One can create an instance of this new C++ class from within R and
  specify functions for some of the methods either during the
  construction  or during the life of that object. In this way,
  the class' methods become dynamic. This mechanism is thus very
  convenient for  exploratory prototypying where we can update
  methods to handle new situations and fix bugs.

  We can only override virtual methods in the C++ class, i.e. those
  methods  that are declared virtual in that class or any of its ancestors.

  Specifying an R function to use for a C++  method becomes slightly more troublesome
  when the method is overloaded, i.e. has multiple versions with
  different signatures.

  This function attempts to deal with various forms of inputs and to do
  it somewhat efficiently by avoiding recomputing information from the
  translation  unit.

  If called with one or more class names and the TU nodes it resolves
  the class nodes and methods
  Essentially, if one wants to compute the class nodes ahead of time
  and resolve all their methods, this information can be reused
  and no  computations duplicated uncessarily.
  It can work with resolved class definitions or the raw class nodes in
  the tu or with just the name of the class(es) of interest.

  The class names of interest can be given as a character vector and
  the corresponding R names can be given as the names of this character
  vector. Any missing names are computed using the default naming
  scheme.

  If one has computed the class nodes and resolved their methods
  already,   then it is simplest to loop over the classes of interest
  and call this function for each of these.
  See the example below.

}
%                  RClassName = getReferenceClassName(className), 
\usage{
createDerivedClass(className, tu, types = DefinitionContainer(tu),
                   classNodes = getClassNodes(tu), methods = NULL,
                   classDefs = getClassDefs(tu, klasses = classNodes),
                   virtualOnly = TRUE, inheritanceStyle = "public",
                   typeMap = list(),
                   RClassName = paste("R", className, sep = ""),
                   RNativeBaseClassName = c(native = "RDerivedClass", r = "RDerivedClass"),
                  signatures = list(), dispatchInfo = data.frame(),
                   ...)
}
\arguments{
  \item{className}{
    a value identifying the class which we want to extend, i.e. the base
    class of our soon-to-be-created new, derived class.
    This can be the name of the class given as a string or alternatively
    a node in the translation unit that identifies the class definition,
    e.g. returned from a call to \code{\link{getClassNodes}}.
    One can specify a character vector with more than one element.
    The elements identify different existing classes by name 
    and the code for an extended class will be developed for each of
    these base classes.   (These are not treated as a collection of
    super-classes for a single new derived base class.)
    If the character vector has names, these are used as the names for
    the new, extended classes instead of the value of the
    \code{RClassName} argument.
  }
  \item{tu}{the translation unit nodes obtained via a call to \code{\link{parseTU}}}
  \item{types}{a DefinitionContainer object which is a mutable object
    (an environment) used to collect all the resolved TU nodes, data
    types, routines, etc. so as to avoid having to repeat the same
    calculations each time a node is needing to be resolved in a
    different context.}
  \item{classNodes}{a list of the nodes in the translation unit object
    (\code{tu}) which identify the ancestor classes of the newly defined
    class.
    If \code{tu} is specified, the default argument is usually appropriate.
  }
  \item{methods}{a list of the methods for all of the ancestor classes
    of the newly defined classes. If the \code{tu} object is provided,
    these can be computed automatically.
  }
  \item{virtualOnly}{a logical value indicating whether to provide
     overriding methods only for the virtual methods defined in the base
     class or any of its ancestors.
    }
    \item{typeMap}{an object of S3-style class \code{TypeMap} which
      provides information about the relationships between C/C++ types
      and corresponding R types, i.e. C to R type equivalencies,
      routines and R functions for converting from one to the other, etc.
   }
  \item{inheritanceStyle}{a string specifying the nature of the
    inheritance, i.e. one of "public" or "protected"}
 \item{RClassName}{the name to use for the new C++ class being defined.}  
 \item{\dots}{additional parameters passed onto internal functions (origCreateDerivedClass)}
 \item{classDefs}{a list of the resolved class descriptions in the
       translation unit}
 \item{RNativeBaseClassName}{a character string giving the name of the
   C++ class that is used as the base class for newly derived classes
   that have methods that can be implemented in R.}
 \item{signatures}{a list of the call signatures for the different methods}
 \item{dispatchInfo}{ a data frame. This is passed to and from the different
   helper functions and builds up information about the number of
   possible arguments for different methods.
 }
% \item{fields}{}
% \item{allowConstructors}{}
% \item{RBaseClassName}{ ~~Describe \code{RBaseClassName} here~~ }
% \item{lookupMethod}{ ~~Describe \code{lookupMethod} here~~ }  
}
\value{
 An list with several components:
  \item{classDefinition}{the C++ code defining and implementing this new
    class}
  \item{rsetClass}{the R code defining the R version of this class.}
  \item{rsetMethods}{the C++ routine that can be called from R to set
    the R functions to be used as methods for this class.}
  \item{setMethods}{the C++ routine that actually sets these methods in
    the C++ instance/object}
  \item{rsetMethodsFunction}{the R function that sets the method
    functions within an instance of the newly created class,
    i.e. that calls the rsetMethods routine}  
  \item{rfieldAccessors}{R method for accessing the fields in the base
    class(es) and ancestor classes}
  ...
}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{getClassNodes}}
  \code{\link{resolveType}}
  \code{\link{DefinitionContainer}}  
}
\examples{
\dontrun{
  # the next 5 commands are something that we do generally
  # when processing code
tu = parseTU(system.file("examples", "shapes.cc.t00.tu", package = "RGCCTranslationUnit"))

z = createDerivedClass("Ellipse", tu)

# Two classes in one action and amortize the cost of calculating the
# class nodes and resolving methods.
z = createDerivedClass(c("Rectangle", "Ellipse"), tu)


# This version explicitly computes the class nodes and resolves the methods
# presumably for use in other circumstances, e.g. generating the bindings to
# the existing classes and

types = DefinitionContainer(nodes = tu)
classNodes = getClassNodes(tu, "shapes")

methods = lapply(classNodes, function(n) resolveType(getClassMethods(n), tu, types))
zz = lapply(c("Rectangle", "Ellipse"),
        function(k) {
         def = resolveType(classNodes[[k]], tu, types)
         createDerivedClass(def, methods = methods[c(k, def@ancestorClasses)])
        })
                                                                       
if(identical(zz, z))
  cat("Same results with both approaches\n")



#
names(classNodes)
createDerivedClass(c(RRectangle = "Rectangle", RCircle = "Circle", REllipse = "Ellipse"), tu)




klasses = getClassNodes(tu, "shapes")
methods = lapply(klasses, getClassMethods)
def = DefinitionContainer(nodes = tu)

rect = resolveType(klasses[["Rectangle"]], tu, def)

resolvedMethods = lapply(methods, function(x) lapply(x, resolveType, tu, def))

  # This is the command that is specific to creating the code defining
  # a derived class.
code = createDerivedClass(rect, methods = resolvedMethods["Rectangle"],
                          RClassName = "R_Rectangle")
                           

code = createDerivedClass(rect, "R_Rectangle", methods = resolvedMethods["Rectangle"], virtualOnly = FALSE)

#
ellipse = resolveType(klasses[["Ellipse"]], tu, def)
code = createDerivedClass(ellipse, methods = methods, virtualOnly = TRUE)

#"R_Ellipse", resolvedMethods[c("Ellipse", "Circle", "Shape")],
#                          "Ellipse", getFields(klasses[[c("Ellipse")]]),
#                          virtualOnly = TRUE)

}

}
\keyword{programming}
\concept{OOP}
\concept{meta-programming}
\concept{automated binding generation}
