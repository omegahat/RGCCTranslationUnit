# This is for generating R and C code that implements a new C++ class
# that extends an existing C++ class (the parent) and implements the methods
# using R functions.
# We use multiple inheritance to provide the C++ mechanism to dispatch to the
# R functions. We allow the caller to specify the collection of parent classes
# and the methods of interest.

#
#
# Can call this in at least two different styles:
#  a)  pass all the base classes of a given C++ class
#  b)  create a new C++ class for each of the base classes (with each
#     extending RDerivedClass) with each new class extending the corresponding
#     previously created R mirror of the original classes. 
# Suppose C extends B extends A.  Then under a), we could have 
#   class R_C : public A, B, C and we lump all the methods for A, B, and C
#  into R_C.
# Under b), we create  class R_A : A, then class R_B : B, R_A, 
#
#
#  When setting methods for this hierarchy of classes, we need to specify 
#  which method is for which class.  Also need to be able to call up the 
#  original and R hierarchies.
# More thought needed for the exact semantics. 


# classDefs is the list resulting from calling resolveType() on each of the objects form getClassNodes().

setGeneric("createDerivedClass",
           function(className, tu, types = DefinitionContainer(tu), classNodes = getClassNodes(tu),
                     methods = NULL, classDefs = getClassDefs(tu, klasses = classNodes),
                     virtualOnly = TRUE, inheritanceStyle = "public",
                     typeMap = list(), RClassName = paste("R", className, sep = ""),
                     RNativeBaseClassName = c(native = "RDerivedClass", r = "RDerivedClass"),
                     signatures = list(),
                     dispatchInfo = data.frame(), ...) 
             standardGeneric("createDerivedClass")

          )


setMethod("createDerivedClass", c("character", "TUParser"),
           function(className, tu, types = DefinitionContainer(tu), classNodes = getClassNodes(tu),
                    methods = NULL, classDefs = getClassDefs(tu, klasses = classNodes), 
                    virtualOnly = TRUE, inheritanceStyle = "public", typeMap = list(),
                    RClassName = paste("R", className, sep = ""),
                    RNativeBaseClassName = c(native = "RDerivedClass", r = "RDerivedClass"),
                    signatures = list(), dispatchInfo = data.frame(), ...) 
            {


            # Fix up the RNativeBaseClassName to ensure that it is a character vector of length 2 with names native and r
   if(!missing(RNativeBaseClassName)) {
     if(length(RNativeBaseClassName) == 1)
       RNativeBaseClassName = c(native = RNativeBaseClassName, r = RNativeBaseClassName)
   
     if(length(names(RNativeBaseClassName)) == 0)
       names(RNativeBaseClassName) = c("native", "r")
     else
       names(RNativeBaseClassName) = tolower(names(RNativeBaseClassName))
   }

   if(length(names(className)) == 0)
       names(className) = rep("", length(className))   
   

      # if className is a vector of names, then generate code for each of these class names.
      # the name of the new class is taken from the names() of className
      #XXX need to look at RClassName

   if(!missing(RClassName))
     names(className) = RClassName

   i = names(className) == ""
   names(className)[i] = paste("R", className[i], sep = "")


      # Generate new derived classes for each of the different base classes
      # * NOT: use all of them as base classes *
   if(length(className) > 1 ) {

     ans = lapply(names(className),
                   function(id) {
                     def = resolveType(classNodes[[ className[id] ]], tu, types)
                     methods =
                         lapply(c(className[id], def@ancestorClasses),
                                 function(x) 
                                   resolveType(getClassMethods(classNodes[[x]]), tu, types))
                     createDerivedClass(def, id, methods = methods, RNativeBaseClassName = RNativeBaseClassName, classDefs = classDefs,
                                          signatures = signatures, dispatchInfo = dispatchInfo, ...)
                   })
     names(ans) = className
     return(ans)
   }

     # Single name case.
  node = classNodes[[className]]

  if(missing(methods)) 
    methods = getEntireClassMethods(node, classNodes)

  classDef = resolveType(classNodes[[className]], tu, types)
  createDerivedClass(classDef, methods = methods, classDefs = classDefs, virtualOnly = virtualOnly, inheritanceStyle = inheritanceStyle,
                      RClassName = names(className),  RNativeBaseClassName = RNativeBaseClassName, signatures = signatures, dispatchInfo = dispatchInfo, ...)
})


getEntireClassMethods =
function(node, classNodes, ancestors = getBaseClasses(node, recursive = TRUE),
         types = DefinitionContainer(getTUParser(node)), verbose = FALSE)
{
  classes = c(getNodeName(node), ancestors)

  tu = as(node, "TUParser")
  methods = lapply(classes,
                   function(x) {
                      if(verbose)
                        print(x)
                      resolveType(getClassMethods(classNodes[[x]]), tu, types)
                   })
  names(methods) = classes
  methods
}



setMethod("createDerivedClass",
          c("C++ClassDefinition", methods = "list"),
          function(className, tu, types = DefinitionContainer(tu), classNodes = getClassNodes(tu),
                   methods = NULL, classDefs = getClassDefs(tu, klasses = classNodes), 
                   virtualOnly = TRUE, inheritanceStyle = "public", typeMap = list(),
                   RClassName = paste("R", className, sep = ""),
                   RNativeBaseClassName = c(native = "RDerivedClass", r = "RDerivedClass"),
                   signatures = list(),
                   dispatchInfo = data.frame(), ...) {
            origCreateDerivedClass(className, RClassName, methods = methods, classDefs = classDefs, virtualOnly = virtualOnly,
                                   inheritanceStyle = inheritanceStyle, RClassName = RClassName,
                                    RNativeBaseClassName = RNativeBaseClassName, signatures = signatures, dispatchInfo = dispatchInfo, ...)
          })


getAllFields =
function(className, classDefs)
{
 defs =  classDefs[ c(className, classDefs[[className]]@ancestorClasses) ]
 x = unlist(lapply(defs, function(x) x@fields), recursive = FALSE)
 names(x) = sapply(x, function(x) x@name)
 x
}


