# Share with bindings.R and all the code that adds indentation.
Indent = "\t"

# create all the code to work with structures

SpecialFieldNames = c("names" = "Names")
fixupFieldName =
function(name)
{
  idx = match(name, names(SpecialFieldNames))
  w = !is.na(idx)
  if(any(w))
    warning("switching field name ", paste(name[w], collapse = ", "), " in struct. Don't ask!!!")
  name[w] = SpecialFieldNames[idx[w]]  
  name
}  

fixupStructNames =
function(type)
{
  idx = match("names", names(type@fields))
  if(is.na(idx))
    return(type)

  warning("switching field name of names in struct", type@name, "to Names. Don't ask!!!")
  names(type@fields)[idx] = "Names"
  type@fields[[idx]]@name = "Names"
  type
}  

#########################################################################################

createNamesMethod =
function(type, fields = type@fields, cname = getReferenceClassName(type))
{
  if(!is.character(fields)) {
    if(length(fields) && is(fields[[1]], "C++ClassField"))
          # Possibly set the name to "" if it is within this particular class and so only identify
          # the fields that are inherited.
       fields = structure(names(fields), names = sapply(fields, slot, "definedIn"))
    else
       fields = names(fields)
  }

  
  code = if(length(fields) == 0)
           NULL
         else {
           if(length(names(fields)))
             fields = paste(sQuote(names(fields)), sQuote(fields), sep = " = ", collapse = ",\n")
           else
             fields = paste("    ", sQuote(fields), collapse = ",\n")

#           paste("c(\n", fields, ")")
            
         }

  RMethodDefinition("names", cname, c("c(", code, ")"), "x")
}  

generateStructInterface =
function(type, classDefs, typeMap = list(), defaultBaseClass = "RC++StructReference")
{
 if(is(type, "ResolvedTypeReference"))
    type = resolveType(type)
  
 if(is(type, "TypedefDefinition"))
   type = type@type

 if(!is(type, "StructDefinition") && !is(type, "C++ClassDefinition"))
   stop("Need a StructDefinition object for generateStructInterface")

 tu = get(".nodes", classDefs)
 
 # type = fixupStructNames(type)

#  Need the coerce method.
 z = createRFieldAccessors(type, typeMap = typeMap, tu = tu)
 a = createRFieldAccessors(type, get = FALSE, typeMap = typeMap, tu = tu) #$generic,
#XXX Can ask for the generics only for this
 b =         
   #XXX misnamed - should be access methods. 
 z$generic = c(createNamesMethod(type),
               z$generic, a$generic,
                 # No need for the [[<- as $ does not need the copy
               createRFieldAccessors(type, get = TRUE, typeMap = typeMap, operator = "[[", genericOnly = TRUE, tu = tu))


  z$rFunctions = c(z$rFunctions, a$rFunctions) 

   # The C code that takes a pointer to the instance and copies field by field
   # to an instance of the R class 
  z$cRoutines = c(createCopyStruct(type, typeMap = typeMap), z$cRoutines, a$cRoutines)

   # R class for the structure in R, and the reference. 
  z$classDefs =  defineStructClass(type, classDefs, typeMap = typeMap, defaultBaseClass)

  z$coerce = generateStructSetAs(type)
 
   # Constructor for a new type.
  z$newInst = generateStructCreation(type)

  z$freeInst = createStructFree(type, typeMap = typeMap)
  z$duplicate = createDuplicateStruct(type, typeMap = typeMap)
 
 structure(z, class = "CStructInterface")
}

createDuplicateStruct =
function(type, typeMap = list())
{
   name = paste("R_duplicate", type@name, sep = "_")
   typeDecl = getNativeDeclaration("", type, addSemiColon = FALSE)
   pt = PointerType(type)   
   txt = c("SEXP",
           paste(name, "(SEXP r_value, SEXP r_copy, SEXP r_alloc)"),
           "{",
           getNativeDeclaration("value", pt),
           getNativeDeclaration("ans", pt, const = FALSE),
           "SEXP r_ans;",
           "",
             #XXX it appears that convertRValue does not assign to the value, so we do this here.
           paste("value =", convertRValue("value", "r_value", pt, character(), typeMap = typeMap), ";"), 
           paste("ans = (", typeDecl, " *) malloc(sizeof(ans));"),
           "*ans = *value;",
           paste("r_ans =", convertValueToR("ans", pt, typeMap = typeMap), ";"),
           "return(r_ans);",
           "}")

    #XXX Need to coerce the finalizer
   rcode = paste(".Call(", sQuote(name), ", x, NULL, .finalizer)")
   r = RMethodDefinition("duplicate", getReferenceClassName(type),
                          rcode,
                           c("x", "...", ".finalizer"),
                           c(.finalizer = sQuote(getDestructorNames(type)["finalizer"])))

   list(c = CRoutineDefinition(name, txt, nargs = 3),
        r = r)
}  


