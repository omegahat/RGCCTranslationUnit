externC = 'extern "C"'

createClassDef =
function(className, baseClass, fields)
{
  c(paste("class ", className, ": public ", baseClass),
    "{\n",
###    "protected:",  # currently public so that we can access them easily from R.
    "public:",
    createFieldDecls(fields),
    "",
    "public:",
    "  static const char * RClassName;",
    "  const char * const RTypeName() const { return(RClassName);}",
    "",
    createConstructor(className, fields),
    "",
    if(length(fields))
      c("", "SEXP getRElement(SEXP r_elName);",
        "void pushEntry(std::string fieldName, std::string fieldVal);", ""),
    "public:",
    paste("   static GCCNode *createInstance() { return(new ", className, ");}"),
    "};\n")
}

ReservedWords = c("else", "if", "for", "while", "do", "unsigned", 
                  "private", "protected", "public", "new", "delete", "class", "virtual",
                  "struct", "union",  "register",
                  "extern", "static")

fixNames =
function(fields)
{  
  i = names(fields) %in% ReservedWords
  if(any(i))
    names(fields)[i] = paste(names(fields)[i], "x", sep = "_")
  
  fields
}

createFieldDecls =
function(fields)
{
  if(length(fields) == 0) return(character())

  fields = fixNames(fields)
  
  types = c("GCCNode *", "const char *", "int", "double", "NodeVector", "StringVector")

  vars = paste(types[fields], names(fields), ";")
  if(any(fields == 1))
    vars = c(vars, paste("int ", names(fields)[fields == 1], "_index;", sep = ""))
  if(any(fields == 5))
    vars = c(vars, paste("NodeIndexVector ", names(fields)[fields == 5], "_index;", sep = ""))  

  paste("   ", vars, collapse = "\n")
}

createConstructor =
function(className, fields)
{
  fields = fixNames(fields)
       # get rid of the vector fields 
  fields = fields[ !(fields %in% c(5, 6)) ] 
  vars = structure(integer(length(fields)), names = names(fields))
  if(length(fields) && any(fields == 1)) 
      vars[paste(names(fields)[fields == 1], "_index", sep = "")] = -1


  paste("   ", className, "()", if(length(vars)) ":", "\n", if(length(vars)) paste("        ", names(vars), "(", vars, ")", collapse = ",\n"), "\n        {}\n")
}

createPushEntry =
function(fields, className, baseClass)
{
  if(length(fields) == 0) return(character())

  fields = fixNames(fields)

  if("spec" %in% names(fields))
    warning("Deal with the spec field and mapping virt to virtual")
  
  rhs = mapply(function(type, name) {
                    # Need to deal with spec also.
                  if(name %in% c("access", "spec")) 
                    intern = ", true"
                  else
                    intern = ""

                    switch(type,
                      "1" = paste("setNodeIndex(fieldVal, &", name, "_index)", sep = ""),
                      "2" = paste("internString(fieldVal.c_str()", intern, ")"),
                      "3" = "toInteger(fieldVal)",
                      "4" = "toDouble(fieldVal)",
                      "5" = paste(name, "_index.push_back(toNodeIndex(fieldVal))", sep = ""),
                      "6" = paste(name, ".push_back(internString(fieldVal.c_str()", intern, "))", sep = "")
                    )
                 },
                fields, names(fields))

  prefix = c(if(baseClass != "GCCNode") "    else" else "   ", rep("    else", length(fields) - 1))

  
  tuFieldNames = names(fields)
  tuFieldNames = mapSourceName(tuFieldNames, toCVar = FALSE)
  assign = paste(names(fields), "=")
  assign[fields %in% c(5, 6)] = ""
  
  paste(c(paste("void ", className, "::pushEntry(std::string fieldName, std::string fieldVal) {"),
        if(baseClass == "OperandNode")
	  '    if(strncmp("op ", fieldName.data(), 3) == 0)  \n       addOperand(fieldVal);',
        if(baseClass == "GCCListNode")
	  "    if('0' <= fieldName.data()[0] && fieldName.data()[0] <= '9')  \n       addElement(fieldVal);",          
          
        paste(prefix, "if(fieldName.compare(", dQuote(tuFieldNames), ") == 0)\n      ",
                     assign, rhs, ";"),
    
    "",
    "  GCCNode::pushEntry(fieldName, fieldVal);",
    "}\n"), collapse = "\n")
}

