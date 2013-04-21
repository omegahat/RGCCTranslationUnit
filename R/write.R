DefaultHeaderFiles =
  c("<Rdefines.h>")

generateClassBindings =
#
# This writes the class bindings to a file.
#
function(className, 
         nodes, classes,
         dir = "/tmp/RwxWidgets", #XXX
         files = paste(dir, paste(className, c("cpp", "R"), sep = "."), sep = .Platform$file.sep),
         includes = c("wx/wx.h", "Rdefines.h", "Rinternals.h", "RConverters.h"))
{
  if(is.character(className))
      b = createClassBindings( nodes [[ classes[[ className ]] ]], nodes)
  else if(is.list(className))
      b = className
  else 
    stop("Pass either the name of the class or the class bindings")

  b = removeDuplicates(b)

  con = file(files[1], "w")
  writeIncludes(includes, con, c("<", ">"))

  writeCode(b, "native", file = con)
  close(con)

  con = file(files[2], "w")
  writeCode(b, "r", file = con)
  close(con)

  invisible(list(files = files, bindings = b))
}


removeDuplicates =
  #
  # Some classes may have methods that differ only by having a const qualifier after 
  # the signature indicating that they are permissible when dealing with a const 
  # instance of this class.
  #
  # They cause us some grief and we cannot identify them from the translation unit.
  # So if we see duplicates, we remove them.
  #
  #XXX Need to handle the case where there are two methods with the same name and removing
  # one means that we no longer need a generic but a regular named function.
  #
function(bindings)
{
  if(!("overloaded" %in% names(bindings)))
    return(bindings)

  d = sapply(bindings$overloaded, function(x) any(duplicated(names(x)[-1])))
  if(!any(d))
    return(bindings)

  for(i in names(d)[d]) {
    over = bindings$overloaded[[i]]
    idx = which(names(bindings$regular) == i)
    w = duplicated(over[-1])
    bindings$regular = bindings$regular [ - idx[ w ] ]
    bindings$overloaded[[i]] = over[c(TRUE, !w)]
    class(bindings$overloaded[[i]]) = class(over) # make certain the class remains the same as the original.
  }

  invisible(bindings)
}  

KnownCodeTargets = c("native", "r", "header", "namespace", "documentation")

if(!isGeneric("writeCode"))
setGeneric("writeCode",
          function(obj, target, file = stdout(), ..., includes = character()) {
            target = tolower(target)
            if(target %in% c("c", "c++"))
              target = "native"

	   if(!(target %in% KnownCodeTargets))
              warning("Unknown target")
            
            standardGeneric("writeCode")
          })


setMethod("writeCode", "NativeInterfaceCode",
          function(obj, target, file = stdout(),  ..., includes = character()) {
               # Use the list method.
            writeCode(unclass(obj), target, file, ..., includes = includes)
          })

  #
  # Write the give code snippets 
  #
  #Edited 12/28/2009 to add header capability
setMethod("writeCode", "list",
          function(obj, target, file = stdout(), ..., includes = character()) {

            if(length(target) > 1)
              lapply(target, function(t) writeCode(obj, t, target = target, file = file, ..., includes = includes))

            if(length(obj) == 0)
              return(TRUE)

               # if we are creating a new file, then write a header.
            if(!inherits(file, "connection")) {
              file = file(file, "w")
              if(target == "r")
                cat("library(RAutoGenRunTime)\n", file = file)
              on.exit(close(file))
            } else if(!isOpen(file)) {
               file = open(file, "w")
               on.exit(close(file))
            }

            if(target == "native")
                writeIncludes(includes, file, addConverters = FALSE)

            if (target == "header")
              writeIncludes(includes, file, addConverters = FALSE)

            invisible(sapply(obj, writeCode, target, file, ...))
          })

setMethod("writeCode", "GenericDefinitionList",
          function(obj, target, file = stdout(), ..., includes = character()) {
            writeCode(unclass(obj), target, file, ..., includes)
          })


