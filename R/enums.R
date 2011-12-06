setGeneric("generateEnumCConverters",
           function(def, routineName = NA, prefix = character(), ...) {
              standardGeneric("generateEnumCConverters")
           })


setMethod("generateEnumCConverters", c("EnumerationDefinition", routineName = "missing"),
            function(def, routineName = NA, prefix = character(), ...) {

              dups = duplicated(def@values)
              if(any(dups))
                def@values = def@values[!dups]

              if(length(def@name) > 1) {
                routineName = paste(def@name, collapse = "_")
                names(def@values) = paste(def@name[1], names(def@values), sep = "::")
                def@name = paste(def@name, collapse = "::")
              } else {
                routineName = def@name
              }

              generateEnumCConverters(def, routineName, prefix, ...)
            })


setMethod("generateEnumCConverters",
          "GCC::Node::enumeral_type",
          function(def, routineName = NA, prefix = character(), ...)
            generateEnumCConverters(resolveType(def), routineName, prefix, ...))

setMethod("generateEnumCConverters", c("EnumerationDefinition", "character"),
          function(def, routineName = NA, prefix = character(), ...) {

  funName = paste("Renum_convert_", routineName, sep = "")
  
  toR = c(paste("SEXP ", funName, "(",  "enum ", def@name,  " val)", sep = ""),
          "{",
          "const char *elName = NULL;",
          "SEXP klass, ans, tmp;")
  
  toR = c(toR, 
          c("switch(val) {",
	     sapply(names(def@values),
	              function(id) {
	                paste("    case ", id, ":\n       ",  "elName = \"",  id, "\";\n     break;", collapse = "\n", sep = "")
	              }),
            "    deafult:",
            '\telName = "?";',
	    "}\n\n"))


  className = def@name
  toR = c(toR,
               "#if defined(USE_S4_ENUMS)", "",
               paste('PROTECT(klass = MAKE_CLASS("',  className, '"));', sep = ""),
               'PROTECT(ans = NEW(klass));',
               "PROTECT(tmp = ScalarInteger(val));",    
               "SET_NAMES(tmp, mkString(elName));",    
               'ans = SET_SLOT(ans, Rf_install(".Data"), tmp);',
               "UNPROTECT(3);",
               "",   
               "#else",
               "",
               "PROTECT(ans = ScalarInteger(val));",    
               "SET_NAMES(ans, mkString(elName));",
               "PROTECT(klass = NEW_CHARACTER(2));",    
               paste("SET_STRING_ELT(klass, 0, mkChar(", dQuote(className), "));", sep = ""),
               'SET_STRING_ELT(klass, 1, mkChar("EnumValue"));',
               "SET_CLASS(ans, klass);",
               "UNPROTECT(2);",
               "",
               "#endif",
               "",
               "return(ans);")

  toR = c(toR, "\n}\n")
  
#  paste(toR, collapse = "    \n")
  CRoutineDefinition(funName, toR, 1)
})


setMethod("generateEnumCConverters",
          c("BitwiseEnumerationDefinition", "character"),
          function(def, routineName = NA, prefix = character(), ...) {


            funName = paste("R_bitwise_enum_convert", routineName, sep = "_")
            valueIds  = if(length(def@name) > 1)
                           paste(prefix, names(def@values), sep = "::")
                         else
                           names(def@values)
            
            toR = c(paste("SEXP", funName, "(",
                               "enum", paste(def@name, collapse = "::"), "val)"),
                     "{",
                     "  return(",
                     "     R_bitwise_enum_convert(val, ",
                     "       (int []){",
                      paste("\t" , valueIds, collapse = ",\n\t"),
                     "        },",
                     "       (const char * const []){",
                     paste("\t", dQuote(names(def@values)), collapse = ",\n\t"),
                     paste("         },", length(def@values), ","),
                     dQuote(paste(def@name, collapse = "::")),
                     "  ));",
                     "}")
            CRoutineDefinition(funName, toR, 1)
          })



