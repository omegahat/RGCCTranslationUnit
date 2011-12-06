# Deal with structures, not just pointers to them, as arguments
# and also generate get and set methods for them.


# Default constructor if none present. 
#  or perhaps, just anyway.

# What is vfld? virtual?
 # Yep.

# Get overloaded methods across classes,
#  perhaps simply if they are virtual methods.

# map 'long int' to long in typeName

#  R dispatch for polymorphic types.
#    collapse the collection of functions into a dispatch.
#   S4 approach in progress.
#   need access to the individual functions.

# Done.

# Put the C++ routines in an extern "C" block for the declarations.
#  [DONE]

# Add the this back if not a constructor
#    Done.
#
# Handle case where there are no parameters,
#    avoid the SEXP r_ by itself.
#    Done.

#
#  names for polymorphic routines. (Done - check)
#     these are the names of the C wrapper routines and are hidden from the end user.
#     collapsing the types into a string, if necessary.


#  more coercion of R values.
#     Leave to C where possible since we have to do run-time checks there anyway.

#
#  registration of the generated C routines.
#     contained in result.

#
#  drop the this in the constructors.  Done.
#


   # Example of low-level use.
if(FALSE) {
 library(RGCCTranslationUnit) ; my = parseTU("inst/examples/ABC.cpp.tu"); k = getClassNodes(my)
 z = createClassBindings(my[[ k$B ]], my, "B")
 invisible(sapply(z, function(x) cat(x[[2]])))  

 
 m = getClassMethods(my [[ k$B ]])
 s = resolveType(m$shift, my)
 z = createMethodBinding(s) # , "B", name = "shift")
 
 mm = lapply(m, resolveType, my)
 z = mapply(createMethodBinding, mm,  MoreArgs = list("B"))

 invisible(sapply(z, function(x) cat(x[[2]]))) 
}



createInterface =
function(decls, files = character(0), ..., classes = getClassNodes(decls, files))
{
  decls = findFirstFileDecl(decls)  

 # classes,
 # functions,
 # enumerations
 # registration information.

 # class hierarchy information
  #  put in C code for efficient comparison of tags and class info.
  
  ans = list()
# funcs = getFunctions(decls, files)


  if(length(classes))
    ans$classes = lapply(names(classes), function(id) createClassBindings(id, decls, classes[[id]], ...))

  routines = getRoutines(decls, files, ...)
  if(length(routines))
     ans$routines = lapply(routines, function(f) createMethodBinding(resolveType(f, decls), nodes = decls))
  
  class(ans) <- "GeneratedCode"

  ans
}  


isAbstractClass =
  # 
  #  Currently, given the resolved class methods (from getClassMethods
  #  followed by resolveType.
  #
  #  This is not sufficient to ensure a class is not abstract.
  #  It may not implement necessary methods.
  #
  #  We could find all the virtual methods in the ancestor classes
  #  and see if they are implemented in this or other ancestor classes.
  #
function(methods, nodes)
{
  any(
      sapply(methods,
             function(x) {
                 if("pure" %in% names(x))
                   return(x$pure)
                 
                 n = nodes[[x$INDEX]]
                 if("spec" %in% names(n)) {
                   if("pure" %in% unlist(n[["spec"]]))
                     return(TRUE)
                 }
                 "pure" %in% names(n)
             }))
}  


ImplicitConstructorNames = c("__base_ctor ", "__comp_ctor ",
                             "__base_ctor", "__comp_ctor", "__comp_dtor", "__deleting_dtor", "__base_dtor")


Merge.lists =
function(from, to)
{
  for(i in names(from)) {
    to[[i]] = c(to[[i]], from[[i]])
  }
  to
}  


createInterfaceInfo =
function(def, methods, otherMethods, fields = def@fields)
{
   # Check for static?
  acc = function(m) sapply(m, function(m) m$access)
  name = function(m) sapply(m, function(m) m$name)
  inh = structure(unlist(lapply(otherMethods[def@ancestorClasses], acc)),
                  names = unlist(lapply(otherMethods[def@ancestorClasses], name)))

  if(length(inh) == 0)
    inh = character()


  m = if(length(methods))
         own = c(structure(sapply(methods, function(x) x$access), names = names(methods)), inh)
      else
         inh

  fields = list(names = structure(names(fields), names = sapply(fields, function(x) x@definedIn)),
                access = structure(sapply(fields, function(x) x@access), names = names(fields)),
                nativeTypes = structure(sapply(fields, function(field) getNativeDeclaration("", field@type, , FALSE)), names = names(fields))
#                ,rTypes = structure(sapply(fields, getNativeDeclaration("", field@type, , FALSE)), names = names(fields)))
               )
  
 structure( list(name = def@name,
                  # use as.character to get rid of the names which are the INDEX id in the TU.
       baseClasses = as.character(def@baseClasses),
       ancestorClasses = as.character(def@ancestorClasses),
       fields = fields,
       methods = m),
           class = "InterfaceInfo")
  
#  ans = unique(unlist(c(own, inh)))
#  tmp = c(own, unlist(inh, recursive = FALSE))
#  x = unlist(tmp)
#  structure(x, names = if(length(x)) names(x) else character())
}

createClassBindings =
#
# Remove the need for def
# We can get rid of a lot of parameters here.
  #
  #  Don't really use def except for default parameters
  #  
  #
  # Deal with polymorphicNames and signatures when one or other or both is supplied.
  #
  #
