resolveType =
  #
  #  Need to be able to update classDefs as we resolve new ones as part of the update.
  #     so we use an environment to store the types.
  #  Want maps from name to index to type.
  #  Avoid infinite loops when resolving, e.g. a struct that has a pointer to itself.
  #
  #
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  if(is.null(node))
     return(list())
  
  if(is(node, "ResolvedTypeReference")) 
     return(get(names(node@index), node@container))

   # This is an attempt to allow the resolving a NativeRoutineDescription a second
   # time not to cause problems.
  if(is(node, "NativeRoutineDescription") && exists(as.character(node$INDEX), envir = classDefs))
     return(get(as.character(node$INDEX), envir = classDefs))



  if(!is(node, "GCCNode"))
    return(UseMethod("resolveType"))

  if(is.null( get(".nodes", envir = classDefs) ) && length(nodes) > 0)
    assign(".nodes", nodes, classDefs)

  if(inherits(node, "TUParserIndex"))
    return(resolveType( nodes[[node]], nodes, classDefs))

  if(is(node, "numeric") || is(node, "character"))
    return(resolveType( nodes[[node]], nodes, classDefs))


 
  # Don't worry about registration, pending, etc. if we just have the node index
  # If we ask is it pending and then add it to the list of pending ones, when we
  # resolve the node and work with that directly, it will appear to already be pending.
  if(!is.null(classDefs) && class(node) != "list" &&
       !any(inherits(node, c("EnumerationNodeList", "UnresolvedClassMethods", "RoutineNodeList")))) { #XXX With transformation above, should never be a TUParserIndex
      id = as.character(getNodeID(node))
      if(classDefs$.verbose)
        cat("resolving", id, "\n")
      if(isResolved(id, classDefs)) {
         return(getType(id, classDefs))
      } else if(isPending(id, classDefs)) {
           # What do we return here?
           # A "promise", i.e., a way to later find the resolved type.
         if(classDefs$.verbose)
            cat("returning a PendingType for", id, "\n")

           # Comes from getIndex() in perlParser.R
#         idx = structure(as.integer(id) + 1, names = id, class = "TUParserIndex")
         id = as.character(as.integer(id)) # ???  should this be  + 1 or not?
         name = getNodeName(nodes[[as.integer(id) + 1]], FALSE)
         return(new("PendingType", INDEX = id, env = classDefs, name = name))
      }

         # If there is an error, we want to remove this pending value.
         # Tricky, because we don't return after the UseMethod() call.
      addPending(id, classDefs)
    }
 
   UseMethod("resolveType")
}  

resolveType.default =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  node
}


forceResolve = 
function(x, tu = get(".nodes", x@env), recursive = FALSE)
{
  ans = if(is(x, "PendingType")) 
           resolveType(x, tu) #getType(x@INDEX, classDefs)
        else if(is(x, "ResolvedTypeReference"))
            resolveType(x)
        else
             x

  if(recursive && (is(ans, "PendingType") || is(ans, "ResolvedTypeReference")))
    forceResolve(x, tu, recursive)
  else
     ans
 }



"resolveType.GCC::Node::array_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
   type = resolveType(node[["elts"]], nodes, classDefs)
   len = as.integer(node[["domn"]][["max"]][["low"]]) + 1

   ans = new("ArrayType", type = type, length = as.integer(len),
                          qualifiers = getQualifiers(node))

   if(is(ans@type, "ArrayType"))
     ans@type@name = ans@name
   
   if(!is.null(classDefs))
     registerType(ans, node, classDefs)

   ans
}

"resolveType.GCC::Node::complex_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes),...)
{
  type = getNodeName(node)
  ans = new("complexType", name = type, alignment = as.integer(node[["algn"]]))

  if(!is.null(classDefs))
     registerType(ans, node, classDefs)

  ans
}



