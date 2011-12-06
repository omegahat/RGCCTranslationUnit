#
# Find and process constants in C/C++ code that are defined
# using the macro pre-processor mechanism #define.
#

# show(getDefines("wxTE_", dir = "/usr/local/include/wx-2.6/wx"))

# To fix:

# The groups that appear to be Enums rather than bitlists are
# names(defs$enums[sapply(defs$enums, class) == "SymbolicEnumDefinition"])
# [1] "wxACC"   "wxCHB"   "wxID"    "wxLB"    "wxPRINT" "wxTYPE" 

# Legitimate ones: wxID, wxPRINT, wxTYPE

#    wxACC doesn't separate the elements into sub-groups. Really several distinct groups.
#    wxCHB has both 1 and 15 but the 15 is wxCHB_ALIGN_MASK
#    Same for wxLB although wxLB merges values for Listbox and Listbook
#     and each are
# Listbox:  "wxLB_SORT"      "wxLB_SINGLE"    "wxLB_MULTIPLE"  "wxLB_EXTENDED" 
#           "wxLB_NEEDED_SB" "wxLB_ALWAYS_SB" "wxLB_HSCROLL"
#
# Listbook: "wxLB_DEFAULT"    "wxLB_TOP" "wxLB_BOTTOM"     "wxLB_LEFT"       "wxLB_RIGHT"
#
# leaving   "wxLB_OWNERDRAW"  - listbox but windows only
#           "wxLB_INT_HEIGHT" - listbox
#           "wxLB_ALIGN_MASK" - listbook
# 


### multi-line macros.

# wx

getCppDefines =
  #
  #  This uses the -dM flag to dump the #defines.
  #  We do it on an empty file and then on the target file and so 
  #  can discard the system #defines that are not part of 
  #
function(fileName = character(), cppFlags = "",
          cpp = "g++", flags = "-E -P -dM",
          sysIncludes = c("stdlib.h", "stdio.h"))
{
  tmp = paste(tempfile(), ".cxx", sep = "")
  on.exit(unlink(tmp))
  cpp = paste(cpp, flags)

  if(length(sysIncludes))
      cat(paste("#include <", sysIncludes, ">", sep = "", collapse = "\n"), "\n", file = tmp)
  else
      system(paste("touch", "tmp"))

  sys = system(paste(cpp, tmp), intern = TRUE)

  if(length(fileName) == 0)
     return(sys)

  defs = system(paste(cpp, path.expand(fileName), cppFlags), intern = TRUE)
  defs = setdiff(defs, sys)

  class(defs) = "PreprocessorComputedDefines"
  
  invisible(defs)
}



#XX get rid of the getDefines function name.
getDefines = getDefineConstants =
function(dir = character(), pattern = ".*", files = "*",  class = c("TopLevelConstants", "DefineConstants"),
         removeDuplicates = TRUE, getSkipped = FALSE)
{  
  cmd = paste("grep", pattern, paste(dir, files, sep = .Platform$file.sep))
  els = system(cmd, intern = TRUE)
    # discard the lines starting with #include and also with
    # :// (with optional white space at the beginning)
    # Don't really need to do this here.
  els = els[ - grep("://", els) ]
  els = els[ - grep("#include", els, perl = TRUE) ]

  processDefines(els, class) # , removeDuplicates) # , getSkipped = getSkipped)
}

processDefines =
  #
  # This now simply cleans up the inputs by getting rid of the #define
  # (and anything before it), getting the definition and putting the 
  # declaration as the name and then discarding the elements with 
  # no definition, i.e. the simple flags that used in #ifdef/#ifndef.
  # We may want those.

  #
  # This returns a list with the macros divided into groups
  #  macros
  #  parameterizedMacros
  # if keepFlags = TRUE, we get
  #  flagDefines
  # and if keepFlags is TRUE and headerIfDefPattern is non-empty
  #  ignored
  #
  # internal - not for exporting.
  #
  # This is for when we have done the grep ourselves or computed the 
  # #define lines from the preprocessor directly.
  #
  # We find all the #define lines.
  #
