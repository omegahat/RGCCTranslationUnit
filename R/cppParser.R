# source("~/Projects/org/omegahat/R/RAutoGenRunTime/R/runTime.R")

if(USE_NATIVE_TU_PARSER) {

  #XXX Get the order of this right so that DefinitionContainer is defined.
#setOldClass("DefinitionContainer")
#setClass("DefinitionContainer", contains = "environment")
setClassUnion("DefinitionContainerOrNULL", c("DefinitionContainer", "NULL"))

setClass("GCCTUNativeParser",
         representation(ref = "externalptr",
                        language = "character",
                        filename = "character"
                        ),
         contains = "TUParser")

setClass("GCCTUParserDynClass",
            representation(typedefs = "DefinitionContainer"), # "DefinitionContainerOrNULL",
            contains = "GCCTUNativeParser",
            prototype = structure(new.env(TRUE), class = "DefinitionContainer"))
#            prototype = list(typedefs = DefinitionContainer( force = TRUE)))

setAs("GCCTUParserDynClass", "DefinitionContainer",
         function(from) 
           DefinitionContainer(from))


setMethod("[[", "GCCTUNativeParser",
          function(x, i, j, ...) {
            .Call("R_GCCTUParserDynClass_getElement", x, as.integer(i - 1L))
          })

 # For a TUParserIndex, we have to adjust by 2 due to the way we do things in the Perl parser!
setMethod("[[", c("GCCTUNativeParser", "TUParserIndex"),
          function(x, i, j, ...) {
            .Call("R_GCCTUParserDynClass_getElement", x, as.integer(i - 2))
          })

 # NativeTUParserIndex is the value corresponding to the @number of the node
 # so we subtract one for zero based counting.
setMethod("[[", c("GCCTUNativeParser", "NativeTUParserIndex"),
          function(x, i, j, ...) {
            .Call("R_GCCTUParserDynClass_getElement", x, i - 1L)
          })

setMethod("length", "GCCTUNativeParser",
          function(x) {
            .Call("R_GCCTUParserDynClass_numNodes", x)
          })


getIndex =
function(node)
{
  idx = node[["INDEX"]]
  structure(idx, names = idx, class = "NativeTUParserIndex")
}


if(FALSE)  # This versions is in R. The next one uses C code to do the calls. 
setMethod("lapply", "GCCTUNativeParser",
          function(X, FUN, ...) {
               # Should use iterator having obtained the length.
            n = length(X)
            lapply(seq(length = n),
                   function(i) FUN(X[[i]], ...))
          })
else
setMethod("lapply", "GCCTUNativeParser",
          function(X, FUN, ...) {
               # Should use iterator having obtained the length.
            FUN <- match.fun(FUN)
            .Call("R_GCCTUParser_lapply", X, FUN, list(...))        
          })




setClass("GCCNode", contains = "RC++Reference")
setClass("OperandNode", contains = "GCCNode")
setClass("GCCListNode", contains = "OperandNode")

setMethod("getNodeSource", "GCCNode",
           function(node)  {
             node[["srcp"]]
           })


setMethod("names", "GCCNode",
          function(x) {
            .Call("R_GCCNode_elementNames", x)
          })

setAs("GCCNode", "list",
      function(from) {
         .Call("R_GCCNode_elements", from)        
      })

getNodeRawElementTable =
  # This returns the elements as they were in the tu node, i.e. as strings
  # with node references having the @ prefix, etc.
function(from)  
  .Call("R_GCCNode_elements", from)          

setAs("GCCNode", "character",
      function(from) {
          ans = .Call("R_GCCNode_elements", from)
             # flatten into a character vector.
          counts = sapply(ans, length)
          if(any(counts > 0))
             structure(unlist(ans), names = unlist(sapply(seq(along = counts), function(i) rep(names(ans)[i], counts[i]))))
          else
             structure(unlist(ans), names = names(ans))
      }
     )

setMethod("[[", "GCCNode",
          function(x, i, j, ..., exact = TRUE) { #XXX should we add the convert = FALSE argument here to pick up the .Perl directives?

             if(!is.na(  (if(exact) match else pmatch)(i, "INDEX")))
               return(.Call('R_GCCNode_get_INDEX', x))
            
            .Call("R_GCCNode_getValue", x, as.character(i))
          })

# Keep this for function calls to mimic the Perl parser
# e.g. node$source()
# setMethod("$", "GCCNode",
#            function(x, name)
#                x[[name]])


setMethod("ops", "OperandNode",
                function(x, asNodes = TRUE, ...) {
                  .Call("R_OperandNode_operands", x, as.logical(asNodes))
                })


setMethod("show", "GCCNode",
           function(object)
             show(paste("<", class(object), ">", object[["INDEX"]])))


setMethod("isArtificial", "GCCNode",
function(node)  
  node[["artificial"]]
)


setMethod("notes", "GCCNode", function(obj, ...) obj[["note"]])


###############################################
# For getting meta data about TU files and their nodes.
#
setClass("GCCTUInfoParser", contains = "GCCTUNativeParser")
setClass("GCCInfoNode", contains = "GCCNode")
parseTUInfo =
function(filename, language = NA, asText = FALSE)
{
  filename = path.expand(filename)
  if(!file.exists(filename))
    stop("TU file doesn't exist")

  p = .Call("R_parseTU_Info", filename)
  ans = new("GCCTUInfoParser", ref = p)
 
  ans
}

getInfoNodeType =
function(node)  
  .Call("R_GCCInfoNode_get_type", node)

#############################################

parseTU =
  #
  # This can read from a file name, an R character vector or
  #  an R connection.
  #
  #  txt = readLines("inst/examples/pointer.c.t02.original")
  #  a = parseTU("inst/examples/pointer.c.t02.original")
  #  z = parseTU(txt[5:107])
  #  v = parseTU(txt[113:182])
  #  con = file("inst/examples/pointer.c.t02.original", "r")
  #  readLines(con, 112)
  #  parseTU(con)
  #
  
function(filename, language = NA, typedefs = NULL, asText = FALSE)
{
  if(asText) 
    filename = textConnection(filename)
  
  if(!inherits(filename, "connection")) {
    filename = as.character(filename)

    if(length(filename) == 1) {
      if(!file.exists(filename))
        stop("No such file ", filename)

      filename = path.expand(filename)
    }
  }

  p = .Call("R_parseTU", filename)
  ans = new("GCCTUParserDynClass")
  ans@ref = p
  ans@filename = filename #XXX deal with connections, etc.
  ans@typedefs = structure(new.env(hash = TRUE), class = "DefinitionContainer")
  ans@typedefs = DefinitionContainer(ans, force = TRUE) # structure(new.env(hash = TRUE), class = "DefinitionContainer")

  ans = setLanguage(ans, language)
  
  if(missing(typedefs))
    ans@typedefs = DefinitionContainer(ans)
  
  ans
}


setMethod("getTUParser", "GCCNode", 
          function(node)
             new("GCCTUParserDynClass", ref = .Call("R_GCCNode_get_parser", node)))

setAs("GCCNode", "GCCTUParserDynClass",
        function(from)
            getTUParser(from))


setMethod("getRecordNodes", c("GCCTUParserDynClass", "missing"),
           function(dcls, filter) {
             .Call("R_GCCTUParserDyn_getRecordNodes", dcls)
           })

setMethod("getRecordNodes", c("GCCTUParserDynClass", "function"),
           function(dcls, filter) {
               els = getRecordNodes(dcls)
               els[sapply(els, filter)]
           })



setMethod("getNodeQualifiers", "GCCNode",
          function(node) {
            #XXX Deal with declaration of language "C"
            q = c("const", "volatile", "restrict")
            q[q %in% names(node)]
          })


setMethod("setLanguage", "GCCTUNativeParser",
function(parser, language = NA)
{
  parser@language = as.character(language)
  
  parser
})


setMethod("getLanguage", "GCCTUNativeParser",
   function(parseNodes, defaultLanguage = NA) {
       if(length(parseNodes@language) != 0 && !is.na(parseNodes@language))
         parseNodes@language
       else {
         defaultLanguage
       }
})


setAs("GCCNode", "TUParser", function(from) getTUParser(from))


} # if(FALSE)