origCreateDerivedClass =
# methods is either a list of methods for different classes
# or a simple list of methods, i.e. a single element of that type.
#
function(classDef,
         className = classDef@name,
         methods = classDef@methods,
         classDefs = NULL,
         baseClasses = classDef@name, #XXX - this is wrong -> baseClasses.
                  # Actually baseClasses is used as the direct base class when declaring the new C++ class.
         fields = getAllFields(baseClasses, classDefs),
         constructors = list(),
         inheritanceStyle = "public",
         RNativeBaseClassName = "RDerivedClass",
         typeMap = list(),
         lookupMethod = NA,
         virtualOnly = TRUE,
         allowConstructors = FALSE,
         RClassName = paste("R", className, sep = ""), 
         force = FALSE,
         useSeparateMethodFields = FALSE,
         verbose = FALSE,
         signatures = list(),
         dispatchInfo = data.frame(),
         ifdefIndividualMethods = "#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS",
         useRTypeNames = TRUE,
         forceCreate = FALSE  # Even if there are no virtual methods and no protected fields, return the generated code anyway!
        )
{
 if(verbose)
   print(className)

 indent = "   "
   # whether to add the ifdefIndividualMethods #ifdef .. #endif around
   # code that refers to the
 addIfDef = is.na(lookupMethod) || !lookupMethod

 if(is(classDef, "ResolvedTypeReference"))
   classDef = resolveType(classDef)

 if(length(methods) == 0 && !force)
   stop("do you really want to create a C++ class with no methods")

 methods = lapply(methods, function(x) structure(x[! sapply(x, inherits, c("ResolvedNativeClassEmptyConstructor", "ResolvedNativeClassCopyConstructor"))],
                                                  class = class(x)))
 
    # Declaration of the new class for C++
 txt = paste("class", className,
                  "  : ",  paste(inheritanceStyle, baseClasses, collapse = ", "),
                  if(length(RNativeBaseClassName["native"])) paste(", public ", RNativeBaseClassName["native"]), 
                  "{\n\n"
            )

   # If the caller gave us a collection of methods rather than a list of
   # collections of methods for each of the available classes, turn it into
   # a list of collection of methods with just one element which is for this class.
 if(length(methods) > 0 && inherits(methods[[1]], "ResolvedNativeClassMethod")) 
   methods = structure(list(methods), names = baseClasses[1])


   # Deal with only the methods for the classes of  interest.
   # This allows the caller to resolve the methods for all classes
   # and hand that entire collection in to this function.
 if(length(names(methods))) {
      # XXX is ancestorClasses needed here? and is it actually set in classDef by default?
      # Yes we do want the ancestorClasses here as we may have virtual methods within those
      #  that are not implemented in our direct base class but yet we want to be able to provide methods
      #  for those.
    k = c(classDef@name, classDef@ancestorClasses)
    if(all(!is.na(match(k, names(methods)))))
        methods = methods[ k ]
    else
      warning("potential problem with the names of the methods")
 }
 
   # remove destructors.
   # Do we need to chain destructors?, i.e call the one in the inherited class? Don't think so?
 if(length(methods))
   methods = lapply(methods, function(x) x [!sapply(x, is, "ResolvedNativeClassDestructor")])


 protectedMethods = unlist(lapply(methods, function(x) lapply(x, function(m) if(!m$virtual && m$access == "protected") m else NULL)), recursive = FALSE)
 protectedMethods = protectedMethods[! sapply(protectedMethods, is.null) ]
 
 if(virtualOnly) 
   methods = lapply(methods, function(x) if(length(x)) x [sapply(x, function(z) is(z, "ResolvedNativeClassConstructor") || z$virtual )] else list())


 if(length(methods) && length(methods[[1]]))
   constructors = methods[[1]][ sapply(methods[[1]], inherits, "ResolvedNativeClassConstructor") ]
 else
   constructors = list()

 if(length(constructors) == 0) {
           # Adapted from bindings.R
      constructors = list(
         structure(list(parameters = list("this" = list(INDEX = NA, id = "this", defaultValue = NA,
                                                        type = PointerType(classDefs[[baseClasses[1]]], name = as.character(NA), typeName = baseClasses[1]))),
                        returnType = new("voidType"),
                        INDEX = as.integer(NA),
                        name = "new", # className,
                        access = "public",
                        virtual = FALSE,
                        pure = FALSE
                       ),
                   class = c("ResolvedNativeClassConstructor", "ResolvedNativeClassMethod")))
}
 
     #XXX if there are any constructors, we may need to deal with those and then exit?
  if(length(methods) == 0)
      return(NULL) 
 
  #XXX need to go through the methods by name and discard all the ones that are clearly overridden by this
  #    the lowest class, i.e. the one from which were deriving.
  # This involves matching signatures, ignoring the type of the implicit this and not dealing
  # with static methods.  One approach is to look at the virtual methods in the first class.
  # Then keep a list of those and do the second class and eliminate duplicates and add them to that list.
  # then move onto the next class and so on, walking up the ancestor list.
  # We have to deal with multiple inheritance also.

 
 if(length(methods) > 1 && length(methods[[1]]) > 0)
        # XXX  do we need to do this if we filter out the methods using filterInheritedVirtualMethods()
    methods = removeOverriddenMethods(methods[[1]], methods[-1], names(methods))

 
     # A character vector of signatures of routines and with names that identify the
     # variable to which it corresponds in the C++ code when setting the methods individually.
  functionTable = unlist(lapply(methods, sapply, getMethodSig, asRType = useRTypeNames))
  names(functionTable) =  unlist(lapply(methods, sapply, getMethodSig, TRUE, asRType = FALSE))

 
  consVars = structure(sapply(constructors, getMethodSig), names = sapply(constructors, getMethodSig, TRUE))
  functionTable = c(functionTable,
                    consVars,
                    if(!any("new()" == consVars)) c( "_R_new_m" = "new()"),
                     c("_R_finalize_m" = "~()"))

 functionTypes = c(unlist(lapply(methods, sapply, function(x) {
                                                   if(useRTypeNames)
                                                     getRTypeName(x$returnType)
                                                   else
                                                     getNativeDeclaration("", x$returnType, character(), FALSE)
                                                  })),
                   rep("", length(consVars)), #??? for constructors just return ""
                    if(!any("new()" == consVars)) "",
                   "")

 
   # Code to get and set the methods.
 if(length(functionTable) && ( is.na(lookupMethod) || lookupMethod)) {
   RMethodAccessors = createRMethodFunctionAccessors(functionTable, className)
 } else
   RMethodAccessors = list(set = character(), get = character(), raccess = character(0))
 
 
     # Need constructors.
 #XXX if have signatures, then we have the overloading.
 tmp = unlist(lapply(methods, names))
 if(length(tmp)) {
   tt = table(tmp)
   polymorphic = names(tt) [ tt > 1]
 } else {
   tt = list()
   polymorphic = logical()
 }

   # fnNames is the names of the C++ variables that hold the
   # individual functions that implement the methods.
   # These are only used when we are using the individual method
   # approach rather than the collection/list of methods that we use
   # lookup on.
 fnNames = names(functionTable)

                      ##############################################
 
    # Generate the code for the methods
 hier = getClassHierarchyMatrix(classDefs)
 ambiguous = findMIAmbiguities(classDefs, methods)
 implementationCode =
               lapply(names(methods),
                 function(baseClass)  {
                   immediateBaseClass = classDef@name
                   if(length(classDef@baseClasses) > 1 && baseClass != classDef@name) {
                     # multiple inheritance
                     # so need to find out which is the immediate base class that contains baseClass
                     pos = rownames(hier)[ as.logical(hier[, baseClass]) ]
                     if(!(classDef@name %in% pos)) {
                       i = pos %in% classDef@baseClasses
                       if(sum(i) != 1)
                          stop("Very confused!")
                       immediateBaseClass = pos[i]                       
                     }
                     # cat(baseClass, " has immediate base class ", immediateBaseClass, "for", classDef@name, "\n")
                   }
                   createDerivedMethods(methods[[baseClass]], className, immediateBaseClass, polymorphic,
                                         typeMap = typeMap, lookupMethod, ambiguous = ambiguous[[classDef@name]],
                                           useRTypeNames = useRTypeNames)
               })

  callInheritedCode = lapply(methods[[1]], createInheritedMethodCode, className, names(methods)[[1]], typeMap = typeMap)

 

    # generate the declarations to go in the C++ class definition.
 decls = paste(sapply(unlist(implementationCode), function(x) x@declaration), ";")
 access = sapply(unlist(implementationCode), function(x) x@access)
    # group the methods by access - public, protected
 decls = tapply(decls, access, function(x) x)
 code = unlist(lapply(names(decls),
                function(acc) {
                  c(paste(acc, ":"),
                    as.character(decls[[acc]]))
                }))
 txt = c(txt, code)
 

 MethodListType = new("RDerivedMethodsList", className = className)
 makeConstructor =
  function(m) {
    m$name = "new"
    m$className = className
    m$virtual = FALSE  # kills of search for getInherited...
    m$parameters[["methods"]] = list(id = "methods", type = MethodListType, defaultValue = "NULL")    
    createMethodBinding(m, className)
  }

  Constructors = lapply(constructors, makeConstructor)
  nativeConstructors = lapply(constructors, createDerivedMethod, className, names(methods)[1], length(constructors) > 0, lookupMethod)

  txt = c(txt,
          "", "public:", "/* Constructors */",
          sapply(nativeConstructors, getDeclaration))
 
 methodsWithoutConstructors =
       lapply(methods,
               function(x) {
                 if(length(x))
                   x[sapply(x, function(m)  !inherits(m, "ResolvedNativeClassConstructor"))]
                 else
                   x
               })

  destructorMethodVar = "_R_finalize_m"

  txt = c(txt, "public:", paste(Indent, "virtual ~", className, "();"))

      # Generate the destructor which will free each of the R functions that have been registered
      # as methods.
  destructor = c(
                 paste(className, "::", "~", className, "()"),
                "{",
                "SEXP fun;",
                ifdefIndividualMethods,
                paste("   fun = ", destructorMethodVar, ";"),    
                "#endif",
                "if(!fun)",
                '   fun = lookupFunction("~()");',        
                "",
                "if(fun) {",
                " // call the R function with the reference to this",
                "SEXP e;",
                "PROTECT(e = allocVector(LANGSXP, 2));",
                "SETCAR(e, fun);",
                paste('SETCAR(CDR(e), R_createNativeReference(this,', dQuote(className), ",", dQuote(className), '));'),
                "callMethod(e);",
                "}",
                "",
                ifdefIndividualMethods,    
                "_R_methods_finalize();",
                "#endif",
                "};")



 
 
  if(is.na(lookupMethod) || !lookupMethod) {

     methodVarNames = gsub(".*\\.", "", unlist(sapply(code, names)))
        # Get rid of constructors
     methodVarNames = methodVarNames[ !(methodVarNames %in% c("", className)) ]
   
      # create the accessors and initializer
    txt = c(txt,
            "\n\n",
            if(is.na(lookupMethod) || !lookupMethod)
              c(ifdefIndividualMethods, ""),
            "void R_setMethods(SEXP newMethods) ;",
            "SEXP R_getMethods() ;",
            "",
            "protected:",
             c("void _R_methods_init() {",
               paste(indent, fnNames, "= NULL;"),  
             "}"),
             "",
             "void _R_methods_finalize() {",
             sapply(fnNames, function(id) c(paste(indent, "if(", id, ")"),
                                            paste(indent, "    R_ReleaseObject(", id, ");"))),
             "}",
                # declarations of the method variables
             if(is.na(lookupMethod) || !lookupMethod)
                paste("    SEXP", fnNames, ";"),
             if(is.na(lookupMethod) || !lookupMethod)
               "#endif",
            "\n"
            )
 } # end of if(!lookupMethod)


          ####################################

 
 tableMethods = c(
            "protected:", "",
            if(length(functionTable))
             c(paste("static const char * const methodNames[", length(functionTable), "];"),
               paste("static const char * const methodTypes[", length(functionTypes), "];")),   
            "",
            "static const char* const * getMethodNames(int *n) {",
              paste("\t*n = ", length(functionTable), ";"),
              "\treturn(methodNames);",
            "};",
            "",
            "static const char* const * getMethodTypes(int *n) {",
              paste("\t*n = ", length(functionTypes), ";"),
              "\treturn(methodTypes);",
            "};",           
            "\n\n\n",
            "public:", "",
             "static SEXP R_getMethodNames() {",
             paste("\treturn(convertStringArrayToR(methodNames, ", length(functionTable), "));"),
             "};",
             "static SEXP R_getMethodTypes() {",
             paste("\treturn(convertStringArrayToR(methodTypes, ", length(functionTypes), "));"),
             "};"
          )

 txt = c(txt,
          paste("\t", tableMethods)
         )
 
 tmp = paste(dQuote(c(functionTable)), collapse = ",\n\t\t")
 tmp[1] = paste("\t\t", tmp[1], sep = "")
 methodNamesArray = c(paste("const char * const", className, "::methodNames[] = {\n"),
                      tmp,                   
                      "\n\t};\n")

 tmp = paste(dQuote(c(functionTypes)), collapse = ",\n\t\t")
 tmp[1] = paste("\t\t", tmp[1], sep = "") 
 methodTypesArray = c(paste("const char * const", className, "::methodTypes[] = {\n"),
                      tmp,                   
                      "\n\t};\n")

 

 baseClassesRef = sapply(baseClasses, getReferenceClassName, isClass = TRUE)
 rsetClass = paste("setClass('", RClassName, "', ",
                   "contains = c(", paste("'", baseClassesRef, "'", sep = "", collapse = ", "), ", ", sQuote(RNativeBaseClassName["r"]), "), ",
                   "prototype = list(classes = c(", paste(sQuote(c(baseClassesRef, RNativeBaseClassName["r"])), collapse = ", "), ")))",
                  sep = "")

 id = paste("R_getNativeMethodIds", className, sep = "_")
 RmethodIdRoutine =
   CRoutineDefinition(id,
                      c('extern "C"',
                        "SEXP",
                        paste(id, "(SEXP getTypes)"),
                        "{",
                        if(length(functionTable)) 
                         c("SEXP ans;",
                           paste("  ans =", className, "::", "R_getMethodNames();"),
                           "",
                           "if(LOGICAL(getTypes)[0]) {",
                           "  PROTECT(ans);",
                           paste("    SET_NAMES(ans, ", className, "::", "R_getMethodTypes());"),
                           "  UNPROTECT(1);",
                           "}",
                           "    return(ans);")
                         else
                           "return(allocVector(STRSXP, 0));",
                        "}"), 1)



          # shared methods across the class.
 setSharedMethodsMethod = "set_R_sharedClassMethods"
 txt = c(txt,
         "",
         "protected:",
         "   static SEXP R_sharedMethods;",
         "",
         "public:",
         paste(" static  void",  setSharedMethodsMethod, "(SEXP methods) {"),
         "    if(R_sharedMethods && R_sharedMethods != R_NilValue)",
         "        R_ReleaseObject(R_sharedMethods);",
         "    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));",
         "  }",
         "",
         "  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} ",
         "",
         "  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}"
        )

  protectedMethods = lapply(protectedMethods, createProtectedMethodCode, className, typeMap, signatures, dispatchInfo)

  txt = c(txt, "public:",
            sapply(protectedMethods, function(x) x$classMethod@code), "", "")
 

  fieldAccessors = generateDerivedFieldAccessorCode(fields, className, typeMap)
  
  txt = c(txt, "", "public:", unlist(fieldAccessors$classMethods), "")
 
  sharedMethods = generateClassMethodsAccessors(className, setSharedMethodsMethod)


 if(forceCreate && !length(fields) && !length(callInheritedCode) && all(sapply(implementationCode, length) == 0))
   return(NULL)

 
        new("DerivedClassCode",  
                  className = className,
                  classDefinition = paste(c(unlist(txt), "\n};\n") , collapse = "\n"),
                  rsetClass = rsetClass,            #  R code to define the R reference class
                  rfieldAccessors = fieldAccessors, #
                  rconstructors = Constructors,
                  nativeClassConstructors = nativeConstructors,
                  methodAccessors = RMethodAccessors,
                  destructor = CRoutineDefinition(paste("~", className), destructor),
                  methodNamesArray = if(length(functionTable)) c(methodNamesArray, "\n\n",  methodTypesArray) else character(),
                  methodImplementation = structure(unlist(implementationCode, recursive = FALSE),
                                                    names = unlist(sapply(implementationCode, names))),
                  RmethodIdRoutine = RmethodIdRoutine,
                  functionNames = functionTable,
                  methodNames = list(signatures = functionTable, types = functionTypes),
                  ifdef = ifdefIndividualMethods,
                  callInherited = callInheritedCode,
                  sharedMethods = sharedMethods,
                  sharedMethodsDef = paste("SEXP", className, "::", "R_sharedMethods = NULL;"),
                  namesMethod = createDerivedNamesMethod(className, fields, TRUE),
                  protectedMethods = protectedMethods
                  )


# Used to be part of the returned structure.
#                  rsetMethods = rsetMethods,        #  C++ code to set the fields that represent the methods.
#                  rgetMethods = rgetMethods,        #  C++ code to get the fields that represent the methods.                            
#                 rsetMethodsFunction = rsetMethodsFun, # R function to set all the methods
#                  rgetMethodsFunction = rgetMethodsFun, # R function to get all the methods
                     # Do we want this.
#                  setMethods = setMethods,               # instance-specific C++ code (now in the classDefinition) to set the methods
}
setClass("DerivedClassCode",
          representation(className = "character",
                         classDefinition = "character",
                         rsetClass = "character",
                         rfieldAccessors = "list",
                         rconstructors = "list",
                         nativeClassConstructors = "list",
                         methodAccessors = "list",
                         destructor = "character",
                         methodNamesArray = "character",
                         methodImplementation = "character",
                         RmethodIdRoutine = "CRoutineDefinition",
                         functionNames = "character",
                         methodNames = "list",
                         ifdef = "character",
                         callInherited = "list",
                         sharedMethods = "list",  # with a set and a get 
                         sharedMethodsDef = "character",
                         namesMethod = "RMethodDefinition",
                         protectedMethods = "list"
          ))