function(lines, class = c("TopLevelConstants", "DefineConstants"),
#XXX ignore          removeDuplicates = TRUE, getSkipped = FALSE,
          headerIfDefPattern = "(_H_{,2}|_H_BASE_)$",
          keepFlags = length(headerIfDefPattern) && nchar(headerIfDefPattern),
          filter = filterMacros, ..., tu = NULL
         )
{  
   # Now find only the lines starting with ...:#define
  if(!inherits(lines, "PreprocessorComputedDefines")) {
     els = grep("^.*:\\s*#define", lines, value = TRUE, perl = TRUE)
       # Get rid of the ...:#define prefix, i.e. filename line number: #define....
     locations = gsub("^(.*:)#define", "\\1", els)
  } else {
     locations = character()
     els = lines
  }

    # kill everything up to and including the #define 
  els = gsub("^(.*:)?#define", "", els)     
  
    # Remove comments
  els = gsub("//.*$", "", els)
    # may remove too much.
  els = gsub("/\\*.*\\*/$", "", els)


   # trim white space from beginning and end.
  els = gsub("[\t ]+$", "", els)
  els = gsub("^[\t ]+", "", els)

    # Now get the pairs of name values into a vector.
    # This is a very simple approach. We just break the string by white space.
    # Then we will look for parentheses.
  pairs = strsplit(els, "[\t ]+")

    # XXX what about those that have 3 elements or just 1.
    #  e.g.
    #     #define A(var, type)  const type var
    # would have 3 and
    #     #define  A \
    #           body of macro
    # would find only one.
    # But we do catch
    #     #define FAR <empty>


    # Get rid of the pairs and the els elements with only a single string.
    #XXX check this is appropriate. Recently added
    # The length one defines are typically part of avoiding including a file
    # multiple times, e.g. #ifndef FILENAME_H  #define FILENAME_H ... #endif
    # However, there are others such as simple flags with no values, e.g.
    # __int8_t_defined.  (Are these in the system defines?)
  n = sapply(pairs, length)

  pairs = structure(sapply(pairs, function(x) paste(x[-1], collapse = " ")), names = sapply(pairs, "[", 1))

  i = grep("\\$", names(pairs))
  if(length(i)) {
    pairs = pairs[-i]
    n = n[-i]
  }
  
  ans = list()
  
  i = grep("\\(", names(pairs))
  if(length(i)) {
     ans$parameterizedMacros = pairs[i]
     n = n[-i]
     pairs = pairs[ -i ]
  }

  ans$macros = pairs[ n  > 1]


    # there may be duplicates if we are just grepping the .h files.
    # If we use getCppDefines, things are better, assuming we have the correct
    # flags.
  if(!inherits(lines, "PreprocessorComputedDefines"))   
    ans$duplicates = getDuplicates(pairs)

  if(keepFlags) {
    tmp = pairs[n == 1]
    tmp[] = "TRUE"
    if(length(headerIfDefPattern)) {
      i = grep(headerIfDefPattern, names(tmp))
      ans$flagDefines = tmp[ -i ]
      ans$ignored = tmp[i]
    } else 
      ans$flagDefines = tmp
  } else {
    ans$ignored = pairs[n == 1]
    #pairs = pairs[ n  > 1 ]
    #els = els[ n > 1]
  }

  class(ans)  = "OrganizedPreprocessorDefines"

  if(length(filter)) {
    if(is.function(filter))
      ans = filter(ans, tu = tu, ...)
    else if(is.list(filter)) {
        # assume we have a list of functions.
      for(f in filter)
        ans = f(ans, tu = tu, ...)
    }
  }
  
  ans
}


