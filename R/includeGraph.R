makeIncludeGraph =
  #
  # g = makeIncludeGraph("/usr/local/include/libxml2")
  # i = makeIncludeGraph("/usr/local/include/mono-1.0/mono", prefix = "/usr/local/include/mono-1.0/")
  #
function(dir, files = list.files(dir, recursive = TRUE, full.names = TRUE),
           prefix = dirname(dir))
{
  library(graph)

     # remove the prefix for the files
  tmp = gsub(prefix, "", files)

     # Now find all the #include lines and get the entries
  ans = lapply(files, function(x)  {
                   l = readLines(x)
                   l = grep("^[[:space:]]*#include", l, value = TRUE)
                   gsub('[[:space:]]*#include ("|<)([^">]+)("|>)', '\\2', l)
                })
  names(ans) = tmp

  all = unique(c(unlist(ans), names(ans)))
  edges = structure(vector("list", length(all)), names = all)
  edges[names(ans)] = lapply(ans, function(x) {
                                     i = match(x, all)
                                     list(edges = i)
                                  })

  ids = setdiff(all, names(ans))
  for(id in ids)
      edges[[id]] =  list(edges = integer())

  new("graphNEL", nodes = all, edgeL = edges, edgemode = "directed")
}
