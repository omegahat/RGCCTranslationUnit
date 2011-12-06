
#
# Remove the inherited virtual methods in the subclasses
#

# rMethods - resolved methods

disccardVirtualSubMethods =
function(rMethods, classes)
{

   #
  k = names(rMethods)
  for(i in k) {
    sapply(rMethods)
  }

}  



getClassDefs =
function(tu, ..., klasses = getClassNodes(tu, ...))
{
  classDefs = lapply(klasses, resolveType, tu)
  o = names(getClassOrder(classDefs))
  classDefs[o]
}


getClassHierarchyMatrix =
function(classes, recursive = TRUE)
{
 n = length(classes)
 i = matrix(FALSE, n, n, dimnames = list(names(classes), names(classes)))
   
 sapply(names(classes),
        function(id) {
           tmp = getBaseClasses(classes[[id]], recursive = recursive)
           if(length(tmp)) {
             tmp = tmp[ tmp %in% colnames(i)]
             i[id, tmp] <<- TRUE
           }
        })

 class(i) = c(if(recursive) "RecursiveClassInheritanceHierarchy", "ClassInheritanceHierarchy")
 i
}

print.ClassInheritanceHierarchy =
function(x, ...)
{
 tmp = matrix(".", nrow(x), ncol(x), dimnames = dimnames(x))
 tmp[x == TRUE] = "X"
 print(tmp, quote = FALSE)
}  


getRootClasses =
function(classes)
{
  classes[sapply(classes, function(k) all(is.na(getBaseClasses(k, recursive = FALSE)) ))]
}  


##??? Are these two below doing the same thing?
orderClasses =
  # order the classes so we can go from top down.
function(classes)
{
  m = getClassHierarchyMatrix(classes, recursive = FALSE)
  k = rownames(m)
  rs = rowSums(m)
  roots = (rs == 0)
  return(classes[roots])
  lapply(k[roots],
         function(id) {
            c(id, k[m[, id] > 0])
         })
}

getClassOrder =
  # for the order to define the classes in R
  #
function(classDefs)
{
  hier = getClassHierarchyMatrix(classDefs)

  ans = integer() # character()
  ctr = 0
  while(length(hier)) {
    n = rowSums(hier)
    i = which(n == 0)
    ans[rownames(hier)[i]] <- ctr
#    ans <- c(ans, rownames(hier)[i])
    ctr <- ctr + 1
    hier = hier[-i, -i, drop = FALSE]
  }
  ans
}