#
function(def, 
         nodes, 
         className = rdef@name, 
         types = DefinitionContainer(nodes),
         polymorphicNames = unique(names(mm)[duplicated(names(mm))]),  # note that this is only within class.
         abstract = isAbstractClass(mm, nodes), 
         resolvedMethods = resolveType(getClassMethods(def), nodes, types),
         typeMap = list(),
         generateOverloaded = TRUE,
         ifdef = character(),
         helperInfo = NULL,
         access = "public", # , "protected",
         dynamicCast = list(),
         otherClassMethods = NULL,
         useClassNameMethod = FALSE,
         signatures = list(),  # A collection of the future generics across the entire code base that we are considering.
                               # So this tells us what functions are overloaded.
         useSignatureParameters = TRUE,         
         dispatchInfo = data.frame(),
         defaultBaseClass = if(useClassNameMethod) "RC++ReferenceUseName" else "RC++Reference",
         classDefs = NULL,
         ...)
{
  if(is(def, "C++ClassDefinition"))
    rdef = def
  else if(is(def, "GCC::Node::type_decl")) #??? or a record_type perhaps?
    rdef = resolveType(def, nodes)
  else
    stop("don't know how to work with ", class(def))
  
  if(missing(otherClassMethods)) {
      otherClassMethods = resolvedMethods[ - match(className, names(resolvedMethods)) ]
    resolvedMethods = resolvedMethods[[className]]
  }
  
    # if the user gave us a list of ResolvedClassMethods elements then we pick out the ones
    # for this class. Such a list comes from lapply(classNodes, function(i) resolvedType(getClassMethods(i), parser, type))
  if(!is(resolvedMethods, "ResolvedClassMethods") && class(resolvedMethods) == "list") {
    otherClassMethods = resolvedMethods
    resolvedMethods = otherClassMethods[[className]]
  }

      # If we are using the flat, general naming convention of foo rather than A_foo,
      # then go ahead and find all the methods for each name.
  if(missing(signatures) && length(otherClassMethods) && !useClassNameMethod)  {
     signatures = computeOverloadedSignatures(otherClassMethods)
  } else if(length(signatures) == 0)
     signatures = computeOverloadedSignatures(list(resolvedMethods))

  fieldDefs = getAccessibleFields(rdef, access = access, classDefs = classDefs)

  a = fields = createRFieldAccessors(rdef, className, typeMap = typeMap, operator = "[[", fields = fieldDefs)
  if(length(fields)) {
    tmp = createRFieldAccessors(rdef, className, get = FALSE, typeMap = typeMap, operator = "[[", fields = fieldDefs)
    fields = Merge.lists(tmp, fields)

    fields$generic = c(fields$generic, createNamesMethod(rdef, fieldDefs))
  }



  isVar = sapply(rdef@fields, is, "C++StaticClassField")
  if(any(isVar)) {
     vars = rdef@fields[isVar]

     #XXX Generate the bindings to this static variable.
      # If it is constant, we can pull it across and define it now.
      # If it is a variable, then we setup a dynamic variable or
      # at least generate the C code to be able to access and provide an
      # R function that invokes this.
     tmp = lapply(vars, generateStaticClassVariableCode, fields, rdef, className, typeMap)
  }


     # Get rid of the destructors & implicit constructors.
  mm = resolvedMethods
  mm = mm[ !sapply(mm, inherits, c("NativeClassDestructor", "ResolvedNativeClassDestructor"))]
  mm = mm[ !(names(mm) %in% ImplicitConstructorNames)]  

  
    # Get only the methods with the appropriate access status, i.e. public, protected, private.
  if(length(mm)) {
    ok = sapply(mm, function(x) x$access %in% access)
    mm = mm[ok]
  }

       # Figure out if this is an abstract/pure class.  If it is a logical, we know.
       # Otherwise,  if the user gave us a vector of class names identifying abstract classes,
       # look in that and also be sure.
  if(is.character(abstract))  
    abstract = className %in% abstract || isAbstractClass(mm, nodes)  


    # If this is an abstract class, we don't want to generate any R constructor functions
    # and for non-abstract classes, we add our own if there is no constructor.
  constructors = sapply(mm, inherits, c("NativeClassConstructor", "ResolvedNativeClassConstructor"))

  if(abstract) {
     mm = mm[ !constructors]
  } else  if(!any(constructors) || length(mm) == 0) {
          # add our own default constructor which takes no arguments.
          # Don't we need to call one of the actual ones??? We are only doing this if there is no explict constructor.
          # i.e. !any(constructors)
      mm[["new"]] =
         structure(list(parameters = list("this" = list(INDEX = rdef@index, id = "this", defaultValue = NA,
                                                        type = PointerType(rdef, name = as.character(NA), typeName = className))),
                        returnType = new("voidType"),
                        INDEX = as.integer(NA),
                        name = "new", # className,
                        access = "public",
                        virtual = FALSE,
                        pure = FALSE
                       ),
                   class = c("ResolvedNativeClassConstructor", "ResolvedNativeClassMethod"))
   }




    # Generate the bindings for each method, taking into account if it is overloaded.
    #XXX are we supposed to be doing this here? or across all classes.

    # Before we call createMethodBinding, we need to determine the number and names of the parameters.
    # Need to find them across all "related" classes, i.e. those classes which have shared virtual methods
    # in common. This is now supplied to us via signatures and dispatchInfo now.

    # we need to deal with the overloading at an earlier stage.
 
  ans = lapply(mm, function(meth) {
                     poly = meth$name %in% polymorphicNames  || meth$name %in% names(signatures)
                     createMethodBinding(meth, className, poly, ...,
                                         nodes = nodes, typeMap = typeMap, ifdef = ifdef,
                                         helperInfo = helperInfo,
                                         resolvedMethods = otherClassMethods,
                                         useClassNameMethod = useClassNameMethod,
                                         signature = signatures[[meth$name]],
                                         dispatchInfo = dispatchInfo,
                                         useSignatureParameters = useSignatureParameters)
                   })




  gen = list()
  if(generateOverloaded) {

             # For each overloaded method name, create generic and methods for that method.

       # Find the methods in this class which are overloaded
    w = character()
    if(length(signatures)) {
      w = unique(names(mm)[ names(mm) %in% names(signatures)])
    } else {
      counts = table(names(mm))      
      if(any(counts > 1)) 
         w = names(counts[counts > 1])
    }

    if(length(w)) {
          # Loop over the names of the methods that are overloaded
          # and generate the code for each collection of methods with the same names.
      gen = lapply(w, function(id) {
                            # om is the collection of methods with this name within this class
                            # funcs is the already generated code for those methods
                            #  funcs[[n]]$r is an RMethodDefinition (at present)
                         om = mm[ names(mm) == id ] # overloaded methods
                         funcs = ans[ names(ans) == id ]

                         createOverloadedDispatchCode(id, funcs, om, typeMap = typeMap,
                                                       signature = signatures[[id]], dispatchInfo = dispatchInfo,
                                                        useSignatureParameters = useSignatureParameters)
                      })
      names(gen) = w
    }

    i = names(ans) %in% w
    k = class(ans)
    ans[i] = lapply(ans[i], function(x) { x$r = character(); x})
    class(ans) = k
  }

    #??? Do we need to do the recursive step here? Yes if we are generating and using
    # this code in isolation from the general TU
  defs = getRClassDefinitions(def, recursive = TRUE, className = className,
                              defaultBaseClass = defaultBaseClass)


  if(!is.logical(dynamicCast) || dynamicCast)  {
    classes = getBaseClasses(def)
#??? is this in the def?    
    ancestors = getBaseClasses(def, recursive = TRUE)
    cast = list() # createDynamicCastCode(rdef, classes, ancestors, doCast = dynamicCast)  #XXX let dynamic cast contain more information.
  } else
    cast = list()

    # If want to return an empty binding, use 
    #  structure(list(), class = c("EmptyC++ClassBindings", "C++ClassBindings"))

  
  if(any(w <- sapply(resolvedMethods, inherits, "ResolvedNativeClassCopyConstructor"))) {
     fun = names(ans[[which(w)]]$registrationInfo$name)
     gen$duplicate = RMethodDefinition("duplicate", className, paste(".Call(", sQuote(fun), ", x)"), c("x", "...", ".finalizer"), c(.finalizer = "NA"))
  }
     
  
  structure(list(regular = ans, 
                 overloaded = gen,
                 classDefinitions = defs,
                 dynamicCast = cast,
                 fields = fields,
                 interfaceInfo = createInterfaceInfo(rdef, resolvedMethods, otherClassMethods, getAccessibleFields(rdef, c("public", "protected"), , classDefs)),
                 className = className
                 ),
             class = "C++ClassInterfaceBindings")
}



generateStaticClassVariableCode =
  # only called from createClassBindings  
function(var, fields, rdef, className, typeMap = list())
{
   cname = paste("R", className, "get", var@name, sep = "_")
   cvar = paste(rdef@name, var@name, sep = "::")
   get = c(externC, "SEXP", paste(cname, "()"), "{",
            paste( "return(", convertValueToR(cvar, var@type, parameters = character(), typeMap = typeMap), ");"), "}")
   cget = CRoutineDefinition(cname, code = get, nargs = 1L)

   csetName = sub("_get_","_set_", cname)
   cset = c(externC, "SEXP", paste(csetName, "(SEXP r_value)"), "{",
     getNativeDeclaration("value", var@type, character()),
     getNativeDeclaration("ans", var@type, character()),                      
     paste("ans =", cvar, ";"),
     convertRValue("value", "r_value", var@type, typeMap = typeMap),
     paste(cvar, "= value;"),
     paste( "return(", convertValueToR("ans", var@type, parameters = character(), typeMap = typeMap), ");"), "}")
   cset = CRoutineDefinition(csetName, code = cset, nargs = 1L)                    

   #fields$cRoutines[[cname]] <<- cget
   #fields$cRoutines[[csetName]] <<- cset                    


   rcode = c(
              "if(missing(value))",
              paste("   .Call(", dQuote(cget@name), ")"),
              "else",
              paste("   .Call(", dQuote(cset@name), ",", coerceRValue("value", var@type, typeMap = typeMap), ")")                         
             )
   
   rfun = RFunctionDefinition(gsub("::", "_", cname), rcode, "value")
   #fields$rFunctions[[rfun@name]] <<-  rfun
   list(cget = cget, cset = cset, raccess = rfun)
}



getRClassDefinitions =
  #
  # ? Get the definitions for R-level classes from the given TU node for a C++ class
  #  If recursive, chase the base classes down.
  #
  # Does this deal with multiple inheritance? i.e. when we have to go down two branches.
  #  specifically in the lapply(seq(along = r)....)
  #
