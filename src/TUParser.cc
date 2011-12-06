#ifndef R_NO_NATIVE_TU_PARSER

#include "parser.h"  /* in inst/TUParser/include */

#include <pcrecpp.h>  /* regular expression library. */

#include <ext/hash_map> /* STL */


__gnu_cxx::hash_map<const char*, const char *> CompleteNameMap;



/* performed just once */
void
TUParse_init()
{
    static int done = 0;

    if(done)
        return;

    CompleteNameMap["priv"] = "private";
    CompleteNameMap["prot"] = "protected";
    CompleteNameMap["pub"] = "public";
    CompleteNameMap["virt"] = "virtual";
    done = 1;
}


#include <Rdefines.h>


/*
  Create an R object which represents this C++-level
  object as a reference. Creates an instance of the
  target R class and fills its 'ref' slot.
 */
SEXP
createGCCNodeRObject(const GCCNode *node)
{
    SEXP ans, klass;

    if(!node)
        return(R_NilValue);

    char *tmp;
    tmp = (char *) node->RTypeName();
    klass = MAKE_CLASS(tmp);
    PROTECT(klass);

    PROTECT(ans = NEW(klass));
    SET_SLOT(ans, Rf_install("ref"), R_MakeExternalPtr((void *) node, Rf_install(node->RTypeName()), R_NilValue)); 
    UNPROTECT(2);
    return(ans);
}


extern "C" 
SEXP
R_getNodeTypes(SEXP filename)
{
  GCCTUCollectNodeTypeParser parser(CHAR(STRING_ELT(filename, 0)));

  parser.GeneralGCCTUParser::parseTU();
  int n = parser.nodeNames.size();

  SEXP ans, names;
  PROTECT(names = NEW_CHARACTER(n));
  PROTECT(ans = allocVector(REALSXP, n));

   __gnu_cxx::_Hashtable_iterator<std::pair<const char * const , int>, 
                                  const char *, 
                                  __gnu_cxx::hash<const char*>, 
                                  std::_Select1st<std::pair<const char* const, int> >, 
                                  eqstr, //std::equal_to<const char*>, 
                                  std::allocator<int> > i = parser.nodeNames.begin();


  for(int j = 0;  j < n ; j++, ++i) {
     const char * const tmp = i->first;
     REAL(ans)[j] =  (double) i->second;
     SET_STRING_ELT(names, j, mkChar(tmp));
  }

  SET_NAMES(ans, names);

  UNPROTECT(2);

  return(ans);
}

void
GCCTUParserDynClass_free(SEXP r_parser)
{
    GCCTUParser *parser = (GCCTUParser*) R_ExternalPtrAddr(r_parser);

    delete parser;
}



#include "RUtils.h"
#include "RContentSource.h"

/*
  Main entry point for parsing a TU file.
 */
extern "C"
SEXP
R_parseTU(SEXP filename)
{
    GCCTUParserDynClass *parser  = new RGCCTUParserDynClass();
    ContentSource *src;

    TUParse_init();
    if(R_isInstanceOf(filename, "connection")) {
        src = new RConnectionContentSource(filename);
    } else if(GET_LENGTH(filename) > 1) {
        int n = GET_LENGTH(filename), i;
        const char **els;
        els = (const char **) R_alloc(n, sizeof(char *));
        for(i = 0; i < n ; i++)
            els[i] = CHAR(STRING_ELT(filename, i));
        src = new StringContentSource(els, n);
    } else {
        src = new FileContentSource(CHAR(STRING_ELT(filename, 0)));
    }
    parser->source(src);

    parser->GeneralGCCTUParser::parseTU();

    SEXP ans;
    PROTECT(ans = R_MakeExternalPtr(parser, Rf_install("GCCTUParserDynClass"), R_NilValue));
    R_RegisterCFinalizer(ans, GCCTUParserDynClass_free);
    UNPROTECT(1);
    return(ans);
}


