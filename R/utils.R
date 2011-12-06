groupEls =
  #
  #  This takes a list of similarly structured objects
  #   with named elements and rearranges it into a 
  #  list with those named elements containining the values
  #  from the elements of the original list.
  #  E.g.  we start with a  list of 5 objects, each containing
  #   elements named a, b, c.
  #  We end up with a list with named elements a, b, c
  #  each with length 5.
function(obj, els = names(obj[[1]]))
{
  ans = lapply(els,
               function(id) {
                   unlist(lapply(obj, function(x) x[[id]]), recursive = FALSE)
                })
  names(ans) = els

  ans
}  





findAllMethodsByName =
function(methods, name, flat = TRUE)
{
 x = lapply(methods, function(x) x[names(x) == name])
 x = x[ sapply(x, length) > 0 ]
 if(flat)
   unlist(x, recursive = FALSE)
 else
   x
}  



if(FALSE) {
followFields  =
  # doesn't look like this is ever used.
function(node)
{
  if("flds" %in% names(node)) {
    return(getFields(node))
  }

  if(is(node, "GCC::Node::type_decl")) {
    return(followFields(node[["type", convert = FALSE]]))
  }
}
}

# Have this elsewhere!!
xxxxxgetClassMethods =
function(resolvedMethods, className)
{
  resolvedMethods
}

####################################


derivedFrom =
  #
  #  Allows the caller to give a collection of class nodes
  #  i.e. GCC::Node::type_decl values from getClassNodes()
  #  and then to find the subset which have the class named
  #  className as an ancestor class.
  #
  #  if value is FALSE, we return the logical vector indicating which
  #  elements are derived from className.
  #  if value is TRUE, then we return the subset of classes that are derived.
function(classes, className, value = FALSE)
{
  i = sapply(classes, function(n) className %in% getBaseClasses(n, recursive = TRUE))

  if(value)
     classes[i]
  else
     i
}



hasCopyConstructor =
function(methods, className = methods[[1]]$parameters[[1]]$type@typeName)
{
  methods = methods[  sapply(methods, is, "ResolvedNativeClassConstructor") ]

    # look in these for a method with just one (extra paramter)
  i = sapply(methods, function(x) {
                        if(length(x$parameters) != 2)
                           return(FALSE)

                        if(!is(x$parameters[[2]]$type, "PointerType"))
                           return(FALSE)


                        if(is(x$parameters[[2]]$type@type, "ResolvedTypeReference")) {
                           obj = resolveType(x$parameters[[2]]$type@type) 
                           obj@name == className
                        } else
                          x$parameters[[2]]$type@typeName == className
                  })

  any(i)
}  




Warning =
function(msg, ..., class = character(), .els = list(...), .throw = FALSE)
{
 w = simpleWarning(msg)
 w = append(w, .els)

 class(w) = c(class, class(w))
 if(.throw)
   warning(w)
 w
}  


