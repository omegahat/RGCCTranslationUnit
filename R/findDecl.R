getAllDeclarations =
  #
  # Example:
  #    names(getAllDeclarations(my[[4]], "myFun"))
  #    getAllDeclarations(my[[4]])
  #
function(dcls, files = character(0), dropArtificial = TRUE)
{
   nodeIterator(dcls, 
                  function(node) {
                       # Ignore declaratons from files other than the ones specified.
                    if(!checkSource(node[["source"]], files))
                       return(NULL)

                     if(dropArtificial && "artificial" %in% names(node))
                       return(NULL)
                     
                     getIndex(node)
                  })
}  


setGeneric("findFirstFileDecl",
           function(els, file = NA)
            standardGeneric("findFirstFileDecl"))

if(USE_PERL_TU_PARSER)
 setMethod("findFirstFileDecl", "GCC::TranslationUnit::Parser", 
  #
  # Or preferably, use readTU to get the decls.
  #
  function(els, file = NA)
 {
 #   if(inherits(els, "GCC::TranslationUnit::Parser"))
     findFirstFileDecl(els[[2]])
 })

setMethod("findFirstFileDecl", "GCCTUParserDynClass",
  function(els, file = NA) {
    findFirstFileDecl(els[[1]])
  })

setMethod("findFirstFileDecl", "ANY",
  function(els, file = NA) {
    #XXX add more
   if(any(inherits(els, c("GCC::Node::type_decl", "GCC::Node::var_decl", "GCC::Node::func_decl", "GCC::Node::union_decl", "GCC::Node::function_decl"))))
     return(els)
   
   if(!inherits(els, "GCC::Node::namespace_decl")) {
      stop("Don't know how to find the start of the declarations from a ", class(els)[1])
    }

   els[["dcls"]]
}  )




getArgList =
function(x)
{
  #XXX see getParameters() that calls this and we could end up in an infinite loop.
  if(any(inherits(x, c("GCC::Node::tree_list", "GCC::Node::parm_decl"))))
    return(x)
  
  a = x[["args"]]
  if(!is.null(a))
    x = a
  else {
    a  = x[["type"]]
    if("prms" %in% names(a)) 
      x = a[["prms"]]
  }

  x
}  


getFields =
  #
  # Find the fields or slots in a class or struct.
  #
function(def, access = c("public", "protected"), existingClasses = list(), artificial = FALSE)
{
  def = as.field.decl(def)

  if(is.null(def))
    return(NULL)
  
  if(length(access) == 1 && tolower(access) == "all")
    access = c("public", "protected", "private")
  
  nodeIterator(def,
               function(node) node,  # getIndex,
               type = function(x) {
                         if(!any(inherits(x,  c("GCC::Node::field_decl", "GCC::Node::var_decl"))))
                          return(NA)

                        if(!artificial && isArtificial(x))
                          return(NA)
                        
                          # if no access specified or NA, then let everything through.
                        if(length(access) == 0 || is.na(access))
                          TRUE
                        else if(length(x[["access"]]))
                            # otherwise look for a match using partial matching.
                          any(!is.na(pmatch(access, x[["access"]])))
                        else
                             TRUE
                      })
}  



getFunctions = getRoutines = 
  #
  #
  # If we just have a function declaration and no definition, then
  # we have no args slot and so get no names. Instead, we just have
  # the prms and the types. So we have to fill in the names.
  #
  # z  = getFunctions(my[[4]], "myFun")
  #
  
function(dcls, files = character(0), static = FALSE, checkSourceFile = checkSource, ...)
{

  ans = nodeIterator(dcls, 
                function(node) {
                   if(!inherits(node, "GCC::Node::function_decl"))
                     return(NULL)

                   if(node[["artificial"]] || any(c("thunk", if(!static) "static") %in% names(node)))
                     return(NULL)


                   if(!checkSourceFile(node[["source"]], files, ...))
                     return(NULL)

                   processFunction(node)
                })

  class(ans) <- "RoutineNodeList"
  ans
}




if(USE_NATIVE_TU_PARSER)
  setOldClass("NativeRoutineDescription")

