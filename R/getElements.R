if(USE_PERL_TU_PARSER)
getElementNames =
  #
  # Takes an array returned from parsefile()
  #
  # n is for debugging purposes to allow the .
  function(zz, className = "GCC::Node::function_decl",
                file = character(0),
                n = .PerlLength(zz)) {

      k = unlist(lapply(seq(2, length = n), function(i) class(zz[[i]])[1]))

         # add one since we were looking at the subset from 2:end
      ids = which(k == className) + 1    


      if(length(file))
        file = paste("^", file, ":", sep = "")
      
         # some will be NULL, so they will be discarded in the unlist().
         # or can call $name() method.
      unlist(lapply(ids, function(i) {
                             el = zz[[i]]
                             if(length(file)) {
#                                 cat("Comparing", file, "to", el$source(), "\n")
                                if(length(grep(file, el[["source"]]))  == 0)
                                  return(NULL)
                             }
                          
                             el[["name"]][["string"]]
                          }))
    }