if(FALSE) {

processDefinesAgain =
  #
  # Rename.
  #
  # Currently never called. Left over from experiments.
  # See filterDefines.
  
function(pairs, class = c("TopLevelConstants", "DefineConstants"),
          removeDuplicates = TRUE, getSkipped = FALSE)  
{
    # We will throw away names that have a ( as these are for "function-like" macros.
    #XXX See filterDefines
i = grep("\\(", names(pairs))
  
if(getSkipped) {
    # find which ones were not handled
    # which are the ones with a ( in the name or which
    # are not of length 2.
  n = sapply(pairs, length)
  byLen = which(n != 2)
  out = union(i, byLen)
  others = pairs[out]
  files = locations[out]
  return(list(defs = others, locations = files, raw = els[out]))
}

  pairs = pairs[ - i]

# Look at the distribution of the # of characters in the names of the pairs
#  table(nchar(names(pairs)))
  
    # We are looking for a single value. This may miss things like
    #  #define FOO  wxT("a string with spaces")
  pairs = pairs[ sapply(pairs, length) == 1 ]

  els = pairs

  dups = getDuplicates(els)
  # The duplicates arise from ifdef's. Our approach is particularly simple
  # and does not take into account what defines are in effect and so which
  # branch to take. Suprisingly, perhaps, we get the results we need
  # except for unimportant defines.
  if(length(dups))  {
      warning("duplicate defines for ", paste(names(dups), collapse = ", "), ".\n",
               if(removeDuplicates)
                   "Removing all but last definition for each duplicated name."
               else
                   "Please resolve before using results.")
      if(removeDuplicates) {
          # Do this rather than
          # i = match(names(dups), names(els))
          # just in case there are more than two elements for any duplicate
          #
        i = unlist(lapply(names(dups), function(x) {
                                           tmp = which(x == names(els))
                                           tmp[1:(length(tmp)-1)]
                                         }))

        els = els[ - i]
      }
  }
  
  class(els) = class

  els
}

} # end of if(FALSE) for processDefinesAgain()

getDuplicates =
  #
  # returns a list with elements corresponding to the macros that have
  # multiple, distinct definitions.
  #
function(els)
{
     # find all the duplicated names
     # first strip away the parameter names
    ids = names(els)
    ids = gsub("\\(.*$", "", ids)

    d = duplicated(names(els))    
    dd = names(els)[d]
      # for each duplicated name, get all the values of that name
    dups = lapply(dd, function(id)  els[names(els) == id])
      # see if they are actually the same definition
    d = sapply(dups, function(x) length(unique(x))) > 1
    dups = dups[d]
    names(dups) = dd[d]
    dups
}  

filterDefines  =
  #
  # Take the name-value pairs and get rid of the ones in which  
  # we are not interested, e.g.
  #  ones with  \\ in the value XXX want to be careful here!
  #  () in the name
  #
  # Then we examine the rest and try to pull them into a set of values
  # in which we are interested.  These are numeric values, values which 
  # are references to global variables or enum values.
  #
  # Then we see if we can identify patterns that look like an enum
  # based on the names of the name-value pairs.
  #
  # defs is a named character vector giving the value of each define.
  #


  # Check whether all the defined enums have a complete set of values.
  #
  # any(sapply(defs$enums, function(x) any(is.na(x$values))))
  # And all are okay.
  #
  
function(defs, enumDefs = integer(), globals = character())
{
  values = character()

  macroNames = names(defs)
    # Get rid of macros with a value that has multiple lines or
    # whose value contains a $.
  i = grep("(\\\\|\\$)", names(defs))
  if(length(i))  {
    defs = defs[-i]
    macroNames = macroNames[-i]
  }

   # get rid of macros that take an argument.
   # Although, some we may be able to use!
  i = grep("[)(])", names(defs))
  if(length(i))  {
    defs = defs[-i]
    macroNames = macroNames[-i]
  }

  n = length(defs)

    # drop a trailing L, UL or l
  defs = gsub("(0x[0-9A-F]+)L", "\\1", defs)
  defs = gsub("([0-9]+)UL", "\\1", defs)
  defs = gsub("([0-9]+)l", "\\1", defs)
 
  names(defs) = macroNames

    # Find the numeric defines, i.e. with RHS being interpretable as a number.
   #XXX trap the expected warning.
  nums = as.numeric(defs)
  names(nums) <- names(defs)
  
  values = defs[ !is.na(nums) ]
  defs = defs[ is.na(nums) ]

   # defines whose value is an enum
  i = match(defs, names(enumDefs))
  if(any(!is.na(i))) {
    values = c(values, defs[ !is.na(i) ])
    defs = defs[ is.na(i) ]
  }

   # defines whose value is a global variable.
  i = match(defs, names(globals))
  if(any(!is.na(i))) {
    values = c(values, defs[ !is.na(i) ])
    defs = defs[ is.na(i) ]
  }
  
   # defines whose RHS is a reference to an other define name.
  i = match(defs, names(values))
  if(any(!is.na(i))) {
    values = c(values, defs[ !is.na(i) ])
    defs = defs[ is.na(i) ]
  }

  # We'd like to group the elements with the same names
  # and see if they are really enums.
  # And if they are, then we'd like to figure out if they are
  # simple enums 1,2, 3, ... (even with gaps) or are they
  # for OR'ing and AND'ing bitwise, e.g. 2, 4, 8, 16, ...
  enums = discoverEnums(values, enumDefs)
  class(enums$values) = c("TopLevelConstants", "DefineConstants")

  enums$omitted = defs
  
  enums
}  

