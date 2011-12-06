getInheritedMethod =
  #
  # Find the definition of the virtual method in a parent class
  # that corresponds to this.
  #
  # Handle multiple inheritance, e.g. W in dispatch.cc example.
  # Caller can specify the target class or subset the methods before
  # calling

  #
  #  if classNames = TRUE, then we process the entire collection of base classes
  #  and return a list of the matching methods indexed by the class name in which each
  #  is found.
  
function(m, methods = list(), 
         baseClasses = class@ancestorClasses, # getBaseClasses(m$class@container$.nodes[[m$name]], TRUE, recursive = TRUE),
         class = m$class, # resolveType(m$class),
         classNames = FALSE)
{
   if(!m$virtual)
     return(NULL)

   if(length(methods) == 0) {
     #   m$class@container$.nodes
     #methods =
   }
   
      # skip the 'this' parameter
   types = sapply(m$parameters[-1], function(x) x$type)

   methods = methods[ baseClasses ]
     # go through each of the classes and each of its methods until we find a match
     # start at the top.

   ans = list()
   for(super in rev(methods)) {
          # only look at the methods with the same name and same number of parameters!
      super = super[names(super) == m$name]
      super = super[ sapply(super, function(x) length(x$parameters)) == length(types) + 1]

      for(j in super) {
         if(j$virtual) {
              tmp = sapply(j$parameters[-1], function(x) x$type)
              names(tmp) = names(types)
              if(identical(types, tmp)) {
                if(!classNames)
                   return(j)
                else
                  ans[[j$className]] = j

                break
              }
         }
      }
    }

   if(classNames)
     rev(ans)
   else
     NULL
 }