generateStructSetAs =
  #
  # 2 coercions - from R to C and from C to R. 
  #   classNames comes as R and C type (pointer)
  #
  #
  # XXX need to deal with the name and the type.
  # i.e. struct name or simply name
  #
function(type, classNames = c(type@name, getReferenceClassName(type)))  
{

  qnames = paste('"', classNames, '"', sep = "")
  rname = paste("R_coerce", classNames[1], classNames[2], sep = "_")
  iname = paste("coerce", classNames[1], classNames[2], sep = "_")  

  txt = c(paste("setAs(", qnames[1], ", ", qnames[2], ", "),
            "function(from)",
            paste(".Call('", rname, "', from )", sep = ""),
          ")")

  #  Generate the C routine code to do this.
  # allocate a new struct instance, and then loop over the slots
  # and copy the R value to each field
  # and return a reference to the allocated struct instance.
  ptype = new("PointerType", type = type, depth = as.integer(1), typeName = type@alias) #XXX
  decl = getNativeDeclaration("ans", ptype, const = FALSE)

    # The R version
  rnative = c(externC, "SEXP",
             paste(rname, " ( SEXP r_from )"),
            "{",
             paste("return ( R_createNativeReference( (void *)", iname, "(r_from, NULL),", dQuote(classNames[2]), ",", dQuote(classNames[2]), "));"),    
            "}"    
            )

  
    # The internal version
  native = c(externC,
             getNativeDeclaration("", ptype, const = FALSE, addSemiColon = FALSE),
             paste(iname, "( SEXP r_from, ", getNativeDeclaration("ans", ptype, const = FALSE, addSemiColon = FALSE), ")"),
             "{",
#             decl,
             "",
             "SEXP tmp;",
             "",
    #XXX should be classNames[1] (for both) but then need to change default.
             "if(!ans) {",
             paste("    ans = (", getNativeDeclaration("", ptype, addSemiColon = FALSE, const = FALSE), ")",
                           "malloc( sizeof(", getNativeDeclaration("", type, addSemiColon = FALSE, const = FALSE), "));"),
             "    if(!ans) return(ans);",
             "}",
             "",
             sapply(names(type@fields),
                    function(field) {

                       c(paste("tmp = GET_SLOT(r_from, Rf_install(\"", field ,"\"));", sep = ""),
                             # This is really convertRValue, i.e. from R to C but better copy the object.
                             # was  just the field, not the type
                         getCopyFieldCode(field, type@fields[[field]]@type, c(to = "ans", from = "tmp")))
                    }),
             "return(ans);",
             "}",
             "")

  toRef = CRoutineDefinition(name = rname, code = unlist(rnative), 1L)
  internalToRef = CRoutineDefinition(name = iname, code = unlist(native), 2L)        
   # Coerce from the Ref to the R class. We already  have most of this
   # as 
  rname = paste("R_coerce", classNames[2], classNames[1], sep = "_")
  txt = c("", txt,
          paste("setAs(", qnames[2], ", ", qnames[1], ", "),
            "function(from)",
            paste(".Call('", rname, "', from)", sep = ""),
          ")")
   code = c(externC, "SEXP",
            paste(rname, "( SEXP from )"),
            "{",
            decl,
#            paste("ans = R_GET_REF_TYPE(from,", classNames[1] , " );"),
             paste("ans = (", getNativeDeclaration("", ptype, addSemiColon = FALSE, const = FALSE), ")", derefNativeReference("from", type, type@name), ";", sep = ""),
             paste("return(", getStructCopyRoutineName(type, classNames[1]), "( ans ) );"),
           "}"
           )


  list(r = paste(txt, collapse = "\n"),
       routines = list(internalToRef = internalToRef, toRef = toRef,
                       fromRef = CRoutineDefinition(name = rname, code = code, 1L)))
}  


# This copies an R object to its C-level equivalent, i.e. an R C++StructReference to a struct *
setGeneric("getCopyFieldCode",
             function(fieldName, type, varNames, typeMap = list())
               standardGeneric("getCopyFieldCode"))



