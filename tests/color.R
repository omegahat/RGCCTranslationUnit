setClass("EnumValue", contains = "integer")

setClass("Color", contains = "EnumValue")

ColorEnum = structure(as.integer(c(1, 2, 4)), names = c("RED", "GREEN", "BLUE"))

asEnumValue =
  function(from, to, strict = TRUE, def = get(paste(to, "Enum", sep = ""), mode = "integer")) {
     if(is.character(from))
       idx = match(from, names(def))
     else
       idx = match(from, def)

     if(is.na(idx))
       stop("Invalid value for ", to, " enumeration.")

     new(to, def[idx])
  }

setAs("integer", "Color",
       function(from)
          asEnumValue(from, "Color", def = ColorEnum))

setAs("numeric", "Color",
       function(from)
          asEnumValue(from, "Color", def = ColorEnum))

setAs("character", "Color",
       function(from)
          asEnumValue(from, "Color", def = ColorEnum))
