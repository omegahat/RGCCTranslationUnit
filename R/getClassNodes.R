

#getClassNodes =
# NOT USED
# # for the output from g++ 4.1.*
#function(dcls, files = character(0), ignoreClasses = character(0), ...)
#{
# if(length(files))
#   filter = function(x) {
#       checkSource(x$source(), files)
#   }
# else
#   filter = NULL
##  getAll(dcls, "GCC::Node::record_type", filter)
# getAll(dcls, "GCC::Node::type_decl", filter)  
#}  


getClassNodes =
  # for the output from g++ 4.1.*
function(dcls, files = character(0), ignoreClasses = character(0), ..., validateSource = checkSource)
{
  filter =
    function(node) {
        # make certain the node has a binf element
        # and if we want to filter on file name
        # then we look at the name node.

       if(!("binf" %in% names(node)))
         return(FALSE)
       
       if(length(files)) {
          x = node[["name"]]
          if(!validateSource(x[["source"]], files))
            return(FALSE)
       }
       TRUE
    }

   # get all the record_type nodes.
  els = getRecordNodes(dcls, filter)   #  els = getAll(dcls, "GCC::Node::record_type", filter)

    # We will end up with two nodes for each actual class.
    # We look at their name node and get just those
  names = sapply(els, function(x) x[["name"]] [["INDEX"]])
  els = els[!duplicated(names)]

  ans = lapply(els, function(x) x[["name"]])
  names(ans) = sapply(ans, getNodeName)

  ans
}  


if(FALSE) {
  # example.
library(RGCCTranslationUnit)  
  p = parseTU("../inst/examples/shapes1.cc.t00.tu")
  dd = ngetClassNodes(p, "shapes1")
  z  = getClassMethods(dd[[1]], c("pub", "prot"))
}



getNodeMethods =
function(def)
{
  def[["fncs"]]
}



################################
# tools for the older format
if(FALSE) {
old.getClassNodes =
  #
  # Handles the old (and new?) TU "formats".
  #
function(dcls, files = character(0), ignoreClasses = character(0), ..., validateSource = checkSource)
{
  if(isNewGCC(dcls))
    return(getClassNodes(dcls, files, ignoreClasses, ..., validateSource = validateSource))
 
    # Here we just keep iterating over the chain, regardless of type
    # and leave the idenitification of the nodes of interest, i.e. the type_decl
    # to the operator function.
  nodeIterator(dcls, 
               function(node) {
              
                 if(!inherits(node, "GCC::Node::type_decl"))
                   return(NULL)
              
                 if(length(files) && !validateSource(node[["source"]], files))
                   return(NULL)
              
                 if(isClassDefNode(node))
                   node    # getIndex(node) now return not the index, but the node
                 else
                   NULL
                 
               }, ...)   #  type = "GCC::Node::type_decl",
}  


isClassDefNode <-
  #
  #  Determines if a type_decl node is a class definition.
  #  This currently checks whether it has an "artificial" qualifier
  #  and whether it has either a flds or fncs slot (or both)
  #
  #  This may be fooled by a class that has no functions or fields,
  #  but the compiler will flag that as having no constructor if there isn't a default
  #  constructor.  And it will add implicitly defined constructors also.
function(node) 
{
   art = node[["artificial"]]
   if(is.null(art) || !art)
     return(FALSE)

   record = node[["type"]]
   if(is.null(record) || inherits(record, "GCC::Node::union_type"))
     return(FALSE)

   
   if(any(!is.na(match(c("flds", "fncs"),  names(record)))))
       # Is possible that we have no fields or functions but just a simple label class, or virtual one.
     return(TRUE)

   return(FALSE)
 }  
}
