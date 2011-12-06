
#
# Generate interface to global variables.
#
# Two types of global variables
#  const primitive types
#  and non constant values of any type
# See inst/examples/globals/

#
# For the non-constant values, we get the address of the variable
# and work with that.  This is a <type>Ref. So, if it is an int,
# we define a class intRef extending RC++Reference and if it is a 
# typedef'ed struct named A, e.g. typedef struct { ... } A
# we have a ARef. And a pointer to an A, then an ARefRef
#

generateGlobalVariableCode =
  #
  # Create the code to access the global variables.
  # 
  #
function(tu, files = character(), gvars = getGlobalVariables(tu, files), ...)
{
  if(is.character(gvars))
    gvars = getGlobalVariables(tu, files)[gvars]
  
  if(!length(gvars))
    return(structure(list(vars = list(), consts = list()), 
                     class = "DynamicGlobalVariableCode"))

  consts = computeGlobalConstants(tu, gvars, files = files)  

    # Remove the constants from the gvars
  if(length(consts$cmds))  {
    idx = match(names(consts$cmds), names(gvars))    
    gvars = gvars[ - idx ]
  }

       # Now deal with the non constants

  if(length(gvars)) {
    vars = lapply(gvars, resolveType, tu)
        # Want to combine fields across variables, i.e. listwith
        # native, r, ...
    ans = lapply(names(vars),
                   function(id)
                     generateDynamicGlobalVariableCode(id, vars[[id]]@type, tu, ...))
    names(ans) = names(ans)

    ans = groupEls(ans)
    
       #  ans$initGlobalVarFun = RFunctionDefinition('initGlobalVars',
       #                                             c('initGlobalVars = ',
       #                                               'function()',
       #                                               '{',
       #                                               ans$alias,
       #                                               '}'))

  } else
    ans = list()


  ans = list(vars = ans,
             consts = consts)

  class(ans) <- "DynamicGlobalVariableCode"
  ans
}

setOldClass( "GlobalVariableCode")
setOldClass( "DynamicGlobalVariableCode")


setMethod("writeCode", "GlobalVariableCode",
  #
  # Output the code to interface to the non-constant global variables.
  #
function(obj, target, file = stdout(), ..., includes = character())
{
  if(length(obj) == 0)
    return(TRUE)

  if(is.character(file)) {
    file = file(file, "w")
    on.exit(close(file))
  }
  
  if(target == "r") {
     sapply(obj$vars$classDef, cat, "\n", file = file, ...)
     writeCode(obj$vars$initGlobalVarFun, target, file = file, ...)     
  } else if(target == "native") {
     writeIncludes(includes, file)
     sapply(obj$vars$get, function(x) { writeCode(x, target, file = file, ...); cat("\n", file = file) ; TRUE})
     sapply(obj$vars$valueOf, function(x) { writeCode(x, target, file = file, ...); cat("\n", file = file) ; TRUE})     
  } 

  return(TRUE)
})


setMethod("writeCode", "DynamicGlobalVariableCode",
  #
  # Output the code to interface to the non-constant global variables.
  #
function(obj, target, file = stdout(), ..., includes = character())
{
  if(length(obj) == 0)
    return(TRUE)

  if(is.character(file)) {
    file = file(file, "w")
    on.exit(close(file))
  }
  
  if(target == "r") {
     #sapply(obj$vars$classDef, cat, "\n", file = file, ...)
     sapply(obj$vars$raccessor,  writeCode, target, file)
     sapply(obj$vars$rbinding,  writeCode, target, file, "\n")     
  } else if(target == "native") {
     writeIncludes(includes, file)
     sapply(obj$vars$get, function(x) { writeCode(x, target, file = file, ...); cat("\n", file = file) ; TRUE})     
     sapply(obj$vars$set, function(x) { writeCode(x, target, file = file, ...); cat("\n", file = file) ; TRUE})
  } 

  invisible(return(TRUE))
})


setGeneric("getSizeofTypeName", function(type) standardGeneric("getSizeofTypeName"))
setMethod("getSizeofTypeName", "ANY",
           function(type) {
             if(is(type, "PendingType") || is(type, "ResolvedTypeReference"))
               return(getSizeofTypeName(forceResolve(type)))
             
             type@name
           })