setMethod("writeCode", "UnboundMethod", 
  #
  # This is just a dummy method that contains data types that are not accessible 
  # at the top-level namespace.
  #
function(obj, target, file = stdout(), ..., includes = character())
{
  return(TRUE)
})


setMethod("writeCode", "CRoutineDefinition", 
  #Edited by gabe 12/28/2009 to add header capability
function(obj, target, file = stdout(), ..., includes = character())
{
  if(target == "native")
    cat(obj@code, "\n", file = file, ...)
  else if (target == "header")
    cat(obj@prototype, "\n", file = file, ...)
  return(TRUE)
})

setMethod("writeCode", "C++MethodDefinition", 
    #Edited by gabe 12/28/2009 to add header capability
function(obj, target, file = stdout(), ..., includes = character())
{
  if(target == "native")
    cat(obj@code, "\n", file = file, ...)
  else if (target == "header")
    cat(obj@prototype, "\n", file = file, ...)  
  return(TRUE)
})



setMethod("writeCode", "NoopRoutine",
function(obj, target, file = stdout(), ..., includes = character())
{
  invisible(TRUE)
})

setMethod("writeCode", "ActiveBinding",
function(obj, target, file = stdout(), ..., includes = character())
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     if(target == "r")
       cat("library(RAutoGenRunTime)\n", file = file)
     on.exit(close(file))
   }
  if(target == "r")
     cat(as(obj, "character"), "\n", file = file)
  TRUE
})


setOldClass("StructRClassDefinition")

setMethod("writeCode", "StructRClassDefinition",
function(obj, target, file = stdout(), ..., includes = character()
        )
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     if(target == "r")
       cat("library(RAutoGenRunTime)\n", file = file)
     on.exit(close(file))
   }
  if(target == "r")
     cat(paste("\n", obj, sep = ""), "\n", file = file, sep = "\n")

  TRUE
})

setMethod("writeCode", "CStructInterface",
#Edited 12/28/2009 by gabe to add header functionality.
function(obj, target, file = stdout(), ..., includes = character()
         ) # XXX '"RConverters.h"'))
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     if(target == "r")
       cat("library(RAutoGenRunTime)\n", file = file)
     on.exit(close(file))
   }
  
  if(target == "r") {
    cat("\n#### <Start of definition>\n", file = file)
    sapply(c("classDefs", "generic", "rFunctions"), 
           function(x) {
              if(is.list(obj[[x]]) || TRUE)
                sapply(obj[[x]], function(x) {writeCode(x, "r", file = file)})# cat(x, "\n", sep = "\n", file = file, ...))
              else
                cat(obj[[x]], "\n", sep = "\n", file = file, ...)
            })
    cat(obj$coerce$r, "\n", file = file, ...)
    writeCode(obj$newInst$r, "r", file = file, ..., "\n")
    writeCode(obj$duplicate$r, "r", file = file, ..., "\n")    
    cat("\n#### </End of definition>\n", file = file)
  } else if(target == "namespace") {
       cat("exportClass(", paste(names(obj$classDefs), sep = ", "), ")\n", file = file, ...)
#       cat("exportMethods('$', '$<-')\n", file = file, ...)
  } else if (TRUE) {  # Taking over from next else if(target == "native") - conslidate.
    if (target == "native" || target == "header")
      {
        if (length(includes))
          writeIncludes(includes, file, addConverters = FALSE)
        sapply(obj$cRoutines, writeCode, file = file, target=target, ...)
        sapply(obj$coerce$routines, writeCode, file=file, target=target,  ...)
        writeCode(obj$newInst$c, file= file, target = target, ...)
        sapply(obj$freeInst, writeCode, target = target, file = file, ...)
        writeCode(obj$duplicate$c, target = target, file = file, ...)
      }
  } else if(target == "native" ) {
        if(length(includes))
          writeIncludes(includes, file, addConverters = FALSE)
        for(i in obj$cRoutines)
          writeCode(i, target, file = file, "\n", ...)
        sapply(obj$coerce$routines, writeCode, target = target, file = file, ...)
        cat(obj$newInst$c@code, "\n", file = file, ...)
        sapply(obj$freeInst, writeCode, target = target, file = file, ...)
        writeCode(obj$duplicate$c, "native", file = file, ..., "\n")          
      }


  invisible(TRUE)
}  )