writeEnumGenerationRCode =
  #
  #  Write C code that creates an R script which 
  #  has commands of the form 
  #     var = value
  #  where var is the name of the enumeration element
  #  and value is the value.
  #
  #  We could generate these lines directly from the current definition
  #  in values, but this is a static point in time and if the enumeration
  #  definition changes, we would not have the correct values.
  #  Instead, using the C code, we can run this when installing
  #  a package to compute the values from the current library.
  #  There is a possiblity that, for a given library, not all the enum values referenced
  #  in the generated C code will be defined.  And also, there may be  new ones that we
  #  will miss. But we will have the correct values for what we knew about when
  #  we compute the enum definition from the TU file.
  
function(values, file = stdout(), includes = character())
{
  if(!inherits(file, "connection")) {
     file = file(file, "w")
     on.exit(close(file))
   }

   sapply(includes,
           function(h) cat('#include', h, '\n', file = file))

   cat('\n\nint\nmain(int argc, char *argv[])\n{\n\n', file = file)

     sapply(names(values),
          function(id)
            cat('fprintf(stdout, "', id, ' = %d\\n", ', id, ');\n', sep = "", file = file)
         )
   cat('\n\n}\n', file = file)

   TRUE  
}




findUnconflictedEnumValues =
  #
  # This looks at all the enumerations and bitwise flags
  # and finds the elements that are within a class, namespace, etc.
  # and so have a prefix of the form A::value and sees which ones can
  # be referred to directly as `value` (without the prefix) that
  # don't conflict/overlap with any other value within the top-level
  # or nested names.
  #
function(defs)
{
    # get the top-level variables which have no qualifying name,
    # i.e. not A::type
  is.toplevel = sapply(defs, function(x) length(x@name)) == 1
    
  toplevelNames = unlist(lapply(defs[is.toplevel], function(x) names(x@values)))

    # For the nested definitions, get the names of the symbolic constants.
  otherNames = unlist(lapply(defs[!is.toplevel], function(x) names(x@values)))

    # Find out which of these nested names are not duplicated.
  tt = table(otherNames)
  possibles = names(tt)[tt == 1]

   # check that these names don't overlap with any of the top-level names.
  ans = possibles[!(possibles %in% toplevelNames)]
  
    # could look at the duplicated values, i.e. tt > 1
    # and see if those with the same names have the same values.
    # But even if we identify these, we cannot use them as we would
    # create a single value with that name but need to use it in different
    # contexts. But it would only have one class. So for example if we had
    # two enums X and Y and they both had an element named  'a' which had
    # a value 1, say, then we could create a value named a but it would have
    # class 'X'. So if we used it when expecting a class 'Y', there would be
    # an error.
    # We could create a special type of object which had several classes
    # and we would test whether the value was one of the expected classes.
  if(FALSE) {
    otherVals = unlist(lapply(defs[!is.toplevel], function(x) x@values))
    names(otherVals) = otherNames
    ok = sapply(names(tt)[tt > 1],
                 function(id) {
                   x = otherVals[names(otherVals) == id]
                   all(x == x[1])
                 })
    if(any(ok)) 
      additionals = (names(tt)[tt > 1])[ok]
    else
      additionals = character()
  }


    # So now we have the names of the nested symbolic constants
    # that could be top-level variables. So we need to create
    # these variables and assign them the appropriate value from
    # the actual definition. So we need the names of the enumeration
    # types so we can create expressions of the form
    #    a = Scope::type::a

  from = names(otherNames)[match(ans, otherNames)]
  from = sapply(strsplit(from, "::"), function(x) paste(x[-length(x)], collapse = "::"))
#  from = gsub("[0-9]+$", "", from)
  ans = paste(backtick(ans), backtick(paste(from, ans, sep = "::")), sep = " = ")
  invisible(ans)
}  