"resolveType.GCC::Node::integer_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes),...)
{
  #XXX Need to work on different types of integer
  #XXX e.g. unsigned long, char, etc.
  # e.g. f = resolveType(my[[d$bar]], my)
  #      f@parameters[[4]]
  # Using the name now. Can also get the max and min
  # for this type.

  unsigned = ("unsigned" %in% names(node) || ("sign" %in% names(node) && node[["sign"]] == "unsigned"))

  classMapEl = NULL

  defaultClassName = if(unsigned) "unsignedIntType" else "intType"
  if("name" %in% names(node)) {
    name = getNodeName(node, addPrefix = TRUE)

    className = paste(capitalize(name, first = FALSE), "Type", sep = "")
    if(!is.null(getClassDef(className)))
       ans = new(className)
    else
       ans = new(defaultClassName, name = name)
    
    if(FALSE)    classMapEl = IntegerTypeClassMap[[name]] # XXX remove if not used.
  } else {
      ans = new(defaultClassName, name = if (unsigned) "unsigned int" else "int")
  }

if(FALSE) {  
  if(is.function(classMapEl))
    return(classMapEl(node, nodes, classDefs))
  else if(is.character(classMapEl))
    ans = new(classMapEl, name = name)
  else
    ans = new(if(unsigned) "unsignedIntType" else "intType", name = name)
}  

   # If we are dealing with a typedef, we need the raw type.
   # Follow the unql.
  if("unql" %in% names(node)) {
     tmp = node[["unql"]]
     names(name) = tmp[["name"]][["name"]][["string"]]
  }
              
  ans@qualifiers = getQualifiers(node)


  if(!is.null(classDefs))
    registerType(ans, node, classDefs)

  ans
}


"resolveType.GCC::Node::real_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
    n = node[["name"]]
    name = getNodeName(node)

    ans = new("doubleType", name = name, qualifiers = getQualifiers(node))
    if(!is.null(classDefs))
      registerType(ans, node, classDefs)

    ans
}


"resolveType.GCC::Node::boolean_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
    ans = new("boolType", qualifiers = getQualifiers(node))

    if(!is.null(classDefs))
      registerType(ans, node, classDefs)

    ans
}


"resolveType.GCC::Node::union_type" =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
  {
    `resolveType.GCC::Node::record_type`(node, nodes, classDefs, ...)
  }


