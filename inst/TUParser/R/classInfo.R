getFieldInfo =
#
# loop over the files, parse the TU content and then 
# get the names of the elements for each node.
# and then we find the actual type of each node so we can
# associate the vector of names with each type.
# 
# Then, to conclude, we look at all the field names and 
#  find which node types contain such a field.
#
# We use parseTUInfo to get generic nodes and therefore the
# fields all go into a hashtable. So the names() of an element
# gives s all the values.
#
function(files = "~/wx.cpp.001t.tu")
{
  elNames = list()
  nodeTypes = character()
 
  typeInfo = list()

  elTypes = list()

  sapply(files, 
          function(file) {
                if(!file.exists(file))
                    return(NULL)
                print(file)
	        p <- parseTUInfo(file)
                elNames <<- c(elNames,  lapply(p, names))
		nodeTypes <<- c(nodeTypes, unlist(lapply(p, getInfoNodeType)))
          })
  fieldsByType =  tapply(elNames, nodeTypes, function(x) table(unlist(x)))
}


getFieldTypeInfo =
function(files = "~/wx.cpp.001t.tu", fieldInfo)
{
   # For each field name, create a matrix with as many rows as there
   # node types that contain that field and with columns identifying
   # the type of value held in that field for each of these.
   # We then fill this in. Ideally, each node type treats the field
   # as a single type so that there is no ambiguity.
  elTypesByClass = 
       lapply(fieldInfo,         
                function(node) {
   		    fields = names(node)
    		    matrix(0, length(fields), 4, dimnames = list(fields, c("node", "string", "integer", "real")))
		    })
  
  sapply(files, 
          function(file) {
                if(!file.exists(file))
                    return(NULL)
                print(file)
                  # parse the TU
	        p <- parseTU(file)
                   # Go over each node and process it.
                lapply(p, function(el) {
                     # Find the class of this node which is the initial index into elTypesByClass
                    k = gsub("GCC::Node::", "", class(el))
                      # loop over the fields in this class and find the type of each
                    el = RGCCTranslationUnit:::getNodeRawElementTable(el)
		    sapply(names(el), 
                             function(id)  {
                                  # Get the value - a string
			        val = el[[id]]
#                                cat(k, id, val, "\n")
                                  # Determine if the value is a node reference, an integer or a regular string
                                if(substring(val, 1, 1) == "@")
                                   elTypesByClass[[k]][id, 1] <<- elTypesByClass[[k]][id, 1] + 1
                                else if(!is.na(tmp<- as.integer(val)) && tmp == as.numeric(val))
                                   elTypesByClass[[k]][id, 3] <<- elTypesByClass[[k]][id, 3] + 1
                                else if(!is.na(as.numeric(val)))
                                   elTypesByClass[[k]][id, 4] <<- elTypesByClass[[k]][id, 4] + 1
                                else 
                                   elTypesByClass[[k]][id, 2] <<- elTypesByClass[[k]][id, 2] + 1
                             })
                  })
          })

   elTypesByClass
}

computeNodeTypes =
function(m)
{
  ans = apply(m, 1, computeNodeType)
#  factor(ans, 1:4, labels = c("node", "string", "integer", "real"))
  ans
}

computeNodeType =
function(els)
{
  notype = sum(els == 0)
  if(notype == 0)
    2
  else if(notype > 1) {
    types = which(els > 0)
    if(all(c(1, 2) %in% types))
      return(1)
    else #XXX real should come before integer.
      which.min(els == 0)
  } else if(els[4] > 0)
     4
  else
    which.max(els)
}  
