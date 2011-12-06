addToNamespace =
function(defs, nsfile = "NAMESPACE", marker = "ExportEnumClasses", ...)
{
  txt = readLines(nsfile)
  e = paste("#<", c("", "/"), marker, ">", sep = "")
  i = match(e, txt)
     # First time we won't find anything there.
  if(any(is.na(i)) && !all(is.na(i))) 
    stop("cannot find both the start and end of ", marker, " in ", nsfile)

  # make backup first.
  backup = paste(nsfile, ".bak", sep = "")
  file.copy(nsfile, backup, TRUE)
  on.exit(file.copy(backup, nsfile, TRUE))
  
  con = file(nsfile, "w")

  if(all(is.na(i))) 
    cat(txt, e[1], "\n", sep = "\n", file = con)
  else 
    cat(txt[1:i[1]], "\n", sep = "\n", file = con)    

  if(is.list(defs))
      lapply(defs, writeCode, "namespace", file = con, ...)    
    else
      writeCode(defs, "namespace", file = con, ...)

  if(all(is.na(i)))
    cat("\n", e[2], "\n", file = con)
  else
    cat(txt[i[2]:length(txt)], "\n", sep = "\n", file = con)

  
  close(con)
  on.exit()
  TRUE
}  