function(node, recursive = FALSE, className = getNodeName(node), defaultBaseClass = "RC++Reference")
{
  if(recursive) {

    ans = list()

    ans[[className]] = getRClassDefinitions(node, FALSE, className, defaultBaseClass)

    r = getBaseClasses(node, getReferences = TRUE, recursive = FALSE)
     if(!inherits(r, "BaseClassesInfo"))
       return(ans)

     tmp = lapply( seq(along = r),
                   function(i) {
                      k = r[[i]]  # [["class"]]  was needed in the Perl parser but seems superfluous.
                      getRClassDefinitions(k, recursive = TRUE, names(r)[i], defaultBaseClass)
                   })
     tmp = unlist(tmp, recursive = FALSE)

     ans[names(tmp)] = tmp

     return(ans)
  }
  
  base = getBaseClasses(node, recursive = FALSE)

  if(length(base) == 0) {
     rbase = defaultBaseClass
     contains = character()
     ancestors = character()
   } else {
       #XXX deal with public, etc.
     rbase = getReferenceClassName(base, isClass = TRUE)
     ancestors = getBaseClasses(node, recursive = TRUE)
     names(ancestors) = sapply(ancestors, getReferenceClassName, isClass = TRUE)
   }

  if(length(ancestors))
      contains = paste("c(", paste('"',  names(ancestors), '"', sep = "", collapse = ", "), ")")     
  else
      contains = 'character()'

  newClassName = getReferenceClassName(className, isClass = TRUE)
  def = paste(
            'if(!isClass("', newClassName, '"))',
            '  setClass("', newClassName, '",',
            " contains = c(",
            paste('"', rbase, '"', sep = "", collapse = ", "),  # collapse is for multiple inheritance
            ")",
            ", prototype = list(classes = ",
             contains,
            ")", 
            ")", sep = "")
  names(def) = className
  
  structure(list(definition = def, baseClasses = base,  ancestors = ancestors, className = className),
            class = "ClassDefinition")
}  


createOverloadedDispatchCode =
  #
  # Generate R code to handle dispatching to the different 
  # overloaded C++ methods via their associated R wrappers.
  #
  # This version uses the S4 dispatch system.
  #
  # We may build a specialized dispatch mechanism to handle C++ dispatch.
  #
  #XXX This currently ignores default arguments on the C++ side.
  #  ?Still. I think we have that in hand now by determining the number of arguments needed to differentiate each call.
  #
  #
  #
  # wrap is intended as a logical value that would control whether we create a
  # method that calls the true function. Otherwise, we try to use the raw function
  # directly and get the names right!
  
function(id, funcs, defs, wrap = TRUE, typeMap = list(), signatures = NA, useMinSignature = TRUE,
           dispatchInfo = data.frame(), createGeneric = FALSE,
           useSignatureParameters = TRUE)
  #
  # id
  # funcs - output from createMethodBinding containing the function definitions
  #      each element an object of class C++MethodInterface
  # defs - C++ methods (resolved) for the given method/routine name
  #        that are to be combined for a generic and have setMethod
  # wrap - logical - ignored!
  # typeMap
{
   unbound = sapply(funcs, is, "UnboundMethod")
   if(all(unbound))
     return(list())

   funcs = funcs[!unbound]
   defs = defs[!unbound]

   
      # Determine the maximum number of arguments across all the different overloaded methods.
      # By calculating them from the registrationInfo, they should already be adjusted for constructors, etc.


   if(!(length(signatures) == 1 && is.vector(signatures) && is.na(signatures))) {
      if(is.list(signatures))
        sig = signatures[[id]]
      else if(is(signatures, "RGenericDefinition"))
         sig = signatures
#      else if(is.null(signatures))
      else
         stop("Don't know what we have here")
      gparmNames = sig@signature
      numRealArgs = length(gparmNames)
   } else {
      # work from the collection of methods we have and find the longest number of parameters.
      # and use their names.
      # We can try to find the common names if they exist by position.
    # numArgs =  max(sapply(funcs, function(x) x$registrationInfo$nargs))

    parmNames = lapply(defs, function(x) names(x$parameters))
    gparmNames = parmNames[[  which.max(sapply(parmNames, length)) ]]

    if(all(sapply(funcs, inherits, "ConstructorMethod")))
      gparmNames = gparmNames[-1]
    
    numRealArgs = length(gparmNames)
  }

   
  gparmNames = fixReservedWords(gparmNames)

      # Get the number of arguments we need to uniquely identify each method here.
      # Hopefully we have the dispatchInfo computed globally, i.e. across all routines and methods in the TU.
  if(!is.null(signatures) && length(dispatchInfo)) {
    numDispatchArgs = sapply(defs, getParameterDispatchCount, dispatchInfo)
  } else {
     numDispatchArgs = numUniqueArgs(defs)[,1] #, numRealArgs - for constructors this needs to be 1 more than we say
  }                                         # adjust signature table loop over parameters to drop first one.
   
     # Loop over the different definitions for the methods that are overloaded for this particular generic
     # and generate the R code to set an S4 method for this signature.
  genericFunDef = paste("function(", paste(gparmNames, collapse = ", "), ")") 
  methods = sapply(seq(along = defs),
                       function(i) {
                          generateOverloadedMethod(defs[[i]], genericFunDef, funcs[[i]], id, numRealArgs, gparmNames,
                                                   numDispatchArgs[i], typeMap, useMinSignature, useSignatureParameters)
                       })

     # C++ signature
     # names(els) <- sapply(defs, as, "character")
     # R signature   
   names(methods) <-  sapply(funcs, function(x) paste(x$r@dispatchSignature, collapse = ", "))
   
  if(createGeneric) 
    methods$generic = new("RGenericDefinition", name = id, signature = gparmNames)

        # a character vector containing the different elements.
  structure(methods, class = "OverloadedMethodRCode")
}


generateOverloadedMethod =
  # Was inlined into the methods = sapply() in the createOverloadedDispatchCode.
  #
  # def - the description of the C++ method   -
  # funDeclaration - the declaration of the R function used as the generic, i.e. the function(arg1, arg2, ...)
  # func - the code generated  for this actual method without the setMethod() stuff, i.e. the function itself (+ the C/C++ code).
  # id - the name of the function
  # numGenericArgs - the number of arguments in the generic.
  # gparmNames - additional parameter names such as .copy, .inherited...
  # typeMap - user specifiable conversion table.
function(def, funDeclaration, func, id, numGenericArgs, gparmNames,
         numDispatchArgs, typeMap = list(), useMinSignature = TRUE,
         useSignatureParameters = TRUE)
{
  params = def$parameters
                                        # Get rid of the implicit this in a constructor.
  if(inherits(def, "ResolvedNativeClassConstructor")) 
    params = params[-1]

                   # Get the types for the arguments in this method, and then
                   # pad out the remaining arguments with "missing".
  if(length(params))
    sig = sapply(params, function(p) getRTypeName(p$type, typeMap))
  else
    sig = character()


                # This adds the missings to the signatures. This fixes up problems when there are no arguments
                # and gives more specificity.
  sig = c(sig, rep("missing", max(0, numGenericArgs - length(params))))


                # XXX deal with default values in sig, either before or after this.
  hasDefaultValue = sapply(params, function(x) !is.na(x$defaultValue))


  if(!useMinSignature) 
    numDispatchArgs =  if(any(hasDefaultValue)) seq(along = hasDefaultValue)[hasDefaultValue][1] - 1 else length(params)
  if(numDispatchArgs > 0)
    sig = sig[seq(length = numDispatchArgs)]


           # Add the if(missing(args))  for the default values
           # that don't make it into the signature for the S4 method.
   if(any(hasDefaultValue)) {  #&& (start <- seq(along = hasDefaultValue)[hasDefaultValue][1]) > numDispatchArgs) {
       defaults = sapply(names(params[hasDefaultValue]),
                              function(id) {
                                c(paste("if(missing(", id, "))"),
                                   paste(id, "=", params[[id]]$defaultValue))
                              })
   } else
      defaults = character()
  
                  
                    # Now, create the code to define the method.
  signature = paste("c(", if(length(sig)) paste(paste("'", sig, "'", sep = ""), collapse = ", "), ")")
  extra = any(c(".inherited", ".copy") %in% gparmNames)
  hasParams = length(params) > 0


  if(is(func$r, "RMethodDefinition")) {
    if(length(defaults)) {
      func$r@code = c(defaults, func$r@code)
    }

#!!!!!!  We are returning here, so the rest of the code is ignored!
    if(all(gparmNames == func$r@signature))
      return(func$r)
  }

  
  funCode = if(is(func$r, "RMethodDefinition")) 
                as(func$r@code, "character")
            else
                as(func$r, "character")

  
  
  txt = c(paste("setMethod('", id, "', ", sep = ""),
          paste(signature, ","),
          paste("#", as(def, "character")),
          funDeclaration,
          "{",
          paste("#", paste(gparmNames[seq(along = params) ], names(params), sep = "  <-> ")),
          defaults,
#          paste("return(c(", dQuote(as(def, "character")), if(length(params)) ", ", paste(gparmNames[seq(along = params)], collapse = ", "), "))"),
          paste("..m = ", gsub("\\\n", "\\\n\\\t\\\t", funCode)),
          if(all(c(".missing", ".copy") %in% gparmNames)) {
            c("if(!missing(.copy) && !missing(.inherited) && c('.copy', '.inherited') %in% names(formals(..m)))",
              paste(Indent, "..m(", paste(gparmNames[ seq(along = params)], collapse = ", "), if(hasParams) ", ", ".copy = .copy, .inherited = .inherited)"))
          },
          if(".copy" %in% gparmNames) {                          
              c("if(!missing(.copy)  && '.copy' %in% names(formals(..m)))",
              paste(Indent, "..m(", paste(gparmNames[ seq(along = params)], collapse = ", "), if(hasParams) ", ", ".copy = .copy)"))
          },
          if(".inherited" %in% gparmNames) {                                              
               c("if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))",
               paste(Indent, "..m(", paste(gparmNames[ seq(along = params)], collapse = ", "), if(hasParams) ", ", ".inherited = .inherited)"))
          },
          if(extra) "else", 
          paste(if(extra) Indent, "..m(", paste(gparmNames[ seq(along = params)], collapse = ", "), ")"),
         "}",
         ")")

  
  paste(c("", rep(Indent, length(txt)-2), ""), txt, sep = "", collapse = "\n")
}  
  


