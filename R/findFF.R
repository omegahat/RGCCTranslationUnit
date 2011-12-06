
FF_funs <- FF_fun_names <- c(".C", ".Call", ".External",
                             ".Call.graphics", ".External.graphics")

getFFCalls =
  # Originally taken from QC.R in $R_HOME/src/library/tools/
function(exprs, drop = FALSE)
{
  calls <- vector("list", length(FF_funs))
  names(calls) <- FF_funs

  if(is.call(exprs)) 
      exprs = list(exprs)
  

  # We should put the expressions in the calls element and use the routine 
  # name as the name of the element, allowing for duplicates.
  calls[["expressions"]] <- list()
  
  find_FF_calls <- function(e) {
        if(is.call(e) || is.expression(e)) {
            if(deparse(e[[1]])[1] %in% FF_funs) {
              iface = deparse(e[[1]])[1]
              calls[[iface]] <<- c(calls[[iface]], e[[2]])
              calls[["expressions"]] <<- c(calls[["expressions"]], e)
            }
            for(i in seq_along(e)) Recall(e[[i]])
        }
      }


  for(i in seq_along(exprs))
      find_FF_calls(exprs[[i]])

  if(drop) {
    calls[sapply(calls, length) != 0]
  } else
    calls
}


setGeneric("getNativeRoutineCalls",
           function(where, drop = TRUE) {
             standardGeneric("getNativeRoutineCalls")
           })

setMethod("getNativeRoutineCalls", "numeric",
          function(where, drop = TRUE) {
            n = objects(where)
            w = sapply(n, function(x) is.function(get(x, where)))
            z = getNativeRoutineCalls(lapply(n[w], get, where), drop = FALSE)
            names(z) = n[w]
            if(drop && length(z))
              z[!sapply(z, isEmpty)]
            else
              z
          })

isEmpty =
function(x) {
  if(length(x) == 0)
    return(0)
  sum(sapply(x, length)) == 0
} 

setMethod("getNativeRoutineCalls", "list",
          function(where, drop = TRUE) {
            ans = lapply(where, getNativeRoutineCalls)
            if(drop && length(ans)) {
              ans[!sapply(ans, isEmpty)]
            } else
              ans
          })


#   package name
# getNativeRoutineCalls("RCurl")
# getNativeRoutineCalls("package:RCurl")  
#   functions
# getNativeRoutineCalls(c("postForm", "curlPerform")) 
#   files
# getNativeRoutineCalls(list.files("~/Projects/org/omegahat/R/RCurl/R", pattern = ".*\\.[RS]", full.names = TRUE))
#  problems with files if they refer to S4 generics, etc. as we cannot reload them
setMethod("getNativeRoutineCalls", "character",
          function(where, drop = TRUE) {
                # See if it is a package
             i = match(c(where, paste("package", where, sep = ":")), search())
             if(!all(is.na(i)))
                return(getNativeRoutineCalls(i[!is.na(i)][1], drop = drop))

               # otherwise, see if we have files or objects.
             objs = sapply(where, exists)
             files = file.exists(where)
              
             if(all(objs))
                  # all the objects exist.
                return(getNativeRoutineCalls(lapply(where, get), drop = drop))

             if(all(files)) {

                info = file.info(where)
                if(any(info[, "isdir"])) {
                  where = c(where[ ! info[, "isdir"] ], sapply(where[ info[, "isdir"] ], list.files, pattern = "*.[RSrs]$", full.names = TRUE))
                }
               
                fun = function() {}
                tmp = lapply(where,
                       function(x) {
                          # do some gymnastics here to source the contents of the file into a separate
                          # frame and then treat that as a list.
                         body(fun) = substitute({source(f, local = TRUE); sys.frames()[[sys.nframe()]]},
                                              list(f = x))
                         e = fun()
                         as.list(e)
                       })

                return(getNativeRoutineCalls(unlist(tmp, recursive = FALSE), drop = drop))
              }

              if(!any(objs) && !any(files)) {

                 # See if the name corresponds to an installed library and then
                 # arrange to load that and detach it as necessary.
                packageDir = system.file("", package = where)
                if(file.exists(packageDir)) {
                  i = paste("package", where, sep = ":")
                  if(!i %in% search()) {
                    on.exit(detach(i))
                    library(where, character.only = TRUE)
                  }
                  return(getNativeRoutineCalls(where))
                }

                stop("No idea what you are talking about!")
              }

              stop("not clear what you mean to do. Are these files or objects.")
          })


setMethod("getNativeRoutineCalls", "function",
          function(where, drop = TRUE) {
               #XXX need to handle the default values of the parameters.
            b = body(where)
            getFFCalls(b)
          })


# Need one for expression and call.