findTUFile =
function(fileName, error = TRUE)
{
     # if the file exists and if it has a line that starts with @1
     # within the first few lines, then it is a TU file. The search over the 5 lines
     # rather than the first one only is for the files that have multiple sub-TUs
     # as generated via -fdump-tree-original-raw.
   if(file.exists(fileName) && length(grep("^@1", readLines(fileName, n = 5))) > 0)
     return(fileName)
  
   tuExtensions = c("tu", "001t.tu", "t00.tu")
   sourceExtensions = c("", "c", "cc", "cpp", "cxx", "C")

     # now get all combinations.
   
   extensions = outer(sourceExtensions, tuExtensions, paste, sep = ".")

    # now find the names of all possible files we will search for.
   fnames = c(fileName, gsub(".tu$", "", fileName),
               paste(fileName, tuExtensions, sep = "."),
               paste(gsub(".tu$", "", fileName),  extensions, sep = "."))

     # if there is no tu on the original file, throw away the first two elements
     # as they will find source files.
   if(length(grep("\\.tu$", fileName)) == 0)
     fnames = fnames[- c(1, 2)]

    # which of the possible files actually exists.
   fnames = fnames[ file.exists(fnames) ]

     # if none of the files exist, try to make suggestions
     # and report an error if the user wanted us 
   if(length(fnames) == 0) {
     if(error) {
        possibles = grep("\\.tu$", list.files(dirname(fileName)), value = TRUE)
        i = agrep(basename(fileName), possibles)
        if(length(i))
           txt = paste(" Did you mean ", paste(possibles[i], collapse = ", "), sep = "")
        else {
          possibles = list.files(dirname(fileName),
                                  pattern = paste("\\.(",
                                                  paste(gsub("^\\.", "", sourceExtensions), collapse = "|"),
                                                  ")$", sep = ""))
          i = agrep(basename(fileName), possibles)
          if(length(i))
            txt = paste("Perhaps you need to generate the TU file from", paste(possibles[i], collapse = ", "))
          else
            txt = character()
        }
        stop("No associated tu file found for ", fileName, ".", txt)
     }
     else
       return(NA)
   }
    # return the name of the first file that exists.
   fnames[1]  
}  
  


backquote =
function(x)
 paste("`", x, "`", sep = "")


######################################################################


getLongestStartingCommonSubstring =
  # x = c("QtDebugMsg", "QtWarningMsg", "QtCriticalMsg", "QtFatalMsg", "QtSystemMsg")
  # getLongestStartingCommonSubstring(x, TRUE, FALSE)
  #
  #  We use this when trying to find a common prefix 
  #  for enums so that we can allow the user to specify 
  #  a short version of values as strings.
  #  e.g. DebugMsg rather than QtDebugMsg

function(vals, useRlibstree = require(Rlibstree), checkAll = NA)
{
   # if we use Rlibstree and fail to find the longest _starting_ prefix with it
   # then we fall through to the manual way.
  if(useRlibstree) {
    allStartWith = function(str)
                          all(substring(vals, 1, nchar(tmp)) == str)
    tmp = getLongestCommonSubstring(vals)
     # Check this is the start of the string, not the end, e.g.
     # QtDebugMsg, QtWarningMsg, ...  has Msg as the longest common substring.
    if(length(tmp) > 1) {
       i = sapply(tmp, allStartWith)
       if(any(i))
          return(tmp[i])
    } else if(allStartWith(tmp))
      return(tmp)
  }

  m = min(nchar(vals))
  els = matrix(unlist(lapply(strsplit(vals, ""), function(x) x[1:m])), length(vals), byrow = TRUE)
  if(missing(checkAll))
    checkAll = m < 10
  
  if(checkAll) {
      i = apply(els, 2, function(x) all(x[1] == x))
      if(any(i))
        i = max(which(i))
      else
        i = 0
  } else {
          # If these are very long strings and we don't expect a length common substring,
          # don't do the entire apply as most will fail, but do it iteratively and stop
          # on the first failure.
      i = 0
      while(i < m && all(els[,i+1] ==els[1, i+1])) {
        i = i+1
      }      
  }

  return(if(i == 0) "" else substring(vals[1], 1, i))
}  




isVirtualClass =
function(methods)
{
 sapply(methods, function(x)  if("pure" %in% names(x)) x[["pure"]] else FALSE)
}




capitalize =
function(phrase, contract = TRUE, first = TRUE)
{
  if(first)
    phrase = gsub("^([a-z])", "\\U\\1", phrase, perl = TRUE)
  
  phrase = gsub(" ([a-z])", if(contract) "\\U\\1" else " \\U\\1", phrase, perl = TRUE)
  if(contract)
    gsub(" ", "", phrase)
  else
    phrase
}



dQuote =
function(x)
  sprintf('"%s"', x)

sQuote =
function(x)
  sprintf("'%s'", x)