# Need classes, methods, etc.
getExportNames =
function(obj)
{
 UseMethod("getExportNames")
}

"getExportNames.C++ClassInterfaceBindings" =
function(obj)
{
  list(functions = unique(unlist(sapply(obj$regular, function(x) if(inherits(x$r, "NamedFunctionDefinition")) names(x$r)))),
       classes = unique(names(obj$classDefinitions)),
       methods = unique(names(obj$overloaded))
      )
}  


NullBinding =
   structure(list(r = character(),
         native = character(),
         nativeDeclaration = character(),
         registrationInfo = list("", nargs = 0)),
         class = "NoopRoutine")


setGeneric("toRInitializer",
function(value, param, method = NULL)
{
  standardGeneric("toRInitializer")
})


setMethod("toRInitializer", "ANY",
           function(value, param, method = NULL)
              NA
            )


setMethod("toRInitializer", "character",
function(value, param, method = NULL)
{
  dQuote(value)
})

setMethod("toRInitializer", c("integer", "list"),
function(value, param, method = NULL)
{
    toRInitializer(value, param$type, method)
})


setMethod("toRInitializer", c("integer", "PointerType"),
function(value, param, method = NULL)
{
    if(value == 0) {
      CNULLValue
    } else
       value
})

setMethod("toRInitializer", "InitializerValue",
function(value, param, method = NULL)
{
  #XXX
  warning("Need to fix the default/initial value from a InitializerValue object")
  "fix this default value"
#  NA
})

setMethod("toRInitializer", "VariableDefaultValue",
function(value, param, method = NULL)
{
  value$name
})

ReservedWords = c("function", "next")  # for and if are reseverd in C/C++ also so not an issue.

fixReservedWords =
function(args)
{
   i = match(args, ReservedWords)
   if(any(!is.na(i)))
    args[!is.na(i)] =  paste(args[!is.na(i)], "_", sep = "")

   args
 }


createMethodBinding = createRoutineBinding =
  #
  # m - an instance of what class?
  #  NativeClassMethod, NativeClassConstructor which are constructed in getClassMethods() in findDecl.R
  #
  # To work for regular routines, we need a similar structure.
  # From a function_decl or function_type node in the TU, we need
  #
  #
  # See makeRoutineDescription()
  #
  # library(RGCCTranslationUnit); p = parseTU("inst/examples/structs.cpp.tu"); dd = getAllDeclarations(p, "structs")
  # f = makeRoutineDescription( p [[ dd$createA ]], "createA")
  #
  # f = resolveType(f, p)
  # createMethodBinding(f)
  #