setMethod("writeCode", "CodeDefinition",
function(obj, target, file = stdout(), ..., includes = character()
         )
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
  
  cat(obj@code, "\n\n", file = file, ...)
  TRUE
})


setMethod("writeCode", "RClassDef",
function(obj, target, file = stdout(), ..., includes = character()
         )
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }

  if(target == "r")
    cat(obj, "\n\n", file = file, ...)
  
  TRUE
})



setMethod("writeCode", "OverloadedMethodRCode",
  #
  # OverloadedMethodRCode is just the R code for overloaded/polymorphic C++ methods.
  # So there is nothing to do if target != "r"
function(obj, target, file = stdout(), ..., includes = character()
         )
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
  
  if(target == "r")
     invisible(sapply(obj, writeCode, "r", file = file, ..., "\n\n"))
})  

setMethod("writeCode", "ClassDefinition", 
function(obj, target, file = stdout(), ..., includes = character())
  {
   if(target == "r")
      cat(obj$definition, "\n", file = file, ...)
  })


setOldClass(c("EmptyC++ClassBindings", "C++ClassBindings"))

setMethod("writeCode", "EmptyC++ClassBindings", 
  #
  # This writes out the code for the target language
  # 
  # 
function(obj, target, file = stdout(), ..., includes = character()
         )
{
   TRUE
})

setMethod("writeCode", "C++ClassInterfaceBindings", 
  #
  # This writes out the code for the target language
  # 
  # 
function(obj, target, file = stdout(), ..., includes = character()
         )
{
  comment = switch(target, "native" = c("/*", "*/"),
                           "#")

  if(is.character(file)) {
     con = file(file, open = "w")
     on.exit(close(con))
     file = con
  }

  if(target == "native" && length(includes))
     writeIncludes(includes, con, addConverters = FALSE)  
  
  cat(comment[1], "Machine generated code. Do not edit directly.", if(length(comment) > 1) comment[2], "\n\n", file = file, ...)
  if(tolower(target) == "namespace") {
     nsInfo = getExportNames(obj)
     if(length(nsInfo$functions))
        cat('export(', paste(nsInfo$functions, collapse = ", "), ")\n\n", file = file, ...)
     if(length(nsInfo$classes))        
        cat('exportClasses(', paste('"', nsInfo$classes, '"', sep = "", collapse = ", "), ")\n", file = file, ...)
     if(length(nsInfo$methods))
       cat('exportMethods(',  paste('"', nsInfo$methods, '"', collapse = ",", sep = "") ,')\n\n', file = file, ...)

     return(invisible(TRUE))
  }
  else if(target == "native") {
    cat('extern "C" {\n', ..., file = file)
    sapply(obj$regular, function(x) cat("   ", x$nativeDeclaration, ";\n", file = file, ...))
    cat('}\n', ..., file = file)    
  } else if(target == "r") {
    cat(paste(".", obj$className, ".InterfaceInfo", sep = ""), "<- ", file = file)
    dput(obj$interfaceInfo, file = file)
    cat("\n\n", file = file)
  }
  
  
   # Write the class definitions, in reverse order.
  sapply(rev(obj$classDefinitions), writeCode, target = target, file = file, ...)

  sapply(obj$regular, writeCode, target = target, file = file, ...)
  cat("\n\n", file = file)
  if(target == "r")
    cat("# Overloaded methods for", obj$className, "\n", file = file)
  sapply(obj$overloaded, writeCode, target, file = file, ...)  
  cat("\n\n", file = file)

  if("dynamicCast" %in% names(obj) && length(obj$dynamicCast) > 0) {
    writeCode(obj$dynamicCast, target, file = file, ...)  
    cat("\n\n", file = file)
  }

  if(length(obj$fields)) {
    writeCode(obj$fields, target, file = file, ...)
    cat("\n\n", file = file)
  }
  
  invisible(TRUE)
})

