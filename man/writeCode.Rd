\name{writeCode}
\alias{writeCode}
\alias{writeCode,list-method}
\alias{writeCode,UnboundMethod-method}
\alias{writeCode,NoopRoutine-method}
\alias{writeCode,CStructInterface-method}
\alias{writeCode,CodeDefinition-method}
\alias{writeCode,OverloadedMethodRCode-method}
\alias{writeCode,ClassDefinition-method}
\alias{writeCode,C++ClassInterfaceBindings-method}
\alias{writeCode,C++MethodInterface-method}
\alias{writeCode,C++RoutineInterface-method}
\alias{writeCode,character-method}
\alias{writeCode,NamedFunctionDefinition-method}
\alias{writeCode,FunctionDefinition-method}
\alias{writeCode,EnumerationDefinition-method}
\alias{writeCode,ResolvedRoutineList-method}
\alias{writeCode,NativeRegistrationInfo-method}
\alias{writeCode,ComputeConstants-method}
\alias{writeCode,TopLevelEnumDefs-method}
\alias{writeCode,GlobalVariableCode-method}
\alias{writeCode,EmptyC++ClassBindings-method}
\alias{writeCode,DynamicClassCast-method}
\alias{writeCode,GeneratedC++ClassInterface-method}
\alias{writeCode,DerivedClassCode-method}
\alias{writeCode,RegistrationInfo-method}

\alias{RAnonymousFunctionOrCode-class} % here for the moment.

\alias{writeCode,ActiveBinding-method}
\alias{writeCode,C++MethodDefinition-method}
\alias{writeCode,CRoutineDefinition-method}
\alias{writeCode,DynamicGlobalVariableCode-method}
\alias{writeCode,GenericDefinitionList-method}
\alias{writeCode,NativeInterfaceCode-method}
\alias{writeCode,NULL-method}
\alias{writeCode,RClassDef-method}
\alias{writeCode,RFunctionDefinition-method}
\alias{writeCode,S4CodeDefinition-method}
\alias{writeCode,StructAccessors-method}
\alias{writeCode,StructRClassDefinition-method}

\alias{writeCode,HelpInfo-method}
\alias{writeCode,RClassDefsCollection-method}
\alias{writeCode,StructDefinition-method}
\alias{writeCode,TypedefDefinition-method}
\alias{writeCode,GeneratedTypeInfo-method}
\alias{writeCode,FunctionPointer-method}

\alias{getNodeByType,GCCTUNativeParser-method}
\alias{getNodeSource,GCC::Node::translation_unit_decl-method}
\alias{writeCode,ActiveBinding,ANY,ANY,ANY-method}
\alias{writeCode,ArrayInterface,ANY,ANY,ANY-method}
\alias{writeCode,C++ClassInterfaceBindings,ANY,ANY,ANY-method}
\alias{writeCode,C++MethodDefinition,ANY,ANY,ANY-method}
\alias{writeCode,C++MethodInterface,ANY,ANY,ANY-method}
\alias{writeCode,C++RoutineInterface,ANY,ANY,ANY-method}
\alias{writeCode,character,ANY,ANY,ANY-method}
\alias{writeCode,ClassDefinition,ANY,ANY,ANY-method}
\alias{writeCode,CodeDefinition,ANY,ANY,ANY-method}
\alias{writeCode,ComputeConstants,ANY,ANY,missing-method}
\alias{writeCode,CRoutineDefinition,ANY,ANY,ANY-method}
\alias{writeCode,CStructInterface,ANY,ANY,ANY-method}
\alias{writeCode,DerivedClassCode,ANY,ANY,missing-method}
\alias{writeCode,DynamicClassCast,ANY,ANY,ANY-method}
\alias{writeCode,DynamicGlobalVariableCode,ANY,ANY,missing-method}
\alias{writeCode,EmptyC++ClassBindings,ANY,ANY,ANY-method}
\alias{writeCode,EnumerationDefinition,ANY,ANY,missing-method}
\alias{writeCode,FunctionDefinition,ANY,ANY,ANY-method}
\alias{writeCode,FunctionPointer,ANY,ANY,missing-method}
\alias{writeCode,GeneratedC++ClassInterface,ANY,ANY,ANY-method}
\alias{writeCode,GeneratedTypeInfo,ANY,ANY,missing-method}
\alias{writeCode,GenericDefinitionList,ANY,ANY,ANY-method}
\alias{writeCode,GlobalVariableCode,ANY,ANY,missing-method}
\alias{writeCode,HelpInfo,ANY,ANY,missing-method}
\alias{writeCode,list,ANY,ANY,ANY-method}
\alias{writeCode,NamedFunctionDefinition,ANY,ANY,ANY-method}
\alias{writeCode,NativeInterfaceCode,ANY,ANY,ANY-method}
\alias{writeCode,NativeRegistrationInfo,ANY,ANY,missing-method}
\alias{writeCode,NoopRoutine,ANY,ANY,ANY-method}
\alias{writeCode,NULL,ANY,ANY,missing-method}
\alias{writeCode,OverloadedMethodRCode,ANY,ANY,ANY-method}
\alias{writeCode,RClassDef,ANY,ANY,ANY-method}
\alias{writeCode,RClassDefsCollection,ANY,ANY,missing-method}
\alias{writeCode,RegistrationInfo,ANY,ANY,missing-method}
\alias{writeCode,ResolvedRoutineList,ANY,ANY,ANY-method}
\alias{writeCode,RFunctionDefinition,ANY,ANY,missing-method}
\alias{writeCode,S4CodeDefinition,ANY,ANY,missing-method}
\alias{writeCode,StructAccessors,ANY,ANY,missing-method}
\alias{writeCode,StructDefinition,ANY,ANY,missing-method}
\alias{writeCode,StructRClassDefinition,ANY,ANY,ANY-method}
\alias{writeCode,TopLevelEnumDefs,ANY,ANY,missing-method}
\alias{writeCode,TypedefDefinition,ANY,ANY,missing-method}
\alias{writeCode,UnboundMethod,ANY,ANY,ANY-method}
\alias{writeCode,ArrayInterface-method}