generateClassMethodsAccessors =
function(className, methodName = "set_R_sharedClassMethods")
{
  rname = paste("R", className, methodName, sep = "_")
  tt = c('extern "C"',
         "SEXP",
         paste(rname, "(SEXP methods)"),
         "{",
         paste(className, "::", methodName, "(methods);"),
         "return(R_NilValue);",
         "}")
  set = CRoutineDefinition(rname, tt, 1)

  rname = paste("R", className, gsub("^set", "get", methodName), sep = "_")
  tt = c('extern "C"',
         "SEXP",
         paste(rname, "()"),
         "{",
         paste("return(", className, ":: get_R_sharedClassMethods());"),
         "}")
  
  get = CRoutineDefinition(rname, tt, 0)  
  
  list(set = set, get = get)
}


fieldSymbolAccessors =
  # Generate the list of fieldName = CallSymbolToGetValue, ...
function(fields, baseClasses) {
   paste("list(",
         paste(sQuote(names(fields)), sQuote(paste(paste("R_", baseClasses, "_get_", sep = ""), names(fields), sep = "")), sep = " = ", collapse = ", "),
         ")")
}
   

   
functionParameterInfo =
function(classMethods)
{
 e = sapply(classMethods,
            function(methods) {
                 # already have the implicit this in the count, so no need to add 1.
               paste(dQuote(names(methods)), sapply(methods, function(x) {
                                                                length(x$parameters)
                                                             }),
                     sep = " = ", collapse = ", ")
            })

 paste("c(", paste(e, collapse = ", "), ")")
}