extern "C"
SEXP
R_parseTU_Info(SEXP filename)
{
    GCCTUInfoParser *parser  = new GCCTUInfoParser();
    ContentSource *src;
    src = new FileContentSource(CHAR(STRING_ELT(filename, 0)));
    parser->source(src);
    parser->GeneralGCCTUParser::parseTU();

    TUParse_init();
    SEXP ans;
    PROTECT(ans = R_MakeExternalPtr(parser, Rf_install("GCCTUInfoParser"), R_NilValue));
//    R_RegisterCFinalizer(ans, GCCTUParserDynClass_free);
    UNPROTECT(1);
    return(ans);
}

extern "C"
SEXP
R_GCCInfoNode_get_type(SEXP r_node)
{
    DECL_NODE(GCCInfoNode);
    return(mkString(node->type));
}


extern "C"
SEXP
/*
   x = .Call("R_GCCTUParser_lapply", p, class, list())
  Speedup of about 3 for simple calls compared to the version in R code.
 */
R_GCCTUParser_lapply(SEXP r_parser, SEXP fun, SEXP args)
{
    int n, numArgs, numArgNames, i;
    SEXP expr, ptr, ans, argNames;
    GCCTUParser *parser;

  
    parser = (GCCTUParser*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));    
    n = parser->numNodes(); 

    numArgs = Rf_length(args);
    PROTECT(expr = allocVector(LANGSXP, 2 + numArgs));
    SETCAR(expr, fun);
    ptr = CDR(CDR(expr));
    argNames = GET_NAMES(args);
    numArgNames = Rf_length(argNames);

    for(i = 0; i < numArgs; i++, ptr = CDR(ptr)) {
        SETCAR(ptr, VECTOR_ELT(args, i));
        const char *tmp;
        if(numArgNames && (tmp = CHAR(STRING_ELT(argNames, i))))
            SET_TAG(ptr, Rf_install(tmp));
    }

    PROTECT(ans = NEW_LIST(n));

    for(i = 0; i < n; i++) {
        GCCNode *node;
        node = parser->getElement(i);
        SETCAR(CDR(expr), createGCCNodeRObject(node));
        SET_VECTOR_ELT(ans, i, Rf_eval(expr, R_GlobalEnv));
    }

    UNPROTECT(2);
    return(ans);
}


extern "C"
SEXP
R_GCCTUParserDynClass_getElement(SEXP r_parser, SEXP r_index)
{
    GCCTUParser *parser;
    GCCNode *node;
  
    parser = (GCCTUParser*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));
    node = parser->getElement(INTEGER(r_index)[0]);

    SEXP ans = createGCCNodeRObject(node);
    return(ans);
}



extern "C"
SEXP
R_GCCTUParserDynClass_numNodes(SEXP r_parser)
{
    GCCTUParser *parser;
    parser = (GCCTUParser*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));
    return(ScalarInteger(parser->numNodes()));
}


extern "C"
SEXP
R_GCCNode_get_index(SEXP r_node, SEXP asNodes)
{
    DECL_NODE(GCCNode);
    return(mkString(node->get_index()));
}

extern "C"
SEXP
R_GCCNode_get_INDEX(SEXP r_node, SEXP asNodes)
{
    DECL_NODE(GCCNode);
    return(ScalarInteger(node->getINDEX()));
}

extern "C"
SEXP
R_GCCNode_get_parser(SEXP r_node, SEXP asNodes)
{
    DECL_NODE(GCCNode);
    SEXP ans;
    ans = R_MakeExternalPtr(node->getParser(), Rf_install("GCCTUParserDynClass"), R_NilValue);
    return(ans);
}


extern "C"
SEXP
R_OperandNode_operands(SEXP r_node, SEXP asNodes)
{
    OperandNode *node;
  
    node = (OperandNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));
    return(R_internal_OperandNode_operands(node, (bool) LOGICAL(asNodes)[0]));
}

SEXP
R_internal_OperandNode_operands(OperandNode *node, bool asNodes)
{
    int n = node->operands.size(), i;
    if(n == 0)
        return(asNodes ? NEW_LIST(0) : NEW_CHARACTER(0));

    SEXP ans;
    if(asNodes) {
        PROTECT(ans = NEW_LIST(n));
        for(i = 0; i < n; i++) {
            GCCNode *tmp;
            tmp = node->getNode(i);
            if(tmp)
                SET_VECTOR_ELT(ans, i, createGCCNodeRObject(tmp));
        }
        UNPROTECT(1);
    } else {
        PROTECT(ans = NEW_INTEGER(n));
        for(i = 0; i < n; i++)
            INTEGER(ans)[i] = node->operands[i];
        UNPROTECT(1);
    }

#if 0
    PROTECT(ans = NEW_CHARACTER(n));
    for(i = 0; i < n; i++)
        SET_STRING_ELT(ans, i, mkChar(node->operands[i]));
    UNPROTECT(1);
#endif
    return(ans);
}


