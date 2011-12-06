
# This is for extracting and processing type information from the tu files
# as read via parseTU and readTU in findDecl.R
# The functions in findDecl.R work on the structure of the classes, methods, etc.
# and the functions here work on the type information.
#

# See SSOAP for how to deal with built-ins, etc.

setClass("TypeDefinition", representation(name = "character",
                                          alias = "character",
                                          qualifiers = "character",
                                          scope = "NodeIndex"))  # was "character")

setClass("BuiltinPrimitiveType", contains = "TypeDefinition")


       


# The builtin, primitive types.
# Currently, we just use these basic types and differentiate between
#  e.g. int, long, unsigned long, char, ...
# via the name field.  We may want to create sub-classes for these types if
# we end up dispatching on them.

setClass("intType", contains = "BuiltinPrimitiveType", prototype = list(name = "int"))
setClass("unsignedIntType", contains = "intType", prototype = list(name = "unsigned int"))

#setClass("longType", contains = "BuiltinPrimitiveType", prototype = list(name = "long"))
setClass("boolType", contains = "BuiltinPrimitiveType", prototype = list(name = "bool"))
setClass("doubleType", contains = "BuiltinPrimitiveType", prototype = list(name = "double"))
setClass("floatType", contains = "doubleType", prototype = list(name = "float"))
setClass("longType", contains = "doubleType", prototype = list(name = "long int"))

setClass("longDoubleType", contains = "doubleType", prototype = list(name = "long double"))
setClass("longIntType", contains = "doubleType", prototype = list(name = "long int"))


setClass("charType", contains = "intType", prototype = list(name = "char"))
setClass("unsignedCharType", contains = "BuiltinPrimitiveType", prototype = list(name = "unsigned char"))
setClass("shortIntType", contains = "intType", prototype = list(name = "short int"))
setClass("shortUnsignedIntType", contains = "intType", prototype = list(name = "short unsigned int"))
setClass("longLongType", contains = "doubleType", prototype = list(name = "long long"))

setClass("longUnsignedIntType", contains = "doubleType", prototype = list(name = "long unsigned int"))
setClass("longLongUnsignedIntType", contains = "doubleType", prototype = list(name = "long long unsigned int"))





setClass("complexType", representation(alignment = "integer"), contains = "BuiltinPrimitiveType",
          prototype = list(name = "complex", alignment = as.integer(32)))

setClass("voidType", contains = "BuiltinPrimitiveType", prototype = list(name = "void"))

#setClass("longDoubleType", contains = "BuiltinPrimitiveType", prototype = list(name = "long double"))


setClass("PointerType", representation(typeName = "character",
                                       type = "TypeDefinition",
                                       depth = "integer"),
                        contains = "TypeDefinition",
                        prototype = list(name = as.character(NA),
                                         typeName = as.character(NA),
                                         depth = as.integer(1)))

setClass("CString", contains = "PointerType", prototype = list(name = "char*", depth = 1L))


setClass("ArrayType",
           representation(length = "integer",
                          type = "TypeDefinition"),
           contains = "TypeDefinition")

setClass("TypedefDefinition",
           representation(type = "TypeDefinition"), contains = "TypeDefinition")

  # This is a special instance of a typedef that identifies the generic R SEXP type.
  #XXX This should be a PointerType so that we can inherit properties correctly.
setClass("SEXP", contains = 'TypedefDefinition')


#XXX Should be TUIndex but wait till later.

setClass("ContainerDefinition",
            representation(fields = "list",
                           index = "NodeIndex"),
            contains = "TypeDefinition")
setClass("StructDefinition",
             contains = "ContainerDefinition")
setClass("UnionDefinition",
            contains = "ContainerDefinition")

setClass("C++ClassDefinition",
             representation(baseClasses = "character",
                            ancestorClasses = "character",
                            methods = "list"),
             contains = "ContainerDefinition")


setClass("Field", representation(name = "character",
                                 type = "TypeDefinition"))
setClass("C++Field", representation(access = "character", definedIn = "character"), contains = "Field")
setClass("C++ClassField", contains = "C++Field")
setClass("C++StaticClassField", , contains = "C++Field")

