# setOldClass("TUParser")

setOldClass("StructAccessors")
setOldClass("ComputeConstants")
#setOldClass(c("TopLevelEnumDefs", "integer"))
#setClass(c("TopLevelEnumDefs"), contains = "integer")
setOldClass("TopLevelEnumDefs")
setOldClass("GlobalVariableCode")

setOldClass("NativeRegistrationInfo")
setOldClass("RegistrationInfo")


setOldClass("UnboundMethod")
setOldClass("NoopRoutine")
setOldClass("CStructInterface")
setOldClass("OverloadedMethodRCode")
setOldClass("ClassDefinition")
setOldClass("C++ClassInterfaceBindings")
setOldClass("C++MethodInterface")
setOldClass("C++RoutineInterface")
setOldClass("NamedFunctionDefinition")
setOldClass("FunctionDefinition")

#setOldClass("EnumerationDefinition")



setClass("SelfSubsettingList", contains = "list")
setMethod("[", "SelfSubsettingList",
function(x, i, j, ..., drop = TRUE)
{
  ans = unclass(x)[i, j, ...]
  class(ans) = class(x)
  ans
})

setClass("ResolvedRoutineList", contains = "SelfSubsettingList")


if(USE_NATIVE_TU_PARSER) {
        # done differently for Perl to use PerlHashReference
  setOldClass("NativeRoutineDescription")
}



# From defines.R
setOldClass("DefineConstants")
setOldClass("TopLevelConstants")
setOldClass("SymbolicBitlistDefinition")
setOldClass("SymbolicEnumDefinition")


# Came from types.R but needed here for ordering.
#XXX setOldClass(c("TUParserIndex", "integer"))
setClass("TUParserIndex", contains = "integer")
setClass("NativeTUParserIndex", contains = "TUParserIndex")


setClassUnion("NodeIndex", c("integer", "character", "NULL"))




