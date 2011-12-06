getCopyArrayName =
  # Gets the name of the converter routine from C to R.
  # This is no longer elType but expects the top-level Array.
  # Use currently in createDynamic...GlobalVariable
function(elType, around = c("convert", "ToR"), label = "Array", first = around[1] != "")
{
  elType = forceResolve(elType)

  tname = gsub("\\*", "Ptr", elType@name)
  dims = getArrayDimension(elType)

  return(paste(around[1], capitalize(tname, first = first), paste(rep(label, length = length(dims)), collapse = ""), around[2], sep = ""))
}

getArrayBaseType =
function(type)
{
  while(is(type, "ArrayType"))
    type = type@type

  type
}

getArrayDimension =
function(type)
{
  ans = integer()
  
  while(is(type, "ArrayType")) {
    ans = c(ans, type@length)
    type = type@type
  }
  ans
}

getArrayElementTypeName =
  #
  #  Just makes certain that the name of the element type is on all 'type' objects of a 
  #  multi-dimensional array description as it is only on the inner one when we get
  #  it back from resolveType.
  #
  # Expects the top-level ArrayType
  # and recurses down to find the type of this multi-dimensional array.
function(def)
{
  def = forceResolve(def)
  orig = def
  while((length(def@name) == 0 || is.na(def@name)) && (is(def@type, "ArrayType") || is(def@type, "PointerType") && !is(def@type, "CString"))) {
    def = def@type
  }

  def@type@name
}


fixArrayElementTypeNames =
  # go down the element types putting the name on them if they are also arrays
  # so that multi-dimensional arrays aren't anonymous.
  # We will try to find a better way to do this later, e.g. at resolution time.
function(def, name = getArrayElementTypeName(def))
{
  # This version assumes the name is at the top and puts it on the sub-elements
  if(is(def@type, "Pending") || is(def@type, "ResolvedTypeReference"))
   def@type =  forceResolve(def@type)

  if(length(def@name) == 0)
    def@name = name
  
  if(is(def@type, "ArrayType") && length(def@type@name) == 0) {
      def@type@name = name
      def@type = fixArrayElementTypeNames(def@type, name)
  }

  def
}

fixPointerTypeNames =
  # go down the element types putting the name on them if they are also arrays
  # so that multi-dimensional arrays aren't anonymous.
  # We will try to find a better way to do this later, e.g. at resolution time.
function(def, name = getArrayElementTypeName(def))
{
  # This version assumes the name is at the top and puts it on the sub-elements
  if(is(def@type, "Pending") || is(def@type, "ResolvedTypeReference"))
   def@type =  forceResolve(def@type)

  if(length(def@name) == 0 || is.na(def@name))
    def@name = name
  
  if(is(def@type, "PointerType") && (length(def@type@name) == 0) || is.na(def@type@name)) {
      def@type@name = name
      def@type = fixPointerTypeNames(def@type, name)
  }

  def
}

#--------------------------------------------------------------------------------------------------------


generateCopyArrayToR =
  #
  # If you want a reference to the array, don't call the resulting routine.
  # If you want a list containing a reference to each element, call with copyEls = TRUE
  # If the element type is a builtin type for R, you get back a vector of the appropriate type.
  #
  #
  #  generateCopyArrayToR("bob", new("intType"))
  #  generateCopyArrayToR("bob", new("doubleType"))
  #  generateCopyArrayToR("bob", new("boolType"))
  #
