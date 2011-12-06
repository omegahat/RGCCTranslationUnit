
setGeneric("foo",
           function(x, y, msg)
             standardGeneric("foo"))

setGeneric("foo",
           function(x, y = 1, msg = "A message")
             standardGeneric("foo"))


setMethod("foo", "numeric",
           function(x, y = 2, msg = "Another message")
             list(x = x, y = y, msg = msg))

setMethod("foo", "integer",
           function(x, y = 4, msg = "A different message")
             list(x = x, y = y, msg = msg) )

setMethod("foo", "character",
           function(x, y = 3.2, msg = "")
             list(x = x, y = y, msg = msg))

foo(1)
foo(1L)
foo("1")