processFunction =
function(node) {

      # Now fetch the parameter info, either from args or parms depending on how much
      # information we have.
    params = getParameters(node, routineName = getNodeName(node))

         # Get the function type from this decl
    if(inherits(node, "GCC::Node::function_decl"))
       type = node[["type"]]
    else  # Assuming it is a function_type
       type = node

    i = grepl("^[0-9]+$", names(params))
    if(length(params) && all(i)) 
       names(params) = sprintf("arg%d", seq(along = params))

     
    structure( list(parameters = params, 
                    INDEX = getIndex(node),
	            name = getNodeName(node),
        	    node = node,
	            returnType = type[["retn"]]),
               class = "NativeRoutineDescription")
}  

setMethod("getNodeSource", "NativeRoutineDescription",
           function(node)  {
             node$INDEX
           })



setMethod("isConstructor", "GCC::Node::function_decl",
function(obj, ...)
{
  "constructor" %in% obj[["note"]]
})

setMethod("isDestructor", "GCC::Node::function_decl",
function(obj, ...)
{
  "destructor" %in% obj[["note"]]
})




# getClassMethods and getFields use a
# single function that works as an iterator.

getClassMethods =
  #
  #  o = getClassMethods(my[[7]])
  #
function(def, accessMode = c("public", "protected"),
          existingClasses = list(),
           dropArtificial = TRUE, dropOperators = TRUE, ...)
{
  if(!is.character(accessMode))
    stop("accessMode should be a character vector identifying which categories of methods you want: public, protect, private")

  def = as.record.type(def, FALSE)
  if(is.null(def)) 
    return(NULL)


   # top = def$methods(convert = FALSE)
  top = getNodeMethods(def)

  className = getNodeName(def)
  
  ans =
   nodeIterator(top, 
                function(node) {
                   name = getNodeName(node, addPrefix = FALSE)
                   
                   if(is.null(name) || name %in% ImplicitConstructorNames)
                     return(NULL)

                   if(inherits(node, "GCC::Node::template_decl"))
                     return(NULL)

                      # do we need to check note: artificial for new format.
                      # But do have to know whether it is going to be there or not!
                   if(dropArtificial && isArtificial(node))
                     return(NULL)

                   
                   if(isDestructor(node))
                        return(NULL)
                   
                   if(dropOperators && "operator" %in% names(node)) {
                        return(NULL)
                   }

                      # If user calls with empty accessMode, accept everything.
                      # Otherwise, filter based on that list of acceptable modes.
                   if(length(accessMode) > 0 && "access" %in% names(node) && !( node[["access"]]  %in% accessMode))
                     return(NULL)

                   makeRoutineDescription(node, name, TRUE, existingClasses, className, ...)
                },
               c("GCC::Node::function_decl", "GCC::Node::template_decl"), 
               addPrefix = FALSE, ...)

  names(ans) = sapply(ans, el, "name")
  class(ans) <- "UnresolvedClassMethods"
  
  ans
}

setOldClass("UnresolvedClassMethods")


getReturnType =
function(node)
{
  if(inherits(node, "GCC::Node::function_decl"))
    node = node[["type"]]
  
  return(node[["retn"]])
}


makeRoutineDescription =
  #
  # library(RGCCTranslationUnit); p = parseTU("inst/examples/structs.cpp.tu"); dd = getAllDeclarations(p, "structs")
  # f = makeRoutineDescription( p [[ dd$createA ]], "createA")
  #
  # f = resolveType(f, p)
  # createMethodBinding(f)
  #
  # Or use
  #  funs = getFunctions(p)
  #