setOldClass("DynamicClassCast")

setMethod("writeCode", "DynamicClassCast",
function(obj, target, file = stdout(), ..., includes = character())
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }

  writeCode(obj[[target]], target, file = file)
  invisible(TRUE)
})

tmp =   # Writes the interface - either r or native - for this C++ method.
function(obj, target, file = stdout(), ..., includes = character()
)
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
  
  if(tolower(target) ==  "namespace") {
     warning("writeCode() for namespace should be called on the collection of methods, i.e. the C++ClassInterfaceBinding.")
     invisible(return(TRUE))
  }

 if(target == "native" && length(includes) > 0)
    writeIncludes(includes, file, addConverters = FALSE)

  
  el = obj[[target]]    
  writeCode(el, target = target, file = file, ...)

  if(target == "r" && "operatorMethods" %in% names(obj))
    writeCode(obj$operatorMethods, target = target, file = file, ...)
  TRUE
}

setMethod("writeCode", "C++MethodInterface", tmp)
setMethod("writeCode", "C++RoutineInterface", tmp)
  

tmp = function(obj, target, file = stdout(), ..., includes = character()
  )
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
  
 cat(obj, file = file, ..., sep = "\n")
}

setMethod("writeCode", "character", tmp)
setMethod("writeCode", "NamedFunctionDefinition", tmp)
  #
  #  "default"! method for writing the actual code.
  #


setMethod("writeCode", "FunctionDefinition",
  #
  #  "default"! method for writing the actual code.
  #
function(obj, target, file = stdout(), ..., includes = character()
         )
{
#  return(FALSE)
  warning("Calling writeCode(FunctionDefinition) for ", names(obj))
  
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
  
 cat(names(obj), "<-", "\n", obj, ..., file = file)
})


setMethod("writeCode", "RFunctionDefinition",
function(obj, target, file = stdout(), S3Classes = FALSE, ..., includes = character()
         )
{
  if(target == "r")   {
    cat(as(obj, "character"), "\n", file = file)
  }

  TRUE
})


setMethod("writeCode", "S4CodeDefinition",
function(obj, target, file = stdout(), S3Classes = FALSE, ..., includes = character()
         )
{
  if(target == "r")  {
    if(!is.na(obj@name))
     cat(as(obj, "character"), "\n", file = file)
    else(return(FALSE))
  }

  TRUE
})



