#ifndef R_NO_NATIVE_TU_PARSER

#include <parser.h>

#include <R_ext/Utils.h> /* R_CheckUserInterrupt() */

/*
 XXX Using a simple variable and not a pointer causes problems. We need to initialize this within the application.
 */
//__gnu_cxx::hash_map<const char*, const char *, __gnu_cxx::hash<const char*>, eqstr > NodeElementNames(150);

__gnu_cxx::hash_map<const char*, const char *, __gnu_cxx::hash<const char*>, eqstr > *NodeElementNames = NULL;


typedef
   __gnu_cxx::_Hashtable_iterator<std::pair<const char * const, const char * >, 
                                  const char *, 
                                  __gnu_cxx::hash<const char*>, 
                                  std::_Select1st<std::pair<const char* const, const char * > >, 
                                  eqstr, //std::equal_to<const char*>, 
                                  std::allocator<const char *> >
  HASH_S_Iterator;


/*
  For debugging.
 */
void
printKeys()
{
   HASH_S_Iterator i = NodeElementNames->begin();

   int j = 0, n = NodeElementNames->size();
   while(j < n) {
       fprintf(stderr, "%s  ", i->first);
       ++i;
   }
   fprintf(stderr, "\n");
}

int numMisses = 0;

#include <Rdefines.h>
extern "C"
SEXP 
R_get_numMisses()
{
    return(ScalarInteger(numMisses));
}


const char *
/* Given a key value, look up the value */
getNodeElementName(const char *key)
{
    const char *ans;

    if(!NodeElementNames)
        NodeElementNames = new __gnu_cxx::hash_map<const char*, const char *, __gnu_cxx::hash<const char*>, eqstr >(150);


    ans = (*NodeElementNames)[key];
    if(!ans) {
        numMisses++;
        char *ptr = strdup(key);
        // int n = NodeElementNames->size();
        (*NodeElementNames)[ptr] = ptr;
        ans = ptr;
    }
    return(ans);
}

GCCNode *
GeneralGCCTUParser::parseNode(const char *lines)
{
    GCCNode *node = NULL;

    string txt;
    pcrecpp::StringPiece input(lines);

    std::string var;
    std::string value, op;

      /* Basic beginning of node @index node_type */
    startNodeRE->Consume(&input, &value, &var);

    node = createNode(var.c_str());
    node->index(value.c_str());
    node->setParser((GCCTUParser *) this);

    if(var == "identifier_node") {
        pcrecpp::RE strg("strg:\\s(.*)\\s+lngt:\\s(\\d+)");    
        std::string len;
        bool match = strg.Consume(&input, &value, &len);        
        if(match) {
            // for the case of identifier_node note: operator
            // this match is false and so we just go on to treat the node normally. 
            value.resize(atoi(len.c_str()));
            node->pushEntry(string("name"), value);
            node->pushEntry(string("string"), value); //PERL to make it look a perl node.
            return(node);
        }
    }

      // eat up the name: value pairs.

    bool which[NUM_RGXPS];
    memset(which, false, NUM_RGXPS * sizeof(bool));
    int i = 0;
//    which[1] = twoWordNoteRegExpr->PartialMatch(input);
//    if(which[1]) fprintf(stderr, "matched a two word note: in %d\n", node->getINDEX());
    while(
          (which[STRING] = stringRE->Consume(&input, &var, &value)) ||   
          (which[SOURCE] = srcRegExpr->Consume(&input, &var, &value)) ||
          (which[OP_NOTE_MEMBER] = noteOpMemberRE->Consume(&input) ) ||
          (which[OP_NOTE] = operatorNoteRegExpr->Consume(&input, &op))  ||
          (which[TWO_WORD_NOTE] = twoWordNoteRegExpr->Consume(&input, &op))  ||
          (which[OP] = opRegExpr->Consume(&input, &var, &value))  ||
          (which[REAL_VALUE] = realValueRE->Consume(&input, &value)) ||
          (which[NUM_TOKEN] = numTokenRegExpr->Consume(&input, &var, &value)) ||
          (which[TOKEN] = tokenRegExpr->Consume(&input, &var, &value)) ||
          (which[BARE_WORD] = bareWordRegExpr->Consume(&input, &var)) 
         )  {

               // delegate to the node how to handle entering the new
               // new value. This gives it the opportunity to put replicates
               // into an array, etc.
        if(which[OP_NOTE])  {
            node->pushEntry(string("operator"), op);
            node->pushEntry(string("note"), string("operator ") + op);//XXX concatenate the "operator " back with the op.
        } else if(which[OP_NOTE_MEMBER])  {
            node->pushEntry(string("note"), string("operator"));
            node->pushEntry(string("note"), string("member"));
        } else if(which[TWO_WORD_NOTE]) 
            node->pushEntry(string("note"), op);
        else if(which[SOURCE])
            node->pushEntry(string("srcp"), value);
        else if(which[BARE_WORD])
            node->pushEntry(var, string("1"));
        else if(which[REAL_VALUE])
            node->pushEntry(string("valu"), value);
        else if(which[STRING]) {
              //  var is the value of the string and value is the length from the lngt: field
            var.resize(atoi(value.c_str()));
            node->pushEntry(string("strg"), var);
        }
        else
            node->pushEntry( var, value);

        memset(which, false, sizeof(which)/sizeof(which[0]) * sizeof(bool));
        i = 0;

        R_CheckUserInterrupt();
    }


// Check that there is nothing left of input.

    if(!input.empty()) {
        fprintf(stderr, "Left content in node %d:  %s", node->getINDEX(), input.data());
    }

#if 0
// debugging.
    if(node->getINDEX() == 1551)
        fprintf(stderr, "Got something\n");
#endif

    return(node);
}