setMethod("getNativeRoutineCalls", "ANY",
          function(where, drop = TRUE) {
            calls <- vector("list", length(FF_funs))
            names(calls) <- FF_funs
            calls
          })



readRoutines =
function(dir, filenames = list.files(dir, ".+\\.tu", full.names = TRUE))
{
  
   # if the caller gives us a file that is not a directory
   # treat that as the TU file.
  if(all(!file.info(dir)[1, 'isdir']) && all(file.exists(dir)) )
     filenames = dir

  
  routines = lapply(filenames, 
                  function(f) {
                    p = parseTU(f)
                       # handle simpler .c.tu also.
                    r = getRoutines(p, gsub("\\.(t00|001t)?\\.tu$", "", basename(f)))
                    resolveType(r, p)
                  })
  names(routines) = basename(filenames)
  routines
}  

getRegistrationInfo =
  #
  # Goes through the code in the specified package
  # and find the names of the routines that are .Call/.C/.Fortran, etc.
  # Then find the names of all the routines in the translation units
  # by reading each tu file in the specified directory.
  # Alternatively, just pass in the previously process routines from
  # an already parsed (and resolved) TU.

  # See also generateRegistrationCode
  #
function(package, tu.dir,
         foreignCalls = getNativeRoutineCalls(package),
         routines = readRoutines(tu.dir),
         robject = "SEXP")
{
      # get the names of all the calls
   rRoutines = as.character(unlist(sapply(foreignCalls, function(x) unlist(x[1:5]))))
      # get the names of all the defined routines across all files
   allRoutines = as.character(unlist(lapply(routines, names)))

     # Make certain that all the referenced routines are present.
   i = match(rRoutines, allRoutines)
   if(any(is.na(i))) {
        # for those that didn't match, do fuzzy name matching and see if we can
        # identify errors.
      ids = rRoutines[is.na(i)]
      p = sapply(ids, function(x) {
                         tt = agrep(x, allRoutines)
                         if(length(tt))
                           return(paste(x, "-> {", paste( allRoutines[tt], collapse = ", "), "}"))
                         ""
                      })

      stop("missing routines ", paste(ids, collapse = ", "), " referenced in R code.", "\n\tPossible matches: ", p)
   }


     # bring all the routines into a flat list, across all files
   rr = unlist(routines, recursive = FALSE)
   names(rr) = gsub(".*\\.", "", names(rr)) # get rid of the file name prefix.

     # look only at the routines that are referenced in the R code.
   rr = rr[unique(rRoutines)]

     # compute the information about the .C() callable routines.
   dotC = lapply(rr, is_.C_routine)
     # find out which ones are actually .C()s.  Elements in i that
     # are FALSE are not .C() callbable.
   i = sapply(dotC, function(x) x$status)

     # Create a vector of which routines are .C, .Call, .External, etc.
     # Each element has its interface.
   types = structure(character(length(rr)), names = names(rr))
   types[i] = ".C"
   
   if(any(!i)) {
        # For any routines that are not .C()s, guess the interface.
     tmp = lapply(rr[!i], guessInterfaceType, robject)
        # Set the types for those that are ambiguous to .Call/.External
     types[!i] = sapply(tmp, function(x) if(length(x$type) > 1) ".Call/.External" else x$type)  # handle ambiguous cases
        # And set the answer to be what we inferred.
     dotC[!i] = tmp
   }

     # now check the types we have determined for the routines in the source code
     # against the foreignCalls in the R code.

     # Store the guesses about a routine based on how it was called from R code.
     # Hopefully all the R calls agree.
   impute = list()
   
   lapply(foreignCalls,  # loop over the R functions
           function(fun) {  # for each function, deal with the different interfaces, .C, .Call, ...
              sapply(names(fun)[1:5],
                     function(iface) {
                            # get the names of the routines invoked via this interface
                        refs = fun[[iface]]
                        if(length(refs) == 0)
                          return(TRUE)

                           # check that the C routines have a type corresponding to the R interface function.
                        i = (types[refs] == iface)
                        if(any(!i)) {
                              # so something potentially wrong.
                          w = types[names(i)[!i]]
                          if(any(w != ".Call/.External")) {
                            ids = names(w)[w != ".Call/.External"]
                            stop(paste(ids, collapse = ", "), " ", ifelse(length(ids) > 1, "are", "is"), " being invoked with an incorrect interface, ", iface, "\n\tshould be ",
                                       paste(w, "for", ids, collapse = ", "))
                          }
                             # if there are routines that are not compatible with this interface,
                             # add this interface to that type.
                             # This might happen if there is an error, or else if the types entry
                             # is ambiguous, i.e. .Call/.External
                          impute[refs[!i] ] <<- lapply(refs[!i], function(id) c(impute[[id ]], iface))
                        }

                        TRUE
                     })
           })

       # resolve the ambiguous routines in impute.
   if(length(impute)) {
     tmp = sapply(impute, function(x) length(unique(x)) == 1)
     types[names(tmp)] <-  sapply(impute[tmp], function(x) x[1])
     dotC[names(impute)] <- lapply(names(impute), function(x) {
                                                   dotC[[x]]$type <- types[x]
                                                   class(dotC[[x]]) <- c(paste(types[x], "Routine", sep = ""), "RoutineInfo")
                                                   dotC[[x]]
                                                  })
     if(any(!tmp)) 
       warning("cannot determine the interface type for ", paste(names(impute)[!tmp], collapse = ", "))
   }

  
   structure(list(info = dotC, types = types), class = "RegistrationInfo")
}

