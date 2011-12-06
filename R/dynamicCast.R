#
# Generate the code for dynamic casting.
#
# The idea is that we have a generic pointer object,
# e.g. C++ExternalPtr and we want to cast to a specific
# class, e.g. wxWindow.  Then we have the R expression
#   as(p, "wxWindow")
# and we have
#    setAs("C++ExternalPtr", "wxWindow",
#            function(from) {
#              .Call("R_wxWindow_cast", from)
#            }
#
# and the C++ routine is
#
#     SEXP  R_wxWindow_cast(SEXP r_obj) {
#        void *ptr = R_get_wxWidget_Ref(r_obj, NULL);
#        wxWindow *ans = wxDynamicCast(ptr, wxWindow);
#        if(!ans) {
#           PROBLEM "..."
#           ERROR;
#        }
#        return(R_make_wxWidget_Ref(ans, "wxWindow"));

# This example is really wx-specific but the generated code is not.


# We also want to do some casting.


doDynamicCast =
 function(var, className, target)
    paste(target, "=", "dynamic_cast<", className, "*>(", var, ");")


createDynamicCastCode =
  #
  #  className is to which class
  #
  #
function(className, parents, ancestors, doCast = doDynamicCast, baseClass = "RC++Reference")
{
  realClassName = if(is(className, "C++ClassDefinition")) className@name else className
  
   # this is a general cast from an untyped RC++Reference to this type.
  r = paste("setAs('", baseClass, "', '", realClassName, "',",
            "\n  function(from) {\n    .Call('R_", realClassName, "_cast', from, as.integer(1))\n  })", sep = "")

    # add the explicit casts from this class up the hierarchy.
  r = c(r, "\n",
        sapply(unique(c(parents, ancestors)),
                 function(p)
                    paste("\nsetAs('", realClassName, "', '", p, "', function(from) .Call('R_", p, "_cast', from, as.integer(1)))\n", sep = "")))

    # Add a switch statement for the particular type of cast
    #  static, dynamic, reinterpret.
    # Use an enum for this.
    # On Linux with g++-4.1, regardless of the type of casting we do, we get the same
    # address.

  if(is.function(doCast))
    doCast = list(dynamic = doCast)
  
  sw = sapply(c("static", "dynamic", "const", "reinterpret"),
              function(how) {
                
                if(how %in% names(doCast))  {
                   f = doCast[[how]]
                   if(is.function(f))
                       cmd = f("ptr", className, "ans")
                   else
                       cmd = paste("ans = ", f, className, "(ptr);", sep = "")                     
                } else  
                   cmd = paste("ans = ", how, "_cast<", realClassName, "*>(ptr);", sep = "")

                c(paste("case", toupper(how), ":"),
                  cmd,
                  "break;")
              })
  
  cpp = c('extern "C"',
          "SEXP",
          paste("R_", realClassName, "_cast(SEXP r_obj, SEXP r_how)", sep = ""),
          "{",
           "CastType how = static_cast<CastType>(asInteger(r_how));",
#          "void *ptr = R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL);",
            # use one of the cast operators here.
          paste(realClassName, " *ptr = dynamic_cast<", realClassName, "*>( (", realClassName, "*) R_getNativeReference(r_obj, (const char *) ", dQuote(realClassName), ", (const char *) NULL));"),    
             # make this customizable so we can use for different C++ libraries.
          paste(realClassName, "* ans;"),
          "switch(how) {",
          paste("\t", sw),
          "}",
          "if(!ans) {",
          paste('   PROBLEM "failed to cast to ', realClassName, '"', sep = ""),
          "    ERROR;",
          "}",
          paste('return(', createNativeReference("ans", className, className), ');', sep = ""),
          "}")

  structure(list(native = CRoutineDefinition(paste("R_", realClassName, "_cast", sep = ""), cpp, 2L),
                 r = r),
            class = "DynamicClassCast")
}






#######################


createDynamicCastCode =
  #
  #  className is to which class
  #
  #
function(from, to, doCast = doDynamicCast)
{
  routineName = paste("R_", from, "_", to, "_cast", sep = "")
 
   # this is a general cast from an untyped RC++Reference to this type.
  r = paste("setAs(", sQuote(from), ", ", sQuote(to), ",",
            "\n  function(from) {\n    .Call(", sQuote(routineName), ", from, as.integer(1))\n  })", sep = "")

  if(is.function(doCast))
    doCast = list(dynamic = doCast)
  
  sw = sapply(c("static", "dynamic", "const", "reinterpret")[-3],
              function(how) {
                
                if(how %in% names(doCast))  {
                   f = doCast[[how]]
                   if(is.function(f))
                       cmd = f("ptr", to, "ans")
                   else
                       cmd = paste("ans = ", f, "(ptr);", sep = "")                     
                } else  
                   cmd = paste("ans = ", how, "_cast<", to, "*>(ptr);", sep = "")

                c(paste("case", toupper(how), ":"),
                  cmd,
                  "break;")
              })
  
  cpp = c('extern "C"',
          "SEXP",
          paste(routineName, "(SEXP r_obj, SEXP r_how)", sep = ""),
          "{",
           "CastType how = static_cast<CastType>(asInteger(r_how));",
            # use one of the cast operators here.
          paste(from, " * ptr = (", from , "*) R_getNativeReference(r_obj, (const char *) ", dQuote(from), ", (const char *) NULL);"),
             # make this customizable so we can use for different C++ libraries.
          paste(to, "* ans = NULL;"),
          "switch(how) {",
          paste(c("\t", "\t    ", "\t"), sw),
          "}",
          "if(!ans && ptr) {",
          paste('   PROBLEM "failed to cast from ', from, ' to ', to, '"', sep = ""),
          "    ERROR;",
          "}",
          paste('return(', createNativeReference("ans", to, to, refClass = to), ');', sep = ""),
          "}")

  structure(list(native = CRoutineDefinition(routineName, cpp, 2L),
                 r = r),
            class = "DynamicClassCast")
}
