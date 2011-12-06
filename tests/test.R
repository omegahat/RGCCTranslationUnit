library(RGCCTranslationUnit)

p = parseTU("../examples/shapes.cc.t00.tu")

names(p[[2]])

p[[1]][["srcp"]]



wx = parseTU(path.expand("~/Projects/org/omegahat/R/RwxWidgets/autoGenerate/wx.cpp.t00.tu"))


nn = unique(unlist(lapply(p, names)))
nn = c(nn, unique(unlist(lapply(wx, names)))


getDuplicatedNames =
function(nodes)
{  
  nn = lapply(nodes, names)
  unlist(sapply(nn, function(x) x[duplicated(x)]))
}

unique(c(getDuplicatedNames(p), getDuplicatedNames(wx)))


# "note" "val"  "idx"  "body" "base" "accs" "binf" "spec"
dupElementNames = c( "note" ,"val",  "idx",  "body" ,"base", "accs", "binf", "spec")
dupElementNodeTypes = lapply(dupElementNames, function(id) unique(sapply(which(sapply(nn, function(x) id %in% x)), function(i) class(p[[i]]))))
names(dupElementNodeTypes) = dupElementNames

lapply(p, function(x) if(class(x) %in% dupElementNodeTypes[["val"]]) "idx" %in% names(x) else FALSE)

# Get all the nodes which correspond to the classes of interest.

percentHavingElement =
function(elName, p, types = dupElementNodeTypes[[elName]])
{  
  i  = which(unlist(lapply(p, function(x) class(x) %in% types)))
  sapply(i, function(j) c(class(p[[j]]), elName %in% names(p[[j]]), sum(names(p[[j]]) == elName)))
}
