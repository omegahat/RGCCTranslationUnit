##############################################################################################
# Represents a C routine we define ourselves.


#setClass("RClassDef", representation("character", name = 'character'))
#setClass("RClassDef", contains = "character")
setOldClass("RClassDef")

RClassDef =
function(def, name)
  structure(def, names = name, class = "RClassDef")    

setClass("CodeDefinition",
          representation("VIRTUAL",
                         code = "character",
                         name = "character",
                         nargs = "integer"))

setMethod("show", "CodeDefinition",
           function(object) {
            cat(object@code, "\n")
           })

setClass("NativeRoutineDefinition",
          representation(prototype = "character"), contains = "CodeDefinition")

setClass("RFunctionDefinition",
           representation(signature = "character",
                          paramDefaults = "character"),
           contains = 'CodeDefinition')

#XXX Put this into the class hierarchy properly
# There are several ways to do it, possibly with multiple inheritance
setClass("RAnonymousFunctionDefinition", contains = "RFunctionDefinition")

  # signature is a character vector, not a string containing the individual arguments
  # Should the defaults be in the signature and the parameter names used as names for that
  # vector.  Or should defaults be a list()  of real R object.s
  # Or should we just us a generic object or an expression rather than this text form!
setClass("S4CodeDefinition", contains = 'RFunctionDefinition')

setClass("RMethodDefinition", representation(dispatchSignature = "character"), contains = "S4CodeDefinition")
setClass("RGenericDefinition", contains = 'S4CodeDefinition')



setClass("R$Definition", contains = "RMethodDefinition",
                  prototype = list(signature = c("x", "name"), nargs = 2L, name = "$"))
setClass("R$<-Definition", contains = "RMethodDefinition",
                  prototype = list(signature = c("x", "name", "value"), nargs = 3L, name = "$<-"))


setClass("R[Definition", contains = "RMethodDefinition",
                  prototype = list(signature = c("x", "i", "j", "...", "drop"),
                                   paramDefaults = c(drop = "TRUE"),
                                    nargs = 5L, name = "["))

setClass("R[[Definition", contains = "RMethodDefinition",
                  prototype = list(signature = c("x", "i", "j", "...", "exact"),
                                   paramDefaults = c(exact = "TRUE"),
                                    nargs = 3L, name = "[["))
setClass("R[[<-Definition", contains = "RMethodDefinition",
                  prototype = list(signature = c("x", "i", "j", "...", "exact", "value"),
                                   paramDefaults = c(exact = "TRUE"),
                                    nargs = 3L, name = "[[<-"))

setClass("RAsDefinition", contains = "RMethodDefinition",
                  prototype = list(signature = c("from"), nargs = 1L, name = "setAs"))


   
setClassUnion("RAnonymousFunctionOrCode", c("RAnonymousFunctionDefinition", "character")) # either the name of a function
setClass("ActiveBinding", representation(name = "character",
                                         code = "RAnonymousFunctionOrCode",
                                         environment = "character"),
                          prototype = list(environment = "globalenv()"))

setClass("InlineActiveBinding", contains = "ActiveBinding")

# e.g.
#new("ActiveBinding", name = "foo", code = "function(x) x")
#new("ActiveBinding", name = "foo", code = "bob")
#new("ActiveBinding", name = "foo", code = new("RAnonymousFunctionDefinition", code = "x", signature = "x"))
#new("InlineActiveBinding", name = "foo", code = new("RAnonymousFunctionDefinition", code = "x", signature = "x"))

setAs("ActiveBinding", "character",
       function(from) {
         paste("makeActiveBinding(", sQuote(from@name), ",", as(from@code, "character"), ",", from@environment, ")")
       })

ActiveBinding =
function(name, code, environment = "globalenv()",
          obj = new(  if(is(code, "RAnonymousFunctionDefinition")) "InlineActiveBinding" else "ActiveBinding"))
{
  obj@name = name
  if(is(code, "RAnonymousFunctionDefinition"))
    code@name = character()
  obj@code = code
  obj@environment = environment
  obj
}  

#######################

RDollarDefinition =
  # e.g. RDollarDefinition("bob", " 1", set = TRUE)