"resolveType.GCC::Node::record_type" =
  #
  # e.g. my[[44]], ie. @43
  # That has an unql and a name and flds and funcs elements.
  #  The name (@39) points to a type_decl with a name "A"
  #  The unql (@54) points to anothe record_type
  #    its name points to a type_decl with a name "_A"
  #    This record_type has the same flds and funcs as the original one.
  # So this smells like a typedef.
  #
  #  for the 3rd argument of bar() which is struct _X, we have @38
  #  record_type (@38) with name (@26) _X
  #  record_type[@name] -> type_decl[@name] -> identifier_node
  #  There is no unql.
  #
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  if(FALSE && "unql" %in% names(node)) {#XXX
    r = node[["unql"]]
    nn = node[["name"]]
    name = getNodeName(nn) 
     # put the identifying node index on the name to
     # assist in removing ambguity.
    names(name) = nn[["INDEX"]]
    type = resolveType(r, nodes, classDefs)
    
    if(is(type, "TypeDefinition"))
       type@alias = name
    
    ans = new("TypedefDefinition", name = name,
                                   type = type)
  } else {

    className = getNodeName(node, raw = FALSE)
    
    # Let's assume it is a struct for the moment.
    # XXX class later. Need some heuristics to tell the two apart.
    # Perhaps the names of the builtin operators and the lack of methods
    # will help!
    # Union comes in as a union_type.
    # Should have a struct in the names.
    if(!any(c("struct", "union")  %in% names(node))) {
#XXX if ptrmem is here, we have a reference in C++.
      if( (!("ptrmem" %in% names(node) ) && !("tag" %in% names(node)))
           || ( ("tag" %in% names(node) && !(node[["tag"]] %in% c("struct", "union")))))
        stop("Not certain  what to do with this record_type node")
    }


    typedefName = node[["name"]]
   `c++class` = isCPlusPlus(nodes) && !("C" %in% names(typedefName))

#XXX--- fails when we use the converter to return as a reference
#    name = getName(node, paste("@", node[["INDEX"]], sep = ""))  # node[["name"]]$string
#    names(name) = node[["INDEX"]]

    fields = list()
    if("flds" %in%  names(node)) {
      fields = node[["flds"]]
            #XXX need to determine if there are any fields. See class C in ABC.cpp
      if(any(inherits(fields, c("GCC::Node::field_decl", "GCC::Node::var_decl")))) {
         fields = getFields(fields, c("public", "protected", "private"))
               # with 4.1.*, we get the, e.g., _vptr.Shape in the fields.
         if(length(fields) > 0) {
               # See if the first one is the virtual table.         
           i = grep("^_vptr\\.", names(fields))
           if(length(i))
             fields = fields[-i]
           else {
             el = fields[[1]]   # nodes[[ fields[[1]], convert = FALSE ]][[1]]
                                # what's the [[1]] doing at the end?
             if(all(c("mngl", "artificial") %in% names(el)) &&
                   el[["mngl"]][["string"]] == ".vf")
               fields = fields[-1]
           }
         }

         fields = structure(
                  lapply(names(fields),
                         function(id) {
                              #XXX??? represent these as fields with name and type and in C++, with accessors, scope, etc.
                            x = fields[[id]]
                            t = x[["type"]]

                            val = resolveType(t, nodes, classDefs)
                            if(`c++class`)
                              new(if(inherits(x, "GCC::Node::field_decl")) "C++ClassField" else "C++StaticClassField", name = id,
                                   type = val, access = x[["access"]], definedIn = className)
                            else
                              new("Field", name = id, type = val)
                         }), names = names(fields))
     } else {
         if(fields[["type"]][["INDEX"]] == node[["INDEX"]])
           fields = list()
         else if(getNodeName(fields) != "ms_classInfo") {  #XXX wxWidgets specific!
             if(!inherits(fields, c("GCC::Node::const_decl")))
                 warning("ignoring flds node (", fields[["INDEX"]], ") for ", className, " where type is ", class(fields)[1], " when resolving record_type")
                #XXX need to follow the chain in case this leads to a real field.         
             fields = list()
         }
       }
    }


    RclassName = ifelse(inherits(node, "GCC::Node::union_type"),
                         "UnionDefinition",
                         ifelse(`c++class`,
                                   "C++ClassDefinition",
                                   "StructDefinition"))

    
    ans = new(RclassName, fields  = fields,
                          name = className, # !isCPlusPlus(nodes)), # XXX name,
                          qualifiers = getQualifiers(node),
                          scope = computeScope(node, nodes),
                          index = node[["INDEX"]])

     # This is expensive.
    if(is(ans, "C++ClassDefinition")) {
       ans@baseClasses = getBaseClasses(node, recursive = FALSE)
       ans@ancestorClasses = getBaseClasses(node, recursive = TRUE)
       # ans@methods = getClassMethods(node)
    }

   
    if(inherits(typedefName, "GCC::Node::type_decl") && !( "artificial" %in% names(typedefName)))
      ans@alias = typedefName[["name"]][["string"]]
  }

  if(!is.null(classDefs)) 
    ans = registerType(ans, node, classDefs)

  ans
}


"resolveType.ContainerDefinition" =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  resolveType(nodes[[node@index]], nodes, classDefs, ...)
}

"resolveType.GCC::Node::type_decl" =
  #
  # e.g. my[[36]] as the return value from bar in myFun
  #
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  type = resolveType( node[["type"]], nodes, classDefs)
  if(is(type, "ResolvedTypeReference"))
    type = resolveType(type)
 
  if(! ("artificial" %in% names(node)) ) {
      ans = new("TypedefDefinition",
                  name = getNodeName(node), qualifiers = getQualifiers(node),
                  scope = computeScope(node, nodes))
      ans@type = type
  } else
      ans = type

  # Avoid nested typedefs.  Should check these are the same typedefs.
  # This arises, e.g., for SEXP. The typedef is to a pointer and the pointer
  # has a name element that points back to this typedef.
  if(is(ans, "TypedefDefinition") && is(ans@type, "TypedefDefinition")
       && ans@name == ans@type@name)
     ans = ans@type

  if(isSEXP(ans))
     ans = as(ans, "SEXP")

  if(!is.null(classDefs))
     registerType(ans, node, classDefs)
  
  ans
}


