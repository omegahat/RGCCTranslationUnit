#
#
#
#
#

sigs =
  matrix(c(
         c(NA, NA, NA),
         c("A", NA, NA),  
         c("A", "B", NA),
         c("A", "C", NA),
         c("A", "B", "C"),
         c("X", "B", NA),
         c("A", "B", "X")), ,3, byrow = TRUE)
rownames(sigs) = apply(sigs,1, paste, collapse = ", ")

numUniqueArgs(sigTable = sigs)
# c(2, 2, 3, 1, 3)

matrix(c(c("int", "double", "char *"),
         c("double", "double", "char *")), 2, 3)

c("double", "double", "int")
ar *")