function(class, code, set = FALSE, obj = new(if(set) "R$<-Definition" else "R$Definition"))
{
  RMethodDefinition(obj@name, class, code, obj@signature, character(), obj)
}

RDoubleBracketDefinition =
  # e.g. RDoubleBracketDefinition("bob", " 1", set = TRUE)
function(class, code, set = FALSE, copy = FALSE, obj = new(if(set) "R[[<-Definition" else "R[[Definition"))
{
  if(copy) {
    obj@signature = c(obj@signature, "copy")
    obj@paramDefaults["copy"] = "TRUE"
  }

  RMethodDefinition(obj@name, class, code, obj@signature, obj@paramDefaults, obj)
}

RSingleBracketDefinition =
  # e.g. RDoubleBracketDefinition("bob", " 1", set = TRUE)
function(class, code, set = FALSE, copy = FALSE, obj = new(if(set) "R[<-Definition" else "R[Definition"))
{
  if(copy) {
    obj@signature = c(obj@signature, "copy")
    obj@paramDefaults["copy"] = "TRUE"
  }

  RMethodDefinition(obj@name, class, code, obj@signature, obj@paramDefaults, obj)
}



setAs("RMethodDefinition", "RAnonymousFunctionDefinition",
       function(from) {
         new("RAnonymousFunctionDefinition",
              code = from@code, signature = from@signature, paramDefaults = from@paramDefaults)
       })

  # See computeOverloadedSignatures
#XXX
setOldClass(c("GenericDefinitionList")) # , "list"

setMethod("show", "RFunctionDefinition", function(object) cat(as(object, "character"), "\n"))

setAs("RFunctionDefinition", "character",
      function(from) {
        defaults = from@paramDefaults
        n = length(from@signature)
        values = rep("",  n)
        if(length(defaults) > 0) {
          if(length(names(defaults))) {
             i = match(names(defaults), from@signature)
             values[i] = paste("=", defaults)
          } else {
             i = defaults != ""
             values[which(i)] =  paste("=", defaults[i])
          }
        }

      paste(
            c(if(!is(from, "RAnonymousFunction") && length(from@name) == 0 || is.na(from@name)) "" else paste(from@name, "<-"),
              paste("function(", paste(from@signature, values, collapse = ", "), ")"),
              "{",
              from@code,
              "}"
             ), sep = "\n", collapse = "\n")

    })

setAs("RGenericDefinition", "character",
      function(from) {
      if(is.na(from@name))
        return(as.character(NA))

      anon = as(from, "RFunctionDefinition")
      anon@name = character()
      anon@code = if(length(from@code)) from@code else paste("standardGeneric(", sQuote(from@name), ")")

      paste("setGeneric(", sQuote(from@name), ",  " ,
             as(anon, "character"), ")\n")
    })

setAs("RMethodDefinition", "character",
      function(from) {
        anon = as(from, "RFunctionDefinition")
        anon@name = character()
      paste("setMethod(",
               sQuote(from@name), ", c(", paste(sQuote(from@dispatchSignature), collapse = ", "), "), ",
             paste("    ", as(anon, "character"), collapse = "\n"), ")\n")
    })


setAs("RAsDefinition", "character",
      function(from) {
        anon = as(from, "RFunctionDefinition")
        anon@name = character()
      paste("setAs( ",
             paste(sQuote(from@dispatchSignature), collapse = ", "), ", ",
             paste("    ", as(anon, "character"), collapse = "\n"), ")\n", sep = "")
    })


RAsDefinition =
  # e.g.  RAsDefinition("bob", "character", "as.character(from^2)")
function(from, to, code, obj = new("RAsDefinition"))
{
  obj@dispatchSignature = c(from, to)
  obj@code = if(inherits(code, "AsIs")) code
             else formatCode(code)
  obj
}


setAs("NativeRoutineDefinition", "character", function(from) from@code)


setClass("CRoutineDefinition",
          representation(declaration = "character"),
          contains = "NativeRoutineDefinition")
setClass("C++RoutineDefinition", contains = "CRoutineDefinition")
setClass("C++MethodDefinition",
          representation(className = "character",
                        access = "character"),
          contains = "C++RoutineDefinition")

setClass("C++ConstructorDefinition", contains = "C++MethodDefinition")