trim =
function(x)  
 gsub("(^[\\s]*|\\s*$)", "", x, perl = TRUE)


discoverEnums =
  #
  # This is specific to the wxWidgets library and should be an argument passed to 
  # filterDefines.
  #
function(vals, enumDefs = integer())
{
       # First find the elements whose names are wx<str>_....
       # need to find the prefix which is more complex, e.g
       # wxACC_STATE_SYSTEM and wxACC_EVENT_SYSTEM_
       # and wxACC_STATE_SYSTEM  is one group
       # suffix trees might help us find  common substi
  i = grep("wx[A-Z]+_", names(vals))

  #XXX want to get the "wx[A-Z]+$"  into a single enum also.

  if(length(i)) {
       # look at that subset and reduce the names down to this
       # prefix pattern.
     els = vals[i]
     prefixes = gsub("(wx[A-Z]+)_.*", "\\1", names(els))
     ans = by(data.frame(values = I(els), ids = I(names(els))),
              factor(prefixes),    # group by factor.
              asEnumDef,           # what to do 
              enumDefs, vals)      # extra arguments
     vals = vals[ - i]
     # put the ones which are just single value enums back into vals
     singletons = sapply(ans, function(x) length(x$def)) == 1
     tmp = unlist(ans[singletons])
     names(tmp) = sapply(ans[singletons], function(x) names(x$def))
     vals = c(vals, tmp)
     ans = list(enums = ans[!singletons], values = vals)
  } else
     ans = list(enums = list(), values = vals)

  ans
}

asEnumDef =
  #  Called with a data frame with the values and names of the enumeration
  #  values.  Keep as symbolic as we may have variables, e.g wxHSCROLL as
  #  values.
function(vals, enumDefs = integer(), allVals = character())
{
   tmp = as.numeric(vals[,1])
   if(any(is.na(tmp))) {
       # resolve any and all values from the enumDefs
       # and then do any internal references, e.g. values in
       # the enum that are symbolic values from an earlier definition
       # in this same enum.
    
       # see if we have the definition of the value in any enum value.
       # (Should look in constant global variables too.)
      i = match(vals[is.na(tmp), 1], names(enumDefs))
      if(any(!is.na(i))) {
          w = which(is.na(tmp))
          w = w[!is.na(i)]  # order is important here! 
          i = i[!is.na(i)]
          replacements = enumDefs[i]
#XX  if(length(grep("^wxRA_", vals[,2])))     browser()
#XX  if(length(w) != length(replacements))   browser()
          tmp[w] = replacements
      }

        # see if there are any values that are also names in this enum.
      j = match(vals[,1], vals[,2])
      if(any(!is.na(j))) 
        tmp[!is.na(j)] = tmp[j[!is.na(j)]]

      
      i = match(vals[is.na(tmp), 1], names(allVals))
      if(any(!is.na(i))) {
           # Fix up as we have done for enumDefs bit.
          i = i[!is.na(i)]
          replacements = allVals[i]
          tmp[match(names(replacements), vals[,1])] = as.numeric(replacements)
          # If any of the replacements were NA, we need to go and resolve them!
      }      

      
   }
    # this doesn't catch wxCHB_ with  0, 1, 2, 4, 8, 15
    # wxLB
    #  use unique() to avoid repetitions such as CENTER and CENTRE
   klass = if(!any(is.na(tmp)) && sum(as.numeric(unique(tmp))%% 2 != 0) < 2)
              "SymbolicBitlistDefinition"
           else {
              "SymbolicEnumDefinition"
            }              

   
   structure(list(def = structure(vals[,1], names = vals[,2],
                                  class = c("TopLevelConstants", "DefineConstants")),
                  values = tmp),
             class = klass)
}  


if(!isGeneric("toString"))
   setGeneric("toString", function(x, ...) standardGeneric("toString"))

setMethod("toString", "SymbolicEnumDefinition",
          function(x, ...) {
             toString(x$def)
          })

setMethod("toString", "SymbolicBitlistDefinition",
          function(x, ...) {
             paste(names(x$def), " <- ",  "Bitwise(", x$def, ")", collapse = "\n")
          })