setMethod("getSizeofTypeName", "ArrayType",
              function(type) {
                type@type = forceResolve(type@type)
                els = paste("[", getArrayDimension(type), "]", collapse = " ")
                paste(type@type@name, els) # "[", type@length, "]")
              })

setMethod("getSizeofTypeName", "PointerType",
              function(type) {
                paste(getSizeofTypeName(type@type), paste(rep("*", length = type@depth), collapse = ""))
              })


generateDynamicGlobalVariableCode = 
# Newer version than below
#
function(name, type, nodes, typeMap = list(), package = character())
{
   getFunName = paste("get", name, sep = "_")

   isArray = is(type, "ArrayType")   

   k = coerceRValue("value", type, type, typeMap)
   if(!inherits(k, "IfStatement"))
     k = paste("value", "=", k)

#   hasCopy = if(isArray) !is(type@type, "BuiltinPrimitiveType") else !is(type, "BuiltinPrimitiveType")
   hasCopy = isArray || !is(type, "BuiltinPrimitiveType")
   hasCopy = TRUE

   params = c("value", if(isArray) c("from", "to"), if(hasCopy) "copy")
   defaults = c("", if(isArray) c("1", type@length), if(hasCopy) "TRUE")

   rcode = c(
             "if(missing(value))",
             paste("   .Call('", paste("R_get", name, sep = "_"), "'", if(hasCopy) ", as.logical(copy)", if(isArray) ", as.integer(from), as.integer(to)", ")", sep = ""),
             "else {",
             paste("   ", k),
             paste("   .Call('", paste("R_set", name, sep = "_"), "', value)", sep = ""),
             "    value",
             "}"
            )

     # R function for getting or setting value

   rfun = RFunctionDefinition(getFunName, rcode, params, defaults = defaults,
                                 obj = if(hasCopy) "RFunctionDefinition" else "RAnonymousFunctionDefinition")
   
   rdef = ActiveBinding(name, if(hasCopy) getFunName else rfun)

   
   cgetName = paste("R_get", name, sep = "_")

   
#XXX This needs to be moved to a general place and used in other contexts
# e.g. in convertValueToR()
# Add a copy parameter to that? Or create a  convertValueRefToR()


   if(isArray) {
       type = fixArrayElementTypeNames(type)
               # convertValueToR(name, PointerType(type@type), character())
#       arrayTypeName = getReferenceClassName(type@type) 
#       arrayClass = paste(capitalize(type@type@name, first = FALSE), "Array", sep = "")
       dims = getArrayDimension(type)
       
       cast = paste("*(const ", type@name, "(*)", paste("[", dims, "]", sep = "", collapse = ""), ") &")
#       hasCopy = !is(type@type, "BuiltinPrimitiveType")
       
       arrayRValue =   paste(getCopyArrayName(type),
                                       "(",
                                       paste(dims, collapse = ", "),
                                       ", ", 
                                        #XXX Cast which we don't want "(", getNativeDeclaration("", type, , addSemiColon = FALSE, const = TRUE),")",
                                       cast,
                   #XXXXXXX Do we know we have a copy parameter?
                                       name, if(hasCopy) ", INTEGER(copy)[0]", ", from - 1, to - 1",
                                       ")")           
       
       arrayClass = paste(capitalize(type@type@name, first = FALSE), paste(rep("Array", length(dims)), collapse = ""), sep = "")
       
#??? Use intPtr or intArray in the tag name of the external pointer? If we use intArray, then change the code we generate to look for that.       
       tagName = getReferenceClassName(type)
#       ref = paste("R_createArrayReference(", name, ",", dQuote(arrayClass), ",",  dQuote(tagName), ",", type@length, ", sizeof(", getSizeofTypeName(type), "))")
       ref = createNativeReference(name, type)

    } else {
       ref = convertValueToR(paste("&", name), PointerType(type), character(), typeMap = typeMap)
    }
              # used in both set and get.
   rvalue = convertValueToR(name, type, character(), typeMap = typeMap)

   
   getCCode = CRoutineDefinition(cgetName,
                       c(externC,
                         "SEXP",
                         paste(cgetName, "(", if(hasCopy) "SEXP copy", if(isArray) paste(if(hasCopy) ", ", " SEXP start, SEXP end", collapse = ""), ")"),
                         "{",
                         "SEXP ans;",
                         "",
                         if(hasCopy)
                         c("if(!LOGICAL(copy)[0])",
                           paste("    ans =", ref, ";"),
                           "else"
                          ),
                         if(isArray)
                          c(" {",
                           "int from, to;",
                           "if(Rf_length(start) == 2) to = INTEGER(start)[1]; ",
                           "else if(Rf_length(start) == 0 || Rf_length(end) == 0) {",
                           '   PROBLEM "need scalar values for range of array to fetch"',
                           "   ERROR",
                           "}",
                           "from = INTEGER(start)[0]; to = INTEGER(end)[0];",
                           ""),
                         
                         paste("    ans = ", if(isArray) arrayRValue else rvalue, ";"),
                         if(isArray) " }",
                         "",
                         "return(ans);",
                         "}"))


   csetName = paste("R_set", name, sep = "_")
   rconvert = convertRValue(name, "value", type, "value", typeMap = typeMap)

   setCCode = CRoutineDefinition(csetName,
                       c(externC,
                         "SEXP",
                         paste(csetName, "(SEXP value)"),
                         "{",
                         "SEXP ans = R_NilValue;",
                         "",
                         rconvert,
# Don't copy the object back                         
#                         paste("ans = ", rvalue, ";"),
                         "",
                         "return(ans);",
                         "}"))


   list(set = setCCode, get = getCCode, raccessor = if(hasCopy) rfun else NULL, rbinding = rdef,
         registration = list(list(name = setCCode@name, nargs = 1),
                             list(name = getCCode@name, nargs = 0 + hasCopy + if(isArray) 2 else 0)))
}  



