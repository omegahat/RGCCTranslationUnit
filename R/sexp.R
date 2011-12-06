isSEXP =
 #
 # Tests whether the specified type identifies a SEXP.
 #
function(type)
{
  is(type, "TypedefDefinition") && type@name == "SEXP"  && is(type@type, "PointerType") && type@type@type@name == "SEXPREC"
}