setMethod("writeCode", "EnumerationDefinition",
#
# This should be broken into create the definitions/code and then 
# write it, i.e. a method for the former and the just print this.
#
function(obj, target, file = stdout(), S3Classes = FALSE, ..., includes = character()
         )
{

  if(is(obj@name, "TypedefEnumerationName"))
     name = obj@name[length(obj@name)]
  else 
     name = obj@name

  origName = name

# S3Classes = FALSE
# args = list(...)
# if("S3Classes" %in% names(args)) 
#   S3Classes = as.logical(args[["S3Classes"]])

  
  if(length(grep("<", name))) {
    warning(Warning(paste("skipping template enumeration definition for ", paste(name, collapse = "::")),
                    name = name, class = "TemplatedEnumerationOutputWarning"))
    invisible(return(FALSE))
  }

  if(length(obj@values) == 0) {
    warning(Warning(paste("skipping empty enumeration definition for ", paste(name, collapse = "::")),
                    name = name, class = "EmptyEnumerationOutputWarning"))
    invisible(return(FALSE))
  }

  if(any(names(obj@values) == "")) {
    warning(Warning(paste("skipping enumeration definition with missing names ", paste(name, collapse = "::")),
                    name = name, class = "MissingElementNamesEnumerationOutputWarning"))
    invisible(return(FALSE))
  }
     
  
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }
   #XXX Make  this entire thing method based on the class.
  
  bitwise = is(obj, "BitwiseEnumerationDefinition")

  R.ids = names(obj@values)
    
  if(tolower(target) == "r") {
      # if we have an unnamed enum, then just create a variable with the particular symbolic name
      # and its value using a call to GenericEnumValue.
      # Otherwise, createa new class of enum, extending EnumValue, and then define an R variable
      # using the symbolic name but whose value is an instance of that new class and has the value
      # along with the symbolic name.



    if(length(origName) > 1)
      R.ids = paste(paste(origName[ - length(origName)], collapse = "::"), R.ids, sep = "::")
    
    
    if(length(name) == 1 && is.na(name)) {
      sapply(seq(along = obj@values),
             function(i, ...) {
                 v = R.ids[i]
                 cat(backquote(v), "<- GenericEnumValue(", dQuote(v), ", ", obj@values[v],
                        if(S3Classes) ", S3 = TRUE", 
                             ")\n", file = file, ...)}, ...)
           
    } else if(length(name) == 2 && is.na(name[2])) {
            # an anonymous enum within a scope.
      id = backquote( name[1] )
      cat(id, "<- ", "ScopedEnumDef", "(", paste("'", name[1], "'", sep = ""), ",",
                                          paste(paste("'", names(obj@values), "'", sep = ""), obj@values, sep = " = ", collapse = ", "),
                                      ")", "\n", file = file, ...)
    } else {
       #els = strsplit(name, "::")[[1]]
       els = name
       if(length(els) > 1) {
         if(FALSE)
           warning(Warning(paste("namespace", els[1], "in enumeration defintion. Ignoring this for now."),
                   namespace = els[1],   class = "NamespaceEnumerationWarning"
                  ))
         name = els = paste(els, collapse = "::") # [1], els[2], sep = "::")
       }
       
       defName = paste(els[1], "Values", sep = "")

       if(bitwise || !S3Classes)
          cat("setClass('", name, "', contains = '", if(bitwise) "BitwiseValue" else "EnumValue", "')", "\n", sep = "", file = file)
       
       #XXX if the name has a :: in it, we are in trouble.
        #??? Really


           # code for the named integer object containing the name-value pairs.
       valStruct = paste("structure(as.integer(c(", paste(obj@values, collapse = ",\n"), ")),\n",
                                    "names = c(",  paste('"', names(obj@values), '"', collapse = ",\n", sep = ""), "))", sep = "")
       
       if(bitwise) {
         cat(backtick(defName), " = BitwiseValue(", valStruct, ", class ='", name, "'",
                          ")\n\n", sep = "", file = file, ...)
       } else {
         cat(backtick(defName), " = EnumDef('", name, "', ", valStruct, ")\n\n", file = file, ..., sep = '')
       }


       cat("\n", file = file)
       
          # Should we write the code explicitly here to make it "faster" or leave it as a function call
          # The same code works for both bitwise and regular enumerations.
          # XXX Seem to need the integer, eventhough is(1L, "numeric") is TRUE.

       if(bitwise || !S3Classes) {
        prefix = ""
        if(length(origName) > 1)
           prefix = paste(origName[-length(origName)], "::", collapse = "", sep = "")
        else {
           prefix = getLongestStartingCommonSubstring(names(obj@values))
        }

        if(prefix != "")
          prefix = c(", prefix = ", dQuote(prefix))
          
        for(i in c("numeric", "character", "integer")) {
             cat("setAs('", i, "', '", name, "', function(from)  ",
                    if(bitwise)
                       "asBitwiseValue"
                    else
                       "asEnumValue",
                    "(from, ", backtick(defName), ", '", name, "'",
                    prefix,
                    "))\n",
                 sep = "", file = file, ...)
        }
       }
         # Now write out the individual variables
       cat("\n\n", file = file)

       sapply(seq(along = obj@values),
               function(i, ...) {
                 v = names(obj@values[i])
                 #  alternatively call the [ method in RAutoGenRunTime
                 #    e.g. wxZipMethodValues['a']
                 #     cat(v, "<- ", defName, "['", v, "']\n", file = file, sep = "", ...)
                 #  But the approach we use here avoids any matching of names and values.

                 rid = backtick(R.ids[i])
                 
                 if(bitwise)
                   cat(rid, " <- BitwiseValue(", obj@values[v], ", '", v, "', class = '", name, "'",
                                      ")\n", file = file, ..., sep = "")
                 else
                   cat(rid, " <- GenericEnumValue('", v, "', ", obj@values[v], ", '", name, "'",
                              if(S3Classes) ", S3 = TRUE",                        
                                   ")\n", file = file, ..., sep = "")
               },
              ...)
     }
     cat("\n#####################\n", file = file)
  } else if(tolower(target) == "native") {
     #cat(generateEnumCConverters(obj), file = file, ...)
    writeCode(generateEnumCConverters(obj), target, file = file, ...)    
  } else if(tolower(target) == "namespace") {
      if(!S3Classes) {
        name = paste(name, collapse = "::")
        cat('exportClass("', name , '")\n', sep = "", file = file)
        cat('export("', paste(dQuote(R.ids), collapse = ", ") , '")\n', sep = "", file = file)
      }

      #XXX export the individual values.
  } else if(tolower(target) == "declaration") {
     tmp = generateEnumCConverters(obj)
     cat(declaration(tmp), "\n", file = file)
  }
  
  invisible(TRUE)
})