# when coercing a C++ClassDefinition, just its name. XXX helps with the typeMap lookup.
setAs("C++ClassDefinition", "character", function(from) from@name)

setClass("C++ReferenceType",
             representation(type = "TypeDefinition"),
             contains = "TypeDefinition")


setClass("C++Typename", contains = "TypeDefinition")
setClass("C++TemplateTypeParm", contains = "TypeDefinition")


    # The idea here is to represent the name of an enumeration of the form
    #  typedef  enum A { X, Y, Z} Bob;
    # as  c("A","Bob") and identify the name as being
    # a TypedefEnumerationName so that C code can refer to it as
    #  Bob rather than enum A or (erroneously) enum Bob

setClass("TypedefEnumerationName", contains = "character")

setClass("EnumerationDefinition",
            representation(values = "numeric"),  # was integer, but need to handle numbers like in C++ wctype.h (see inst/examples/wctype.cpp)
            contains = "TypeDefinition")

setClass("BitwiseEnumerationDefinition", contains = "EnumerationDefinition")

 # Should this be a typedef, an enumeration, or both via multiple inheritance.
setClass("TypedefEnumerationDefinition",  contains = "TypedefDefinition")
setClass("TypedefBitwiseEnumerationDefinition", contains = "TypedefEnumerationDefinition")

# Definition might be too strong here. It is just a declaration.
setClass("VariableDefinition",
           representation(type = "TypeDefinition"),
           contains = "TypeDefinition")


setClass("RoutineDefinition",
            representation(parameters = "list",
                           returnType = "TypeDefinition"), # qualifiers
            contains = "TypeDefinition")

setClass("NativeMethodDefinition",
            representation(className = "character"),
            contains = "RoutineDefinition")

setClass("FunctionPointer", representation(caller = "ANY"), contains = "RoutineDefinition")

setClass("UserDataType", contains = "PointerType",
           prototype = list(name = "void*", depth = 1L, type = new("voidType")))

setClass("Parameter",
           representation(name = "character",
                          type = "TypeDefinition",
                          defaultValue = "ANY"),
           prototype = list(name = as.character(NA)))
                           


setOldClass("ResolvedNativeRoutine")



setOldClass("VariableDefaultValue")
setOldClass("InitializerValue")



# Classes used for resolving the data types.
setOldClass("DefinitionContainer")
setClass("PendingType", representation(INDEX = "character",
                                       env = "DefinitionContainer"),
                         contains = "TypeDefinition") # environment

# This is a class for representing a reference to a resolved
# type that is in the DefinitionContainer.
# This allows us to avoid making extremely costly copies of, for example,
# a C++ class along with all its methods, fields, base classes, etc.
# That is prohibitively expensive and so we need to use a "pointer"
# or reference which is what this is.

#
# We could avoid having this as a TypeDefinition and then
# make the slots that expect a TypeDefinition have a class union
# that allows both.

setClass("ResolvedTypeReference", 
           representation (index = "TUParserIndex",
                           container = "DefinitionContainer"),
           contains = "TypeDefinition")



setAs("ResolvedTypeReference", "C++ClassDefinition",
       function(from)
          resolveType(from))


getEnumDef =
  #
  # Given an enumeral_type
  #
function(node)
{
    # Get the name for this enum
  name = nameNode = node[["name", convert = FALSE]]

   # The name may be artificial.
  if(!is.null(name)) {
     name =  getNodeName(node, addPrefix = FALSE)
#     name = name[["string"]]   # was name[["name"]][["string"]] - check.
     if(is.null(name) || substring(name, 1, 1) == ".")
        name = as.character(NA)

     if("scpe" %in% names(nameNode)) {
        s = getNodeName(nameNode[["scpe", convert = FALSE]], addPrefix = FALSE)
        if(length(s) && nchar(s))
           name = c(s, name)  # paste(s, name, sep = "::")
     }
  }
  else
     name = as.character(NA)

   # Now get the chain of values and iterate over them.
  csts = node[["csts",  convert = FALSE]]

  values = getEnumValues(csts)

  if(any(is.na(values)))
    warning("NAs introduced for enum definition ", name, ": ", paste(names(values)[is.na(values)], collapse = ", "))
  
  list(name = name, values = values)
}  