###########################################################

createDerivedMethods =
function(methods, className, baseClass, polymorphic = character(), typeMap = list(), lookupMethod = FALSE, ambiguous = NULL,
         useRTypeNames = TRUE)
{
 ans = sapply(methods, createDerivedMethod, className, baseClass, polymorphic, typeMap, lookupMethod, ambiguous, useRTypeNames)
 names(ans) = sapply(methods, ResolvedNativeClassMethodDeclaration, FALSE, sep = "")
 ans
}


createDerivedMethod =
function(m, className, baseClass, polymorphic = character(), typeMap = list(),
         lookupMethod = NA, ambiguous = logical(),
         useRTypeNames = TRUE,
         ifdef = "#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS")
{
   indent = "   "

   hasThis = "this" %in% names(m$parameters)
   parms = m$parameters
   if(hasThis)
        parms = m$parameters[ - match("this", names(m$parameters)) ]


   isConstructor = inherits(m, "ResolvedNativeClassConstructor")
   methodName = getMethodSig(m, asRType = useRTypeNames)
   methodVarName = getMethodSig(m, TRUE, asRType = FALSE)
   if(isConstructor) {
     decl = paste(className, "(",
                           paste(sapply(names(parms),
                                        function(id)  getNativeDeclaration(id, parms[[ id ]]$type, addSemiColon = FALSE)), collapse = ", "),
                         if(length(parms) > 0) ",", "SEXP _r_methods)")
     txt = c(decl,
               paste(indent, ":", baseClass, "(", paste(names(parms), collapse = ", "), ")"),
               "{",
               "_R_methods_init();",
               " R_setMethods(_r_methods);",
               "",
                # now call the constructor function if it is there.
               derivedCodeBody(m, TRUE, className, baseClass, methodName, methodVarName, typeMap, m$name %in% names(ambiguous), lookupMethod, ifdef),
               "}", "","\n")

   } else {
      # add the callBaseMethod parameter
      # m$parms$callBaseMethod = list(id = "callBaseMethod", defaultValue = "0", type = new("intType"))

      rt = getNativeDeclaration("", m$returnType, addSemiColon = FALSE)
      if(is(m$returnType, "voidType"))
        rt = "void"
      
      v = c(rt,
            paste("  ", 
                  getName(m), # m$name
                  "(", paste(sapply(names(parms),
  	                           function(id)  getNativeDeclaration(id, m$parameters[[ id ]]$type, addSemiColon = FALSE)), collapse = ", "),
#                  paste(if(length(parms)) ",", "SEXP _r_super"),
                  ")"),
            "{"
           )

      txt = c(v, derivedCodeBody(m, FALSE, className, baseClass, methodName, methodVarName, typeMap, m$name %in% names(ambiguous), lookupMethod, ifdef), "}\n\n")
      decl = paste(txt[1:2], collapse = " ")      
    }

   ans = CRoutineDefinition(methodVarName, txt, className = className,
                              declaration = decl,
                               obj = new(if(isConstructor) "C++ConstructorDefinition" else "C++MethodDefinition"))
   ans@access = m$access

   ans
}  