"resolveType.GCC::Node::pointer_type" =
  #
  # e.g. my[[36]] as the return value from bar in myFun
  #
 function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
   if(all(c("name", "unql") %in% names(node))) {
     #XXX warning("Going down unql path for", node[["INDEX"]])
     ans = new("TypedefDefinition", name = getNodeName(node),
                                    scope = computeScope(node, nodes),
                                    qualifiers = getQualifiers(node))#XXX is this the right set of qualifiers
     ans@type = resolveType(node[["unql"]], nodes, classDefs)
     # Get the typeNae
     registerType(ans, node, classDefs)
     return(ans)
   }

   
   t = new("PointerType", qualifiers = getQualifiers(node)) #XXX ?

   type = node[["ptd"]]

   depth = 1
   while(inherits(type, "GCC::Node::pointer_type")) {
     depth <- depth + 1
     type = type[["ptd"]]     
   }
     # Recursive call so don't get the depth, just always level 1
     # Possible to get infinite recursion here, e.g. with struct that 
     # has a pointer to an instance of self.
     #  struct Foo {   struct Foo *el; }
     # No!  will we end up with a PendingType.
   rtype = resolveType(type, nodes, classDefs)

   t@depth = as.integer(depth)
   t@type = rtype

   if("name" %in% names(node)) {
     name = node[["name"]]
     t@typeName = name[["name"]][["string"]]
   } else {
     if(!is(rtype, "PendingType")) {    #XXX
       t@typeName = getNodeName(type) # rtype@name
     } else {
       t@typeName = getNodeName(type) # need to follow all the depths?
     }
   }


   if(t@depth == 1 && is(t@type, "intType") && t@typeName == "char")
     t = new("CString", type = t@type, depth = t@depth, typeName = t@typeName,
                        name = if(!is.na(t@name))  t@name else "char*", alias = t@alias, qualifiers = t@qualifiers, scope = t@scope)
   else if(t@depth == 1 && is(t@type, "RoutineDefinition")) {
        #XXX make certain everything is resolved, e.g.  parameters and so on.
     t = FunctionPointer(t@type,  alias = t@alias)
   }

   
   if(!is(t, "FunctionPointer") && is.na(t@typeName))
     stop("NA for typeName of pointer type")
   
   if(!is.null(classDefs))
      registerType(t, node, classDefs)

   t
 }


getTypeName =
function(node, p)
{
  dflt = getNodeName(node)
}  

resolvePendingType =
function(type)
{
  if(exists(type@INDEX, envir = type@env))
     get(type@INDEX, envir = type@env)
  else
     warning("Can't resolve PendingType ", type@INDEX, " ", type@name)
}  


# For an integer_type
# my[[10]][["name", convert = FALSE]][["name", convert = FALSE]][["string"]]

# "unsigned long" maps to "long unsigned int"


# Possibly need 
# recordy_type[@name] ->  type_decl and type_decl[@type] points back to record_type.

# The unql is different in a typedef or not

# enumerations without a typedef are just const_decl.
# With a typedef they are enumeral_type



"resolveType.GCC::Node::enumeral_type" =
 #
 #
 #
function(node, nodes, classDefs = DefinitionContainer(nodes),
          checkBitwise = getTUOption("checkBitwiseAtResolve", TRUE), ...)
{  
      d = getEnumDef(node)

      if(checkBitwise)
        bitwise = guessBitwiseEnum(d$values, d$name, nodes)
      else
        bitwise = FALSE

      className =  if(!is.na(bitwise) && bitwise) "BitwiseEnumerationDefinition" else "EnumerationDefinition"

      ans = new(className, name = d$name, values = d$values,
                        qualifiers = getQualifiers(node),
                        scope = computeScope(node, nodes))

      if(is(node[["name"]], "GCC::Node::type_decl")) {
         ans@name = new("TypedefEnumerationName", c(getNodeName(node[["unql"]]), getNodeName(node[["name"]])))
        
#         tmp = resolveType(node[["name"]], nodes, classDefs, ...)
#         tmp@type = ans
#         ans = tmp
      }


      if(!is.null(classDefs)) {
         registerType(ans, node, classDefs)
         if(is(ans@name, "TypedefEnumerationName"))
            registerType(ans, node, classDefs, ans@name[2])
      }

   ans
}