generateGlobalVarCode =
  # Class definition
  # C routine to fetch the value of the variable
  #     and to set the value. XXX
  # R code to create R variables in .onAttach/.First.lib
  #
  # XXX Need to tidy this up. Want to make var a PointerType
  # of one more than the actual value passed in. #
  # But need to calculate the class name properly and in different
  # ways in the function?
  #
function(name, var, nodes, typeMap = list(), package = character(), defaultBaseClass =  'RC++Reference')
{
 if(is(var, "PointerType")) {
   addrType = var
   addrType@depth = as.integer(var@depth + 1)
   typeName = var@typeName
 } else {
   typeName = var@name
   addrType = new("PointerType", typeName = typeName, depth = as.integer(1), type = var)
 }
 
 className = getReferenceClassName(addrType)
 classDef = paste("setClass('", className, "', contains = '", defaultBaseClass , "')", sep = "")

   # The routine to fetch the value of the address of the variable.
 rname = paste("R_get", name, sep = "_")
 get = CRoutineDefinition(rname,
                          c("SEXP",
                            paste(rname, "()"),
                            "{",
                            paste("return( R_MAKE_VAR_REFERENCE(&", name, ', "', className, '"));', sep = ""),
                            "}"), 0L)

  # R code to call the get routine and assign the result to an R variable.
 if(length(package) == 0) {
   rname = paste("'", rname, "'", sep = '')
   assignLocation = "globalenv()"
 } else {
   package = paste(",", package)
   assignLocation = paste("package", package, sep = ":")
 }
 
 alias = paste("assign('", name, "', .Call( ", rname, "), ", assignLocation, ")", package, sep = "")

   # A routine to get the current value of the variable.
 rname = paste("R_get_valueOf", className, sep = "_")
 #XXX
# addrTypeName = getReferenceClassName(addrType)
# typeName = var@name
 tp = ifelse(is(var, "BuiltinPrimitiveType"), var@name, getReferenceClassName(var))
 type = paste('"', tp, '"', sep = "")

 valueOf = CRoutineDefinition(rname,
                              c("SEXP",
                                paste(rname, "(SEXP obj)"),
                                "{",
                                getNativeDeclaration("tmp", addrType),
                                paste("tmp = (", getNativeDeclaration("", addrType, addSemiColon = FALSE), ") ",
                                       derefNativeReference("obj", type, type), ";"),
                                "if(!tmp) {",
                                '   PROBLEM "NULL value found"',
                                "   ERROR",
                                "}",
                                paste("return(", convertValueToR("*tmp", var, "tmp", typeMap = typeMap), ");"),
                                "}"), 1L)
   
 list(classDef = classDef, get = get, alias = alias, valueOf = valueOf)
}  