function(m,
         className = if(is(m, "ResolvedNativeClassMethod")) m$className else character(),
         isPolymorphic = FALSE,
         addRFunctionNames = !isPolymorphic && length(inheritedClassNames) == 0,
         name = m$name,
         nodes = list(),
         typeMap = list(),
         paramStyle = if("paramStyle" %in% names(m)) m$paramStyle else rep(NA, length(m$parameters)),
         defaultRValues = list(),
         ifdef = character(),
         helperInfo = NULL,
         resolvedMethods = list(),
         extern = length(className) > 0,
         useClassNameMethod = FALSE,
         force = FALSE,
         signature = NULL,
         dispatchInfo = data.frame(),
         useSignatureParameters = TRUE
         )
{

  if(class(m) %in% c("list", "ResolvedRoutineList") &&
       all(sapply(m, inherits, c("ResolvedNativeRoutine", "StaticMethod")))) { #XXX need to catch more types here.
    k = sys.call()
      # loop over the elements of this list and call this function on each and return the results.
    ans = lapply(m, function(el) {
                        k[[2]] = el
 #                       eval(k, env = sys.frame(-3))
                        eval.parent(k, 3)
                     })

    class(ans) = "ResolvedRoutineList" 
    return(ans)
  }
  
       # Ignore _destructors_ as we do not call them from R.
   if(any(inherits(m, c("NativeClassDestructor", "ResolvedNativeClassDestructor"))))
     return(NullBinding)

        # only deal with routines/methods that are within our specified accessibility
   if(!force && length(m$access) && m$access %in% c("protected", "private")) {
     # warning("protected method ", m$name, " in ", className)
     return(NullBinding)
   }

      # if this is a C++ method, then see if there is a virtual method definition
      # in one of the ancestor classes. If so, then we want to add a mechanism to call
      # each of the inherited methods.
   addInherited = FALSE
   inheritedClassNames = character()
   if(is(m, "ResolvedNativeClassMethod")) {
      tmp = getInheritedMethod(m, resolvedMethods, classNames = TRUE)
      addInherited = length(tmp) > 0
      inheritedClassNames = names(tmp)
   } 
   
     # Are we dealing with a constructor or regular method.
     # For a constructor, the this in the parameters is artificial and should be omitted from the
     # interface routine & function.
   isConstructor = inherits(m, "ResolvedNativeClassConstructor")
          # if there are any parameters. This could be 0 if this a constructor with no arguments
          # or a routine with no arguments or a static method in a class.
          # For a method, we will have the this.
   hasParameters = length(m$parameters) 

      # Discard the this parameter for each of these methods.
      # Constructors don't have these as regular arguments.
      # And for regular methods, we will explicitly add it.
   if(isConstructor) {
      m$parameters = m$parameters[-1]
      # Because of lazy evaluation, this will happen automatically and will be an error here.
      # paramStyle = paramStyle[-1]
   }

       # An object to return if we cannot bind to this.
   unbound = structure(list(name = m$name, 
                            registrationInfo = list(name= m$name, nargs = 0)), class = "UnboundMethod")   


                          # Check that all the types in the inputs and outputs are legitimate, top-level types.
                          # If they are defined in nested scopes, then we can't refer to them.
   if(!checkScope(m$returnType)) {  # do we need to include the namespace.
      warning("method ", m$name, " in ", className, " has a return type ", as(m$returnType, "character"), "in a 'private'/nested scope. Ignoring method")
      return(unbound)      
   }
    
   for(p in m$parameters) {
      if(!checkScope(p$type)) {
          warning("method ", m$name, " has a parameter type in a 'private'/nested scope. Ignoring method")
	  return(unbound)
       }
   }

              #  Remove the const from the "this" parameter.  Why?
              #XXX  Shouldn't we just  declare the This as const?
   if(length(m$parameters) > 0 && length(className) && className != ""
        && !is.na((idx <- match("const", m$parameters[[1]]$type@qualifiers))))
     m$parameters[[1]]$type@qualifiers = m$parameters[[1]]$type@qualifiers[-idx]
     

   omitArgs = integer()

   #XXX merge with .copy
   if(is(m$returnType, "ContainerDefinition") ||
         (is(m$returnType, "C++ReferenceType") )) # && is(m$returnType@type, "ContainerDefinition")))
   {
         #XXX check this does not conflict with an existing parameter name
      m$parameters[["copy"]] = structure(list(id = "copy", defaultValue = "2", type = new("intType"), class = "CopyArgument"))
      omitArgs = "copy"
   }


   if(any(is.na(paramStyle))) {
     w = is.na(paramStyle)
     paramStyle[w] = sapply(m$parameters[w],
                              function(x) {
                                 if(!is(x$type, "UserDataType") && is(x$type, "PointerType") &&  !("const" %in% x$type@type@qualifiers))
                                   "inout"
                                 else
                                   "in"
                               })

   }

   if(inherits(m, "ResolvedNativeClassMethod"))
     paramStyle[1] = "in"

   if(inherits(signature, "GenericDefinitionList"))  {
     signature = signature[[m$name]]
     isPolymorphic = !is.null(signature)
   }
  
    # out and inout parameters.
   outArgs = (paramStyle %in% c("inout", "out")) 
   names(outArgs) = names(m$parameters)
  
   outs = which(outArgs) # grep("(inout|out)", paramStyle) # out or inout
   
         # Fix up names to protect against parameters that are
         # reserved R words like next, function, ...
   names(m$parameters) = fixReservedWords(names(m$parameters))

         # change the names starting with _ or a number to have a r prefix.
   nums = grep("^[0-9]+$", names(m$parameters))
   if(length(nums) > 0) 
       names(m$parameters)[nums] <- paste("r", names(m$parameters)[nums], sep = "")

   nums = grep("^_+", names(m$parameters))
   if(length(nums) > 0) 
       names(m$parameters)[nums] <- paste("x", names(m$parameters)[nums], sep = "")
   

         # Get the signature for the R function, including default values.
         # XXX need to handle more exotic (i.e. non-primitive) default values.
         # This is a subset of m$parameters corresponding the the in and inout parameters.
   params = sapply(seq(along = m$parameters),    #names(m$parameters)[!outArgs],  #XXXX note the !outArgs.
                   function(i) {
                       id = names(m$parameters)[i]
                       v = m$parameters[[id]]
                       
                       if(id %in% names(defaultRValues))
                         v$defaultValue = defaultRValues[[id]]
                       else if(length(v$defaultValue)) {# && !is.na(v$defaultValue))  # inherits(v$defaultValue, c("InitializerValue")))
                         v$defaultValue = toRInitializer(v$defaultValue, v, m)
                       } 

                       m$parameters[[i]]$defaultValue <<- v$defaultValue
                       
                       if(outArgs[i]) {
                           # call the constructor for this reference type.
                           # Must be a pointer type (or perhaps a reference type).
                           #XXX must be a PointerType for the @typeName to make sense.
                         v$defaultValue = paste(getRConstructorFunctionName(v$type@type, v$type@typeName), "()", sep = "")
                       }
                       
                       if(length(grep("^_+", id)))
                         id = paste("r", id, sep = "")

                       if(length(v$defaultValue) && !is.na(v$defaultValue)) {
                          paste(id, "=", as(v$defaultValue, "character"))
                       } else
                          id
                  })
   names(params) = names(m$parameters)


   hasDotCopy = any(outArgs)  #XXX should include inout args also.

      # add a .copy argument if there are any out arguments.  
      #  could put the names on the elements
      #params[".copy"]  = paste(".copy = rep(FALSE, ", sum(outArgs), ")")
    if(hasDotCopy)  {
      params[".copy"]  = paste(".copy = c(", paste(paste("'", names(params)[outArgs], "'", sep = ""), "FALSE", sep = " = ", collapse = ", "), ")")

      #XXX generate code to validate this argument.
      # i.e.  ensure correct length, entries for each out parameter and is NA, TRUE or FALSE.
      # call a function at run-time or inline the code here?
    }

#   if(addInherited)
#     params[".inherited"] = ".inherited = logical()"
   
          # If the name has 2 or more elements, then the R name is taken to be the second one.
   rfuncName = if(length(name) > 1) name[2] else name
   if(isConstructor)
      rfuncName = paste(getTUOption("constructorNamePrefix", ""), className, sep = "")  # className #XXX use newClassName for constructor name

   if(length(className) > 0 && useClassNameMethod && !isConstructor) 
       rfuncName = paste(className, rfuncName, sep = "_")


  
     # Compute the name of the C wrapper routine, taking into account multiple polymorphic methods for this method.
   routine = NativeMethodName(name, className, isPolymorphic, m$parameters)

   isVoidRoutine = !isConstructor && is(m$returnType, "voidType")

    # Use the name in the method object, or if it is empty use the specified name.
    # This allows the caller to specify the name of the wrapper routine via the name argument,
    # but to leave the internal call to the real routine/method as defined in the C code.
   routineName = if(length(m$name) && m$name != "")  m$name else name   

  
   indent = ""


  
   funcDef = createRCode(m, rfuncName, routine, typeMap,
                          hasDotCopy, addInherited, isVoidRoutine, inheritedClassNames, outArgs = outArgs,
                           signature = if(useSignatureParameters) signature else NULL)

   if(isConstructor)  {
     m$returnType = new("PointerType", typeName = className)
     m$returnType@type = new("C++ClassDefinition", name = className, index = -1L)
   }
   
   native = createNativeCode(routineName, m, params, routine, className,
                              typeMap, hasDotCopy, outArgs, outs, omitArgs,
                               isConstructor, isVoidRoutine, inheritedClassNames,
                                extern, ifdef, nodes, paramStyle, helperInfo = helperInfo)      

   

   if(!is.null(signature)) {

     if(!is.numeric(dispatchInfo)) 
       dispatchInfo = getParameterDispatchCount(m, dispatchInfo)

     if(is.na(dispatchInfo))
       dispatchInfo = length(m$parameters)

     genericSig =  if(is.character(signature))
                       signature
                    else
                       signature@signature

     if(dispatchInfo > 0) {
          # do we want the minimum # of elements in the signature or the full number up to the
          # number up to where the defaults start.
       if(FALSE) {
        len = length(funcDef@signature) - dispatchInfo - ("..." %in% funcDef@signature)
        missings = rep("missing", length = len)
        sig = c(sapply(m$parameters[seq(1, length = dispatchInfo)], function(x) getRTypeName(x$type)), missings)
      } else {

        i = sapply(m$parameters, function(x) is.na(x$defaultValue))

        if(all(i))
          n = length(m$parameters)
        else
          n = which((!i)[1])
            
        len = max(dispatchInfo, n)
        sig = c(sapply(m$parameters[seq(1, length = len)], function(x) getRTypeName(x$type))) #, missings)
      }
     } else
        sig = if(length(genericSig)) 'missing'  else character()


     funcDef@dispatchSignature = sig
     funcDef@signature =  genericSig

     funcDef
   }

 
  
   els = list(r = funcDef,
              native = native$code,
              nativeDeclaration = native$cdecl,
              registrationInfo = list(name = structure(routineName, names = routine),
                                           nargs = native$code@nargs), # length(m$parameters) + hasDotCopy + addInherited
              ifdef = ifdef)


   if(is(m, "ResolvedNativeOperatorClassMethod") && m$name == "subs")
      els$operatorMethods = createSubsOperatorAccessors(m, typeMap = typeMap)   
  
   if(addInherited) 
      els$methodNames = paste(inheritedClassNames, m$name, sep = "_")

   klass = ifelse(length(className) && nchar(className), 'C++MethodInterface', 'C++RoutineInterface')

   if(isConstructor)
      klass = c(klass, "ConstructorMethod")
  
   structure(els, class = klass)
}


createSubsOperatorAccessors =
function(m, typeMap = list())
{
 coerceIndex = coerceRValue("index", m$parameters[[2]]$type, typeMap = typeMap)
 singleCode = paste("sapply(i, function(index) subs(x,", coerceIndex, "))")

 doubleCode = paste("subs(x,", coerceRValue("i", m$parameters[[2]]$type, typeMap = typeMap), "[1])")
 list("[[" = RDoubleBracketDefinition(m$className, doubleCode),
      "[" = RSingleBracketDefinition(m$className, singleCode))
}