guessBitwiseEnum =
function(values, name = character(), tu = NULL, uncertain = NA, threshold = .8, getValue = FALSE)
{
  if(length(values) <= 1)
    return(FALSE)
  
     # avoid duplicates with different name, e.g. CENTER & CENTRE
     # don't use unique() so we can keep names!
  values = values[!duplicated(values)]

    # If the values go in succession, i.e. 1, 2, 3, ... and so there is a difference
    # of one between them, then most likely a regular enum.
    # But we get jumps. So make it that there are say 90% of them and at least 5 entries.
    # If they are all 1, then say it is a regular enum.
  diffs = diff(sort(values)) == 1
  if(all(diffs) || (sum(diffs)/length(values) > .9 && length(values) >= 5))
    return(FALSE)

  if(length(values) == 2 && sort(values) == c(0, 1))
    return(FALSE)
  
  ans = FALSE

  ok = values %in% c(0, 2^(0:30))
  
  if(!all(ok)) {
    if(sum(ok) > 10 || length(values) > 10)  {
      warning(Warning("Skipping bitwise function of test for a large collection of enum values",
                      name,
                      ". # elements ",
                      length(values),
                      ". Skipping elements ", paste(names(values)[!ok], collapse = ", "),
                      name = name, values = values, class = "SkipBitwiseTestWarning"))
    } else {
      idx = which(!ok)
      found = findBitwiseFunctionOf(values[!ok], values[ok])
      ok[ idx[found] ] = TRUE
    }
  }
  
  n = sum(ok)
  score = n/length(values)
  if(getValue)
    return(score)

  if(score >= threshold) {
    if(length(values) > 2 )
      ans = TRUE
    else
      ans = uncertain
  }

  ans
}

findBitwiseFunctionOf =
  #
  #
  #
  #
function(els, vals)
{
  if(!require(Combinations) || !require(bitops)) {
    warning("Can't load Combinations and/or bitops, so not performing bitwise comparisons for enum definitions")
    return(rep(FALSE, length(els)))
  }
  
      # can also look at the ones that don't match and see if they are
      #  | of the others.
    
    orig = els
    vals = c(vals, sum(vals), bitlist(vals))
    r = 2
    while(r < length(vals)) {
        ans = integer()
        combinations(length(vals), r, function(i) ans <<- c(ans, bitlist(vals[i])))
        i = els %in% unique(ans)
        if(any(i)) {
           vals = c(vals, els[i])
           els = els[!i]
           if(length(els) < 1)
              break
        }
        r = r + 1
      }

    orig %in% vals
  }


"resolveType.GCC::Node::parm_decl" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  ans = resolveType(node[["type"]], nodes, classDefs)

  if(!is.null(classDefs))
     registerType(ans, node, classDefs)

  ans
}



"resolveType.GCC::Node::var_decl" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  type = resolveType(node[["type"]], nodes, classDefs)
  ans = new("VariableDefinition", name = getNodeName(node), type = type)
  ans@qualifiers  = c(ans@qualifiers, getQualifiers(node))
  
  if(!is.null(classDefs))
      registerType(ans, node, classDefs)

  ans
}

"resolveType.NativeTUParserIndex" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  resolveType(nodes[[node]], nodes, classDefs, ...)
}



"resolveType.GCC::Node::function_decl" <-
  "resolveType.GCC::Node::function_type" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
     #XXX Function type is giving back NULLs for important things.

     # get a list of the parameters, name, index, node, return type
  # def = processFunction(node)
  def = makeRoutineDescription(node)
  if(inherits(node, "NativeClassMethod")) {
    def$name = getNodeName(node, addPrefix = FALSE)
    return(resolveType.NativeClassMethod(def, nodes, classDefs, ...))
  }

  params = lapply(def$parameters,
                     function(x) {
                        obj = new("Parameter")
                        obj@type = resolveType(nodes[[ x[["INDEX"]] ]], nodes, classDefs)

                        if(inherits(x$defaultValue, c("VariableDefaultValue"))) 
                          x$defaultValue$type = resolveType(nodes[[ x[["INDEX"]] ]], nodes, classDefs)

                        obj@defaultValue = x$defaultValue
                        obj
                     })
  # Add the names to the individual parameter elements here.
  if(length(names(def$parameters))) {
    ids = names(def$parameters)
    params = lapply(seq(along = def$parameters),
                      function(i) {
                          params[[i]]@name = ids[i]
                          params[[i]]
                        })
    names(params) = ids
  }
  
  retn = resolveType(def$returnType, nodes, classDefs)

  if(is.null(def$name))
    def$name = as.character(NA)
  
  ans = new("RoutineDefinition", name = as.character(def$name),
                                 parameters = params,
                                 returnType = retn,
                                 qualifiers = getQualifiers(node))

  if(!is.null(classDefs))
      registerType(ans, node, classDefs)  

  ans
}  


