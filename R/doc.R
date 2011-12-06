setGeneric("writeDocumentation",
            function(obj, file = stdout(), ...)
              standardGeneric("writeDocumentation"))

# Return as sections to allow people to add to them.


methodDoc = 
# Added to fill void.
# What else should be going on here.
function(methodName, signature)
{
 sprintf("\\alias{%s,%s-method}", 
             methodName, paste(signature, collapse = ","))
}

setMethod("writeDocumentation",
           "CStructInterface",
           function(obj, file = stdout(), ...) {
              refClass = getReferenceClassName(obj)

              list(name = obj@name,
                   aliases =
                      c(paste("\\alias{", c(obj@name, ), "-class}", sep = ""),
                        paste("\\alias{coerce", obj@name, ",", refClass, "-method", sep = ""),
                        paste("\\alias{coerce", refClass, ",", obj@name, "-method", sep = "")),
                   title = paste("\\title{Classes", obj@name, "&", refClass, "}"),
                   slots = sapply(),

                   methods = c(methodDoc("coerce", signature(from = obj@name, to = refClass))),
                   txt = c(paste("\\name{", obj@name, "-class}", sep = ""),
                           "\\docType{class}",
    

                           "\\section{Objects from the Class}",
                           paste("Objects can be created with calls to \\code{new('", obj@name, "')}", sep = ""))
                     
                 )
})
  
  