#XXXX Break up into smaller functions.
function(type, routineName = getCopyArrayName(type), typeMap = NULL, addDimensions = TRUE)
{
  if(!is(type, "ArrayType"))
    type = new("ArrayType", type = type, name = type@name) # what about the length.

  type = fixArrayElementTypeNames(type)
  
     # deal with built-in types.
  elType = type@type
  copyEls = !is(elType, "BuiltinPrimitiveType")
  copyEls = TRUE

      # XXX check the typeMap.

    # The builtin types and their equivalences need to be made more structured and accessible.

  if(is(elType, "BuiltinPrimitiveType")) {
    primName = names(elType@name)
    if(length(primName) == 0)
      primName = elType@name

    w = which(BuiltinTypeTable$RTypeClass == class(elType))
    rtype = BuiltinTypeTable[w, "Caccessor"]
    alloc =  paste(paste("NEW", rtype, sep = "_"), "( len )")

    if(elType@name == "char") 
      set = paste("SET_STRING_ELT(r_ans, i, COPY_TO_USER_STRING(array[pos]));")
    else 
      set = paste(rtype, "(r_ans)[i] = (", BuiltinTypeTable[w, "C"] ,") array[pos];")

  } else if ( isString <- is(elType, "CString")) {
    alloc = "NEW_CHARACTER( len )"
    set = paste("SET_STRING_ELT(r_ans, i,", "COPY_TO_USER_STRING(array[pos]));")

  } else {
    alloc = "NEW_LIST( len )"
      #XXX If this is a C++ClassDefinition, convertValueToR will just create a reference.
    set = paste("SET_VECTOR_ELT(r_ans, i,", "copyEls ?",
                                                convertValueToR("array[pos]", elType, character(), typeMap = typeMap),
                                                ":" ,
                                                createNativeReference("array[pos]", elType),  ");")  # was  array + pos
  }

  dims = getArrayDimension(type)
  
#---------------------  

  decl = getNativeDeclaration("", type, addSemiColon = FALSE, const = TRUE)

  decl = paste("const", type@name, "array", "[",  if(addDimensions) paste("dim", seq(along = dims), sep = "", collapse = " "), "]")
#if(routineName == "convertCharArrayToR") browser()  
cat("generating", routineName, "\n")

  txt = c(externC, "SEXP",
          paste(routineName, "(",
                              paste("size_t dim", seq(along = dims), sep = "", collapse = ", "),
                              ",", decl  , if(copyEls) ", int copyEls", ", int start, int end)"),
                             
          "{",
          "int i, pos, len;",
          "SEXP r_ans;",
          "if(start < 0 || start > dim1 - 1 || end < 0 || end > dim1 - 1) {",
          '  PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) dim1',
          "  ERROR;",
          "}",
          "if(start > end) {",
          '  PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1',
          "  ERROR;",
          "}",    
          "",
          "len = end - start + 1;",
          paste("r_ans =", alloc, ";"),
          "",
          "PROTECT(r_ans);",
          "for(i = 0, pos = start; i < len; i++, pos++) {",
          paste("\t", set),
          "}",
          "UNPROTECT(1);",
          "return(r_ans);",
          "}")

  internal = CRoutineDefinition(name = routineName, code = txt, nargs = 3 + length(dims) + copyEls)

#------  R callable version to access the internal convert.
  
  rderefType = dQuote(getReferenceClassName(type))

  dimDecl = paste("[dim", seq(along=dims), "]", sep = "", collapse = "")
  decl = paste(type@name, "(*array)", dimDecl)
  cast = paste(type@name, "(*)", dimDecl)

  rderef = c(paste(decl, ";"),
             paste("array = (", cast, ") R_getNativeReference(r_array, ", rderefType, ", ", rderefType, ");"))
  constRDeref = c(paste("const", decl, ";"),
                  paste("array = (", "const", cast, ") R_getNativeReference(r_array, ", rderefType, ", ", rderefType, ");"))  

  dimVarDecls = sapply(seq(along = dims), function(i) paste("size_t dim", i, " = INTEGER(r_dims)[", i-1, "];", sep = ""))
  
  rname = paste("R", routineName, sep = "_") #XXX Does this give R_R_...? Do we care?

# if(rname == "R_convertFloatToR") browser()  
  code = c(externC, "SEXP",
           paste(rname, "(SEXP r_array, SEXP start, SEXP end", if(copyEls) ", SEXP  r_copy", ", SEXP r_dims)"),
           "{",
           dimVarDecls, 
           constRDeref,
           paste("return(", routineName, "(",
                                          paste("dim", seq(along = dims), sep = "", collapse = ", "),
                                          ", *array", if(copyEls) ", INTEGER(r_copy)[0]", ", INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));"),
           "}")
        
  raccess = CRoutineDefinition(name = rname, code, nargs = 4 + copyEls)

  rcode = paste(".Call(", sQuote(rname), ", array, as.integer(from), as.integer(to))")
  funName = paste("get", if(is(elType, "CString")) "CString" else capitalize(elType@name), "Array", sep = "")
  rfun = RFunctionDefinition(funName, rcode, c("array", "from", "to"), defaults = c("", "1", "array@length"))

#-------------------  R_subset Array , i.e. to get a subset.
  
  if(is(elType, "BuiltinPrimitiveType"))
     a <- BuiltinTypeTable[BuiltinTypeTable$RTypeClass == class(elType), "Caccessor"]
  else
     a = NA

  # Now to create the routine and function that will allow accessing arbitrary elements which can then be used in
  # e.g.  x[ c(1, 4, 2, 5, 4)]
#  elName = paste("R_subset", capitalize(elType@name), "Array", sep = "")

  elName = getCopyArrayName(type, c("R_subset", ""))
  code = c(externC,
           "SEXP",
           paste(elName, "(SEXP r_array, SEXP els", if(copyEls) ", SEXP r_copy", ", SEXP r_dims)"),
           "{",
           " /* get a subset of the external array as an R object */",
           "SEXP r_ans;",
           "int  n = Rf_length(els);",
           paste("PROTECT(r_ans =", if(is.na(a)) "NEW_LIST" else paste("NEW",a, sep = "_"), "(n));"), # Get right type here NEW_INTEGER....
           "",
           "if(n > 0) {",
           paste("   ",
                 c("int i;",
                   dimVarDecls,
                   constRDeref,
                   "for(i = 0; i < n; i++) {",
                   if(!is.na(a))
                     paste(a, "(r_ans)[i] = (*array)[ INTEGER(els)[i] -1 ];")
                   else #XXX Need to use the r_copy 
                     paste("  SET_VECTOR_ELT(r_ans, i,",
                                             if(copyEls) "INTEGER(r_copy)[0] ? ",
                                             convertValueToR("(*array)[ INTEGER(els)[i] - 1 ]", elType, typeMap = typeMap, copy = "r_copy"),
                                             if(copyEls) paste(":", createNativeReference("(*array)[ INTEGER(els)[i] -1 ]", elType)),
                                            ");"),
                   "}")),    
           "}",
           "UNPROTECT(1);",
           "return(r_ans);",
           "}")
    
  rgetSubset = CRoutineDefinition(elName, code, nargs = 3 + copyEls)


#-------------- R_setSubset Array

#  elName = paste("R_setSubset", capitalize(elType@name), "Array", sep = "")
  elName = getCopyArrayName(type, c("R_setSubset", ""))

  isOneDArray = TRUE
#if(elName == "R_setSubsetFloatArrayArray") browser()
  code = c(externC,
           "SEXP",
           paste(elName, "(SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)"),
           "{",
           " /* set a subset of the external array as an R object */",
           "SEXP r_ans, r_tmp;",
           sapply(seq(along = dims), function(i) paste("size_t dim", i, " = INTEGER(r_dims)[", i - 1, "];", sep = "")),
           paste("size_t pos", if(isOneDArray) "" else seq(along = dims),  ";", sep = ""),    
           #    getNativeDeclaration("array", PointerType(elType)),
           rderef[1],
           "int  n, i;",
           "",
           if(isOneDArray)
             "n = Rf_length(els);"
           else
             "n = Rf_length(VECTOR_ELT(els, 0));",
    
           "if(n == 0) return(r_array);",
           "",
            # paste("array = (",           getNativeDeclaration("", PointerType(elType), addSemiColon = FALSE), ")",
              #           "R_getNativeReference(r_array, ", rderefType, ", ", rderefType, ");"),    
           rderef[2],

           "for(i = 0; i < n; i++) {",
           if(isOneDArray)
             "    pos = INTEGER(els)[i] - 1;"
           else
              paste("    pos", seq(along = dims), " = INTEGER(VECTOR_ELT(els, ", seq(along = dims) - 1L, "))[i] - 1;", sep = ""),
#XXX    
           "  r_tmp = VECTOR_ELT(r_values, i);",
            if(is(elType, "CString"))
              "*array[pos] = strdup(CHAR(STRING_ELT(r_tmp, 0)));"
            else
             convertRValue(if(isOneDArray) "*array[pos]"
                         else paste("*array", paste("[pos", seq(along = dims), "]", sep = "", collapse = "")),
                            "r_tmp", elType, character(), typeMap),
           "}",
           "return(r_array);",
           "}")
    
  rsetSubset = CRoutineDefinition(elName, code, nargs = 4)

#--------------- routine to set cells of an array

  elName = getCopyArrayName(type, c("R_setCells", ""))
  isOneDArray = !is(elType, "ArrayType")  #XXX or typedef to an ArrayType.  
  if(!isOneDArray) {
   code = c(externC,
           "SEXP",
           paste(elName, "(SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)"),
           "{",
           " /* set a subset of the external array as an R object */",
           "SEXP r_ans, r_tmp;",
           sapply(seq(along = dims), function(i) paste("size_t dim", i, " = INTEGER(r_dims)[", i - 1, "];", sep = "")),
           paste("size_t pos", if(isOneDArray) "" else seq(along = dims),  ";", sep = ""),    
           #    getNativeDeclaration("array", PointerType(elType)),
           rderef[1],
           "int  n, i;",
           "",
           "n = Rf_length(VECTOR_ELT(els, 0));",
           "if(n == 0) return(r_array);",
           "",
           rderef[2],
           "for(i = 0; i < n; i++) {",
              paste("    pos", seq(along = dims), " = INTEGER(VECTOR_ELT(els, ", seq(along = dims) - 1L, "))[i] - 1;", sep = ""),
#XXX    
           "  r_tmp = VECTOR_ELT(r_values, i);",
           convertRValue(paste("*array", paste("[pos", seq(along = dims), "]", sep = "", collapse = "")),
                              "r_tmp", getArrayBaseType(type), character(), typeMap),
           "}",
           "return(r_array);",
           "}")
    rsetCells = CRoutineDefinition(elName, code, nargs = 4)
 } else 
    rsetCells = NULL
  
#--------------  convert to an R vector with dims
  


#--------------  R class definition for the array  
 # rclassName = paste(capitalize(elType@name, first = FALSE), "Array", sep = "")
  rclassName = getCopyArrayName(type, c("", ""))
  base = if(is(elType, "BuiltinPrimitiveType"))
           'ExternalPrimitiveTypeArrayWithLength'
         else switch(as.character(length(dims)),
                       '1' = 'ExternalArrayWithLength',
                       '2' = "ExternalTwoDimensionalArray",
                       "ExternalMultiDimensionalArray")
  
  rClassDef = RClassDef(paste("setClass(", sQuote(rclassName), ", contains =", sQuote(base), ")"), rclassName)
 
  structure(list(native = internal,
                 raccess = raccess,
                 rgetSubset = rgetSubset,
                 rsetSubset = rsetSubset,
                 rsetCells = rsetCells,
                 r = rfun,
                 rclassDef = rClassDef),
             class = "ArrayInterface")
}  
  


copyRArrayElementsToNative =
function(type, to, name)
{
  typeName = type@type@name
  if(typeName == "char")
    sprintf("convertRCharacterToCharArray(%s, %s, %d);", to, name, as.integer(if(is.na(type@length)) -1 else type@length))
  else {
     accessor = with(BuiltinTypeTable, Caccessor[C == typeName])
     if(length(accessor) == 0) {
       accessor = with(BuiltinTypeTable, Caccessor[ RTypeClass == class(type@type)])
  
       if(length(accessor) == 0) 
          warning("Couldn't find appropriate accessor for array of type ", typeName)

     }
     c(paste("for(i = 0; i <", type@length, "; i++)"),
             #??? should we put a cast here or leave the compiler to complain
       paste("    ", to, "[i] =", accessor, "(", name, ")[i];"))
  }
}