setGeneric("declaration", function(obj, ...) standardGeneric("declaration"))
setMethod("declaration", "CRoutineDefinition",
             function(obj, ...) {
               paste(strsplit(obj@code[1], "\n")[[1]][1], ";")
             })
     


setMethod("writeCode", "ResolvedRoutineList", 
function(obj, target, file = stdout(), ..., includes = character()
         )
{
   if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }

   if(target == "native" && length(includes) > 0)  
     writeIncludes(includes, file, addConverters = FALSE)

   
   sapply(obj, writeCode, target = target, file = file, ...)
})

writeIncludes =
function(files, con, append = character(), addConverters = TRUE)
{

  if(!inherits(files, "AsIs") && addConverters)
    files = c(files, "<RConverters.h>")

  if(length(files) == 0)
    return(FALSE)
  
   if(length(append)) {
     if(length(append) < 2)
       append = rep(append, length = 2)
     files = paste(append[1], files, append[2], sep = "")
   }

  i = grep('^[^"<]', files)
  if(length(i)) {
    tmp = files[i]
    files[i] = paste('"', files[i], '"', sep = "")
    warning("need quotes on ", paste(tmp, collapse = ", "),  ". Assuming ", paste(files[i], collapse = ", "), ".")
  }

    

  ans = sapply(files,
                function(f) 
                    cat("#include", f, "\n", file = con)
               )
  cat("\n\n", file = con)
  invisible(ans)
}


setOldClass("GeneratedC++ClassInterface")