createNativeCode =
  #
  # routineName = character, method name to invoke
  # m = method definition , e.g. ResolvedNativeClassMethod
  # params = character vector giving the names of the parameters
  # routine = character vector, name of actual routine we are generating which is prefixed with R_ and has the argument types.
  # ?? same as routineName
  # className
  # typeMap
  # hasDotCopy = logical indicating if .copy parameter
  # outArgs = names of outArgs
  # outs = names of the out parameters
  #??? why both outArgs and outs?
  # omitArgs - character vector giving parameters to throw away.
  # isConstructor - logical
  # isVoidRoutine - logical
  # inheritedClassNames - character vector of ancestor classes
  #   ?? what for
  # extern
function(routineName, m, params, routine, className, typeMap, hasDotCopy, outArgs, outs, omitArgs,
         isConstructor, isVoidRoutine, inheritedClassNames, extern, ifdef, nodes = NULL,
         paramStyle = character(), helperInfo = NULL)
{
   addInherited = length(inheritedClassNames) > 0
  
   parmNames = names(params) # m$parameters
   if(length(parmNames) && parmNames[1] == "this") {
     parmNames[1] = "This"
     i = match("this", names(m$parameters))
     if(!is.na(i))
       names(m$parameters)[i] = "This"
   }

   parmNames = gsub("\\.", "_", parmNames)

   native = c(externC, "SEXP")


       # Create the declaration for the routine using parameter names with a "r_" prefixed for all of them.
       #NOTE: we could remove the _copy argument if hasDotCopy == TRUE as we currently do the processing in R code.
       # XXX Is this still true?
   cdecl <- paste(routine, "(",  if(length(parmNames)) paste("SEXP", paste("r_", parmNames, sep = ""), collapse = ", "),
                                 if(hasDotCopy) ", SEXP r_resultLength",
                                 if(addInherited) ", SEXP r__inherited",
                            ")", sep = "")
   native = c(native, cdecl, "{")
   cdecl <- paste("SEXP", cdecl, sep = " ")

   indent = "\t"
   native = c(native, "",
              paste(indent, "SEXP r_ans = R_NilValue;", sep = ""),
              if(hasDotCopy)
                    paste(indent, "SEXP r_names = R_NilValue;", sep = "")
# ,            if(!isConstructor)  paste(indent, className, "* This;")
             )

   if(hasDotCopy)
      native = c(native, paste(indent, "int r_ctr = 0;", sep = ""))


   outArgReferencePrefix = "_p_"
   
     # Get the declarations for the out arguments.
   if(length(outArgs)) {
      args = m$parameters[outArgs]
      outDecls = sapply(names(m$parameters[outArgs]),
                         function(id) {
                               #XXX need to know we have a pointer here.
                               # Create <id> and _p_<id>, e.g. a and _p_a
                           paste(indent, getNativeDeclaration(id, m$parameters[[id]]$type@type, addSemiColon = FALSE, const = FALSE),
                                  ", *", paste(outArgReferencePrefix, id, sep = ""), " = &", id, ";", collapse = "", sep = "")
                         }
                       )
      native = c(native, outDecls)
   }
   
    # Declarations for the the regular C values corresponding to the R object parameters.
   if(length(outArgs) == 0)
     outArgs = rep(FALSE, length(m$parameters))
   if(length(params)) {
    native = c(native, paste(indent,
                                   # loop over the indices so we can index parmNames and m$parameters
                                   # by index since they don't have the same names necessarily since
                                   # we may have changed the this to the This!
                             sapply(seq(along = m$parameters)[!outArgs],     #names(m$parameters)[!outArgs],
                                 function(i) {
                                    if(parmNames[i] == "_copy")
                                      return(character())

                                     type = m$parameters[[i]]$type
                                     if(is(type, "C++ReferenceType")) {
                                         type = PointerType(type@type) # const issues?
                                     }

                                      getNativeDeclaration(parmNames[i], type, const = NA) # XXX FALSE)
                                 }),  sep = ""))
    }


  
   argNames = names(m$parameters)


   

   if(length(m$parameters))
     refs = sapply(m$parameters, function(x) {
                                              if(is(x$type, "ResolvedTypeReference"))
                                                x$type = resolveType(x$type)
                                              is(x$type, "C++ReferenceType")
                                            })
   else
      refs = logical()
      
   if(any(refs))
     argNames[refs] = paste("*", argNames[refs])

   
   if(length(omitArgs)) {
     idx = match(omitArgs, argNames)
     argNames = argNames[ - idx]
     outArgs = outArgs[-idx]
   }

   if(length(argNames) && length(outArgs)) 
       argNames[outArgs] = paste(outArgReferencePrefix, argNames[outArgs], sep = "")


     # Determine how to call the C/C++ method, i.e. with obj->foo(), Class::foo, or simply foo()
     # and determine the arguments to this call.
  testProtected = character()
  if(inherits(m, "ResolvedNativeClassMethod")) {
   if(isConstructor) {
     if(length(m$parameters))
       cargs = paste(argNames, collapse = ", ")
     else
       cargs = ""
     invocation = "new"
   } else {
     if(inherits(m, "StaticMethod")) {
        invocation = paste(className, "::")
        cargs = paste(argNames, collapse = ", ")
     } else {
        invocation = "This ->"
        cargs = paste(argNames[-1], collapse = ", ")
        if(m$access == "protected")
        testProtected = "CHECK_IS_PROTECTED(r_This)"
     }
   }
  } else {

     if(TRUE || length(m$parameters[!outArgs]))
       cargs = paste(argNames, collapse = ", ")
     else
       cargs = ""
      invocation = ""
   }


   routineName = if(isConstructor) className
            else if(inherits(m, "ResolvedNativeOperatorClassMethod")) getOperatorSymbol(m$name, TRUE)
            else routineName
   call = paste(invocation, routineName , "(", cargs, ")")

   
   native = c(native, testProtected)

   # if not a void return, declare the local return value
   #XXX Check ans is not already a used name.

   #XXX
   # Want to allow either the caller or the method definition indicate whether
   # the object needs to be copied or if we want to have the reference to it
   # so that we can update it directly, i.e. a shared instance between R and wxWidgets.

   #XXX The logic seems dubious here in general.
   #
   # This is bypassing the method dispatch system.  We know that we are
   # processing the return type and not a general parameter.
   # If we are dealing with a real C++ object and not a pointer to it,
   # then we will do the conversion inline and don't need a declaration.
   #XXX IMPORTANT:
   #XXX We need to differentiate between a struct and C++ class.
   # If we are not in C++, then the struct needs to be copied!
   # use isCPlusPlus(nodes)
   # If the class of interest does not have a constructor that accepts an
   # instance of that same type, we are screwed.
   #


   noAnsAssign = FALSE
   if(isVoidRoutine) {
       r = NULL # character()
   } else if(FALSE && is(m$returnType, "C++ClassDefinition")) #XXX was active
     r = ""
   else if(is(m$returnType, "C++ReferenceType") && is(m$returnType@type, "C++ClassDefinition")) {
     r =  ""
     noAnsAssign = TRUE
     call = paste(ifelse("const" %in% m$returnType@type@qualifiers, "const", ""), m$returnType@type@name, "&", "ans", "=", call)
   } else {
     r = getNativeDeclaration("ans",
                              if(is(m$returnType, "C++ReferenceType")) m$returnType@type else m$returnType,
                              names(m$parameters), const = FALSE)
   }


   if(!is.null(r)) { # can't be null, just ""
     native = c(native, paste(indent, r))
      # Now get the code to compute the return value for R.
     if(length(names(r)) == 0)
       names(r) = "ans"

     r = convertValueToR(names(r), m$returnType, m$parameters, invoke = call, typeMap = typeMap, helperInfo = helperInfo)
     if(!length(outs) && !inherits(r, c("C++Block", "CBlock")))
         r = paste(indent, "r_ans = ", r, ";")## Convert the data type.
     if(inherits(r, "InlineInvocation"))
         call = ""
     
   } else
     r = character()


    # Build the code that takes all the out arguments and puts them in a list.
   if(length(outs))
       #XXX Need to handle the copy argument.
      rtnCode = collectOutVars(m$parameters[outs], m, r, typeMap, paramStyle[outs])
   else
      rtnCode = character()

   getLocalArgumentValue = function(id, type, parameters, out = FALSE) {
                             if(inherits(parameters[[id]], "UnusedParameter"))
                                return("")

                             if(is(type, "FunctionPointer"))
                               attr(type, "Caller") = m
#XXXX  Check.                            
                             rhs = convertRValue("", paste("r", id, sep = "_"), type, parameters, typeMap = typeMap, helperInfo = helperInfo)
                             if(inherits(rhs, "FailedConversion") || rhs == "")
                               rhs
                             else {
                               if(is.na(out)) out = FALSE
                               origId = id
                               if(out) id = paste(outArgReferencePrefix, id, sep = "")

                               if(!inherits(rhs, c("IfStatement", "StatementBlock", "Statement")))
                                  rhs = paste(ifelse(id == "this", "This", id) , " = ", rhs, ";")

                               if(out) 
                                rhs = c(paste("if(GET_LENGTH(", paste("r", origId, sep = "_"), ") > 0)  {"), paste(indent, rhs, sep = ""), "\t\t}")

                             }
                             
                             rhs
                           }
   indent = "\t"
   native = c(native, "",
               paste(indent, unlist(sapply(seq(along = m$parameters),  ## names(m$parameters)[!outArgs],
                              function(i) {
                                 id = names(m$parameters)[i]
                                 getLocalArgumentValue(id, m$parameters[[id]]$type, m$parameters, outArgs[i])
                            })))
             )
     



   
   if(addInherited)
     native = c(native, "", createCallInheritedCode(routineName, names(m$parameters), inheritedClassNames, result = if(isVoidRoutine) character() else "ans", m$parameters))
   else if(call != "")
      native = c(native, "",
                  paste(indent, if(isConstructor || (!noAnsAssign && length(r) && r != "")) "ans = ",  call,  ";", sep = ""))

   if(length(rtnCode))
     r = rtnCode
   
   native = c(native, r, "", paste(indent, "return(r_ans);"))
   native = c(native, "}", "")

     # Add the #ifdef NAME ... #endif around the code.
   if(is.function(ifdef))
     ifdef = ifdef(m, className)
   if(length(ifdef)) {
     native = c(paste("#ifdef", ifdef,), native, paste("#endif /*", m$name, ":", ifdef, "*/"))
   }

    # Provide the information about what file and line number the method declaration comes from.
   if(length(nodes))
      location = ifelse(!missing(nodes), paste("/*", ifelse(!is.na(m$INDEX), nodes[[ m$INDEX ]][["source"]], "artificially constructed"), "*/"), "")
   else
      location = character()


   list(code = CRoutineDefinition(name = routine, code = native, nargs = length(parmNames) + as.integer(hasDotCopy)),
        cdecl = cdecl)

}

