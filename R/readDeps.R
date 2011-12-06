readDependencies =
#
#  read dependency files created by gcc/g++ -M or -MM
#  to get the collections of all the files that are
#  included directly or indirectly for the target source
#  file. This target source file will be the first entry
# 
#  The names of the resulting vector are the basenames
#  of the files.

function(filename) 
{
  if(length(filename) == 1 && file.exists(filename))
    deps = readLines(filename)
  else
    deps = filename

   # First line is special with the target: source-file dependency
  els = strsplit(deps[1], ":[ ]*")[[1]]
  name = els[1]
  deps[1] = els[2]

   # Get rid of the \ at the end of each line
  deps = gsub(" +\\\\$", "", deps)
   # Break each line into space separated entries, 
   # remove the "" strings arising from the beginning of each line
  els = unlist(strsplit(deps, " +"))
  deps = els[els != "" ]

  names(deps) = basename(deps)


  attr(deps, "source") = name
 
  deps
}
