removeOverriddenMethods =
  #
  #  Remove any methods in the methods for the ancestor classes
  #  (others) that are implemented via methods in this class (base)
  #
  #  So if we have C extends B extends A and we have C::foo() and A::foo()
  #  we would remove A::foo().
  #
  #  This is similar to filterInheritedVirtualMethods
  #  but going in the opposite direction!
  #
  #
function(base, others, names, verbose = FALSE)
{
  ans = vector('list', length(others) + 1)
  ans[[1]] = base

      # Deal only with the virtual methods
  if(length(ans[[1]]))
    ans[[1]] = ans[[1]][ sapply(ans[[1]], function(x) x$virtual) ]

 
  for(i in seq(along = others) + 1) {

    if(length(others[[i - 1]]) > 0) {
     ans[[i]] =
        lapply(others[[ i - 1 ]] [ sapply(others[[i-1]], function(x) x$virtual) ],
           function(m) {

               # add to base so that in the next iteration we will look for this one also.
             add = function(m, why = "") {
           if(verbose)               
             cat("adding", m$name, "in", names[i], why, "\n")
#               base[[length(ans[[i]]) + 1]] <<- m
               base[[length(base) + 1]] <<- m
               names(base)[length(names(base))] <<- m$name
             }
             
             w = m$name == names(base)

             if(!any(w)) {
               add(m, "new name")
               return(m)
             }

             # now we check to see if any of the ones in base with the same name
             # have the same signature.
             for(a in base[w]) {
               match = TRUE
               if(length(m$parameters) == length(a$parameters))  {
                 for(j in seq(along = m$parameters[-1])) {
                    if(!identical(m$parameters[j + 1]$type, a$parameters[j + 1]$type)) {
                     match = FALSE
                     next
                   }
                  }
               } else
                  match = FALSE


               if(match)
                 break
             }

             if(match) {
               if(verbose)
                 cat("dropping", m$name, names[i], "\n")
               return(NULL)
             } else {
               add(m, "new signature")
               return(m)
             }
         })

      ans[[i]] = ans[[i]][ !sapply(ans[[i]], is.null)]
   } else
      ans[[i]] = list()

  }
 names(ans) = names
 ans
}  
