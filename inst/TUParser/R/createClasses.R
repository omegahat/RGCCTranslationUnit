# Code to generate some of the C++ and R code for representing the
# node objects from the TU files.
# This is for immplementing the R & C code to support the TU parser and
# not related to the bindings/code that this package creates on arbitrary
# C/C++ code.
#
#
# This is done somewhat empirically for now.

ops = c("cond_expr", "addr_expr", "eq_expr", "nop_expr", "modify_expr", "array_ref", "plus_expr",
        "component_ref", "cast_expr", "ne_expr", "indirect_ref", "truth_not_expr", "truth_orif_expr", "truth_andif_expr",
        "preincrement_expr", "predecrement_expr", "postincrement_expr", "postdecrement_expr", "trunc_mod_expr",
        "minus_expr", "mult_expr", "gt_expr", "ge_expr", "le_expr", "lt_expr",
        "rshift_expr", "reinterpret_cast_expr", "try_finally",
        "float_expr", "rdiv_expr",
        "bit_xor_expr",  "bit_ior_expr"  , "bit_not_expr"  , "bit_and_expr", "abs_expr", "convert_expr",
        "negate_expr", "compound_expr", "static_cast_expr", "const_cast_expr", "trunc_div_expr",
        "lshift_expr", "fix_trunc_expr" , "exact_div_expr", "save_expr",
  
        "init_expr", "non_lvalue_expr", "floor_div_expr", "floor_mod_expr",
        "ceil_div_expr", "ceil_mod_expr", "round_div_expr", "round_mod_expr",
        "compound_stmt", "scope_stmt", "decl_stmt", "goto_stmt", "case_label", 
        "return_stmt"
        )

 source("classInfo.R")
 source("classFuncs.R")

     # See C++Parser.xml and how to get the fieldInfo
     # "../examples/shapes.cc.t00.tu"
if(!exists("fieldInfo") || !exists("fieldTypes")) {
  # If we have the R code
  #
  sampleTUFiles = list.files(paste(Sys.getenv("R_HOME"), "src/main", sep = "/"), pattern = ".tu$", full.names = TRUE)
  sampleTUFiles = c(sampleTUFiles, list.files("../..", pattern = "\\.tu$", recursive = TRUE, full.names = TRUE))
  sampleTUFiles = c("~/wx.cpp.001t.tu", "~/qstackedwidget.cc.001t.tu", sampleTUFiles)
  if(length(i <- grep("Makefile.tu$", sampleTUFiles)))
    sampleTUFiles = sampleTUFiles[-i]

  sampleTUFiles = sampleTUFiles[ file.exists(sampleTUFiles) ]
  
     # Table of which field appears in what node types.
  fieldInfo = getFieldInfo(sampleTUFiles)
     # Find out what type of values each field holds
     # but it do it by not type.
  fieldTypeInfo = getFieldTypeInfo(sampleTUFiles, fieldInfo)

  isConsistent = sapply(fieldTypeInfo, function(m) sum(m != 0) == nrow(m))
  names(which(!isConsistent))
  # "function_decl" "integer_cst"   "real_cst"      "record_type"  
  
  fieldTypes = sapply(fieldTypeInfo, computeNodeTypes)
#  fieldTypes[["function_decl"]]["body"] = 1 # Make it a node

    #Get rid of fields whose names are just numbers, e.g. in tree_vec or statement_list
  isListClass = sapply(fieldTypes, function(x) length(grep("^[0-9]+", names(x))) > 0)
  fieldTypes[isListClass] = lapply(fieldTypes[isListClass], function(x)  x[ - grep("^[0-9]+", names(x))])
}

  # Missing offset_type and error_mark
manual =
list(  
"result_decl" = c(type = 1L, scpe = 1L, srcp = 2L),
"obj_type_ref" = c(type = 1L),
"try_catch_expr" = c(type = 1L),
"vector_type" = c(size = 1L, algn = 3L)  ,

 # All have one op if not specified.
# no example of try_finally  
"modify_expr" = c(type = 1L),  # 2 ops  
"rdiv_expr" = c(type = 1L) ,
"fix_trunc_expr" = c(type = 1L),
"float_expr" = c(type = 1L),
"convert_expr" = c(type = 1L),
"abs_expr" = c(type = 1L),
"save_expr" = c(type = 1L),  
"bit_xor_expr" = c(type = 1L),      # 2 ops
"exact_div_expr" = c(type = 1L)      # 2 ops  


####################################
# Need more info. for these
, "aggr_init_expr" = integer(),
"using_decl" = integer(),
"asm_expr" = integer(),
"tag_defn" = integer(),
"offset_type" = integer(),
"error_mark" = integer(),

"translation_init_decl" = integer()
)


