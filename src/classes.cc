#ifndef R_NO_NATIVE_TU_PARSER

/*
 
 This is responsible for creating instances of the different
 types of nodes, e.g. function_decl, modify_expr, ...
 
 The code consults the table mapping TU node type name to C++ class
 and associated constructor method.  See classCreationTable.h for the
 table which is automatically generated.
 
 If there is no entry, we use the generic GCCNode class.

*/
#include <ext/hash_map>

#include "parser.h"
#include "GCCNode.h"

#include "classCreationTable.h"


GCCNode *
GCCTUParserDynClass::createNode(const char *type)
{
   GCCNode *node;
   InstanceCreatorFun fun = ClassCreationTable[type];
   if(fun) 
       return(fun());

   return(new GCCNode());
}


GCCNode *
RGCCTUParserDynClass::createNode(const char *type)
{
   GCCNode *node;
   node = GCCTUParserDynClass::createNode(type);

// fprintf(stderr, "->  %s\n", node->RTypeName());
   if(strcmp(type, "record_type") == 0 || strcmp(type, "union_type") == 0) {
       classDefs.push_back(node);
   } else if(strcmp(type, "var_decl") == 0) {
       varDefs.push_back(node);
   } else if(strcmp(type, "enumeral_type") == 0) {
       enumDefs.push_back(node);
   } else if(strcmp(type, "function_decl") == 0) {
       routines.push_back(node);
   }
   return(node);
}


extern "C"
SEXP
R_createNamespaceDecl_node()
{
  GCCNode *node;
  namespace_decl *ns;

  RGCCTUParserDynClass parser;

  node = ns = new namespace_decl();
  node =  parser.createNode("namespace_decl");
  fprintf(stderr, "->  %s\n", node->RTypeName());
  fprintf(stderr, "->  %s\n", ns->RTypeName());
  return(  createGCCNodeRObject(node) );
}



#else

static int _foo;

#endif /* R_NO_NATIVE_TU_PARSER */