derivedCodeBody =
function(m, isConstructor, className, baseClass, methodName, methodVarName,
         typeMap = list(), isAmbiguous = FALSE,
         lookupMethod = NA, ifdef = "#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS")
{
  indent = "   "
  
  v = getMethodFunCode(methodName, methodVarName, lookupMethod, ifdef)

  superCheck = character()
  if(FALSE && !isConstructor)
    superCheck = "LOGICAL(r_super)[0] ||"
 
  v = c(v, paste("if(", superCheck, "fun == NULL || fun == R_NilValue) {"))


  methodName = if(inherits(m, "ResolvedNativeOperatorClassMethod")) getOperatorSymbol(m$name, TRUE)
               else m$name
  
  if(isPureMethod(m)) {
      call = paste(indent, 'throw RUnimplementedDerivedMethod("', methodName, '", "', className, '");', sep = "")
  } else {
        if(!isConstructor)
           call = paste(if(isAmbiguous) m$className else baseClass,
                             "::", methodName, "(", paste(names(m$parameters)[-1] , collapse = ", "), ");")
        else
          call = character()
        if(!is(m$returnType, "voidType"))
           call = paste(indent, "return", call)
        else
           call = c(paste(indent, call), paste(indent, "return;"))
  }

  v = c(v, call, "}", "\n",
            paste("SEXP p, expr = allocVector(LANGSXP,", length(m$parameters) + 1, "), r_tmp;"),
            "PROTECT(expr); p = CDR(expr);",
            "SETCAR(expr, fun);",

            paste("PROTECT(r_tmp = R_createNativeReference(this,", dQuote(className), ",", dQuote(className), "));"),
            paste("SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);"),
            paste("UNPROTECT(1);"),
        
            sapply(names(m$parameters)[-1],
                    function(id)
                         c(paste("SETCAR(p, ", 
                               convertValueToR(id, m$parameters[[id]]$type, m$parameters, typeMap = typeMap),
                               "); p = CDR(p);" 
                              ))
            ))
      v = c(v, "SEXP ans = callMethod(expr);", "PROTECT(ans);")
      if(!is(m$returnType, "voidType")) {
         v = c(v, getNativeDeclaration("result", m$returnType),
                  convertRValue("result", "ans", m$returnType, typeMap = typeMap)) 

         ret = "return( result );"
      } else
        ret = "return;"
      v = c(v, "UNPROTECT(2);", ret)

    v
}

