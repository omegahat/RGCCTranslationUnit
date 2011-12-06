setGeneric("isConstant",
           function(var)
           standardGeneric("isConstant"))

setMethod("isConstant", "VariableDefinition",
           function(var) {
                #??? Why does a VariableDefinition have a qualifier                       
             if("const" %in% var@qualifiers)
               return(TRUE)

             isConstant(var@type)
           })

setMethod("isConstant", "ResolvedTypeReference",
          function(var)
          isConstant(resolveType(var, var@container)))

setMethod("isConstant",
          "TypeDefinition",
          function(var) {
            "const" %in% var@qualifiers
          })


setMethod("isConstant", "ArrayType",
          function(var) {
            isConstant(var@type)
          })


computeGlobalConstants =
function(tu = NULL, gvars = getGlobalVariables(tu, files),
         files = character(), defs = DefinitionContainer(tu), varsOnly = FALSE,
         symbolic = FALSE, access = c("public", "protected"))
{
  if(length(gvars) == 0)
    return(list())

    # Discard mangled names
  mngl = grep("^_Z", names(gvars))
  if(length(mngl) > 0)
     gvars = gvars[ - mngl ]


  if(length(access)) 
    gvars = gvars[sapply(gvars, function(x) !(access %in% names(x)) || x[["access"]] %in% access)]

  
    # Get the types.  XXX Use defs if not null.
  gg = lapply(gvars, resolveType, tu, defs)

 
   # Find the variables that are const.
  consts = sapply(gg, isConstant)


  if(length(consts) == 0)
    consts = integer()
  
  if(varsOnly)
    return(which(consts))
  else if(length(consts) == 0)
    return(character())

    # Now, create C code that gets the value of the variable and
    # generates text that is R code that simply assigns that value
    # to an R variable.

  cmds =
    sapply(names(gg[consts]),
           function(id) {
             # We have the variable not its type here.
             type = gg[[id]]@type
              # Have to handle the different types of int, double, etc. at the C-level for printf.
             txt = c('\nprintf(\"`', id, "` <- ",  sep = "")

             if( is(type, "BuiltinPrimitiveType")) {
                if(symbolic) {
                   x = switch(class(type),
                            doubleType = c("%lf", id),
                            intType = c("%d", id),
                            boolType = c("%s", id,  '? "TRUE" : "FALSE"'))
                   txt = c(txt, x[1], "\\n\", ", x[-1], ");\n")
                   return(paste(txt, collapse = ""))
                } else {
                   txt = c(id, "<-", getValue(gvars[[id]]))
                   return(paste(txt, collapse = " "))
                }
             }

             if(is(type, "CString")) {
                  # need to escape the quotation character `
               if(symbolic)
                  paste(c(txt, '\\"%s\\""', ", ", id, ");\n"), collapse = "")
               else
                  paste(id, "<-", dQuote(getValue(gvars[[id]])), collapse = "")
             }
             else if(is(type, "PointerType") && type@name == "wxChar" && type@depth == 1) #XXX
              paste('{const wxWX2MBbuf tmp_buf = wxConvCurrent->cWX2MB(', id, ');\nconst char *tmp_str = (const char*) tmp_buf;\nprintf("%s <- \\"%s\\"\\n", ', '"', id, '"', ", tmp_str);\n}", sep = "")
             else if(is(type, "ArrayType") && (length(type@length) == 0 || !is.na(type@length)) && (is(type@type, "BuiltinPrimitiveType")  || is(type@type, "CString"))) {
                # Want to generate
                #    x <- c(1, 2, 3)
                # or x <- c("abc", "def", "ghi")
                #
                # Get the init field from gg[[id]] and get the elements.
               els = gvars[[id]][["init"]]
               if(is.null(els))
                 return(NA)
               els = sapply(els[["val"]], getValue)
               if(is.character(els))
                 els = dQuote(els)
               paste("`", id, "`", ' <- c(', paste(els, collapse = ", "),  ")\n", sep = "")
             }
            else 
              NA  #XXX compute more here.

            
           })

  if(any(is.na(cmds))) {
      types = paste(unique(sapply(gg[consts][is.na(cmds)], slot, "name")), collapse = ", ")
      warning("no code generated for ", paste(names(cmds)[is.na(cmds)], collapse = ", "), ". Types: ", types)
  }


  filenames = sapply(gvars[consts], function(x) x[["source"]])
    # get rid of the :line-num
  filenames = gsub(":[0-9]+$", "", filenames)
  
  o = order(names(cmds))
 
  structure(list(cmds = cmds[o], filenames = filenames[o]),
            class = "ComputeConstants")
}  


