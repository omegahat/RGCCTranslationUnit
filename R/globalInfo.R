getGlobalInfo = 
function(filename, ...,
         g = getGlobalVariables(tu),
         r = getRoutines(tu, gsub("\\.tu$", "", basename(filename)), static = TRUE),
         free = freeVariables(r, tu, g),
         calls = getCallGraph(tu, r),
         constants = c("R_NilValue", "R_NaInt", "R_PosInf", "R_NegInf")
        )
{
 tu = parseTU(filename, ...)

   # Remove references to things we know are really constants (in R at the moment).
 free = sapply(free, function(x) setdiff(x, constants))
 free = free[sapply(free, length) > 0]
 
 list(parser = tu, globals = g,
      routines = r,
      freeVars = free,
      callGraphs = calls)
}