#######################################

getMethodSig =
  #
  #  If asVar is FALSE, we are getting the name to identify this method to the user
  #  e.g.  foo(int, int)
  #  If asRType is TRU, then this becomes foo(integer, integer)
  #
  #  If asVar == TRUE, then we are getting the name of a variable used to 
  #    identify this method/routine uniquely. We use the signature to create a 
  #    mangled name.
  #
  #  Combine/consolidate with NativeMethodName
  #
  #
function(def, asVar = FALSE, asRType = FALSE)
{
  if(inherits(def, "ResolvedNativeClassConstructor"))
    def$name = "new"
  else if(!asVar && inherits(def, "ResolvedNativeOperatorClassMethod"))
    def$name = getOperatorSymbol(def$name)

  ok = !sapply(def$parameters, inherits, "InheritedMethodIndicatorParameter")
  
  if(length(def$parameters[ok]) == 1)
    if(asVar)
      return(structure(paste("_R", def$name, "m", sep = "_")))
    else
      return(paste(def$name, "()", sep = ""))
  
    #XXX See show.R and consolidate
  parms = sapply(names(def$parameters[ok])[-1],
                        function(id) {
                           param = def$parameters[[id]]
                           if(asRType)
                              getRTypeName(param$type)
                           else {
                              if(is(param$type, "C++ReferenceType"))
                                 param$type@name #XXX const or not?
                              else
                                getNativeDeclaration("", param$type, addSemiColon = FALSE, const = FALSE)
                           }
                        })
  
  if(asVar) 
    parms = gsub("\\W*\\*\\W*", "_p", parms, perl = TRUE)

  ans = paste(def$name, if(asVar) "_" else "(", paste(parms, collapse = if(asVar) "_" else ", "), if(!asVar) ")", sep = "")

  if(asVar)
     paste("_R", ans, "m", sep = "_")
  else
    ans
}  

#######################################################


setMethodCode =
function(id, sig)
{
 c("if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) ",
   paste("         || (useClassMethods && (tmp = lookupFunction(", dQuote(sig), ", classMethods)) != NULL)) {"),
   paste("    if(this->", id, ")"),
   paste("       R_ReleaseObject(this->", id, ");"),
   "",
   paste("    R_PreserveObject(this->", id, "= Rf_duplicate(VECTOR_ELT(r_methods, i)));"),
   "}",
   "i++;", "")
}

getMethodCode =
function(sig, var)
{
 c(paste("if(this->", var, ")"),
   paste("   SET_VECTOR_ELT(r_ans, i, this->", var, ");"),
   paste("SET_STRING_ELT(r_names, i, mkChar(", dQuote(sig), "));"),         
   "i++;", "")
}

createRMethodFunctionAccessors =
function(methods, className)
{

  rname = paste(className, "R_setMethods", sep = "::")
  code = c("void",
    paste(rname, "(SEXP r_methods)"),
    "{",
    "",
    "if(Rf_length(r_methods) == 0)",
    "   return;",
    paste("if(Rf_length(r_methods) != ", length(methods), ") {"),
    paste('   PROBLEM "must have ', length(methods), ' for ', className, '"'),
    "      ERROR;",
    "    }",
    "int i = 0;",
    "SEXP tmp;",
    "SEXP classMethods = get_R_sharedMethods();",
    "bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);",
    "",    
     unlist(mapply(setMethodCode, names(methods), methods)),
    "}")
  set = CRoutineDefinition(rname, code, 1, obj = new("C++MethodDefinition"))
  set@className = className

  rname = paste(className, "R_getMethods", sep = "::")
  code = c("SEXP",
    paste(rname, "(void)"),
    "{",
    "int i = 0;",
    "SEXP r_ans, r_names;",
    "",
    paste("PROTECT(r_ans = NEW_LIST(", length(methods), "));"),
    paste("PROTECT(r_names = NEW_CHARACTER(", length(methods), "));"),    
    "",
    unlist(sapply(seq(along = methods), function(i) getMethodCode(methods[i], names(methods[i])))),
    "",
    "SET_NAMES(r_ans, r_names);",
    "UNPROTECT(2);",
    "return(r_ans);",
    "}")
  get = CRoutineDefinition(rname, code)  



  rname = paste("R", className, "getMethods", sep = "_")
  rnative = c('extern "C"',
              "SEXP",
              paste(rname, "(SEXP r_This, SEXP r_mergeClassMethods)"),
              "{",
              paste(className, "*", "This;"),
              paste("This = (", className, "*)", derefNativeReference("r_This", ,className), ";"),
                   # we are not using the r_mergeClassMethods at this point. Doing the merge in R.
              "return(This->R_getMethods());",
              "}")

  rnative = CRoutineDefinition(rname, rnative)
              
  # ??? Do we actually need this. The generic in RAutoGenRunTime:::derived.R does fine.
  rmethod = paste(c(paste("setMethod('getDerivedClassMethods', ", dQuote(className), ","),
                    "          function(obj, mergeClassMethods = TRUE, simplify = FALSE)",
                    paste("                  .Call('", rname, "', obj, as.logical(mergeClassMethods)))", sep = "")),
                  collapse = "\n")


  rname = paste("R", className, "setMethods", sep = "_")
  rsetnative = c('extern "C"',
              "SEXP",
              paste(rname, "(SEXP r_This, SEXP r_methods)"),
              "{",
              paste(className, "*", "This;"),
              paste("This = (", className, "*)", derefNativeReference("r_This", ,className), ";"),
              "This->R_setMethods(r_methods);",
              "return(R_NilValue);",
              "}")

  rsetnative = CRoutineDefinition(rname, rsetnative)
  
    
  raccess = list(rmethod = rmethod, rnative = rnative, rsetnative= rsetnative)

  
  list(set = set, get = get, raccess = raccess)
  
}