int
GeneralGCCTUParser::parseTU(void)
{
    char contents[10000] = "";
//    char line[300] = "";
    const char *line;
    char *ptr;
    unsigned int len;
    int numLines = 0;
    int nodeCount = 0;

    unsigned int lineNum = 0;

    ptr = contents;
    len = sizeof(contents)/sizeof(contents[0]);
    while(1) {
            // get a single line
        if(! (line = getLine()))  {
            if(lineNum > 0) {
                GCCNode *node = parseNode(contents);
                nodeCount++;
            }
            break;
        }

        lineNum++;

            // if we have got some content and the start of this line is an @, then this marks
            // the start of the next node, so process the current node.
        if(numLines > 0 && contents[0] && line[0] == '@') {
            GCCNode *node = parseNode(contents);
            nodeCount++;

            strcpy(contents, line);
            ptr = contents + strlen(line) - 1;
            numLines = 1;
        } else {
            
            // line[strlen(line)-1] = '\0';
            memcpy(ptr, line, strlen(line));
            ptr[strlen(line)] = '\0';
//            snprintf(ptr, "%s", line);
            ptr += strlen(line) - 1;

            numLines++;
        }

//        if(nodes.size() > 3)
//            break;
    }

    return(nodeCount);
}



int
BasicGCCTUParser::parseTU(const char *filename)
{
    FileContentSource src = FileContentSource(filename);
    _source = &src;
    int ans = GeneralGCCTUParser::parseTU(); // ??? why not just parseTU()
//    int ans = parseTU(); 
    _source = NULL;
    return(ans);
}



GCCNode *
GCCNode::chain()
{
    const char *v;
    v = entries["chan"];
    if(!v) 
        return(0);

    int i;
    i = atoi(v);
    return(parser->getElement(i));
}


