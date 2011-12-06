
.First.lib =
function(libname, pkgname)
{
  .onAttach(libname, pkgname)
  if(USE_NATIVE_TU_PARSER)
    library.dynam("RGCCTranslationUnit", pkgname)
}

.onAttach =
function(libname, pkgname)
{
  Sys.setenv("PERL5LIB" = computePERL5LIB())
 
  # If RSPerl is already loaded, we want to add the entry to the
  #  el = computePERL5LIB(collapse = character())
  # unshift(@INC, el)
}

computePERL5LIB =
function(orig = Sys.getenv("PERL5LIB"), collapse = ":")
{  
  if(orig == "")
    orig = character()

  pkgname = "RGCCTranslationUnit"
  els = system.file("share", "perl", "lib", "perl5", "site_perl", package = pkgname)
#  els = c(els, system.file("share", "perl", "lib64", "perl5",  package = pkgname))
#  els = c(els, system.file("share", "perl", "lib64", "perl5", "site_perl", package = pkgname))

  if(length(collapse) == 0)
    return(els)

  paste(c(orig, els),  collapse = .Platform$path.sep)
}
