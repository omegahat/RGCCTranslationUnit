
FunctionPointer =
function(funDef, alias = character())
{
 #XXX typename
  ans = new("FunctionPointer", name = funDef@name)
  ans@returnType = funDef@returnType

  parms = funDef@parameters
  i = grep("^[0-9]+$", names(parms))
  if(length(i) == length(parms))
    names(parms) = NULL
  else
    names(parms)[i] =  ""
  ans@parameters = parms

  ans@alias = alias

  ans
}  

isVoidP =
function(type)
    is(type, "PointerType") && is(type@type, "voidType")   # perhaps make into its own type


fixUserData =
function(def)
{
  w = sapply(def$parameters, function(x) isVoidP(x$type))
  if(!any(w))
    return(def)

  i = sapply(which(w), function(i) {
                         if(i > 1) 
                            isFunctionPointer(def$parameters[[i - 1]]$type)
                         else
                            FALSE
                       })

  if(any(i)) {
    old = def$parameters[[ which(w)[1] ]]$type
    def$parameters[[ which(w)[1] ]]$type = new("UserDataType", name = old@name, alias = old@alias)
  }    

  def
}


isFunctionPointer =
function(type)
{
  is(type, "FunctionPointerType") ||
        (is(type, "TypedefDefinition") && is(type@type, "FunctionPointer"))
}

createProxyRCall =
  #
  # func = FunctionPointer
  # We are working with a C routine, but name it func for ease of reference
  #
  # functionVar  is the C expression that provides the R function to invoke
  # This might be a simple variable name referring to a "non-local" variable,
  # an expression such as vars->circle
  # 
  #  preamble is extra code that is inserted at the end of the declarations
  # This allows the caller to perform some local initializations, e.g. declare
  #  a variable that cases one of the parameter symbols to a particular type and 
  #  then we can use this to find the function later one.
  #

function(func, name, functionVar = paste("R", name, "function_var", sep = "_"),
          preamble = character(), typeMap = list())  
{
  if(length(names(func@parameters)) == 0)
     names(func@parameters) = paste("r", seq(along = func@parameters), sep = "")

  params = func@parameters
  
  w = sapply(params, function(x) isVoidP(x@type))
  
  n = length(params[!w]) + 1
  
  if(!missing(functionVar) && any(w))
     fun = paste("(SEXP)", names(params)[which(w)[1]])
  else
     fun = functionVar

  
  isVoid = is(func@returnType, "voidType")
      #XXX Merge if possible with the same sort of thing in derivedClass.R. Hardly worth it!!!!
  addParams =  sapply(names(params)[!w],
                       function(id)
                            paste("SETCAR(p,", convertValueToR(id, params[[id]]@type, names(params), typeMap = typeMap), "); p = CDR(p);")
                      )

  declAns = if(!isVoid) getNativeDeclaration("ans", func@returnType)
            else character()

  convertAns = if(!isVoid) convertRValue("ans", "r_ans", func@returnType, typeMap = typeMap) 
               else character()
  
  txt = c(getNativeDeclaration("", func@returnType, addSemiColon = FALSE),
          paste(name, "(",
                   paste(sapply(names(func@parameters),
                                function(id) {
                                  if(isFunctionPointer(params[[id]]@type))
                                    return(character())

                                  getNativeDeclaration(id, params[[id]]@type, addSemiColon = FALSE)
                                }), collapse = ", "), ")"))
                               

  test = paste("if(", fun, "== NULL ||", fun, "== R_NilValue)", if(isVoid) "return" else "return(ans)", ";")
  
  txt = c(txt,
    "{",
    "SEXP e, p, r_ans;",
    declAns, 
    "",   
    preamble,
    "",
    test,
    "",
    paste("  PROTECT(p = e = allocVector(LANGSXP,", n, "));"),
    paste("  SETCAR(p,", fun, "); p = CDR(p);"),
    "",
    addParams,
    "",
    "PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));",
    convertAns,
    "UNPROTECT(2);",
    paste("return", if(!isVoid) "(ans)", ";"),
    "}")

   CRoutineDefinition(name, txt)
}


createCallbackProxy =
function(params, id)
{
  w = lapply(params, createCallbackProxyFromParameter, id)
  w[!sapply(w, is.null)]
}

proxyCallbackName =
function(id)
  paste("R", id, "proxy_callback", sep = "_")

createCallbackProxyFromParameter = 
function(param, id) {
    if(isFunctionPointer(param$type))
       createProxyRCall(as(param$type, "FunctionPointer"),  proxyCallbackName(id))

    
#   w = sapply(param, )
#   if(any(w)) {
#     tp = param[[which(w)[1]]]@type
#     print(tp)

#   } 
 }


setAs("TypedefDefinition", "FunctionPointer",
       function(from) {
         if(is(from@type, "FunctionPointer"))
           from@type
         else
           stop("you're supposed to have checked whether this typedef is a FunctionPointer with isFunctionPointer() ;-)!")
       })