"resolveType.NativeRoutineDescription" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
   orig.node = node
   tmp = node = resolveType.NativeClassMethod(node, nodes, classDefs, asRoutine = TRUE, register = FALSE)
     # Fix up the names if we don't have any.
   if(is.null(names(node$parameters)) &&
        (n <- length(node$parameters)) > 0) {
     if(n > 26)
       ids = paste("a", 1:n, sep = "_")
     else
       ids = letters[1:length(node$parameters)]
     names(node$parameters) <- ids
   }


   node = fixUserData(node)
   
   class(node) <- "ResolvedNativeRoutine"

   
   if(!is.null(classDefs))
      registerType(node, orig.node, classDefs, node$name)
   
   node
}  


"resolveType.TUParserIndex" <-
  #
  # This shouldn't be necessary anymore as we do the conversion in the
  # generic function.
  #
  # If given an index, look up the node and resolve that.
  #
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  z = resolveType(nodes[[ node ]], nodes, classDefs)
  stop("In resolveType.TUParserIndex for ", names(node))
  z
}  


"resolveType.NativeRoutine" <-
  #
  # The method version below should inherit from this one.
  #
  #
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
   node$parameters = lapply(node$parameters,
                              function(x) {
                                     x[["type"]] = resolveType(nodes[[x[["INDEX"]]]], nodes, classDefs)
                                     x
                              })


   node$returnType = resolveType( node$returnType,  nodes) #, classDefs)
   
   class(node) <- "ResolvedNativeRoutine"

   if(!is.null(classDefs))
      registerType(node, node, classDefs)  
   
   node
 }


"resolveType.NativeOperatorClassMethod" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), asRoutine = FALSE, register = TRUE, ...)
{
   ans = resolveType.NativeClassMethod(node, nodes, classDefs, asRoutine, register = FALSE, ...)

   class(ans) = c("ResolvedNativeOperatorClassMethod", class(ans))
   
   if(register && !is.null(classDefs))
      registerType(ans, node, classDefs, ans$name)

   ans
}

"resolveType.NativeClassMethod" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), asRoutine = FALSE, register = TRUE, ...)
{
   # This changes the existing node and returns it.
   orig = node
   
   node$parameters = lapply(node$parameters,
                              function(x) {
                                     x[["type"]] = resolveType(nodes[[ x[["INDEX"]] ]], nodes, classDefs)
                                     if(inherits(x$defaultValue, c("VariableDefaultValue"))) 
                                          x$defaultValue$type = resolveType(nodes[[ x[["INDEX"]] ]], nodes, classDefs)  #??? same as x[["type"]]??                                    
                                     x
                              })


   node$returnType = resolveType( node$returnType,  nodes, classDefs)

   tmp = nodes[[ node[["INDEX"]] ]]
   node$pure = checkNodeAttribute(tmp, "pure")
   node$virtual = checkNodeAttribute(tmp, "virtual")   

   
   if(inherits(node, "NativeClassConstructor")) {
     class(node) <- c("ResolvedNativeClassConstructor", "ResolvedNativeClassMethod")
     if(isCopyConstructor(orig))
        class(node) <- c("ResolvedNativeClassCopyConstructor", class(node))
     else if(length(node$parameters) == 1)
        class(node) <- c("ResolvedNativeClassEmptyConstructor", class(node))

   } else if(inherits(node, "NativeClassDestructor"))
     class(node) <- c("ResolvedNativeClassDestructor", "ResolvedNativeClassMethod")   
   else
     class(node) <- "ResolvedNativeClassMethod"

   if(length(node$parameters) == 0 || length(names(node$parameters)) == 0
             || names(node$parameters)[1] != "this")
          class(node) <- c("ResolvedNativeClassMethod", "StaticMethod")


   if(!asRoutine && !is.null(classDefs)) {
         # Can resolve this now if we wanted.
       node$class = resolveType(getClassNodes(nodes)[[node$className]], nodes, classDefs)
       # node$class = new("ResolvedTypeReference", name = node$className, index = node[["INDEX"]], container = classDefs)
   }


     # attempt to resolve any types that were not fully resolved earlier on,
     # i.e. that were returned as ResolvedTypeReference.
   node$parameters =
      lapply(node$parameters, function(x) {
                                if(is(x$type, "ResolvedTypeReference")) 
                                   x$type = resolveType(x$type)
                                x
                              })


   if(register && !is.null(classDefs))
      registerType(node, orig, classDefs, node$name)

   
   node
}


