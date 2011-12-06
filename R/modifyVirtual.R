addSuperToVirtual =
function(m, varName = "_super", type = new("boolType"), class = "ArtificalParameter")
{
  if(!m$virtual)
    return(m)

  m$parameters[[varName]] = structure(list(id = varName, type = type, defaultValue = NA), class = class)
  m
}

  
augmentVirtualMethods =
function(methods)
{
   # ignore constructors

  w = !sapply(methods, is, "ResolvedNativeClassConstructor")
  m = methods[w]
  klass = class(methods)
  ids = names(m)
  
  methods[w] = lapply(methods[w], addSuperToVirtual, type = new("InheritedMethodIndicator"), class = "InheritedMethodIndicatorParameter")

  class(methods) = klass
  methods
}
  
  

filterInheritedVirtualMethods =
  #
  #  Take a collection of methods for different classes 
  #  and eliminate the methods in the sub-classes  that match the
  #  signature of the top-most definition in that class hierarchy.
  #
  #  The methods need not be resolved but can be. In other words,
  #  we can work with values from getClassMethods() or those that
  #  have subsequently been resolved.
  #
  #  Similarly, classDefs = resolveType(getClassNodes(tu), tu)
  #  or simply getClassNodes(tu) work.
  #
  #
function(methods, classDefs, verbose = FALSE)  
{
  # assume methods and classDefs are in the same order!
  if(!all(names(methods) %in% names(classDefs)))
    stop("the class definitions are for a different set of methods!")
  methods = methods[names(classDefs)]

    # Build the class hierarchy matrix with the entire information about
    # ancestor classes  (recursive = TRUE) so that we can find all the
    # ancestor classes which might be providing a particular virtual method.
  hier = getClassHierarchyMatrix(classDefs)

     # Go through each class' methods and see which methods are virtual and
     # of these which are defined in an ancestor class.
  for(col in seq(length = ncol(hier))) {
    v = sapply(methods[[col]], function(x) x$virtual)
    if(!any(v))
      next

        # identify the ancestor classes
    i = which(hier[, col] == 1)
    if(!length(i))
      next

       # work on the virtual methods for this particular class
    for(m in methods[[col]][v])  
      methods[i] = lapply(methods[i], removeVirtual, m, names(classDefs)[col], verbose)
  }

  methods
}

isSameMethod =
function(m, virtualMethod) {
     if(m$name != virtualMethod$name)
       return(FALSE)

     if(length(m$parameters) != length(virtualMethod$parameters))
       return(FALSE)

     all(sapply(seq(along = m$parameters[-1]) + 1L,
                function(i) {
                  identical(m$parameters[[i]]$type, virtualMethod$parameters[[i]]$type)
                }))
}


removeVirtual =
  #
  #
  #
  #
  
function(methods, virtualMethod, baseClass, verbose = FALSE)
{
  w = sapply(methods, isSameMethod, virtualMethod)

  if(any(w) && verbose)
    cat("removing", paste(names(methods)[w], collapse = ", "), "from",
          paste(unique(sapply(methods[w], function(x) x$className)), collapse = ", "), "\n")
  structure(methods[!w], class = class(methods))
}  


