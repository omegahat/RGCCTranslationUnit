kall =  function()
 .Call("R_call", 1, 2, 3)

ambiguous =
  function()
    .Call("R_ambiguous", 1, 2, 3, 4)

external =
  function()
    .External("R_external", 1, 2, 3, 4)


 c_=
  function()
  .C("R_c", as.integer(1), 2, as.character(3), raw(4))

otherc =
  function()
   .C("R_otherc")

