helperInfo =
function(env = new.env(TRUE))
{
  class(env) = "HelpInfo"
  env
}  

generateClassCode =
function(classes, nodes, roots = getRootClasses(classes),
         typeMap = list(),
         ...,
         def = DefinitionContainer(nodes),
         helper.info = helperInfo(),
         verbose = FALSE)
{  
  classNames = names(classes)

  toProcess = unique(c(names(roots), classNames))

  processed = new.env(hash = TRUE)

  Methods = lapply(classes, getClassMethods)
  resolvedMethods = list()  # vector("list", length(k))
  bindings = list()  # vector("list", length(k))
 

  definedVirtuals = character()

  pnames = unlist(lapply(Methods, function(x) names(x)[!sapply(x, inherits, "NativeClassDestructor")]))
  pnames = gsub("tor $", "tor", pnames)
  pnames = pnames[is.na(match(pnames, ImplicitConstructorNames))]
  tt = table(pnames)
  polymorphic = names(tt)[tt > 1]


  
  # Filter the virtual methods that are merely inherited.
  # Generate the generic signatures.

  
  while(length(toProcess) > 0) {
     klassName = toProcess[1]

     if(!exists(klassName, processed)) { 

       klass = get( klassName, processed)
       if(verbose)
          cat("Processing class", klassName, "\n")

       ancestors = getBaseClasses(klass, recursive = TRUE)
       
       methods = Methods[[klassName]]
       rMethods = lapply(methods, resolveType, nodes, def)         

       d = sapply(rMethods,
                  function(meth) {
                      if(meth$virtual) {
                               # This won't catch typedef misses, e.g.
                               #  typedef int myInt
                               #  foo(int)
                               #  foo(myInt)
                               # are the same.
                          sig = getVirtualSignature(meth)
                          vnames = paste(ancestors, sig, sep = "_")
                          if(!any(vnames %in% definedVirtuals)) {
                            definedVirtuals <<- c(definedVirtuals, paste(klassName, sig, sep = "_"))
                            if(verbose)
                              cat("Defined", paste(klassName, sig, sep = "_"), "\n")
                            return(FALSE)
                          }  else
                           TRUE
                       } else
                          FALSE
                    })
       if(verbose && any(d)) {
         cat("Skipping methods", paste(sapply(rMethods[d], function(x) x$name), collapse = ", "), "\n")
       }

       methods = methods[!d]
       rMethods = rMethods[!d]       

       b = createClassBindings(klass, nodes,
                               resolvedMethods = rMethods, methods = methods,
                               polymorphicNames = polymorphic,
                               helperInfo = helper.info, ...)

       bindings[[klassName]] = b
       Methods[[klassName]] = methods
       resolvedMethods[[klassName]] = rMethods

       assign(klassName, bindings, processed)
     }

     toProcess = toProcess[-1]
  }


  generics =
    lapply(polymorphic,
           function(id) {
             funs = unlist(lapply(bindings, function(x) x$regular[names(x$regular) == id]), recursive = FALSE)
             defs = unlist(lapply(resolvedMethods, function(x) x[names(x) == id]), recursive = FALSE)
             createOverloadedDispatchCode(id, funs, defs)
           })


  
  invisible(
  structure(list(classBindings = bindings,
                 processed = processed,
                 methods = Methods,
                 generics = generics,
                 resolvedMethods = resolvedMethods,
                 definedVirtuals = definedVirtuals,
                 helperInfo = helper.info),
            class = "GeneratedC++ClassInterface"))
}


getVirtualSignature =
function(method, discard = 1)
{
 if(length(discard))
   method$parameters = method$parameters[-discard]

 if(length(method$parameters))
    paste(method$name,  sapply(method$parameters, function(x) typeName(x$type)), collapse = "_")
 else
   return(method$name)
}  