setMethod("getCopyFieldCode", c("ANY", "ANY", "ANY"),
             function(fieldName, type, varNames, typeMap = list()) {
                 lhs = paste(varNames["to"], fieldName, sep = "->")
                 tmp = convertRValue(lhs, varNames["from"], type, character(), typeMap = typeMap)
                 paste(lhs, "=", tmp)
             })

setMethod("getCopyFieldCode", c(type = "ResolvedTypeReference"),
             function(fieldName, type, varNames, typeMap = list()) {

               getCopyFieldCode(fieldName, resolveType(type), varNames)
             })

setMethod("getCopyFieldCode", c(type = "StructDefinition"),
             function(fieldName, type, varNames, typeMap = list()) {

              routine = paste("coerce", type@name, getReferenceClassName(type), sep = "_")
              paste(routine, "(", varNames["from"], ",", "&", varNames["to"], "->", fieldName, ");")
             })

setMethod("getCopyFieldCode", c(type = "ArrayType"),
             function(fieldName, type, varNames, typeMap = list()) {
                # Need to allocate space and then copy
                # Need to know the length.

      return( convertRValue(paste(varNames["to"], fieldName, sep = "->"),  varNames["from"], type, varNames, typeMap = typeMap))

if(FALSE) {               
               c("{",
                 "int i;",
                 paste("for(i = 0; i <", type@length, "; i++) {"),
                 
                 "}",
                 "}")
                paste("memcpy(", varNames["to"], ", ", varNames["from"], ", sizeof(", varNames["to"], "[0]) * ", type@length, ");")
}               
             })
# Pointer type.



generateStructCreation =
function(type, name = type@name, alloc = "calloc")
{
  decl = getNativeDeclaration("", type, character(), FALSE)
  rname = paste("R_new_", name, sep = "")
  txt = 
   c(externC,
     "SEXP", 
     paste(rname, "()"), 
     "{", 
     "SEXP r_ans = R_NilValue;",
     paste(decl, "* ans;"),
     "",
     paste("ans = (", decl, "*)", alloc, "(1, sizeof(", decl, "));"),
     paste(" r_ans = ", createNativeReference("ans", type, type@name, FALSE), ";"),  #XXX second type was type@name then type but back again!
     "return(r_ans);",
     "}")

   cdef = CRoutineDefinition(rname, txt, 0L)

   fieldNames = backtick(names(type@fields))
  
   id = getRConstructorFunctionName(type, name)
   destroy = getDestructorNames(type)
   txt = c(
           paste("ans = .Call('", rname, "')", sep = ""),
           "if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)",
           paste(Indent, "addFinalizer(ans, .finalizer, ",  sQuote(destroy["finalizer"]), ")", sep = ""),
           "",
#           "args = list(...)",
           paste("if(!missing(", fieldNames, ")) ans$", fieldNames, " = ", fieldNames, sep = ""),
           paste("na = pmatch(names(args), names(getSlots('", name, "')))", sep = ""),
           "if(any(is.na(na)))",
           paste("     ", "stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))"),
           "",
           "for(i in names(args))",
           '  do.call("$<-", list(ans, i, args[[i]]))',
           "",
           "ans"
          )



  structure(list(c = cdef,
                 r = RFunctionDefinition(id, txt, c(fieldNames, ".finalizer"), c(.finalizer = "FALSE"))),
            class = "ConstructorCode")
}

getDestructorNames =
function(type, name = getReferenceClassName(type))
{
  rname = paste("R_free_", name, sep = "")
  c(r = rname, finalizer = paste(rname, "_finalizer", sep = ""))
}

createStructFree =
  #
  # create a routine that can be registered as a R_CFinalizer_t
  # and another one that can be invoked via a .Call() to explicitly
  # free an RC++ExternalPtr, i.e. the object that has the @ref slot.
  #
  # These routines are named   R_free_<name>_finalizer and R_free_<name>
  #