function(node, name = getNodeName(node), method = "member" %in% notes(node), existingClasses = list(),
          className = getNodeName(node[["scpe"]]), ...)
{
     params = getParameters(node, existingClasses, method, routineName = name, ...)
     a = sapply(params, inherits, "UnusedParameter")
     if(any(a))
       names(params)[a] = paste("u", names(params)[a], sep = "")

     type = getReturnType(node)
#     type = node[["type"]]
     ret = getIndex(type)
     access = if(method) node[["access"]] else "public" 

     # ifelse(!method, "public", ifelse("access" %in% names(node), node[["access"]], "public"))

     
        # This is not resolved, but it is given a structure.
     klass = if(!method) "NativeRoutine" else  "NativeClassMethod"
     if(method) {
       if(isConstructor(node))
        klass = c("NativeClassConstructor", klass)
       else if(isDestructor(node))
        klass = c("NativeClassDestructor", klass)
       else if("operator" %in% names(node))
         klass = c("NativeOperatorClassMethod", klass)
     }

     if("NativeClassConstructor" %in% klass)
       name = paste(getTUOption("constructorNamePrefix", ""), name, sep = "")
       

     tmp = list(returnType = ret, parameters = params, INDEX = getIndex(node),
                    name = name,
                    access = access,
                    node = node,
                    virtual = checkNodeAttribute(node, "virtual")                    
                   )
     if("NativeClassMethod" %in% klass)
          tmp$className = className
     else if("NativeOperatorClassMethod" %in% klass) {
       tmp$operator = tmp$name
       tmp$name = getOperatorName(tmp$name)
     }

     structure(tmp, class = klass)
}  



getParameters =
function(args, existingClasses = NULL, method = FALSE, static = FALSE, routineName = "", ...)
{
  if(is.null(args))
    return(list())

  UseMethod("getParameters")
}  

"getParameters.GCC::Node::function_decl" =
  #
  # Works when the function is defined or for methods in classes, whether defined or not.
  #
  # e.g. getParameters(my[[218]]$args(convert = FALSE))
  #
function(args, existingClasses = NULL, method = FALSE, static = FALSE, routineName = "", ...)
{
 extra = getParameters(args[["type"]], existingClasses, method, static, routineName, ...)

 if(length(extra) == 0)
   return(list())
 
 parms = getArgList(args)
 ans = getParameters(parms, method = method, static = static, routineName = routineName)

 ids = names(ans)
 ans = lapply(seq(along = extra),
         function(i) {
            ans[[i]]$defaultValue <- extra[[i]]$defaultValue
            ans[[i]]
         })
 if(length(ids) == length(ans))
   names(ans) = ids
 else
   warning("different numbers of parameters from different sources for the same routine")

 ans 
}

"getParameters.GCC::Node::function_type"  =
  "getParameters.GCC::Node::method_type"  =  
function(args, existingClasses = NULL, method = FALSE, static = FALSE, routineName = "", ...)  
{
   # Now get the default values if there are any.
   # We look in function_type node associated with this decl.
  if(!("prms" %in% names(args)))
    return(list())
  
  ans = getUnnamedParameters(args[["prms"]], existingClasses, method)

  ans
}


"getParameters.GCC::Node::parm_decl" =
function(args, existingClasses = NULL, method = FALSE, static = FALSE, routineName = "", ...)
{
  ans = nodeIterator(args, 
               function(op) {
                 idx = getIndex(op)
                 ans = list(INDEX =  idx,
                            id = paste("x", idx, sep = "_"),
                            defaultValue = NA,
                            type = op)
                 if(method && getNodeName(op) == names(ans$INDEX)) {
                    ans$id = paste("unused", get("ctr", sys.frame(-1)), sep = "")                    
                    class(ans) <- "UnusedParameter"
                 }
                 ans
               },
               "GCC::Node::parm_decl", ...)

   # if the last parameter is a void type (not a pointer to a void type)
   # the discard that ?
  if(length(ans) > 0) {
    idx  = ans[[length(ans)]]$INDEX
    n = getTUParser(args)[[idx]]  # args[["TU"]][[idx]]
    if("type" %in% names(n)) {
      if(getNodeName(n[["type"]]) == "void") {
        warning("removing final parameter of routine '", routineName, "' which is of type void")
        ans = ans[-length(ans)]
      }
    }
  }
  
  ans
}




"getParameters.GCC::Node::tree_list" =
function(args, existingClasses = NULL, method = FALSE, static = FALSE, routineName = "", ...)
{  
   ans = getUnnamedParameters(args, existingClasses, method)
   
   ans
}