#################################

getMethodFunCode =
  #
  #  Returns code that finds the R function
  # corresponding to the C++ method given by methodName.
  #  This is either done by looking up the signature or
  #  by referencing the variable that is used to store the R function
  # depending on the style being chosen.
  # This can be left to a compile descision via 
function(methodName, methodVarName, lookupMethod, ifdef, varName = "fun")
{
  if(is.na(lookupMethod))
    indent = "  "
  else
    indent = character()
  
 c(paste("SEXP", varName, ";"),
   if(is.na(lookupMethod))
    ifdef,
   if(is.na(lookupMethod) || lookupMethod)
      paste(indent, varName, "=",  methodVarName,";"),
   if(is.na(lookupMethod))
    "#endif",
   paste("if(!", varName, ")"),
   if(is.na(lookupMethod) || !lookupMethod)
      paste(indent, varName, '= lookupFunction("', methodName, '");', sep = ""))
#   if(is.na(lookupMethod))
}  

#############################################################################

createInheritedMethodCode =
  # return both the C++ and R code
function(method, className, baseClassName, typeMap = list())
{
  if(!method$virtual)
    return(list(r = NULL, native = NULL))

  isVoid = is(method$returnType, "voidType")

#########
if(FALSE) {  
    # The real parameter names.
  paramNames = names(method$parameters[-1])

  method = addSuperToVirtual(method, type = new("InheritedMethodIndicator"), class = "InheritedMethodIndicatorParameter")

  setAns = if(!isVoid) "_ans =" else character()

  ccall = paste(method$name, "(", paste(paramNames, collapse = ", "),  ");")
  ccode = paste(method$name, "(",
                  paste(sapply(names(method$parameters)[-1], function(id) getNativeDeclaration(id, method$parameters[[id]]$type, character(), FALSE)), collapse = ", "),
                ")")
  returnType = getNativeDeclaration("", method$returnType, , FALSE)
  ccode = c(returnType,
            ccode,
            "{",
            if(!isVoid) c("", getNativeDeclaration("_ans", method$returnType)),
            "if(_super)",
            paste("   ", setAns, baseClassName, "::", ccall),
            "else",
            paste("   ", setAns, ccall),
           if(!isVoid) c("", "return(_ans);"),
           "}")

  ccode = CRoutineDefinition(method$name, ccode, NA,
                            paste(c(ccode[1:2], ";"), collapse = " "), className, obj = new("C++MethodDefinition"))

}
#########
  
 routineName = NativeMethodName(method$name, className, TRUE, method$parameters)
 rcode = createNativeCode(method$name, method, method$parameters, routineName, className, typeMap,
                              hasDotCopy = FALSE, outArgs = character(), outs = character(), omitArgs = character(),
                               isConstructor = FALSE, isVoidRoutine = isVoid, inheritedClassNames = baseClassName, "",
                               ifdef = character())
         
                             
  rcode
#  list(r = rcode, native = ccode)

}  

###############################################

generateDerivedFieldAccessorCode =
function(fields, className, typeMap)
{
   if(length(fields) == 0 || !any( w <- sapply(fields, function(x) "protected" %in% x@access)))
     return(list(rmethod = NULL, rnative = NULL, classMethods = NULL))

   fields = fields[w]      

   classMethods = lapply(fields, createFieldAccessMethod, className, typeMap)
   rnative = mapply(createRFieldAccessor, fields, classMethods, MoreArgs = list(className, typeMap), SIMPLIFY = FALSE)


   syms = paste("c(", paste(sQuote(names(rnative)), sQuote(sapply(rnative, function(x) x[["get"]]@name)), sep = " = ", collapse = ",\n\t\t"), ")")


   fieldAccessors =c(
                      paste("nativeSymbols <- ", syms),   #fieldSymbolAccessors(fields, className)),
                      paste("if(!(i %in% names(nativeSymbols)))"),
                      paste("  stop('no such field ', i, ' in ", className, "')"),    # callNextMethod()",
                      "",
                      "  .Call(nativeSymbols[[i]], x)"
                    )
    rmethod = RMethodDefinition("[[", className, fieldAccessors, c("x", "i", "j", "..."))


    list(rmethod = rmethod, rnative = rnative, classMethods = classMethods)
}

createShadowedFieldAccessMethod =
function(fields, methodNames, className, typeMap = list())
{

}


setGeneric("setVariableCode",
           function(type, var, from, typeMap = list())
           standardGeneric("setVariableCode"))

setMethod("setVariableCode", c(type = "ANY"),
           function(type, var, from, typeMap = list()) {
             paste(var, "=", from, ";")
           })

setMethod("setVariableCode", "ArrayType",
           function(type, var, from, typeMap = list()) {
             paste("memcpy(", var, ",", from, ", sizeof(", type@type@name, ") *", type@length, ");")
           })          