extern "C"
SEXP
R_GCCNode_getValue(SEXP r_node, SEXP r_elName)
{
 
    GCCNode * node = (GCCNode *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

    return(node->getRElement(r_elName));
}

SEXP
GCCNode::getRElement(SEXP r_elName)
{
    const char  * elName;

    if(Rf_length(r_elName) == 1) {
        elName = CHAR(STRING_ELT(r_elName, 0));
        return(getRElement(elName));
    } else {
        SEXP ans;
        int i, n = Rf_length(r_elName);
        PROTECT(ans = NEW_LIST(n));
        for(i = 0; i < n; i++) {
            elName= CHAR(STRING_ELT(r_elName, i));
            SET_VECTOR_ELT(ans, i, getRElement(elName));
        }
        UNPROTECT(1);
        return(ans);
    }
}

SEXP
GCCNode::getRElement(const char *name)
{
    const char *value;
    value = entries[name];
    if(value)
        return(mkString(value));

    
    VectorEntries e = dupEntries[name];
    if(e.size() == 0) 
        return(allocVector(STRSXP, 0));

    int i, n;
    n = e.size();
    SEXP ans;
    PROTECT(ans = allocVector(STRSXP, n));
    for(i = 0; i < n; i++) {
        SET_STRING_ELT(ans, i, mkChar(e.at(i)));
    }
    UNPROTECT(1);

    return(ans);
}

bool
isDuplicateField(const char *key)
{
    static const char *  const names[]  =  {
        "note", "val",  "idx",  "body", "base", "accs", "binf", "spec"
    };

    for(int i = 0; i < sizeof(names)/sizeof(names[0]); i++)
        if(strcmp(key, names[i]) == 0)
            return(true);

    return(false);
}


GCCNode *
GCCNode::setNodeIndex(std::string val, int *index) {
       const char *tmp = val.c_str() ; // Ignore the @ at the beginning
       if(tmp[0] != '@')
           return(NULL);

       *index = atoi(tmp + 1) - 1; // ignore the @, and substract due to zero based counting here.
       if(*index < parser->numNodes()) {
	   return(parser->getElement(*index));
       }

       return((GCCNode *) NULL);
   }


void 
OperandNode::addOperand(std::string value)
{
    unsigned int index = toNodeIndex(value); // 0 based counting
    operands.push_back(index);
    if(index < parser->numNodes()) {
        /* ensure nodes is parallel and avoid the possibility of, e.g., adding two operands the first of which is a 
           forward node and so not available but the second is an existing node and so it gets pushed and becomes 
           the first node, not the second */
       nodes.resize(operands.size(), NULL);
       nodes[operands.size()-1] = parser->getElement(index);
    }
}

GCCNode * 
OperandNode::getNode(int pos)
{
    GCCNode *ans = NULL;
    if(nodes.size()  == 0 && operands.size() > 0)
        nodes.resize(operands.size(), NULL);
    else if(pos < nodes.size()) 
        ans = nodes[pos];

    if(!ans) {
        unsigned int i = operands[pos];
        if(i < parser->numNodes()) {
           ans = parser->getElement(i);
           if(pos >= nodes.size())
               nodes.resize(operands.size(), NULL);
           nodes.at(pos) = ans;
        }
    }
    return(ans);
}


SEXP
GCCNode::createGCCNodeRObject(GCCNode **pnode, int index)
{
    SEXP r_ans = R_NilValue;
    if(!*pnode) {
        if(index > -1 && index < parser->numNodes())
            *pnode = parser->getElement(index);
        else if(index != -1) {
            PROBLEM "asking for a node that is beyond the extent of the translation unit"
                ERROR;
        }
    }

    r_ans = ::createGCCNodeRObject(*pnode);
    return(r_ans);
}

extern "C"
SEXP
R_using_RStringCaching()
{
    int value = 0;
#ifdef USE_R_STRING_CACHE
    value = 1;
#endif
    return(ScalarLogical(value));
}


const char * const stringMap[] = {
    "priv", "private",
    "prot", "protected",
    "pub",  "public",
    "virt", "virtual"
};


static const char *
transformString(const char *val)
{
    int i, n;
    n = (sizeof(stringMap)/sizeof(stringMap[0]));

    for(i = 0; i < n ; i+=2) {
        if(strcmp(val, stringMap[i]) == 0)
            return(stringMap[i+1]);
    }

    return(val);
}

static const char *noteString = NULL;

extern "C"
void
R_showNoteString()
{
    fprintf(stderr, "%s  %p\n", noteString, noteString); 
}

extern "C"
void
R_initNoteString()
{
    noteString = CHAR(mkChar("scpe"));
    R_showNoteString();
}


const char *
internString(const char *data, bool transform)
{
    const char *tmp;
    if(transform)
        tmp = transformString(data);
    else
        tmp = data;

#ifdef USE_R_STRING_CACHE
#if 0
    tmp = CHAR(mkChar(tmp));
#else
    tmp = CHAR(PRINTNAME(Rf_install(tmp)));
#endif
    if(strcmp(data, "scpe") == 0)
        noteString = tmp;
        //      fprintf(stderr, "%s -> %p\n", data, tmp);
    return(tmp);
#else
    return(strdup(tmp));
#endif
}

#include <stdarg.h>

void
raiseError(const char *fmt, ...)
{
   char errbuf[100000];
   va_list args;
   va_start(args, fmt);
   vsprintf(errbuf, fmt, args);
   va_end(args);
   error(errbuf);
}

SEXP 
GCCNode::R_convertStringVector(StringVector &v)
{
    int i, n;
    SEXP ans;

    n = v.size();
    PROTECT(ans = NEW_CHARACTER(n));
    for(i = 0; i < n ; i++) {
        if(v[i])
            SET_STRING_ELT(ans, i, mkChar(v[i]));
    }
    UNPROTECT(1);
    return(ans);
}


SEXP 
GCCNode::R_convertNodeVector(NodeVector &nodes, NodeIndexVector &indices)
{
    int i, n;
    GCCNode *node;
    SEXP ans;

    n = indices.size();
    PROTECT(ans = NEW_LIST(n));
    for(i = 0; i < n ; i++) {
        if(indices[i]) {
            node = parser->getElement(indices[i]);
            SET_VECTOR_ELT(ans, i, ::createGCCNodeRObject(node));
        }
    }
    UNPROTECT(1);
    return(ans);
}

#else  /* R_NO_NATIVE_TU_PARSER  */

static int _foo;

#endif /* R_NO_NATIVE_TU_PARSER */