getUnnamedParameters =
function(prms, existingClasses = NULL,
         method = FALSE, ...)
{
 ans = 
  nodeIterator(prms, 
    function(node) {
      val = node[["valu"]]  # was node$value(convert = FALSE), but changed to be the same for the native parser.
      
                 # The last element in params is (usually?) void and of no interest.
                 # May need to be more intelligent about this.
      if(inherits(val, "GCC::Node::void_type"))
        return(NULL)

      value = NA
      if("purp" %in% names(node)) {
         p = node[["purp"]]
         value = getValue(p)
      }

      idx = getIndex(val)
      ans = list(INDEX = idx, id = idx, defaultValue = value)


      if(method && getNodeName(node) == names(ans$INDEX)) {
        ans$id = paste("unused", get("ctr", sys.frame(-1)), sep = "")
        ans$value = "FALSE"        
        class(ans) <- "UnusedParameter"
      }
      ans
    })
 
 # names(ans) = NULL
 ans
}





nodeIterator =
function(node,  op, type = TRUEp, verbose = FALSE, addPrefix = FALSE)
{
  if(is(node, "TUParser"))  # was "GCC::TranslationUnit::Parser"
     node = findFirstFileDecl(node)

  if(is.character(type)) {
    typeName = type
    type = function(obj) { inherits(obj, typeName) }
  }

  values = list()
  ctr = 1
  while(!is.null(node)) {

     status = type(node)
     if(!all(is.na(status))) {
       if(!any(as.logical(status)))
         break
    
       if(verbose)
          from = node["INDEX"]

       v = op(node)
       if(!is.null(v)) {
           values[[length(values) + 1]] =  v
           names(values)[length(values)] = getNodeName(node, addPrefix = addPrefix) #  getName(node, "") # n$string
       }
     }
     node =  getNextNode(node)
     if(verbose && !all(is.na(status)))
        cat("From", from, "to", node["INDEX"], "\n")

     ctr <- ctr + 1
   }

  values
}  


checkSource =
function(src, files, allowBuiltIns = FALSE)
{
  if(is.function(files))
    return(files(src))
  
  if(!allowBuiltIns && (length(src) == 0 || length(grep("<built-in>", src))))
    return(FALSE)

  if(length(files) == 0)
    return(TRUE)  
  
  # Use * here as some header files like istream have no extension (.h)
  #gsub("\\..*:[0-9]+$", "", src) %in% files
  # XXX This could be really slow. Perhaps we should use a compiled regular expression
  # rather than create it each time.
  length(grep(paste("(", paste(files, collapse = "|"), ")", sep = ""), gsub(":[0-9]+$", "", src) )) > 0
}  

isNewGCC =
function(p)
{
 return("version" %in% names(p[[1]]) && p[[1]]$version == "4.1")
}


  # each element of v points to a tree_vec
  # these don't seem to have the regular length so have to be careful here.
  # Also, have to avoid going round in circles.
  #

  # From within a record_type, we can access the "base" field
  # which may be a single value or a vector of references to
  # other record_types.  And from those record types, we can follow
  # the name field and get the type_decl and its unique identity/INDEX
  # to avoid repetitively resolving classes and types.  Is this true?
  # base->record_type[@name]->type_decl gives the name
  # node[["base"]][["name", convert = FALSE]][["name"]]
  # Getting the name is not enough, and the path does not lead back to the
  # original definition of the class or type.

  # When processing the record_type with multiple base classes, the order of the
  # public must be preserved. e.g. myClass.cpp.tu @8.
  #


setGeneric("getBaseClasses",
           function(node, getReferences = FALSE, recursive = FALSE)
           standardGeneric("getBaseClasses"))

setMethod("getBaseClasses", "C++ClassDefinition",
          function(node, getReferences = FALSE, recursive = FALSE) {
            if(getReferences)
              stop("cannot get the references directly. Need the parsed translation unit")
            
            if(recursive)
              node@ancestorClasses
            else
              node@baseClasses
          })

setMethod("getBaseClasses", "GCC::Node::type_decl",
          function(node, getReferences = FALSE, recursive = FALSE) {
             getBaseClasses(node[["type"]], getReferences, recursive)
          })