function(type, name = type@name, free = "free", typeMap = list())
{
  decl = getNativeDeclaration(character(), type, character(), addSemiColon = FALSE, const = FALSE)  
  type = PointerType(type)
  ids = getDestructorNames(type)
#XXX
  deref = paste(convertRValue("", "val", type, character(), typeMap = typeMap), ";")
  finalizer = 
   c(externC, "void", 
     paste(ids["finalizer"], "(SEXP val)"),
     "{", 
     paste(decl, "* ans = NULL;"),
     paste("ans = (", decl, "* ) R_ExternalPtrAddr(val);"),  
     paste(' if(ans) { fprintf(stderr, "freeing', name, ' %p\\n", ans); free(ans);}'),
     "}")

  free = c(externC, "SEXP",
     paste(ids["r"], "(SEXP val)"), 
     "{", 
     paste(decl, "* ans = NULL;"),
     paste("ans = ", deref),
     "", 
     paste(' if(ans) { fprintf(stderr, "freeing', name, ' %p\\n", ans); free(ans);}'),    
     "return(ScalarLogical(ans ? TRUE : FALSE));",
     "}")    

  structure(list(finalizer = CRoutineDefinition(ids["finalizer"], finalizer, 1L),
                 free = CRoutineDefinition(ids["r"], free, 1L)),
            class = "FreeCode")
}  


  # 
  # usually called with either a name or a type.
  #
setGeneric("getRConstructorFunctionName",
           function(type, name = type@name)
             standardGeneric("getRConstructorFunctionName"))

setMethod("getRConstructorFunctionName",
           c("ANY", "character"),
           function(type, name = type@name)
              paste("new_", gsub(" ", "_", name), sep = "")  
          )



createCopyStruct =
  #
  #  Copy a C/C++ structure or a class to an R object.
  #  Copy the publically accessible fields into a
  #
  #  Expects an already resolved type.
  #
  #
  # The code
  # Make certain a class is defined in R to accept the result
  # Then assign each field to the slot
function(def,  className = def@name, isClass = FALSE, typeMap = list())
{
  if(is(def, "TypedefDefinition")) {
    if(missing(className))
      className = def@name
    decl = def@name
    def = def@type
  } else 
     decl = getNativeDeclaration(character(), def, character(), addSemiColon = FALSE, const = TRUE)

  
  if(startsWith("@", className))
    stop("Erroneous name for structure type")

   routineName = getStructCopyRoutineName(def, className)
   native = paste("SEXP",  routineName, "(", decl, "*value)")
   native = c(externC, native,
              "{",
               "SEXP r_ans = R_NilValue, klass;",
               paste('klass = MAKE_CLASS("', className, '");', sep = ""),
               'if(klass == R_NilValue) {',
               paste('   PROBLEM "Cannot find R class', className, '"'),
               "    ERROR;",
               "}",
               "\n",
               "PROTECT(klass);",
               "PROTECT(r_ans = NEW(klass));\n")
   els =
     sapply(names(def@fields),
           function(fieldName) {
             cv = convertValueToR(paste('value ->', fieldName), def@fields[[fieldName]]@type, c("value" = "value"), typeMap = typeMap)
             fieldName = fixupFieldName(fieldName)
             paste('PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("', fieldName, '"), ', cv, " ));", sep = "")
           })

  if(FALSE) {
   native = paste(c(native[1],
                        paste("\t", c(native[-1],
                                      els,
                                      paste("UNPROTECT(", length(def@fields) + 2, ");"),
                                      "",
                                      "return(r_ans);")),
                   "}"),
                 collapse = "\n")
 }

   native = c(native,
              els,
              paste("UNPROTECT(", length(def@fields) + 2, ");"),
              "",
              "return(r_ans);",
              "}")
  
  CRoutineDefinition(name = routineName, code = native, 1L)

#   native
}  


builtInClasses =  c("integer", "character", "numeric", "logical", "list", "raw")


defineStructClass =
  #
  #  for the given class
  #
  #XXX This looks very like what is going on in processTypes & getReferencedDataTypes
  # in generate.R
  #
