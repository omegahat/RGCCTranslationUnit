if(USE_PERL_TU_PARSER) {
parseTU = parseTU.Perl =
  #
  # Read the TU file and return its first node within the type declarations.
  #
function(fileName, 
         language = NA,
         typedefs = NULL,
         serializedExtension = ".ser", asText = FALSE)
{
    if(length(fileName) == 0)
      stop("no file name passed to parseTU")
  
    library(RSPerl)
      #XXX (De)Activate when we want the conversion of GCC::Node's to be automaticall references
     RSPerl_initialization()
    .PerlPackage("GCC::TranslationUnit")
    
     # Read serialized version.
    if(!asText && length(serializedExtension) && serializedExtension != "") {
      tmp = paste(path.expand(fileName), ".ser", sep = "")
      if(file.exists(tmp)) {
       try({
              .PerlPackage("Storable")
              return(.Perl("retrieve", tmp))
            })

       warning("Failed to read serialized version, proceeding with raw file")
      }
    }    

    if(!asText) {
      fileName = path.expand(fileName)
    
      if(length(grep(".tu$", fileName)) == 0 && !file.exists(fileName)) 
        fileName = findTUFile(fileName)
    }


    method = "GCC::TranslationUnit::Parser::parseTU"
    
    if(asText || !file.exists(fileName)) {
      if(!length(grep("^@", fileName)))
        stop("No such file ", fileName)
      else
        method = "GCC::TranslationUnit::Parser::parseTUString"
      asText = TRUE
    }


    if(!asText)
      ans = .Perl(method,
                   "",
                   fileName,
                   convert = FALSE)
    else {
      args = list()
      args[seq(along = fileName)] = fileName
      ans = .Call("RS_PerlCallModified", "GCC::TranslationUnit::Parser::parseTUString", args, FALSE, FALSE, NULL, NULL, PACKAGE = "RSPerl")
    }

    ans = setLanguage(ans, language)

    ans$filename = fileName

    ans$resolvedDefinitions = DefinitionContainer(ans)

    if(missing(typedefs))
      ans@typedefs = DefinitionContainer(ans)
    
    class(ans) = c(class(ans)[1], "PerlTUParser", "TUParser", class(ans)[-1]) 
    
    ans
}

setMethod("getLanguage", "PerlTUParser",
    function(parseNodes, defaultLanguage = NA) {
       if("language" %in% names(parseNodes) && !is.na((val <- unclass(parseNodes)$language)))
         val
       else
         defaultLanguage
     })

#setOldClass("GCC::TranslationUnit::Parser")

setMethod("[[", c("GCC::TranslationUnit::Parser", "character", "missing"),
           function(x, i, j, ...) {
                 x[[as.integer(i) + 1]]
           })

if(!isGeneric("lapply"))
  setGeneric("lapply", function(X, FUN, ...) standardGeneric("lapply"))
if(!isGeneric("sapply"))
  setGeneric("sapply", function(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE) standardGeneric("sapply"))

setMethod("lapply", c("GCC::TranslationUnit::Parser"),
           function(X, FUN, ...) {
                n = .PerlLength(X)
                if(n == 0)
                  return(list())
                lapply(1:n, function(i, ...) FUN(X[[i]], ...), ...)
           })

setMethod("sapply", c("GCC::TranslationUnit::Parser"),
           function(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE) {
                n = .PerlLength(X)
                if(n == 0)
                  return(list())
                sapply(1:n, function(i, ...) FUN(X[[i]], ...), ..., simplify = simplify, USE.NAMES = USE.NAMES)
           }) 


getIndex =
function(node)
{
 structure(as.integer(node[["INDEX"]]) + 1, names = node[["INDEX"]], class = "TUParserIndex")
}

if(FALSE)  # use the direct way for both parsers def[["fncs"]]
getNodeMethods =
function(def)
{
  def$methods(convert = FALSE)
}


setMethod("getTUParser", "PerlHashReference",
            function(node)
              node[["TU"]])


setMethod("getRecordNodes", "PerlHashReference",
function(dcls, filter)
{
  els = dcls$getRecordNodes()

  if(inherits(els, "GCC::Node::record_type"))
    els = list(els)

  els[sapply(els, filter)]
})


setMethod("ops", "PerlHashReference",
            function(x, asNodes = TRUE, ...) {
               node[["operand", convert = FALSE]]
            })


setMethod("isArtificial", "PerlHashReference",
           function(node)  
             "artificial" %in% names(node))


setMethod("getBaseNodes", "GCCNode",
          function(node) {
            node[["base"]]
          })

setMethod("notes", "GCCNode", function(obj, ...) unlist(obj[["note"]]))


} # end if(USE_PERL_TU_PARSER)
