library(RAutoGenRunTime)
USE_NATIVE_TU_PARSER = 1
library(RGCCTranslationUnit)
dyn.load("RGCCTranslationUnit.so")

Source("TUParser.R", "findDecl", "navigate", "getClassNodes", "typeContainer")

source("../R/cppParser.R")
source("../R/nodeClasses.R")


source("../inst/TUParser/Rcode/getClassNodes.R")
 
