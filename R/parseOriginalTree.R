#
# This is for parsing the multi-part output from
#  gcc/g++  -fdump-tree-original-raw
# which gives separate sub-TUs

parseTUOriginalTree =
function(fileName)
{
  txt = readLines(fileName)
  starts = grep("^@1 ", txt)

  starts[c(1, length(starts) + 1)] = c(1, length(txt))
  
  ans = lapply(seq(along = starts[-length(starts)]),
               function(i) {
                  lines = txt[ starts[i]:starts[i+1]]
                  w = grep("(;;|^$)", lines)
                  if(length(w))
                    lines = lines[ - w]
                  
                  parseTU(lines, asText = TRUE)
               })

  names(ans) = sapply(ans, getFunctionName)
  ans
}

getFunctionName =
function(tu)
{
  defs =  getAll(tu, "GCC::Node::function_decl")
  names(defs)[1]
}  