registrationTypes =
function(x)
{
  if(length(x$types))
     paste(", {", paste(x$types, collapse = ", "), "}")
  else
     ", NULL"
}

setOldClass("RoutineInfo")
setOldClass(c(".CRoutine", "RoutineInfo"))
setOldClass(c(".ExternalRoutine", "RoutineInfo"))
setOldClass(c(".CallRoutine", "RoutineInfo"))

setMethod("toString", "RoutineInfo",
          function(x) {
            paste("{", paste('"', x$name, '"', sep = ""), ', ', "(DL_FUNC) &", x$name, ", ",
                  length(x$types),
                  if(is(x, ".CRoutine")) registrationTypes(x) else character(),
                  "}"
                 ) 
          })


setMethod("writeCode", "RegistrationInfo",
          function(obj, target, file = stdout(), ..., includes = character()) {
            args = list(...)
            
            if(target == "namespace") {
              cat(paste("useDynLib(", args$dll, ", ", paste(names(obj$info), collapse = ", "), sep = ""), ")\n", file = file)
              return(TRUE)
            } else if(target == "r") {
              return(TRUE)
            }
            
            ifaces = factor(obj$types)
            
            varNames = tapply(obj$info, ifaces,
                    function(x) {
                      iface = gsub("^\\.", "", x[[1]]$type)
                      varName = paste(iface, "Routines", sep = "")
                      cat(c(paste("R_", iface, "MethodDef", " ", varName, "[] = {", sep = ""),
                         paste("\t", sapply(x, toString), collapse = ",\n"),
                        "\t, { NULL, NULL, 0}",
                        "};"), sep = "\n", file = file)
                      varName
                    })

            #

            if("dll" %in% names(args)) {
              rname = paste("R_init", args$dll, sep = "_")

              vars = c(".C" = "NULL", ".Call" = "NULL", ".External" = "NULL")
              vars[names(varNames)] = varNames
              def = CRoutineDefinition(rname,
                                       c("void",
                                         paste(rname, "(DllInfo *dll)"),
                                         "{",
                                         if("dynamic" %in% names(args))
                                              paste("R_useDynamicSymbols(dll,", as.logical(args$dynamic), ");"),
                                         paste("R_registerRoutines(dll,", paste(vars, collapse = ", "), ", NULL, NULL);"),
                                         "}", 1L)
                                      )
              writeCode(def, "native", file = file)
            }
          })
  


guessInterfaceType =
function(routine, robject = "SEXP")
{
  allSEXPS = all(c(routine$returnType@name, sapply(routine$parameters, function(x) x$type@name)) %in% robject)

  if(!allSEXPS)
     return(as.character(NA))

  type =  if(length(routine$parameters) == 4) 
              c(".Call", ".External")
          else
              ".Call"

  className = ifelse(length(type) == 2, "AmbiguousRoutine", ".CallRoutine")

  structure(list(name = routine$name,
                 type = type,
                 numParams =  length(routine$parameters)),
            class = c(className, "RoutineInfo"))
}  



get_.C_type =
function(type)
{
   # handle typedefs

  if(!is(type, "PointerType"))
    return(as.character(NA))

  p = type@type

  .Ctypes = c("int" = "INTSXP", "double" = "REALSXP", "Rcomplex" = "CPLXSXP", "char" = "RAWSXP") # float possibly, or void *
 
  i = match(p@name, names(.Ctypes))
  if(is.na(i))
     return(as.character(NA))

  if(p@name == "char" && type@depth == 2)
     return("STRSXP")

  if(type@depth != 1)
    return(as.character(NA))

  .Ctypes[i]
}

is_.C_routine = 
function(r)
{
  if(!is(r$returnType, "voidType"))
    return(list(status = FALSE))

  info = sapply(r$parameters, 
                function(x) get_.C_type(x$type))
  class(info) = ".CParameterTypes"
  
  ans = list(status = !any(sapply(info, is.na)),
             name = r$name,
             type = ".C",
             types = info)

  if(ans$status)
    class(ans) <- c(".CRoutine", "RoutineInfo")

  ans
}
