getNext =
function(p, types, from = 1L)
{
 if(length(grep("^GCC::Node", class(from))))
    from = as.integer(from[["INDEX"]]) + 1L

  if(from < 1)
    stop("Must start from the first position at least.")

  getNodeByType(p, types, from)
}

setGeneric("getNodeByType",
function(parser, types, from)
{
  standardGeneric("getNodeByType")
})

if(USE_PERL_TU_PARSER)
 setMethod("getNodeByType", "PerlTUParser",
  function(parser, types, from)
  {  
  .Perl("getByType",
          .args = append(list(as.integer(from)), types),
          convert = FALSE,
          ref = p)
    # p$getNext(as.integer(from), type)
  }  )

setMethod("getNodeByType", "GCCTUNativeParser",
function(parser, types, from)
{  
  .Call("R_NativeTUParser_getByType", parser@ref, as.integer(from), types)
})


getAll =
  #
  # Collect all the nodes of a particular type/class in Perl
  # specified by the vector in types
  # Rather than collecting them all, we can discard some
  # that are not of interest using a function given by filter
  # which should return TRUE if we want to keep the object in
  # the answer list.
  #
function(tu, types, filter = NULL)
{
  ans = list()

  tmp = getNext(tu, types)
  while(!is.null(tmp)) {
    if(is.null(filter) || filter(tmp)) {
         ans [[ length(ans) + 1L ]] = tmp
         names(ans)[length(ans)] = getNodeName(tmp)
    }
    tmp = getNext(tu, types, tmp)
  }

  ans
}  


setGeneric("getDataStructures",
  #
  # record_types cannot be filtered by file name since they don't necessarily
  # have a source.
  #
  #
function(p, files = character(),
         types = c("GCC::Node::type_decl", "GCC::Node::record_type"),
         includeMissingSource = TRUE)  
{
   standardGeneric("getDataStructures")
})

setMethod("getDataStructures", "DefinitionContainer",
function(p, files = character(),
         types = c("GCC::Node::type_decl", "GCC::Node::record_type"),
         includeMissingSource = TRUE)    
{
  ids = names(p)
  nums = grep("^[0-9]+$", ids)
  builtIns = c(".nodes", ".pending", ".reportDuplicates", 
               ".resolved", ".resolvedNodes", ".verbose", ".parser")
  nums = c(nums, match(builtIns, ids))
  objs = lapply(ids[ - nums], function(x) get(x, envir = p))

  names(objs) = ids[ - nums]
  #XXX different from parameter defaults
  if(missing(types))
     types = c("StructDefinition", "EnumerationDefinition")
  objs = objs[sapply(objs, inherits, types)]

  if(length(files) || is.function(files)) {
    if(exists(".parser", p)) {
      parser = p$.parser
        # Need to be able to get back to the node.
      w = sapply(objs, function(x) {
                           #XXX
                          node = parser [[ x@node ]]
                          if(length(files)) # "source" %in% names(node))
                            checkSource(node[["source"]], files)
                          else 
                            includeMissingSource
                     })
      objs = objs[w]
    } else
      warning("parser is not available. Can't filter based on source files")
  }
    
  
  objs
})

#  GCC::TranslationUnit::Parser" 
setMethod("getDataStructures", "TUParser",
function(p, files = character(),
         types = c("GCC::Node::type_decl", "GCC::Node::record_type"),
         includeMissingSource = TRUE)    
{
  filter = function(node) {
                 if("artificial" %in% names(node))
                   return(FALSE)
                 
                 if(length(files))
                    checkSource(node[["source"]], files)
                 else
                    includeMissingSource
             }

    getAll(p, types, filter)
})


setGeneric("getTypedefs",
	  function(p, files = character(),
                   types = c("GCC::Node::type_decl"),
                   includeMissingSource = TRUE)    
             standardGeneric("getTypedefs"))

setMethod("getTypedefs", "TUParser",
function(p, files = character(),
         types = c("GCC::Node::type_decl"),
         includeMissingSource = TRUE)    
{
  filter = function(node) {
                 if("artificial" %in% names(node))
                   return(FALSE)
                 
                 if(length(files))
                    checkSource(node[["source"]], files)
                 else
                    includeMissingSource
             }

   RGCCTranslationUnit:::getAll(p, types, filter)
})