getEnumValues =
  #
  # works on the csts in the enumeral_type
  #
  #  type allows the caller to specify the target data type
  #  to be used in a call to as( , type).
  #  If a value is to large to be represented as an integer, one
  #  can use "numeric" here.
  
function(csts, type = "integer")
{
  els = integer()
  nodeIterator(csts,
                function(node) {
                     id = node[["purp", convert = FALSE]][["string"]]
                     val = getValue(node[["valu", convert = FALSE]]) #   [["low"]]
                     tmp = as(val, type)
                     if(is.na(tmp)) 
                        tmp = as(val, "numeric")
                     els[id] <<-  tmp
                })
  els
}  



computeScope =
  #
  # Create the character vector describing which scope this node is in.
  # If top-level, then return character()
  # Otherwise, return the index of the node as a string and the human-readable
  # name.
function(node, tu)
{
  if("scpe" %in% names(node)) {
    scope = node[["scpe", convert = FALSE]]
    return(structure(scope[["INDEX"]], names = getNodeName(scope)))
  }

  if(is(node, "GCC::Node::record_type") && "name" %in% names(node)) {
    return(computeScope(node[["name", convert = FALSE]]))
  }

  return(character())
}  

if(USE_PERL_TU_PARSER) 
setMethod("setLanguage", "PerlTUParser",
function(parser, language = NA)
{
  parser[["language"]] = as.character(language)
  
  parser
})



isCPlusPlus =
function(parseNodes) {

    # We can put a flag into the parser object to indicate that this is C++ or regular C
    # rather than relying on a rule that looks at the tu.
  val = getLanguage(parseNodes)
  if(!is.na(val))
    return(!(tolower(val) %in% c("c")))
     
  inherits(parseNodes[[2]], "GCC::Node::namespace_decl")
}


if(FALSE) {
  # Should use getNodeName
getName =
function(node, default = "")
{
  #XXX
#  if(inherits(node, "type_decl") && !("name" %in% names(node)))
#     getName(node[["type", convert = FALSE]], default)
  
  n = node[["name", convert = FALSE]]
  if(inherits(n, "GCC::Node::type_decl"))
      return(n[["name"]][["string"]])
  else if(inherits(n, "GCC::Node::identifier_node"))
      return(n[["string"]])
  else {
     if(missing(default))
        stop("Don't know how to get the name of this node")
     else
       default
  }
}
}



# Simple constant TRUE predicate function.
TRUEp = function(...) TRUE


getQualifiers =
function(node)
{
  els = getNodeQualifiers(node)

  quals = c("static")
  els = c(els, quals[  quals %in% names(node) ])
  
  els
}

setGeneric("getNodeQualifiers",
           function(node)
           standardGeneric("getNodeQualifiers"))

if(USE_PERL_TU_PARSER)
setMethod("getNodeQualifiers", "PerlHashReference",
          function(node)  {
            ans = character()
            if(node$isa("GCC::Node::Type"))
               ans = node$quals()
            if(node$isa("GCC::Node::Declaration"))
              ans = c(ans, node[["C"]])  # Is C language, not C++.            

            ans
          })



# Used in generateInterface when we don't write to a file but just return the information
# This is a simple list that can be passed directly to writeCode().
setOldClass("NativeInterfaceCode")


# This is the definition of a SEXP type.
setClass("SEXP", contains = "TypedefDefinition",
           prototype = list(name = "SEXP", alias = "SEXP", type = new("PointerType", depth = 1L, name = "SEXPREC")))
setClass("RDerivedMethodsList", representation(className = "character"), contains = "SEXP")
SEXPType = new("SEXP")

setClass("InheritedMethodIndicator", contains = "EnumerationDefinition",
           prototype = list(name = "InheritedMethodIndicator", values = c(local = 0, base = 1)))