setClass("DotCallRoutineDefinition", contains = "CRoutineDefinition")

CRoutineDefinition =
  #Edited 12/28/2009 by gabe to add code to set the prototype slot
function(name, code, nargs = NA, declaration = getDeclaration(code), className = character(),
         obj = new("CRoutineDefinition"), formatCode = TRUE)
{
  if(is.character(obj))
    obj = new(obj)
  
  obj@name = name
  if(length(className)) {
        #XXX  2 is a bit arbitrary, but okay for the moment
    i = if(is(obj, "C++ConstructorDefinition")) 1 else 2
    code[i] = paste(className, "::", code[i])
  }
  
  obj@code = if(formatCode) formatCode(code) else code
  obj@nargs = as.integer(nargs)
  obj@declaration = declaration
    # do we need the  __cplusplus
  obj@prototype = paste("#ifdef __cplusplus",'extern "C"', "#endif", getDeclaration(obj), sep=" \n ", collapse="")
    
  obj
}

`C++MethodDefinition` =
function(name, code, nargs = NA, declaration = getDeclaration(code), className = character(),
         obj = new("C++MethodDefinition"), formatCode = TRUE)
{
  CRoutineDefinition(name, code, nargs, declaration, className, obj, formatCode)
}


computeSignature =
function(code)
{
  e = parse(text = code)
  formals( eval(e) )
}

RFunctionDefinition =
function(name, code, signature = NA, defaults = character(), obj = new("RFunctionDefinition"))
{
  if(is.character(obj))
    obj = new(obj)
  
  obj@name = name

  if(length(signature) == 1 && is.na(signature)) {
    els = computeSignature(code)
    obj@signature = names(els)
    obj@paramDefaults = sapply(els, deparse)

    # Don't want to do this as it loses the original formatting.
    b = body(eval(parse(text = paste(code, collapse = "\n"))))
#Sort out the { and get rid of it.    if(is(b,"{"))       b = b[1]
    code = deparse(b)
    
  } else
    obj@signature = signature

  if(!missing(defaults))
    obj@paramDefaults = defaults

  obj@code = formatCode(code)
  obj
}

RMethodDefinition =
function(name, dispatch, code, signature, defaults = character(), obj = new("RMethodDefinition"))
{
  obj = RFunctionDefinition(name, code, signature, defaults, obj = obj)
  obj@dispatchSignature = dispatch
  obj
}  


formatCode =
function(code, force = FALSE, indent = "    ")
{
  if(inherits(code, "AsIs"))
    return(paste(code, collapse = "\n"))
  
  if(force)
    code = strsplit(code, "\n")[[1]]

  if(length(code) == 1)
      return(code) 

  # Should be something close to body = 3:(length(code)-1) if use
  # SEXP
  #  name(...)
  # {
  # ....
  # }
  pos = lapply(c("^[ ]*\\{", "^[ ]*\\}"), grep, code)

  if(all(sapply(pos, length) != 0))
      body = (min(pos[[1]]) +1): (max(pos[[2]]) - 1)
  else
    body = seq(along = code)
  
  code[body] = paste(indent, code[body], sep = "")
  
  paste(code, collapse = "\n")
}  

RCode =
function(..., .txt = unlist(list(...)), indent = "", class = "RCode")
{
 structure(paste(indent, .txt, collapse = "\n"),
           class = class)
}


getDeclaration =
#Edited by Gabe 12/28/2009 because the function was removing the
  #'extern "C" but not the #ifdef __cplusplus and #endif
  function(obj)
{
  if(is(obj, "CRoutineDefinition") && length(obj@declaration))
    return(paste(obj@declaration, ";"))
  
  if(is(obj, "CRoutineDefinition"))
    x = obj@code
  else
    x = as(obj, "character")

  if (length(x) == 1)
        x = split(x, sep="\n")
  
  i = which(x == "{")
    
  x = x[1:(i-1)]
  i = match('extern "C"', x)
  if(!is.na(i))
    x = x[ - i]

  j = match(c("#ifdef __cplusplus", "#endif"), x)
  if (!is.na(j[[1]])) x = x[-j]

  paste(x, collapse = " ")
}  