setMethod("writeCode", "GeneratedC++ClassInterface",
          function(obj, target, file = stdout(), ..., includes = character()
                   ) 
{

  if(is.character(file)) {
    con = file(file, "w")
    on.exit(close(con))
  } else
    con = file

  
  if(target == "native") {

    if(!is.null(obj$helperInfo)) {
      RconversionRoutines = objects(obj$helperInfo)
      decls = sapply(RconversionRoutines,
                  function(id) {
                    obj = get(id, helperInfo)[[1]]
                    d = getNativeDeclaration("", PointerType(obj), addSemiColon = FALSE)
                     # Watch for duplicate constants. Can do this by looking at the qualifiers
                     # slot, but do it this way for the moment.
                    if(length(grep("^const", d)) == 0)
                      d = paste("const", d)
                    decl = paste("SEXP", id, "(",  d, ");")
                  })
      cat(paste(decls, "\n"), file = con)
    }

    #XXX
#    writeIncludes(dQuote(c("shapes.h", "RConverters.h")), con)

    sapply(obj$classBindings, writeCode, "native", file = con)

  } else if(target == "r") {
    sapply(obj$classBindings, writeCode, "r", file = con, "\n")
    cat("\n", file = con)
    sapply(obj$generics, writeCode, "r", file = con)
  }

  TRUE
})



setOldClass("DerivedClassCode")

setMethod("writeCode", "DerivedClassCode",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) 
{
  if(is.character(file)) {
    con = file(file, "w")
    on.exit(close(con))
  } else
    con = file

  if(target == "r") {
    cat("#  Class definition for derived class", obj$className, "\n\n", file = con)
    cat(obj$rsetClass, "\n", file = con, ...)

     cat("#  constructors for derived class", obj$className, "\n\n", file = con)
    sapply(obj$rconstructors, writeCode, target, file = con, ...)
     cat("#  inherited methods for derived class", obj$className, "\n\n", file = con)    
    cat(obj$methodAccessors$raccess$rmethod, "\n\n", file = con, ...)
     cat("#  names and field accessors for derived class", obj$className, "\n\n", file = con)        
    writeCode(obj$namesMethod, "r", file = con, ...)
    c( "\n\n", file = con)
    writeCode(obj$rfieldAccessors$rmethod, "r", file = con, ...)

         cat("#  protected methods for derived class", obj$className, "\n\n", file = con)        
    writeCode(obj$protectedMethods, "r", file = con, ...)

  } else if(target == "native") {
    writeIncludes(c(includes, '"RDerivedClass.h"'), con)
    cat("\n", obj$classDefinition, "\n", file = con, ...)
    cat("\n", obj$methodNamesArray, "\n", file = con, ...)    
    writeCode(obj$RmethodIdRoutine, target = 'native',  file = con)
    writeCode(obj$destructor, target = 'native',  file = con)    
    cat("\n", file = con)
    sapply(obj$rconstructors, writeCode, target = "native", file = con)
    sapply(obj$nativeClassConstructors, writeCode, target = "native", file = con)        
    sapply(obj$methodImplementation, writeCode, target = "native", file = con)
    if(length(obj$ifdef))
      cat(obj$ifdef, "\n", file = con)
    writeCode(obj$methodAccessors[c("set", "get")], target = "native", file = con)
    if(length(obj$ifdef))
      cat("#endif", "\n", file = con)

    cat("\n", file = con)
    sapply(obj$callInherited, function(x) writeCode(x$code, "native", file = con))
    cat("\n", file = con)

    writeCode(obj$methodAccessors$raccess$rnative, "native", file = con, ...)
    writeCode(obj$methodAccessors$raccess$rsetnative, "native", file = con, ...)    

    cat(obj$sharedMethodsDef, "\n", file = con, ...)
    writeCode(obj$sharedMethods, "native", file = con, ...)

    writeCode(obj$rfieldAccessors$rnative, "native", file = con, ...)            

    sapply(obj$protectedMethods, function(x) writeCode(x$proxy, "native", file = con, ...))

    
#    cat(as(obj$rsetMethods, "character"), "\n", file = con, ...)
#    cat(as(obj$rgetMethods, "character"), "\n", file = con, ...)

  } else if(target == "namespace") {

  }

  TRUE
})