function(def, classDefs, alreadyProcessed = character(),
         className = def@name, typeMap = list(),
         defaultBaseClass = "RC++StructReference")
{
   ans = list()
   pending = structure(list(def), names = className)

   while(length(pending) > 0) {

    def = pending[[1]]
    className = names(pending)[1]
    pending = pending[-1]

    if(is(def, "PendingType"))
      def = resolveType(def@INDEX, , classDefs)

    if(is(def, "ResolvedTypeReference"))
      def = resolveType(def@INDEX, , classDefs)    

    
    if(is(def, "TypedefDefinition")) {
      if(missing(className))
        className = def@name
      def = def@type
    }

    if(startsWith("@", className))
      stop("Erroneous name for structure type")

#XXXX
    if(is(def, "BuiltinPrimitiveType"))
       next 
    
    fields = character()
    prototype = character()


    if(is(def, "StructDefinition") && length(def@fields) > 0) {

      tu = get(".nodes", env = classDefs)
          # Make sure the fields and the types are fully resolved.
      def@fields = sapply(def@fields, forceResolve, tu)
      def@fields = sapply(def@fields, function(x, tu) { x@type = forceResolve(x@type, tu); x}, tu)

      moreTypes = sapply(def@fields, function(x, map) {
                                       if(is(x@type, "PointerType"))
                                         getRTypeName(x@type@type, map, TRUE)
                                       else 
                                         getRTypeName(x@type, map)
                                     }, typeMap)
      
      fieldTypes = sapply(def@fields, getRTypeName, typeMap)
      fields = paste("'", names(def@fields), "' = '", fieldTypes, "'", sep = "")
      representation =  paste(", representation(\n",  paste(" ", fields, collapse = ",\n"), ")")

      types = unique(moreTypes[is.na(match(moreTypes, c(className, names(pending), builtInClasses, alreadyProcessed, "ANY")))])      
      if(length(types))  {
             # Possibilities of 
         avail = sapply(types, exists, classDefs)
         if(any(!avail)) {
                # These may arise when we programmatically introduce a new type definition to the TU
                # from within R that is not part of the actual code. See the RGraphicsDevice for examples.
                # Can look for a class definition with these names via getClassDef()
                # and any we find, just ignore these. 
             notFound = types[!avail][sapply(types[!avail], function(x) is.null(getClassDef(x)))]
             if(length(notFound))
                 warning("not following types ", paste(notFound, collapse = ", "))
         }
         types = types[avail]
         # types = types[sapply(types, function(x) is.null(getClassDef))]
         pending[types] <- mget(types, classDefs)
      }

      prototype = sapply(def@fields, function(f) {
                                        if(is(f, "BuiltinPrimitiveType")) {
                                           coerceRValue("0", f, character(), typeMap = typeMap)
                                        } else
                                          NA
                                      })

      prototype = prototype[!is.na(prototype)]
    } else
       representation = character()

  
    refClassName = getReferenceClassName(def) 


    if(length(prototype))
       prototype = paste("list(", paste(backquote(names(prototype)), prototype, sep = " = ", collapse = ", " ), ")")
    
       # The Ptr class comes first in case it is referenced in the direct instance class
    tmp = structure(c(
                      paste("setClass('", refClassName, "', ",
                                      "contains = '", defaultBaseClass, "', prototype = list(classes = '", refClassName, "'))", sep = ""), ##XXX_ was className
                      paste("setClass('", className, "'",  representation,
                                      ", contains = 'CStruct'",  # or C++Struct  or take from a second element of defaultBaseClass and so let it be parameterized
                                      if(length(prototype))
                                          paste(", prototype =", prototype),
                                      ")", sep = "")), 

                     names = c(refClassName, className), #XXX check name of second element.
                     referencedClasses = names(fields),
                     class = "StructRClassDefinition")

    if(length(ans) == 0)
      ans[[className]] = tmp 
    else
      ans[[className]] = def 
  }

  rev(ans)  # so that the order for defining classes is correct
}  


defineExternalArray =
  #
  #
  #FIX  Merge with array.R if it is still useful
  #  Perhaps already done now in RAutoGenRunTime...
  #
  #
function(type, typeMap = list())  
{
  className = getReferenceClassName(type) 
  rName = paste("R_getListElement", className, sep = "_")

   # define the class
  def = paste("setClass('", className, "', contains = 'ExternalArray')", sep = "")
  code = c(#paste("setMethod('[[', '", className, "',", sep = ""),
             # "function(x, i, j, ...) {",
              "if(i < 1)",
              "\tstop('index must be 1 or more')",
              paste(".Call('", rName, "', x, as.integer(i))", sep = ""),
              #"}"
           )  
  access = RMethodDefinition("[[", className, code, c("x", "i", "j", "..."))

  el = type
  el@depth = as.integer(el@depth - 1)
  
  tagName =  paste('"',  className, '"', sep = "")
  routine =
    CRoutineDefinition(rName,
                       c("SEXP",
                         paste(rName, "(SEXP r_obj, SEXP r_i)"),
                         "{",
                         "int i;",
                         "SEXP r_ans;",
                         getNativeDeclaration("obj", type),
                         paste("obj = (", getNativeDeclaration("", type, addSemiColon = FALSE), ")",
                                derefNativeReference("r_obj", className, className), ";"),
                         "i = INTEGER(r_i)[0] - 1;",
                         paste("r_ans =", convertValueToR("obj[i]", el, character(), "", typeMap), ";"),
                         "return(r_ans);",
                         "}"), 2L)
  
  # [[<-
  
  list(def = def, access = access, routine = routine)
}  