\alias{writeIncludes}
\title{Output code for the bindings}
\description{
  The methods for \code{writeCode} are responsible for writing the contents of the generated code
  to a connection, or by default the console.
  After we generate code based on high-level  descriptions of native
  routines, data structres, classes and methods, these methods take care
  of writing the different pieces to different files.
  We specify the generated code along with the target code type, i.e.
  native or R, to output the relevant pieces of the code.
  For example, we might write all the C code.
  

  \code{writeIncludes} is a convenience function for adding a sequence
  of \code{#include file} directives to a connection. It can be
  instructed to put quotes or <>  around each file name, or not!
  
}
\usage{
writeCode(obj, target, file = stdout(), ..., includes = character())
}
\arguments{
  \item{obj}{the generated interface in different forms,
    for C++ classes, collection of methods, individual method
    interfaces, etc.}
  \item{target}{the target language, \dQuote{r} or \dQuote{native} at
    present. This indicates the language/context for which we are generating the code.
    In the future, we will add \dQuote{header} for .h files to provide declarations
    that are used across files, and \dQuote{namespace} for declarations that appear in a
    package's \code{NAMESPACE} file.
  }
  \item{\dots}{additional arguments for \code{\link[base]{cat}}}
   \item{file}{the connection used when \code{cat}'ing the generated
     code.}
   \item{includes}{a character vector giving the file names (with
     relevant quotes or <> affixes) that will be
     included via the C/C++ preprocessor when the native code is
     compiled.
     Tis is a convenient way to put calls to include files in the code
     without explicitl calling \code{writeIncludes} having previously opened the
     connection. This does it after the connection is opened for you if
     you pass a file name for the connection.}
}
\value{
  The return value is of no interest. The side-effect
  is important to produce the content on  a connection.
}

\references{http://www.omegahat.org/RGCCTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}


\seealso{
  \code{\link{createClassBindings}}
  \code{\link{createMethodBinding}}  
  \code{\link{createInterface}}
}
\examples{

 library(RGCCTranslationUnit)

  # Read the translation unit file for source code that defines several files.
 my = parseTU(system.file("examples", "ABC.cpp.tu", package = "RGCCTranslationUnit"))
 k = getClassNodes(my)

  # Generate the bindings for the class named B,
  # creating R and C++ code to interface to the class' methods.
 z = createClassBindings(k$B, my)

 # The C++ code
 writeCode(z, "native")

 # The R code, 
 writeCode(z, "r")


\dontrun{
 library(RGCCTranslationUnit)
 tuFile = "inst/examples/ABC.cpp.tu"
 my = parseTU(tuFile)
 k = getClassNodes(my, "ABC")

  # Generate the bindings for the class named B,
  # creating R and C++ code to interface to the class' methods.
 aa = createClassBindings( k$A , my)
 bb = createClassBindings( k$B , my)
 cc = createClassBindings( k$C , my)


 f = file("inst/examples/RmyClassB.cpp"); open(f, "w")
 cat('#include "RConverters.h"', "\n", file = f)
 cat('\#include "ABC.h"', "\n\n\n", file = f)
# cat('extern "C" {', "\n\n\n", file = f)

 writeCode(aa, "native", file = f)
 writeCode(bb, "native", file = f)
 writeCode(cc, "native", file = f)

# cat('}', "\n", file = f)
 close(f)

 f = file("inst/examples/RABC.R"); open(f, "w")
 writeCode(aa, "r", file = f)
 writeCode(bb, "r", file = f)
 writeCode(cc, "r", file = f)
 close(f) 

 writeCode(aa, "NAMESPACE")
 writeCode(bb, "NAMESPACE")
}

}
\keyword{interface}
\keyword{programming}