setMethod("toString", "TopLevelConstants",
          function(x, ...) {
             paste(names(x), "=", x, collapse = "\n")
          })

setMethod("toString", "DefineConstants",
          function(x, ...) {
            paste("c(\n",
                  paste(names(x), "=", x, collapse = ",\n"),
                  ")"
                 )
          })


print.DefineConstants = 
function(x, ...)
{
  cat(toString(x), "\n")
}

setMethod("show", "DefineConstants",
             function(object)
               print.DefineConstants(object))



gsubset =
  #
  # filter out macros based on a pattern either for the name or value.
  #
  # used by filterMacros
function(x, pattern, useNames = FALSE, ...)
{
 i = grep(pattern, if(useNames) names(x) else x, ...)
 if(length(i) > 0)
   x = x[-i]

 x
}


makeFactor = 
function(..., labels = LETTERS[length(els)])
{
  els = list(...)
  ans = factor(unlist(lapply(seq(along = els), function(i) rep(labels[i], length(els[[i]])))))
  names(ans) = unlist(els)
  ans
}



filterMacros =
  #
  # Do we need to have computeGlobalConstants or just the names of the constant variables?
  #
  #
function(qq, namePatterns = c("^SQL", "pthread"), valuePatterns = c(),
          globalConstants = computeGlobalConstants(tu, getGlobalVariables(tu, files), defs = typeDefs),
          enumDefs = computeGlobalEnumConstants(tu, getEnumerations(tu, files), defs = typeDefs),
          tu, typeDefs = DefinitionContainer(tu), files = character())
{
 if(is(qq, "OrganizedPreprocessorDefines"))
   return(structure(lapply(qq, filterMacros), class = "FilteredPreprocessorDefines"))
  
   # get rid of macros that are identity operations:
   # i.e. simply #define NAME NAME
 qq$macros = qq$macros[ names(qq$macros) != qq$macros ]

 qq = lapply(qq, function(x)  {
                   for(i in namePatterns)
                     x = gsubset(names(x), i, TRUE, ignore.case = TRUE)
                   for(i in valuePatterns)
                     x = gsubset(x, i, FALSE)
                   x
                 })


 # Get rid of any macros that expand to the name of flagDefine which is nothing.
i = ( gsub("^`(.*)`", "\\1", qq$macros) %in% names(qq$flagDefines))
if(any(i))
 qq$macros = qq$macros[!i]


# remove surrounding () 
qq$macros = gsub("^\\((.*)\\)$", "\\1", qq$macros)


# XXX note the ignore.case.
#  qq$macros = gsubset(qq$macros, "pthread", TRUE, ignore.case = TRUE)

qq$macros = gsub("^([[:digit:]]+)l$", "\\1L", qq$macros)

qq$macros = gsub("^([[:digit:]]+)UL$", "\\1", qq$macros)
qq$macros = gsub("^([[:digit:]]+)LL$", "\\1", qq$macros)
qq$macros = gsub("^([[:digit:]]+)UL$", "\\1", qq$macros)

qq$macros = gsub("^(0x[[:xdigit:]]+)ul?$", "\\1", qq$macros)

# handle wxSOUND_ entries of the form (unsigned)digits by discarding the unsigned
#  and putting an L at the end.  Hope there isn't one there already.
qq$macros = gsub("^\\(unsigned\\)\\s*([[:digit:]]+)$", "\\1L", qq$macros)

qq$macros = gsubset(qq$macros,  "\\$", TRUE)
qq$macros = gsubset(qq$macros, "[a-zA-Z]\\.")  # anything with a . in the body

qq$macros = gsubset(qq$macros, "__asm __volatile")

# wxWidgets-specific dealing with strings.
# These next two are very similar the first just having a () around the entire expression.
qq$macros = gsub("^\\(?(_T|wxT)\\((.*)\\)\\)$", "\\2", qq$macros)
qq$macros = gsub("^(_T|wxT)\\((.*)\\)$", "\\2", qq$macros)
qq$macros = gsub("^wxString\\((_T|wxT)\\((.*)\\)\\)$", "\\2", qq$macros)

qq$macros = gsub("^gettext_noop\\((.*)\\)$", "\\1", qq$macros)

# for values of macros that are names, protect them as R variables by back-quoting.
qq$macros = gsub('^(_+[A-Za-z][_A-Za-z0-9]*)$', "`\\1`", qq$macros)

 # Get rid of any macros with a ; - multiple commands.
qq$macros = gsubset(qq$macros, ';')

 # Look for macro definitions with << or >> 
shifts = grep("(<<|>>)", gsub("(^\\(|\\)$)", "", qq$macros))
if(length(shifts))  {
   qq$calculate = c(qq$calculate, qq$macros[shifts])
   qq$macros = qq$macros[ - shifts]
}

# Find macros of the form (a|b...) and move them from macros to calculate
# as we "need" to evaluate them.

tmp = strsplit(gsub("(^\\(|\\)$)", "", qq$macros), "|", fixed = TRUE)
i = which(sapply(tmp, length) > 1)
if(length(i)) {
  qq$calculate = c(qq$calculate, qq$macros[i])
  qq$macros = qq$macros[-i]
#XXX wxWidgets-specific
  i = match("wxALL_FILES", names(qq$calculate))
  if(!is.na(i)) {
     qq$macros["wxALL_FILES"] = qq$calculate["wxALL_FILES"]
     qq$calculate = qq$calculate[-i]
  }
}

  # Now see which macro definitions we can parse
pp = lapply(qq$macros, function(x) try(parse(text = x), TRUE))
qq$macros = qq$macros[ ! sapply(pp, inherits, "try-error") ]


  # Remove the macros which correspond to calls but which are not simple arithmetic or logical operators.
pp = pp[ ! sapply(pp, inherits, "try-error") ]
types = sapply(pp, function(x) class(x[[1]]))
tmp = sapply(pp[types == "call"], function(x) as.character(x[[1]][[1]])[1] %in% c("|", "-", "/", "+", "*"))
callNames = names(types)[types == "call"]
if(length(callNames)) {
       # put the call macros we want into qq$calculate
   qq$calculate = c(qq$calculate, qq$macros[ callNames[tmp] ])
       # and discard all of the call macros from qq$macros
   qq$macros = qq$macros[ - match(callNames, names(qq$macros), 0) ]
}


   # Note that there is one symbol - MSG_TRYHARD - that is both an enum and a macro.
   # we don't need to have this as a factor, but it is convenient when debugging so that
   # we can easily find out where the variables are defined
globalDefNames = makeFactor(names(globalConstants$cmds),
                            unlist(lapply(enumDefs, function(x) names(x@values))),
                            names(qq$macros), names(qq$calculate), names(qq$flagDefines), 
                            labels = c("Variable", "Enum", "Macro", "Calculate", "MacroFlag"))


varRefs = names(types)[types == "name"]
   # have to undo the `` quoting
i = gsub("^`(.*)`$", "\\1", qq$macros[varRefs]) %in% names(globalDefNames)
vals = qq$macros[varRefs[i]]
out = qq$macros[varRefs[!i]]
  # move these to calculate
#NO: qq$calculate = c(qq$calculate, vals)
  # get rid of all the macros that refer to a variable name
qq$macros = qq$macros[ - match(varRefs, names(qq$macros), 0) ]
  # put at the end to avoid dependency/ordering issues.
qq$macros = c(qq$macros, vals)


  # find cases where the value of one macro is the name
  # of a macro we are omitting.
  # need to iterate as if we remove a macro
while(length(out)) {
     i = ( gsub("^`(.*)`", "\\1", qq$macros) %in% names(out))
     if(any(i)) {
        out = qq$macros[i]
        qq$macros = qq$macros[!i]
     } else
        out = character()
}

 qq = reorderMacros(qq)
 
 qq
}





reorderMacros =
function(qq)
{

 types = sapply(qq$macros, function(x) class(parse(text = x)[[1]]))
 named = qq$macros[types == "name"]


 pos.lhs = structure( match( names(named), names(qq$macros)), names = names(named) )
 pos.lhs = pos.lhs[!is.na(pos.lhs)]
 pos.rhs = structure(match(gsub("`(.*)`", "\\1", named), names(qq$macros)), names = names(named))
 pos.rhs = pos.rhs[!is.na(pos.rhs)]
 toFix = names(which(pos.lhs < pos.rhs[names(pos.lhs)]))
 if(length(toFix)) {
    i = match(toFix, names(qq$macros))
    qq$macros = c(qq$macros[-i], qq$macros[sort(i)])
 }

 qq
}