createFieldAccessMethod =
  #
  #  for a protected field, provide a public method to get its value.
  #  This is only used for derived classes and from within R so "safe".
  #
  #
function(field, className, typeMap = list())
{
  retType = getNativeDeclaration("", field@type,  , FALSE)
  rname = paste("__R", field@name, c("get", "set"), sep = "_")

#XXX Make a C++MethodDefinition

 setBody = setVariableCode(field@type, field@name, "gvalue", typeMap)
  
 tt = list(c(paste("const", retType),
              paste(rname[1], "() const { return(", field@name, ");}")),
           c("void",
             #XXX Fix for arrays!
              paste(rname[2], "(", retType, "gvalue", ") { ", setBody, "}")))

 structure(sapply(tt, paste, collapse = "\n"), names = rname)
}

createRFieldAccessor =
  #
  #  Create the proxies to call the protected field accessors
  #  which we created just above.
  #
function(field, methodNames, className, typeMap = list())
{
  decl = getNativeDeclaration("ans", field@type)
  rname = paste("R_", className, names(methodNames), sep = "_")

  isPointerType = is(field@type, "PointerType") || is(field@type, "ArrayType")

 get =
  c(externC,
   "SEXP",
    paste(rname[1], "(SEXP r_This)"),
    "{",
    paste(className, "* This;"),
    #XXX need an instance of className or no higher up the hierarchy.
    "CHECK_IS_PROTECTED(r_This)",
    paste("This = (", className, "*) R_getNativeReference(r_This, ", dQuote(className), ", NULL);"),
    paste(if(isPointerType) "const", decl),
    paste("ans = This->", names(methodNames)[1], "();"),
    "SEXP r_ans;",
    paste("r_ans = ", convertValueToR("ans", field@type, character(), typeMap = typeMap), ";"),
    "return(r_ans);",
    "}")

 set =
  c(externC,
    "SEXP",
    paste(rname[2], "(SEXP r_This, SEXP r_val)"),
    "{",
    paste(className, "* This;"),
    #XXX need an instance of className or no higher up the hierarchy.
    "CHECK_IS_PROTECTED(r_This)",
    paste("This = (", className, "*) R_getNativeReference(r_This, ", dQuote(className), ", NULL);"),
    getNativeDeclaration("val", field@type, character()),
    convertRValue("val", "r_val", field@type, character(), typeMap),
    paste(" This->", names(methodNames)[2], "(val);"),
    "return(R_NilValue);",
    "}")
  
  list(get = CRoutineDefinition(rname[1], get, 1),
       set = CRoutineDefinition(rname[2], set, 2))
}  


createDerivedNamesMethod =
  #
  # Compute the names of the fields in the C++ object.
  #  This handles the cases when the object does and does not have
  #  access to the protected fields.
  #
  #  className - a character
  #
  #  called from origCreateDerivedClass and also createClassBindings.
  #
function(className, fields, derived = FALSE)
{
  if(length(fields) == 0)
    return(character())

  access = sapply(fields, function(x) x@access)

  if(!any(access == "protected"))
    return(character())
  
  if(is(className, "C++ClassDefinition"))
    className = className@name


  # dQuote messes up on character(0) returning '""'
  public = both = "NULL"
  if(any(w <- access == "public"))
    public = paste("   c(", paste(dQuote(names(fields)[w]), collapse = ", "), ")")

  
  if(any(w.pr <- access %in% c("protected")))
    both = paste("   c(", paste(dQuote(c(names(fields)[w], names(fields)[w.pr])), collapse = ", "), ")")

  txt = c(if(derived && any(w.pr)) 
           c("if(.Call('R_isProtectedNativeObject', x))",
              both,
             "else"),
           public
          )
  
  ans = RMethodDefinition("[[", className, txt, c("x", "i", "j", "...", "exact"), c("", "", "", "", "TRUE"))

  ans
}

##############################################################################


createProtectedMethodCode =
function(m, className, typeMap, signature = list(), dispatchInfo = data.frame())
{
  signature =  if(is.list(signature) && m$name %in% names(signature))  signature[[m$name]] else NULL
  
   baseClass = m$class@name

    # resolve this here as if we don't we won't get a match to the original method.
    # After we change the type of the first parameter for our new method, we wouldn't match
    # the signature used to generate the dispatch information table.  For example,
    # if we have a class A and a method foo(A*), then when we convert the method in this
    # function call to foo(RA*) we wouldn't match the foo(A*).
    # So we lookup the number of dispatch arguments now and pass this to createMethodBinding.
    # When calling createMethodBinding outside of derived class generation code, we would
    # pass the dispatchInfo directly.
  numDispatchArgs = getParameterDispatchCount(m, dispatchInfo)

  
  params = sapply(m$parameters[-1], function(x) getNativeDeclaration(x$name, x$type, addSemiColon = FALSE))
   isVoid = is(m$returnType, "voidType")
   mcode = c(getNativeDeclaration("", m$returnType, , addSemiColon = FALSE),
             paste(m$name,"(", paste(params, collapse = ", "), ")"),
             "{",
             paste(if(!isVoid) "return(", baseClass, "::", m$name, "(", paste(names(m$parameters[-1]), collapse = ", "),  ")", if(!isVoid) ")", ";"),
             "}"
             )
   classMethod = `C++MethodDefinition`(m$name, mcode)
   
    # Change the type of the first parameter to be that of this newly created class.
   m$parameters[[1]]$type@name = className
     # Need to explicitly put a new object for the type as the other is still a
     # "ResolvedTypeReference"
   m$parameters[[1]]$type@type = new("C++ClassDefinition", name = className, baseClasses = baseClass, index = -1L)
   m$parameters[[1]]$type@typeName = className

   proxy = createMethodBinding(m, className, TRUE, typeMap = typeMap, force = TRUE, signature = signature, dispatchInfo = numDispatchArgs,
                                 useSignatureParameters = TRUE) #XXX

     # R code is in the proxy.
   list(classMethod = classMethod,
        proxy = proxy)
}  
