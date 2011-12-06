getMaximalSignature =
function(x, supportDerivedClasses, outArgs = list(), verbose = FALSE) {
      i = sapply(x, function(x) length(x$parameters))
      if(all(i == 0))
        return(character(0))
      
      w = x[[ which.max(i) ]]$parameters
      ans = names(w)
   
      if(x[[1]]$name %in% outArgs)
         ans = c(ans, ".copy")
      
      if(supportDerivedClasses
            && any(w <- sapply(x, function(x) "virtual" %in% names(x) && x$virtual))) {
        if(verbose)
        cat("adding .inherited for", x[[1]]$name, "\n")
         ans = c(ans, ".inherited")
       } else {
         if(verbose)
         cat("no virtual methods for", x[[1]]$name, "\n")
       }

      ans
}


computeOverloadedSignatures =
  #
  #  take the resolved methods for all the classes of interest
  #  and group them by method name and then find the names of the
  #  parameters for the largest one.
  #
  #  Make this include the .copy and the .inherited arguments that
  #  may be introduced when we generate the code.
  #
  # Take into account derived classes and so a) additional overloading (for each class in which they are inherited/defined)
  #  and b) augmenting the arguments by 1
  #
function(resolvedMethods, routines = list(), outArgs = list(), supportDerivedClasses = TRUE, createGenerics = TRUE, ...)
{
  tt = collapseMethods(resolvedMethods) 
 
  tt = tt[!sapply(tt, is, "ResolvedNativeClassDestructor")]

  tt = c(tt, routines)
    
  names(tt) = sapply(tt, function(x) if(isS4(x)) x@name else x$name)

      # for each different method name, find the biggest signature.
  signatures =  tapply(tt, names(tt), getMaximalSignature, supportDerivedClasses, outArgs)

# f =
#   function(methods) min(sapply(methods, function(m) which.min(is.na(sapply(m$parameters, function(x) x$defaultValue)))))
# numNonDefault = tapply(tt, names(tt), f)
# browser()

         # take any name that has more than one method/routine
         # and also any name for which there is a virtual method in any
         # of the classes as we will need this when creating derived classes.
         # We already have the .inherited in the signature.
  i = table(names(tt))


    #XXXX Discard static if not overloaded !
  
if(FALSE) {
   # This uses names. The else clause uses indices.
  x = tapply(tt, names(tt), function(x) { any(sapply(x, function(x) "virtual" %in% names(x) && x$virtual))})

    # Any method that will be implemented in an R derived class needs to be made generic
    # also.  (There is one case where it does not and that is when it is a method in a leaf class
    # in the hierarchy and so there will only be an implementation for one derived class. But this
    # special case  doesn't hurt us. So for now, ignore.)
  methodNames = if(supportDerivedClasses)
                   names(sapply(tt, inherits, "ResolvedNativeClassMethod"))
                else
                   character()
   ids = unique(c(names(i)[ i > 1], names(x)[x], methodNames))  
} else if(length(tt) > 0) {
   ids = which(names(tt) %in% names(i)[i > 1])
   o = which(sapply(tt, function(x) ("virtual" %in% names(x) && x$virtual) || (supportDerivedClasses && inherits(x, "ResolvedNativeClassMethod"))))
   ids = unique(names(tt)[c(ids, o)])
} else 
    ids = character()

  if(createGenerics) {
    # numUniqueArgs(tt[ids])
    createGenericsCode(signatures[ids], ...)
  } else
   structure(signatures[ ids ], class = "GenericSignatureList")
}

RGenericDefinition =
  #
  #
  # XXX want the method too in order to fetch the default values?
  #
function(name, sig, defaults = character(), addDots = TRUE)
{
  if(addDots && !"..." %in% sig)
    sig = c(sig, "...")

  new("RGenericDefinition",
       name = name,
       signature = sig)
}

createGenericsCode =
function(sigs, addAllDefaults = FALSE, addDots = TRUE)
{
  ans = mapply(RGenericDefinition, names(sigs), sigs, MoreArgs = list(addDots))

  if(addAllDefaults)
    ans = lapply(ans, function(x) {
                        defaults = rep("NULL", length(x@signature))
                        if(!is.na(i <- match("...", x@signature)))
                          defaults[i] = ""
                        x@paramDefaults = defaults
                        x
                      })
  class(ans) = "GenericDefinitionList"
  ans
}  