createRCode =
  #
  # Returns an RFunctionDefinition or RMethodDefinition
  #
function(m, rfuncName, routine, 
         typeMap, hasDotCopy, addInherited, isVoidRoutine, inheritedClassNames,
         useClassNameMethod = FALSE, outArgs = character(), signature = NULL,
         params = m$parameters)
{
   txt = character()

   if(!is.null(signature)) {
         # display the signature of the C/C++ routine/method as a comment.
      txt = c(txt, paste("\t#", c(as(m, "character"), paste(names(m$parameters), signature@signature[1:length(m$parameters)], sep = " <-> "))), "")

     
     originalParamNames = names(m$parameters)
        # Deal with ...
     if(!inherits(m, "ResolvedNativeClassConstructor")) # length(m$parameters) = 0
        names(m$parameters) = signature@signature[1:length(m$parameters)] #XXX need to switch the out args too!
   } else
      originalParamNames = character()


   
   funcDef =  new(if(!is.null(signature)) "RMethodDefinition" else "RFunctionDefinition", name = rfuncName)

   
   if(!is.null(signature)) {
     if(length(params) == 0)
       funcDef@signature = signature@signature
     else
       funcDef@signature = c(names(params), signature@signature[ - seq(along = params) ])
   } else
      funcDef@signature = if(length(names(params))) names(params) else character()

   
   
      # Deal with default values for parameters. Should be cleaned up and accompany the params.
      # Here we have to deal with getting it from the almost parallel list in m$parameters
      # but because we add parameters such as .copy, we have to be more careful.
   if(length(params)) {
     o = is.na(params) | names(params) %in% c(".copy", ".inherited")

     mparams = params[!o]
     funcDef@paramDefaults = character(length(params))
     funcDef@paramDefaults[!o] = sapply(mparams, function(x) { if(!is.na(x$defaultValue))
                                                                      as(x$defaultValue, "character")
                                                                else
                                                                    ""
                                                     })
   }


   
        # get rid of NAs from out arguments
        # but if we want them left in and with default arguments, then we have to
        # add them back.
#   txt = c(txt, paste("function(", paste(tmp, collapse = ", "), ") ", ""), "{")

   indent = "    "

          # Do the coercion of the R arguments.
   txt = c(txt, sapply(names(params),  #[!outArgs],
                        function(id)  {
                            if(inherits(params[[id]], "UnusedParameter"))
                              ""
                            else {
                             tmp = coerceRValue(id, m$parameters[[id]]$type, m, typeMap, helperInfo = helperInfo)
                             if(!identical(id, tmp))
                               if(inherits(tmp, "RCode")) tmp else paste(indent, id, "=", tmp)
                             
                            }
                        }))

   
   if(hasDotCopy) {
        # need to ensure that .copy is not in this collection. If it is added to outArgs,
        # then it will be included.
       tmp = names(params)[outArgs]
       tmp = tmp[tmp != ".copy"]
       parms = paste(sQuote(tmp),  sep = "", collapse = ", ")
       txt = c(txt, paste(indent, ".copy = validateCopy(.copy, c(", parms, "))", sep = ""))
   }



   if(addInherited) {
     inames = paste("'", inheritedClassNames, "'", sep = "", collapse = ", ")
     txt = c(txt, paste(indent, "if(!is.logical(.inherited)) {"),
                  paste(indent, indent, ".inherited = as.character(.inherited)"),
                  paste(indent, indent, "if(!(.inherited %in% c(", inames,")))"),
                  paste(indent, indent, indent, "stop(\".inherited must be ", if(length(inheritedClassNames) > 1) paste("one of", inames) else paste("TRUE or", inames), "\")", sep = ""),
                  paste(indent, "}"))
   }
   
   txt = c(txt, "")

   .ans = if(FALSE && hasDotCopy) .ans = ".ans =" else character()

   
   invoke = paste(.ans, ".Call('", routine, "'",
                  ifelse(length(params), ", ", ""),
                  paste(names(params), collapse = ", "),
                  if(hasDotCopy) paste(if(length(params)) ",", ".copy", ", as.integer(sum(!is.na(.copy))", if(!isVoidRoutine) "+ 1", ")"),
                  ")", sep = "")
   
   if(isVoidRoutine && !hasDotCopy)
     invoke = paste("invisible(", invoke, ")")
   
     # Make the call to the wrapper routine.
   txt = c(txt, paste(indent, invoke, sep = ""))

     #XXX Do we need to do any wrap up, e.g. to convert the return value further.
     # Yes, for enumerations.  Could do it with initialize method  for a class.


     # Done in C code now.
   if(FALSE && hasDotCopy) # we include the values and the names of the out parameters
     txt = c(txt, paste(indent, "collectOutResults(", if(!isVoidRoutine) ".ans", ",",
                                                   paste(names(params)[outArgs], names(params)[outArgs], sep = " = ", collapse = ", "),
                                                   ", .copy = .copy)", collapse = ""), sep = "")
  

   if(hasDotCopy) {
     funcDef@signature = c(funcDef@signature, ".copy")
     funcDef@paramDefaults = c(funcDef@paramDefaults, "TRUE")
   }

   if(addInherited) {
     funcDef@signature = c(funcDef@signature, ".inherited")
     funcDef@paramDefaults = c(funcDef@paramDefaults, "FALSE")
   }       
   
  funcDef@code = unlist(txt)

  funcDef
}  


createCallInheritedCode =
  #
  # This generates the code for calling the inherited methods from super classes
  # for a given method.
  #
  #  methodName - name of the method being called.

  #  params - character vector giving the names of the C++ variables to be put in the call.
  #    e.g. c("x", "y").  These are typically names(method$parameters)
  #
  #  inheritedClassNames - character vector giving the names of the classes whose inherited methods
  #    we are allowing to be invoked, e.g. c("A", "C").
  
  #  result - a character vector giving the name of the C++ variable to assign the result.
  #    if the return type is void, specify this as character()
  #
  #