for(i in names(manual)) {
  if(!(i %in% names(fieldTypes)) || length(fieldTypes[[i]]) == 0)
    fieldTypes[[i]] <- manual[[i]]
}
  
  # Can't find examples of error_mark and offset_type
  
  names(fieldTypes) = gsub("GCC::Node::", "", names(fieldTypes))

  unavailable = ops[ ! ops %in% names(fieldTypes)]
  if(length(unavailable)) 
    for(i in unavailable) fieldTypes[[i]] = integer()

  classNames = names(fieldTypes)
  RClassNames = structure(paste("GCC::Node::", classNames, sep = ""), names = classNames)

 
  fieldTypes = lapply(fieldTypes, function(x) { names(x) = mapSourceName(names(x)) ; x})  

  fieldTypes = lapply(fieldTypes, function(x) { if("note" %in% names(x)) x["note"] = 6 ; x})


 # For now, set the vector elements manually
 # 5 is vector of nodes, 6 vector of strings.
fieldTypes[["binfo"]]["binf"] = 5
fieldTypes[["binfo"]]["access"] = 6
fieldTypes[["record_type"]]["base"] = 5
fieldTypes[["record_type"]]["access"] = 6
fieldTypes[["function_decl"]]["spec"] = 6                      
# And also the note field could be done this way.


# Obtained by  running parseTU() on different .tu files and checking the error messages on stderr.
# Looking for the name op in the fields (for wx...tu and qstackedwidget...tu) misses
#  [1] "modify_expr"    "try_finally"    "float_expr"     "rdiv_expr"     
#  [5] "bit_xor_expr"   "abs_expr"       "convert_expr"   "fix_trunc_expr"
#  [9] "exact_div_expr" "save_expr"     
#

#iop = match(ops, classNames)

baseClass = structure(rep("GCCNode", length(classNames)), names = classNames)
baseClass[ops] = "OperandNode"
baseClass[isListClass] = "GCCListNode"

#############################

sourceFile =
function(name, dir = "../../../src", sep = .Platform$file.sep)
{
  paste(dir, name, sep = sep)
}  

options(useFancyQuotes = FALSE)

########################

     # Write the C++ class definitions
classDefCode = mapply(createClassDef, classNames, baseClass, fieldTypes)
cat(unlist(classDefCode), sep = "\n", file = "../include/NodeClasses.h")


    # The implementation of the methods in those class definitions.
#XXX Warning about
# In createPushEntry(fields, className, baseClass) :
#  Deal with the spec field and mapping virt to virtual
con = file(sourceFile("NodeClasses.cc"), "w")
cat("#ifndef R_NO_NATIVE_TU_PARSER\n", file = con)
cat('#include "RTUParser.h"\n\n', file = con)
cat(unlist(mapply(function(className, baseClass, fields) {
                     c(createPushEntry(fields, className, baseClass),
                     createGetRElement(fields, className, baseClass == "OperandNode"))
                  }, classNames, baseClass, fieldTypes)), file = con, sep = "\n")
cat("#else\n static int foo;\n#endif\n", file = con)
close(con)



    # Generate both the C and R-level accessor code for names(), [[, ..
    # If we are using the virtual getRElement() method in GCCNode(), the native code is degenerate
accessors = mapply(createAccessorCode, fieldTypes, classNames, RClassNames, baseClass, SIMPLIFY = FALSE)

    # If using default, don/t both writing this as the native elements are empty.
cat(c('#include <parser.h>\n#include <Rdefines.h>\n\n',
      unlist(sapply(accessors, el, "native"))), file = "../../../src/NodeAccessors.cc", sep = "\n")


 # The table for the node creation factory.
con = file(sourceFile("classCreationTable.h"), "w")
cat(
 c(paste("__gnu_cxx::hash_map<const char*, InstanceCreatorFun, __gnu_cxx::hash<const char*>, eqstr> ClassCreationTable(", length(classNames), ");\n\n"),
  "void initializeClassCreationTable()",
  "{",
  paste("   ClassCreationTable[strdup(", dQuote(classNames), ")] = &", classNames, "::createInstance;", sep = ""),
  "}"), sep = "\n", file = con)

cat(paste("const char * ", classNames, "::RClassName = ", dQuote(RClassNames), ";", sep = "", collapse = "\n"), "\n", file = con)
close(con)

################################
#
# R code

 # The R class definitions and methods
con = file("../R/nodeClasses.R", "w")
cat("if(USE_NATIVE_TU_PARSER) {\n\n", file = con)
cat(paste("setClass(", sQuote(RClassNames), ", contains = ", dQuote(baseClass), ")\n"), file = con)

#??? Should this have file = con  ???
cat(createGetNextNodeMethods(fieldTypes), sep = "\n", file = con)
cat(createGetNodeSourceMethods(fieldTypes), sep = "\n", file = con)

# If we want to use specific checks on the field names.
#??? cat(c(mapply(createNamesMethod, fieldTypes, RClassNames), unlist(sapply(accessors, el, "r"))), file = con, sep = "\n")
cat("\n}\n", file = con)
close(con)


# If we needed this to force loading of vtables, etc.
#  cat("void force1() {", paste(classNames, classNames, ";"), "\n}\n", file = "instances.h", sep= "\n")
