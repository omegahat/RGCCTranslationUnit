setGeneric("getNodeSource",
           function(node) 
             standardGeneric("getNodeSource"))


lineNumber =
function(x)
{
   if(is.list(x)) {
     x[sapply(x, is.null)] = ""
     x = unlist(x)
   }
   
   els = strsplit(x, ":")
   structure(as.integer(sapply(els, `[`, 2)),
             names = sapply(els, `[`, 1)) 
}

          

setGeneric("getNextNode",
           function(node) standardGeneric("getNextNode"))

setGeneric("getRecordNodes",
           function(dcls, filter)
           standardGeneric("getRecordNodes"))


setGeneric("getLanguage", 
function(parseNodes, defaultLanguage = NA)
{
  standardGeneric("getLanguage")
})


setGeneric("setLanguage", 
  function(parser, language = NA) {
    if(is.na(language)) {
        fileName = if(is(parser, "PerlTUParser")) unclass(parser)$fileName else parser@filename
        if(length(grep("\\.c$|\\.c\\.", fileName)))
            language = "C"
        else if(length(grep("\\.cc$|\\.cc\\.|\\.cpp$|\\.cpp\\.|\\.cxx|\\.cxx\\.", fileName)))
             language = "C++"
    }
    standardGeneric("setLanguage")
  })

setGeneric("isArtificial",
  function(node)
    standardGeneric("isArtificial"))

setGeneric("isConstructor", function(obj, ...) standardGeneric("isConstructor"))
setGeneric("isDestructor", function(obj, ...) standardGeneric("isDestructor"))

 # Returns a character vector of the note fields.
setGeneric("notes", function(obj, ...) standardGeneric("notes"))


setGeneric("ops", function(x, ...) standardGeneric("ops"))
setGeneric("getBaseNodes", function(node) standardGeneric("getBaseNodes"))