setMethod("getBaseClasses", "GCC::Node::record_type",
  #
  #  See the version in perlParser.R
  #        
  # Can get an array of the raw information using getReferences = TRUE
  # This gives an array containing the references to the hash tables
  # describing each base class and the relationship, e.g. public access
  # whether it is virtual and the node at which it is "defined".

  # With getReferences = FALSE, we just get a named character vector
  # back which gives the names of the classes, and the names are the
  # node ids at which they are defined.
  #
  # Need to look at nested classes, i.e. class defined inside a class. Legal?

  #
  # Sort out the recursive = TRUE and keep the results separate for
  # multiple inheritance.
  #
  # What about cyclic graphs in the case of recursive = TRUE?
  #
function(node, getReferences = FALSE, recursive = FALSE)
{
  b = getBaseNodes(node) 
  if(length(b) == 0)
    return(if(getReferences)  list() else character())

  tmp = lapply(seq(along = b),
               function(i) {
                   type = b[[i]]

	           ans = if(getReferences) 
                           structure(list(type), names = getNodeName(type))
                         else
                           structure(getNodeName(type),  # type[["name"]][["string"]] 
                                     names = as.character(type[["INDEX"]]))

                   if(recursive) {
                     v = getBaseClasses(type, getReferences, TRUE)
                     ans[names(v)] = v[]
                   }
                   
                   ans
               })

# if(getReferences) {
#    # Wold like to put names on the  elements, but the array is in Perl, not R.
#    # There are things we could do such as a new class in R with a names() method.
#    # Then we would put the names we compute below somewhere on this object.
#    # So that is what we do!
#   class(b) <- c("BaseClassesInfo", class(b))
#   attr(b, ".BaseClassNames") <- unlist(tmp)
#
#   return(b)
# }

  # tmp
  unlist(tmp)  
})


setMethod("getBaseNodes", "GCCNode",
          function(node) {
             els = as(node, "list")[["base"]]
             parser = getTUParser(node)
             lapply(as.numeric(gsub("^@", "", els)), function(id) parser[[id]])
          })

# Other information is also available. When do we have to use this.
#   
#  binf = node[["binf", convert = FALSE]]  
#  browser()  
#  v = b[["vector", convert = FALSE]]


"names.BaseClassesInfo" <-
function(x) {
  as.character(attr(x, ".BaseClassNames"))
}

"[[.BaseClassesInfo" <-
function(x, i, j, ...) {
  if(is.character(i)) {
     id = match(i, names(x))
     if(is.na(id))
       stop("No such element ", i, " in array of classes.")
     i = id
  }

  NextMethod("[[")
}



isSourceFile =
function(x, files)
{
  gsub(":[0-9]+$", "", x) %in% files
}  

setGeneric("getVariables",
           function(dcls, addNames = TRUE, ...)
             standardGeneric("getVariables"))

if(USE_PERL_TU_PARSER)
setMethod("getVariables", "PerlTUParser",
          function(dcls, addNames = TRUE, ...)  
             getAll(dcls, "GCC::Node::var_decl"))

setMethod("getVariables", "GCCTUParserDynClass",
          function(dcls, addNames = TRUE, ...)  {
             ans = .Call("R_GCCTUParserDyn_getVariableDefNodes", dcls)
             if(addNames)
                names(ans) = sapply(ans, getNodeName)
             ans
           })


setMethod("getNodeSource", "GCC::Node::enumeral_type",
           function(node)
             node[["name"]][["source"]]
          )
            
setGeneric("getEnumDeclarationNodes",
           function(dcls, files = character(), addNames = TRUE) {
             standardGeneric("getEnumDeclarationNodes")
           })


getSource = 
function(obj)
 obj[["source"]]

setMethod("getEnumDeclarationNodes", "GCCTUParserDynClass",
          function(dcls, files = character(), addNames = TRUE)  {
             ans = .Call("R_GCCTUParserDyn_getEnumDefNodes", dcls)

             if(length(files)) {
               src = sapply(ans, getSource)
               ans = ans[src %in% files]
             }
             
             if(addNames)
                names(ans) = sapply(ans, getNodeName)

             ans             
          })


if(USE_PERL_TU_PARSER)
setMethod("getEnumDeclarationNodes", "PerlTUParser",
          function(dcls, files = character(), addNames = TRUE)  {          

    if(length(files)) {
      idx = .Perl("getEnumerations", ref = dcls, .args = append(list(), files))
    } else
     idx = dcls$getEnumerations()

     # indices 
#   idx <- as.integer(idx) + 1
#   ids <- sapply(idx, function(i) { tmp = getNodeName(dcls[[i]], addPrefix = TRUE); if(is.null(tmp)) tmp = "" ; tmp})

   idx = lapply(idx + 1, function(i) dcls[[i]])
   names(idx) = sapply(idx, getNodeName, addPrefix = TRUE)

   idx
})

