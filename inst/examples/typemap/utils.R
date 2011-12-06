asFILE =
function(filename)
{
  if(!file.exists(filename))
    stop("No such file ", filename)

  path.expand(filename)
}


setClass("FILERef", contains = "RC++Reference", prototype = list(classes = "FILE"))
setAs("character", "FILERef",
        function(from) {
          .Call("R_asFILERef", from, "r")
        })