setMethod("writeCode", "StructAccessors",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) 
{
  if(is.character(file)) {
    con = file(file, "w")
    on.exit(close(con))
  } else
    con = file

  if(target == "r") {
    writeCode(obj$generic, "r", file = con, ...)
    cat("\n\n", file = con)
    writeCode(obj$rFunctions, "r", file = con, ...)
    
  } else if(target == "native") {

    writeCode(obj$cRoutines, "native", file = con, ...)
    
  } else if(target == "namespace") {

  }

  TRUE
})

setMethod("writeCode", "NULL",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) {
            TRUE
          })


setMethod("writeCode", "TypedefDefinition",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) {
            cat("typedef ",
                   getNativeDeclaration("", obj@type, addSemiColon = FALSE),  
                obj@name, ";\n", file = file)
            TRUE
          })

setMethod("writeCode", "StructDefinition",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) {
            if(target == "native")
               cat("struct ", obj@name, "{\n",
                     paste("  ", gsub("\\\n", "\\\n    ", as(obj, 'character'))),  # this doesn't emit the struct ... at present. See show.R#121 
                   "\n};\n", file = file)
            else  # XXX
                TRUE
                
            TRUE
          })


setOldClass("GeneratedTypeInfo")
setMethod("writeCode", "GeneratedTypeInfo",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character()
                   ) {

   writeCode(obj$dataTypes, target, file, header, ..., includes = includes)
})


# Not used if we use generateInterface().
# See generateRegistrationCode() for a better version.
setMethod("writeCode", "NativeRegistrationInfo",
          function(obj, target, file = stdout(), header = FALSE, pkgName = "", ..., includes = character()
                   ) {

 if(target != "native")
    return(FALSE)

  cat("#define ENTRY(name, n)  { #name, (DL_FUNC) &name, n }", "\n\n", file = file)
  cat("#include <R_ext/Rdynload.h>\n\n", file = file)
  cat("static R_CallMethodDef callMethods[] = {\n",
      paste("\\tENTRY(", sapply(obj, `$`, "name"), ",", sapply(obj, `$`, "nargs"), ")", collapse = ","),
      "{NULL, NULL, 0}\n};\n", file = file)

  cat("void\nR_init_", pkgName, "(DllInfo *dll)\n{\n   R_registerRoutines(dll, NULL, callMethods, NULL, NULL);\n}\n", file = file, sep = "")
  TRUE
})


setOldClass("RClassDefsCollection")
setMethod("writeCode", "RClassDefsCollection",
          function(obj, target, file = stdout(), header = FALSE, pkgName = "", ..., includes = character()
                   ) {

 if(target != "r")
    return(FALSE)

 cat("\n# Class definitions\n\n", obj, "\n", file = file) 
 TRUE
})

setOldClass("HelpInfo")
setMethod("writeCode", "HelpInfo",
          function(obj, target, file = stdout(), header = FALSE, pkgName = "", ..., includes = character()
                   ) {
    FALSE
 })


# setMethod("writeCode", "PointerType",

setMethod("writeCode", "FunctionPointer",
             # map to a class that extends CRoutineRef.
          function(obj, target, file = stdout(), header = FALSE, pkgName = "", ..., includes = character()
                   ) {
         
             if(target == "r") {
                prototype = sprintf("returnType = '%s', numParameters = %d, parameterTypes = c(%s)",
                                     as(obj@returnType, 'character'),
                                     length(obj@parameters),
                                     paste("'", sapply(obj@parameters, typeName), "'", sep = "", collapse = ", ")
                                   )
                sprintf("setClass('%s', contains = 'CRoutineRef', prototype = list(%s))",
                             obj@name, prototype)
             }

          })


#Added by Gabe. Note in the current implementation the ArrayInterface (s3) class
# is just a list, and writeCode already knows how to deal with lists, and all
#elements that will be contained in an ArrayInterface.

setOldClass("ArrayInterface")
setMethod("writeCode", "ArrayInterface",
          function(obj, target, file = stdout(), header = FALSE, ..., includes = character())
  {
    writeCode(unclass(obj), target=target, file=file,  header=header,
              includes = includes, ...)
  })