createGetRElement =
function(fields, className, isOperand = FALSE)
{
  if(length(fields) == 0) return(character())

  originalNames = names(fields)
  fields = fixNames(fields) #XXX deal with the mapping from the human name to the transformed names.  
  
  values = mapply(function(type, name)
                  switch(type,
                      "1" = paste("createGCCNodeRObject( &", name, ", ", name, "_index)", sep = ""),
                      "2" = paste(name, "? mkString(", name, ") : NEW_CHARACTER(0)"),                         
                      "3" = paste("ScalarInteger(", name,")"),
                      "4" = paste("ScalarReal(", name, ")"),
                      "5" = paste("R_convertNodeVector(", name, ", ", name, "_index)", sep = ""),
                      "6" = paste("R_convertStringVector(", name, ")")                         
                   ),
                  fields, names(fields))

  prefix = c("   ", rep("    else", length(fields) - 1))
  paste(c(paste("SEXP", className, "::getRElement(SEXP r_elName) {"),
         "const char *elName = CHAR(STRING_ELT(r_elName, 0));",
      paste(prefix, "if(strcmp(elName, ", dQuote(originalNames), ") == 0)\n      ",
                "return(", values, ");"),
      
    "",
    "  return(GCCNode::getRElement(r_elName));",
    "}\n"), collapse = "\n")
}


createNamesMethod =
function(fields, className)
{
  paste("setMethod('names',", sQuote(className), ",\n    function(x)\n",
         "c(", paste(sQuote(c(names(fields), "INDEX")), collapse = ", "), "))")
}

createAccessorCode =
function(fields, className, rclassName, baseClass, classSpecificAccessors = FALSE)
{
  if(length(fields) == 0) return(list(r = character(), native = character()))

  isOperand = baseClass %in% c("OperandNode", "GCCListNode")
  opIndex = match("op", names(fields))

  if(classSpecificAccessors) {
    CRoutines = paste("R", className, "get", names(fields), sep = "_")  
    routines = paste(c("INDEX", sQuote(names(fields))),  sQuote(c("R_GCCNode_get_INDEX", CRoutines)), sep = "=", collapse = ",\n\t         ")
  } else
    routines = paste(sQuote(c("INDEX", names(fields))), collapse = ",\n\t\t")
  
   r = c(paste('setMethod("[[", c(', sQuote(rclassName), ", 'character'),"),
         "function(x, i, j, ..., exact = TRUE, dynamic = TRUE) {",
         "",
         "",
         paste("   routines = c(", routines, ")"),
         "",
         paste("   idx = (if(exact) match else pmatch)(i,", if(classSpecificAccessors) "names(routines)" else "routines", ")"),
         paste("   if(is.na(idx))\n\t stop('no such field', i, ' in ", className, "')"),
         if(classSpecificAccessors)
          "   .Call(routines[idx], x)"
         else 
           c("  if(idx == 1L) .Call('R_GCCNode_get_INDEX', x) ",
              if(isOperand)  paste("  else if(idx ==", opIndex + 1L, ") ops(x) ")),
           "  else .Call('R_GCCNode_getValue', x, names(routines)[idx])",
        "})",
        "",
        paste('setMethod("$",', sQuote(rclassName), ","),
        "          function(x, name)  x[[name]])"
     )

   if(classSpecificAccessors) {
      native = mapply(createNativeAccessor, fields, names(fixNames(fields)), CRoutines, className)
      list(r = r, native = native)
   } else
     list(r = r, native = character())
}


createNativeAccessor =
function(type, varName, routineName, className)
{
 val = paste("node->", varName)
 rvalue = switch(type,
                 "1" = paste("createGCCNodeRObject(", val, ")"),
                 "2" = paste(val, "? mkString(", val, ") : NEW_CHARACTER(0)"),   
                 "3" = paste("ScalarInteger(", val, ")"),
                 "4" = paste("ScalarReal(", val, ")")
                )
                   
 c(externC,
   "SEXP",
   paste(routineName, "(SEXP r_node)"),
   "{",
   paste("  DECL_NODE(", className, ")"),
   paste("  return(", rvalue, ");"),
   "}")

}

createGetNextNodeMethods =
function(fieldTypes)
{
  w = sapply(fieldTypes, function(x) "chan" %in% names(x))
  paste("setMethod('getNextNode',", sQuote(paste("GCC::Node", names(fieldTypes)[w], sep = "::")), ", function(node) node[['chan']])")
}

createGetNodeSourceMethods =
function(fieldTypes)
{
  w = sapply(fieldTypes, function(x) "source" %in% names(x))
  paste("setMethod('getNodeSource',", sQuote(paste("GCC::Node", names(fieldTypes)[w], sep = "::")), ", function(node) node[['source']])")
}


mapSourceName = function(fields, toCVar = TRUE) {
  map = c(srcp = "source", const = "constant", operator = "Operator", volatile = "is_volatile", accs = "access")
  if(!toCVar)
    map = structure(names(map), names = map)

  i = match(fields, names(map))
  if(any(!is.na(i))) {
    fields[!is.na(i)] = map[i[!is.na(i)]]
  }

  
# for(id in names(map)) {
#   idx = match(id, fields)
#   if(!is.na(idx))
#    fields[idx] = map[id]
# }

  fields
}
