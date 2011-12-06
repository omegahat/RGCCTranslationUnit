
asStringWarnings = new.env(TRUE)
setAs("TypeDefinition", "character",
      function(from) {
        assign(class(from), TRUE, envir =  asStringWarnings)
   #     warning("No method for as(", class(from), ", 'character'")
        ""
      }
     )


setAs("BuiltinPrimitiveType", "character",
      function(from)
         from@name
       )


setAs("BuiltinPrimitiveType", "C++ClassDefinition",
      function(from)
         from@name
       )

setAs("BuiltinPrimitiveType", "EnumerationDefinition",
      function(from)
         from@name
       )

setAs("PointerType", "character",
      function(from)
       paste(from@typeName, paste(rep("*", from@depth), sep = "")))


setAs("C++ReferenceType", "character",
      function(from)
       paste(as(from@type, "character"), "&"))

setAs("TypedefDefinition", "character",
      function(from)
        from@name
     )


setAs("EnumerationDefinition", "character",
      function(from)
         paste("enum", from@name)
       )