extern "C"
SEXP
R_GCCNode_getDupElements(SEXP r_node)
{
    SEXP ans, names;
    GCCNode *node;
 
    node = (GCCNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

    int ndup = node->numDupEntries();

    if(ndup == 0)
        return(R_NilValue);

    GCCNodeDupEntryIterator  dupIter = node->dupIterator();

    PROTECT(ans = NEW_LIST(ndup));
    PROTECT(names = NEW_CHARACTER(ndup));

    for(int i = 0; i < ndup ; i++, ++dupIter)  {
        VectorEntries &e = dupIter->second;
        SEXP tmp;
        PROTECT(tmp = NEW_CHARACTER(e.size()));
        for(int j = 0; j < e.size(); j++) {
            SET_STRING_ELT(tmp, i, mkChar(e.at(j)));
        }
        SET_VECTOR_ELT(ans, i,  tmp);
        UNPROTECT(1);
        SET_STRING_ELT(names, i, mkChar(dupIter->first));
    }
    UNPROTECT(2);
    return(ans);
}

extern "C"
SEXP
R_GCCNode_elements(SEXP r_node)
{
    GCCNode *node;
  
    node = (GCCNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

    int n = node->numEntries();
    GCCNodeEntryIterator  iter = node->iterator();
    
    int ndup = node->numDupEntries();
    GCCNodeDupEntryIterator  dupIter = node->dupIterator();

    SEXP ans, names;
    int i;

    PROTECT(ans = NEW_LIST(n + ndup));
    PROTECT(names = NEW_CHARACTER(n + ndup));
    for(i = 0; i < n ; i++, ++iter)  {
        if(iter->second)
           SET_VECTOR_ELT(ans, i, mkString(iter->second));
        else {
            PROBLEM "Shouldn't be here (%d) %s\n", i, iter->first
            WARN;
        }
        SET_STRING_ELT(names, i, mkChar(iter->first));
    }

    for(i = 0; i < ndup ; i++, ++dupIter)  {
        VectorEntries &e = dupIter->second;
        SEXP tmp;
        PROTECT(tmp = NEW_CHARACTER(e.size()));
        for(int j = 0; j < e.size(); j++) {
            SET_STRING_ELT(tmp, j, mkChar(e.at(j)));
        }
        SET_VECTOR_ELT(ans, n + i,  tmp);
        UNPROTECT(1);
        SET_STRING_ELT(names, i + n, mkChar(dupIter->first));
    }


#if 0
    PROTECT(ans = NEW_CHARACTER(n));
    PROTECT(names = NEW_CHARACTER(n));
    for(i = 0; i < n ; i++, ++iter)  {
        SET_STRING_ELT(ans, i, mkChar(iter->second));
        SET_STRING_ELT(names, i, mkChar(iter->first));
    }
#endif

    SET_NAMES(ans, names);
    UNPROTECT(2);
    return(ans);
}


#ifdef DEBUG_R_INTERN
extern "C"
SEXP
R_GCCNode_get_debug_fieldNames(SEXP r_node)
{
    DECL_NODE(GCCNode);
    int i;
    SEXP ans;
    PROTECT(ans = NEW_CHARACTER(node->numFields));
    for(i = 0; i < node->numFields; i++)
        SET_STRING_ELT(ans, i, mkChar(node->fieldNames[i]));
    UNPROTECT(1);
    return(ans);
}
#endif


extern "C"
SEXP
R_GCCNode_elementNames(SEXP r_node)
{
    GCCNode *node;
  
    node = (GCCNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

    int n = node->numEntries();
    GCCNodeEntryIterator iter = node->iterator();

    int ndup = node->numDupEntries();
    GCCNodeDupEntryIterator  dupIter = node->dupIterator();
    
    SEXP ans;
    int i;
    PROTECT(ans = NEW_CHARACTER(n + ndup));
    const char *tmp;
    for(i = 0; i < n ; i++, ++iter) {
        tmp = iter->first;
        SET_STRING_ELT(ans, i, mkChar(tmp));
    }

    for(i = 0; i < ndup ; i++, ++dupIter) 
        SET_STRING_ELT(ans, n + i, mkChar(dupIter->first));

    UNPROTECT(1);
    return(ans);
}


extern "C"
SEXP
R_GCCNode_chain(SEXP r_node)
{
    GCCNode *node = (GCCNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

    GCCNode *ans = node->chain();
    
    return(createGCCNodeRObject(ans));
}




int 
main(int argc, char *argv[])
{
    GCCTUParser parser;

    TUParse_init();

    parser.parseTU(argv[1]);

    fprintf(stderr, "# nodes: %d\n", (int) parser.numNodes());
    return(0);
}


/*************************************************************************/

SEXP
R_vectorOfGCCNodes_to_R(const std::vector<GCCNode *> &v)
{
   int n = v.size(), i;
   if(n == 0)
       return(NEW_LIST(0));

   SEXP ans;
   PROTECT(ans = NEW_LIST(n));
   for(i = 0; i < n; i++) {
      SET_VECTOR_ELT(ans, i, createGCCNodeRObject(v[i]));
   }
   UNPROTECT(1);
   return(ans);
}


extern "C"
SEXP 
R_GCCTUParserDyn_getRecordNodes(SEXP r_parser)
{
   RGCCTUParserDynClass *parser;
   parser = (RGCCTUParserDynClass*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));
   return(R_vectorOfGCCNodes_to_R(parser->classDefs));
}

extern "C"
SEXP 
R_GCCTUParserDyn_getVariableDefNodes(SEXP r_parser)
{
   RGCCTUParserDynClass *parser;
   parser = (RGCCTUParserDynClass*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));
   return(R_vectorOfGCCNodes_to_R(parser->varDefs));
}

extern "C"
SEXP 
R_GCCTUParserDyn_getEnumDefNodes(SEXP r_parser)
{
   RGCCTUParserDynClass *parser;
   parser = (RGCCTUParserDynClass*) R_ExternalPtrAddr(GET_SLOT(r_parser, Rf_install("ref")));
   return(R_vectorOfGCCNodes_to_R(parser->enumDefs));
}


/***************************************************************************/
void
force()
{
    lshift_expr lshift_expr;
}

extern "C"
SEXP
R_testNote(SEXP rre, SEXP txt)
{
    bool status;

    pcrecpp::RE re(CHAR(STRING_ELT(rre, 0)));
    status = re.PartialMatch(CHAR(STRING_ELT(txt, 0)));

    return(ScalarInteger(status));
}


static const char *String;

extern "C"
void
SetString()
{
    String = CHAR(mkChar("My test string"));
}

extern "C"
SEXP
ShowString()
{
    fprintf(stderr, "%s\n", String);
    return(mkString(String));
}


static bool 
nodeMatchesTypes(const GCCNode *node, const SEXP r_types)
{
    int i, n;
    n = GET_LENGTH(r_types);
    for(i = 0; i < n ; i++) {
        if(strcmp(node->RTypeName(), CHAR(STRING_ELT(r_types, i))) == 0)
            return(true);
    }
    return(false);
}

extern "C"
SEXP
R_NativeTUParser_getByType(SEXP r_parser, SEXP r_start, SEXP r_types)
{
    GCCTUParser *parser = (GCCTUParser*) R_ExternalPtrAddr(r_parser);
    unsigned int n = parser->numNodes(), nodeIndex;
    nodeIndex = INTEGER(r_start)[0];

    while(nodeIndex < n) {
        const GCCNode *node;
        node = parser->getElement(nodeIndex);
        
        if(nodeMatchesTypes(node, r_types)) {
           return(createGCCNodeRObject(node));
        }
        nodeIndex++;
    }
    return(R_NilValue);
}

#else

static int _foo;

#endif /* R_NO_NATIVE_TU_PARSER */