setMethod("writeCode", "ComputeConstants",
function(obj, target, file = stdout(), ..., includes = character())
{
  if(is.character(file)) {
    file = file(file, "w")
    on.exit(close(file))
  }

  if(length(includes))
    cat(paste('#include ', includes, '', sep = "", collapse = "\n"), "\n", file = file, ...)

  nas = is.na(obj$cmds)
  obj$cmds[ nas ]  <- paste("/*", names(obj$cmds[nas]), "*/")
  warning("no code for ", paste(names(obj$cmds)[nas], collapse = ", "))

  cat("#include <stdio.h>\n\n", file = file)
  cat("int\nmain(int argc, char *argv[])\n{\n\n", file = file, ...)
  cat(paste("\t", obj$cmds, "\n"), file = file, ...)
  cat("\n\n  return(0);\n}\n", file = file, ...)

  TRUE
})  

expandConstantIncludeFileNames =
function(filenames, dir, prefix = basename(dir))
{
  top = list.files(dir)
  filenames = unique(filenames)
  
  m = match(filenames, top)

  ans = filenames[!is.na(m)]
  rr = filenames[is.na(m)]
  subdirs = list.files(dir, recursive = TRUE)
  m = match(rr, subdirs)
  ans = c(ans, rr[!is.na(m)])

  ans = paste(prefix, ans, sep = .Platform$file.sep)
    
  ans
}  

# Example
if(FALSE) {
 txt = computeGlobalConstants(tu, files = targets) # See run.R
 writeCode.ComputeConstants(txt, file = "wxConstants.cpp", headers = c("stdio.h", "wx/wx.h", "wx/html/htmlwin.h"))
 # Then compile with
 #    gcc -o wxConstants  `wx-config --cflags --libs` wxConstants.cpp
 # and run as
 #  ./wxConstants > foo.R
 # source("foo.R")
}


###############################################
#
# anonymous enumerations, i.e. not typedef'ed so 
# values go into RwxWidgets namespace.

computeGlobalEnumConstants =
function(tu = NULL, enums = getEnumerations(tu, files), files = character(), defs = DefinitionContainer(tu),
         anonymousOnly = FALSE)
{
   if(anonymousOnly)
         # Only deal with the anonymous ones which are identified with a name starting with .
       enums = enums[  grep("^\\.", names(enums)) ]

   
   #edefs = lapply(enums, function(id) resolveType(tu[[ id ]], tu, defs))
   edefs = lapply(enums, function(node) resolveType(node, tu, defs))

   # We also need the names of the enum types so that we can map these values to
   # particular classes,
   # e.g.  wxCENTRE = new("wxGeometryCentre", 1L) ; names(wxCENTRE) = 'wxCENTRE'
   # So we return edefs and not a vector of the name-value pairs.

   class(edefs) <- "TopLevelEnumDefs"
   
   # now we check for duplicates
   # in two ways.
   #  a) duplicate definitions of enum collections
   #  b) duplcate names of individual elements across different enumeration definitions

   i = duplicated(names(edefs))
   if(any(i)) {
     ids = names(edefs)[i]
     toRemove = integer()
     sapply(ids,
            function(name) {
                i = names(edefs) == name
                els = edefs[i]
                sameAs = sapply(els[-1], function(x) identical(x@values, els[[1]]@values))
                if(any(!sameAs)) {
                  if(length(grep("^\\._", name)) == 0) {
                    warning("non-anonymous enums with the same name have different sets of identifiers/values")
                  }
                } else {
                  toRemove <<- c(toRemove, which(i)[-1])
                }
            })
     if(length(toRemove))
       edefs = edefs[ - toRemove ]
   }
   
   ids = unlist(lapply(edefs, function(x) names(x@values)))
   dup = duplicated(ids)
   if(any(dup)) 
       warning(Warning("duplicate top-level enum names ", paste(ids[dup], collapse = ", "),
                        duplicates = ids[dup],
                        class = "DuplicateEnumerationElementsWarning"))

#   new("TopLevelEnumDefs", edefs)
  edefs
}  

setMethod("writeCode", "TopLevelEnumDefs",
function(obj, target, file = stdout(), ..., includes = character())
{
  if(!inherits(file, "connection")) {
     con = file(file, "w")
     on.exit(close(con))
   } else
     con = file
  
  lapply(obj, writeCode, target, con, ..., includes = includes)
})

#  txt = paste(names(obj), paste("as.integer(", obj, ")"),  sep = " <- ", collapse = "\n")
#  cat(txt, file = file, ...)