isCopyConstructor =
  #
  # Determine if the given node identifies a copy constructor of the form
  #   Class(const Class &val)
  #
function(node)
{  
  if(length(node$parameters) != 2)
    return(FALSE)

  parm1Type = node$parameters[[1]]$type[["type"]][["ptd"]]
  parm2Type = node$parameters[[2]]$type[["type"]][["refd"]]
  if(length(parm2Type) == 0)
     return(FALSE)

  parm2Type[["const"]]  == "1" && parm1Type[["INDEX"]] ==  parm2Type[["unql"]][["INDEX"]]
}

checkNodeAttribute =
function(node, id)
{
   # try note: also
  id %in% names(node) || ("spec" %in% names(node) && id %in% unlist(node[["spec"]]))
}  

isPureMethod =
function(obj) {
  obj$pure
}

"resolveType.GCC::Node::reference_type" =
 function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  type = resolveType(node[["refd"]], nodes, classDefs)
  ans = new("C++ReferenceType", name = type@name,
                                type = type,
                                qualifiers = getQualifiers(node),
                                scope = computeScope(node, nodes))
  if(!is.null(classDefs))
    registerType(ans, node, classDefs)

  ans  
}  

"resolveType.GCC::Node::void_type" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  ans = new("voidType")
  if(!is.null(classDefs))
      registerType(ans, node, classDefs)

  ans  
}  

"resolveType.character" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  resolveType(nodes[[node]], nodes, classDefs)
}

"resolveType.numeric" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  resolveType(nodes[[node]], nodes, classDefs)
}

"resolveType.integer" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  resolveType(nodes[[node]], nodes, classDefs)
}


# Probably the wrong name.
setOldClass("RoutineNodeList")

"resolveType.RoutineNodeList" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  ans = lapply(node, resolveType, nodes, classDefs)
  class(ans) = "ResolvedRoutineList"
  ans
}




"resolveType.GCC::Node::field_decl" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{

  type = resolveType(node[["type"]], nodes, classDefs)
  

  structure(list(name = getNodeName(node),
                 type = type,
                 access = node$access()),
            class = "ResolvedField")
}  

setOldClass("ResolvedClassMethods")

"resolveType.UnresolvedClassMethods" <-
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  ans = lapply(node, resolveType, nodes, classDefs)
  class(ans) <- "ResolvedClassMethods"
  ans
}  


resolveType.list =
resolveType.EnumerationNodeList =
function(node, nodes, classDefs = DefinitionContainer(nodes), verbose = FALSE, ...)
{
   if(length(node) == 0)
     return(NULL)
   
   ans = lapply(node, function(x, ...) {
                       if(verbose)
                          cat("resolving", getNodeName(x), "\n")
                        resolveType(x, nodes, classDefs, ...)
                     })
     

   if(all(sapply(ans, inherits, "ResolvedNativeRoutine"))) 
     class(ans) = "ResolvedRoutineList"

   ans
}  



 `resolveType.GCC::Node::typename_type` =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
   ans = new("C++Typename", name = getNodeName(node))
   if(!is.null(classDefs))
      registerType(ans, node, classDefs)

   ans
}  

`resolveType.GCC::Node::template_type_parm` =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  ans = new("C++TemplateTypeParm", name = getNodeName(node))
  if(!is.null(classDefs))
     registerType(ans, node, classDefs)
  ans
}

`resolveType.FunctionPointer` =
function(node, nodes, classDefs = DefinitionContainer(nodes), ...)
{
  node@parameters = lapply(node@parameters, 
                                 resolveType, nodes, classDefs = classDefs, ...)
  node@returnType = resolveType(node@returnType, nodes, classDefs, ...)
  node
}


resolveType.PendingType =
function (node, nodes, classDefs = DefinitionContainer(nodes),  ...) 
    resolveType(node, node@env$.nodes)