function(methodName, params, inheritedClassNames, result = character(), parameterInfo = list())
{
  if(length(parameterInfo)) {
    refs <- sapply(parameterInfo, function(x) is(x$type, "C++ReferenceType"))
    if(any(refs))
      params[refs] = paste("*", params[refs])
  }
  
  args = paste("(", paste(params[-1], collapse = ", "), ")")
  
  if(length(result))
    result = paste(result, "=")
 
  txt = c(
  "if(GET_LENGTH(r__inherited) == 0",
  "    || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {",
  "             // default call to own or inherited method.",
  paste("     This->", methodName, args, ";"),
  "",
  "} else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {",
  paste("           This->", inheritedClassNames[1], "::", methodName, args, ";"),
  "",
  "} else if (TYPEOF(r__inherited) == STRSXP) {",
  "              // use the names to find out which one.",
  "",
  paste(Indent, "const char *className = CHAR(STRING_ELT(r__inherited, 0));"))

  txt = c(txt, unlist(sapply(seq(along = inheritedClassNames),
                        function(i) {
                          c(paste(Indent, if(i > 1) "else ", 'if(strcmp(className, "', inheritedClassNames[i], '") == 0)', sep = ""),
                            paste(Indent, Indent, result, "This->", inheritedClassNames[i], "::", methodName, args, ";")
                            )                     
                        })),
       paste(Indent, "else {"),
       paste(Indent, Indent, 'PROBLEM ".inherited specified, but class name does not match parent classes with method \\"', methodName, '\\""', sep = ""),
       paste(Indent, Indent, "WARN;"),
       paste(Indent, "}"),
  "}")

#  txt
  paste(Indent, txt) #, collapse = "\n")
}


collectOutVars =
  #
  # This is responsible for generating the code that collects the out parameters
  # (not the inout parameters yet)
  # and returning them.
  #
function(parms,  method, returnType, typeMap, styles, pointerPrefix = "_p_")
{
  isVoid = length(returnType) == 0

# length(parms) + if(isVoid) 0 else 1  
  
  txt = c(paste("PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));"),
          paste("PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));"))

  
       # Deal with C++ block and inline invocation
  if(!isVoid) 
     txt = c(txt,
             paste("SET_VECTOR_ELT(r_ans, 0, ",  returnType, ");"),
             'SET_STRING_ELT(r_names, 0, mkChar(".result"));',
             'r_ctr++;', "")


   tmp = lapply(seq(along = parms),
            function(i) {
             type =  parms[[i]]$type
             if(styles[i] == "out")
               type = type@type

                  # do we need to add the & ?
             id = names(parms)[i]

                  # This is used to make a deep copy of a variable on the stack!
# Doesn't really make sense
#             copyRoutineName = getStructCopyRoutineName(type)                          
#             copy = paste(copyRoutineName, "( ", paste(pointerPrefix, id, sep = ""), " )", sep = "")
             copy = convertValueToR(paste("*", pointerPrefix, id, sep = ""), type@type, parms, "", typeMap, out = TRUE, helperInfo = helperInfo)

             copyVal = paste('LOGICAL(r__copy)[', i - 1, ']')
             code = paste(copyVal, "== FALSE && GET_LENGTH(", paste("r_", id, sep = ""), ") > 0 ? ", paste("r_", id, sep = ""), ":", copy)
             c(paste('if(', copyVal,  ' != NA_LOGICAL) {'),
                 paste(Indent, 'if(', copyVal, " == FALSE && GET_LENGTH(", paste("r_", id, sep = ""), ") == 0) {"),
                 paste(Indent, Indent, 'PROBLEM "ignoring request to not copy argument', id, 'as only local/stack value is available"'),
                 paste(Indent, Indent, "WARN;"),
                 paste(Indent, "}"),
                 paste(Indent, "SET_VECTOR_ELT( r_ans, r_ctr,", code, ");"),
                 paste(Indent, 'SET_STRING_ELT( r_names, r_ctr++, mkChar("', id, '"));', sep = ""),
               '}', ""
              )
            })

    txt = c(txt,
            unlist(tmp),
            "SET_NAMES(r_ans, r_names);",
            "UNPROTECT(2);")
  
   paste("\t", txt, collapse = "\n")
}  

checkScope =
function(type)
{
  if(is(type, "C++ReferenceType"))
    return(checkScope(type@type))
  
  if(is(type, "TypeDefinition"))
    return( length(type@scope) == 0)
  
  if(is(type, "Gcc::Node::function_decl")) {
   if("scpe" %in% names(type) && inherits(type[["scpe"]], "GCC::Node:record_type"))
     return(FALSE)
  }
  
 if(is(type, "BuiltinPrimitiveType"))
    return(TRUE)
 if(is(type, "PointerType"))
   return(checkScope(type@type))

 if(is(type, "GCC::Node::record_type")) {
   if("scpe" %in% names(type) && inherits(type[["scpe"]], "GCC::Node:record_type"))
     return(FALSE)
 }

 TRUE
}  



getReferenceClassName =
function(parm, name = character(), isClass = FALSE)
{
  if(is(parm, "ResolvedTypeReference"))
    parm = resolveType(parm)

  #XXX For classes
  #   parm@typeName
  if(is.character(parm))
    return(if(isClass) parm else paste(parm, "Ptr", sep = ""))

  if(is(parm, "BuiltinPrimitiveType"))
    name = capitalize(parm@name, first = FALSE)
  else if(is(parm, "EnumerationDefinition"))
    name = capitalize(parm@name[length(parm@name)], first = FALSE)
  else if(is(parm, "TypedefDefinition"))
     name = parm@name
  else if(is(parm, "C++ClassDefinition"))
     return(parm@name)
  else if(is(parm, "C++ReferenceType"))
     return( parm@type@name  )
  else if(is(parm, "ArrayType")) {
    parm = fixArrayElementTypeNames(parm)
    return(getCopyArrayName(parm, c("", ""), "Ptr"))
  } else if(is(parm, "PointerType")) {
    #XXX
     if(is(parm@type, "ResolvedTypeReference"))
       parm@type = resolveType(parm@type)
       
     if(is(parm@type, "C++ClassDefinition"))   
       return(parm@typeName) #XXX changed this from parm@depth - 1 
     
     name = paste(parm@typeName, paste(rep("Ptr", parm@depth - 1), collapse = ""), sep = "")
  } else
     name = parm@name

  name = gsub("^struct ", "", name)

  paste(name, "Ptr", sep = "")
}  




# Get the declaration for the local variables in our wrapper routine that
# hold the values from the R objects.



NativeMethodName =
function(name, className, isPolymorphic = FALSE, types = list(), prefix = "R_")
{
 if(isPolymorphic) {
   if(length(types)) {
      e = paste(sapply(types, function(x) typeName(x$type)), collapse = "_")
      name <- paste(name, e, sep = "_")
   } else
      name <- paste(name, "void", sep = "_")
 }

 name = gsub(" ", "_", name)
 name = gsub("::", "__", name) # for enumerations within a scope, e.g. wxFileData::fileListFieldType
 
 
 paste(prefix, className, ifelse(length(className), "_", ""),  name, sep = "")
}  


setGeneric("typeName", function(type) standardGeneric("typeName"))
setMethod("typeName", "PointerType",
           function(type)
            paste(paste("p", type@depth, sep = ""), type@typeName, sep = "")
          )


setMethod("typeName", "C++ReferenceType",
           function(type)
            paste("r", typeName(type@type), sep = "")
          )

setMethod("typeName", "TypeDefinition",
           function(type)
            #XXX need to map, e.g. 'long int' to 'long'
             gsub(" ", "_", type@name)
          )







getStructCopyRoutineName =
  # function to produce the name of the C routine responsible for copying an
  # instance of the structure given by 'def' to an R object.
  # This is short but centralized to avoid synchronizing code in different locations
  # and thus ensuring that the name used to define the routine is the same as the name
  # used to call that routine in generated code.
  
function(def, name = ifelse(length(def@alias), def@alias, def@name))
{
  if(is(def, "PointerType"))
    def = def@type

  paste("R_copyStruct_", name, sep = "")
}  


startsWith =
function(char, txt)
{
  substring(txt, 1, 1) == char
}  






