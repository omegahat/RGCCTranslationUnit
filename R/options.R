Options = new.env()



TUOptions =
function(..., .vals = list(...))
{
  if(length(.vals) == 0)
    return(sapply(objects(Options, all = TRUE), get, envir = Options))

  invisible(lapply(names(.vals), function(id) assign(id, .vals[[id]], envir = Options)))
}

getTUOption =
function(name, default = NA)
{
 if(exists(name, envir = Options))
   get(name, envir = Options)
 else
   default
}

initTUOptions =
function(clear = TRUE)
{
  if(clear) 
    remove(list = objects(Options, all = TRUE), envir = Options)

  TUOptions(constructorNamePrefix = "new", checkBitwiseAtResolve = FALSE)
}
  
