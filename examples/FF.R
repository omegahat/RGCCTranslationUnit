# Foreign Function example

f =
function()
{
  .Call("foo")
}  

g =
function()
{
  .C("bar")
}  

ff =
function()
{
  .Call(foobar)
}  

if(FALSE) {

rr = RGCCTranslationUnit:::getNativeRoutineCalls("~/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/examples/FF.R")

source("FF.R")
RGCCTranslationUnit:::getNativeRoutineCalls(ff)
}
