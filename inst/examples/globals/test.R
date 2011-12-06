library(RGCCTranslationUnit)
source("Rglobals.R")

dyn.load("Rglobals.so")

initGlobalVars()

update_i()
update_i()

valueOf(i)

update_aref()
update_aref()

valueOf(aref)$x

# .Call("R_useAref", aref)
update_aref()

useAref(aref)


# modifications to useInt to use as(x, "integer")
useInt(i)


# This will fail, as expected.
tryCatch(.Call("R_get_valueOf_ARefRef", i),
          error = function(e) cat("Caught expected mismatch\n"))

an = new_A()
an$x = 100
an$y = exp(1)
v = as(an, "A")
rt = as(as(as(an, "A"), "ARef"), "A")
cat("Round trip values the same?", identical(v, rt),"\n")