expandFileNameList =
function(files, extensions = character())
{  
     files = basename(files)
    
     if(length(extensions) && !is.logical(extensions)) {
        ext = grep("\\.(c|h|cc|cpp|cxx)", files, value = TRUE)
        if(length(ext))
          warning("some files (", paste(ext, collapse = ", "), ") appear to have an extension. You might specify extensions = character()")
        files = as.character(outer(files, extensions, paste, sep = "."))
     }

     files
 }

getGlobalVariables =
  #
  #XXX  Need to filter out the artificial variables, i.e. those generated by the compiler not the programmer.
  #
  #
  # XXX Does this find the variables that are not in the chain from the initial declaration.
  #  See fann.c and its tu file and it misses several that are
  # Can use getAll(tu, "GCC::Node::var_decl")
  # and then process this.
  # See the else clause which is where we do this as an experiment/check.

  #XXX Perhaps change resolve default to TRUE  and update other calls
function(dcls, files = character(0), static = TRUE, resolve = FALSE, checkSourceFile = checkSource, ...) # isSourceFile
{
  ans = getVariables(dcls)  # was getVariableDeclarationNodes(dcls)

  if(length(ans) == 0)
    return(ans)
  
  w = sapply(ans,
             function(node) {
               if(length(files) && !checkSourceFile(node[["source"]], files, ...))
                 return(FALSE)
               if(node[["artificial"]] || "static" %in% names(node) && !static)
                 return(FALSE)
               TRUE
              })

  ans = ans[w]

      # This discards any class information
      #  structure(unlist(ans), names = names(ans))

   if(resolve)
     resolveType(ans, dcls)
   else  
     ans
}



isBodyEmpty =
  #
  ## Empty body for a routine.
   # compound_stmt  body
   # scope_stmt begn, clnp next
   # compound_stmt next
   # scope_stmt end clnp
  #
  #
  #
function(body)
{
  if(inherits(body, "GCC::Node::function_decl"))
    body = body[["body"]]

   # Should have  a compound_stmt
  p = body[["body"]]
  p = p[["next"]]
  !("body" %in% names(p))
}  



getEnumerations =
  #
  # Expects the top-level parser returned from parseTU()
  ##
  # Note need files = "", not character(0) as we are passing this across to Perl.
  # Fix in RSPerl.
  # The getEnumerations method in the Perl code takes care of making "" into an undef.  

  # Actually, we now allow a vector of files and so have to do things differently.

  #
  # This returns the identities of the enumeral nodes, not the enumeration definitions, etc. 
  #
function(dcls, files = character(), extensions = c("c", "cpp", "C", "h"))
{
   files = expandFileNameList(files, extensions)

   nodes = getEnumDeclarationNodes(dcls, files)
   
   hasEnumUnql = sapply(nodes, function(x)  ("unql" %in% names(x))  && inherits(x[["unql"]] , "GCC::Node::enumeral_type"))

   if(any(hasEnumUnql)) {
        # Keep the ones that have an unql, but remove the corresponding
        # definition without the unql.
      unqlIndex = sapply(nodes[hasEnumUnql], function(x) x[["unql"]][["INDEX"]])
      indexNames = sapply(nodes[!hasEnumUnql], "[[", "INDEX")
      nodes = c(nodes[hasEnumUnql], nodes[!hasEnumUnql][is.na(match(indexNames, unqlIndex))])
   }
 #  nodes = nodes[!hasEnumUnql]      

   if(any(duplicated(names(nodes)))) {
      # 
   }
   
   class(nodes) = "EnumerationNodeList"
   
   nodes
}

#setOldClass(c("EnumerationNodeList", "list"))

if(FALSE)   {
   nodeIterator(dcls,
                 function(node) {
                    if(!inherits(node, "GCC::Node::enumeral_type"))
                      return(NULL)

                    if(length(files) && !checkSource(node[["source"]], files))
                      return(NULL)

                    getIndex(node)                  
                 }, ...)
 }
