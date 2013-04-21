#ifndef GCCNODE_H
#define GCCNODE_H

/* This is not working. Do the R strings move? Seems that they do
   We could use Rf_install, but some identifier_node values are too long (> 256 characters).
To see them move (is this analysis correct?)
.C("R_initNoteString")
p = parseTU("~/qstackedwidget.cc.001t.tu")
.C("R_showNoteString")
 */

//#define USE_R_STRING_CACHE 1
//#define DEBUG_R_INTERN 1

extern const char *internString(const char *data, bool transform = false);

#include <string>
#include <ext/hash_map>

#include <string.h>

#include "parser.h"

//using namespace std;


#define DECL_NODE(type) type *node = (type *) R_ExternalPtrAddr(GET_SLOT(r_node, Rf_install("ref")));

class GCCTUParser;

class Token {
public:
    std::string name;
    std::string value;
};

extern const char *getNodeElementName(const char *key);

#include <Rinternals.h>

class GCCNode;
SEXP createGCCNodeRObject(const GCCNode *node);

struct eqstr
{
  bool operator()(const char* s1, const char* s2) const  
   {    return strcmp(s1, s2) == 0;   }
};


typedef
   __gnu_cxx::_Hashtable_iterator<std::pair<const char * const , const char *>, 
                                  const char *, 
                                  __gnu_cxx::hash<const char*>, 
                                  std::_Select1st<std::pair<const char* const, const char *> >, 
                                  eqstr,
                                  std::allocator<const char*> > 
    GCCNodeEntryIterator;




bool isDuplicateField(const char *key);

#include <vector>
typedef __gnu_cxx::vector<const char *> VectorEntries;

typedef
   __gnu_cxx::_Hashtable_iterator<std::pair<const char * const , VectorEntries>, 
                                  const char *, 
                                  __gnu_cxx::hash<const char*>, 
                                  std::_Select1st<std::pair<const char* const, VectorEntries> >, 
                                  eqstr,
                                  std::allocator<VectorEntries> > 
    GCCNodeDupEntryIterator;



typedef  std::vector<GCCNode *>  NodeVector;
typedef  std::vector<int>  NodeIndexVector;
typedef  std::vector<const char *>  StringVector;


class GCCNode {

public:
    GCCNode(const char *id) : INDEX(0) 
#ifdef DEBUG_R_INTERN
	, numFields(0) 
#endif
               { index(id); };
    GCCNode() : INDEX(0) 
#ifdef DEBUG_R_INTERN
	, numFields(0) 
#endif
             {};

    Token& getToken(const char *text);


    virtual void pushEntry(std::string name, std::string val) {
	const char *key, *v;

	key = internString(name.c_str());
	v = internString(val.c_str());

#ifdef DEBUG_R_INTERN
	fieldNames[numFields++] = key;
#endif

	if(isDuplicateField(key)) {
	    dupEntries[key].push_back(v);
	} else if(strncmp("op ", key, 3) == 0)  {
	    dupEntries["op"].push_back(v);
        } else {
	    entries[key] = v;
	}

	/* We don't need the std::string here and can pass the raw strings. */
	if(name == "note" && strcmp(v, "artificial") == 0)
	    pushEntry(std::string("artificial"), std::string("1"));
	else if(name == "qual") {
            if(strcmp(v, "c") == 0)
		pushEntry(std::string("const"), std::string("1"));
	    else if(strcmp(v, "v") == 0)
		pushEntry(std::string("volatile"), std::string("1"));
	    else if(strcmp(v, "r") == 0)
   	        pushEntry(std::string("restricted"), std::string("1"));
	}
    };

    const char *index(const char *val) { if(val != NULL) {
                                           _index = strdup(val);
					   INDEX = atoi(_index);
                                    	 }
                                         return(_index); 
                                       };
    const char * get_index() {  return(_index); }
    int getINDEX() {  return(INDEX); }

    virtual ~GCCNode() {
	    if(_index)
  	        free(_index);

	    entries.clear();
	    dupEntries.clear();
    };

    virtual const char *const RTypeName() const { return("GCCNode"); };

    GCCNode *chain();

    virtual SEXP getRElement(SEXP names);
    virtual SEXP getRElement(const char *el);

    virtual int numEntries() {
        return(entries.size());
    }

    virtual int numDupEntries() {
        return(dupEntries.size());
    }

    GCCNodeEntryIterator iterator() {
        return(entries.begin());
    }
    GCCNodeDupEntryIterator dupIterator() {
        return(dupEntries.begin());
    }

   void setParser(GCCTUParser *value) { parser = value; };    

   GCCNode *setNodeIndex(std::string val, int *index);

   inline int toInteger(std::string val) {
       return(atoi(val.c_str()));
   }

   inline double toDouble(std::string val) {
       return(atof(val.c_str()));
   }

   inline int toNodeIndex(std::string val) {
       const char *tmp = val.c_str();
       return(atoi(tmp + (tmp[0] == '@' ? 1 : 0)) - 1); // zero based indexing.
   }

   SEXP createGCCNodeRObject(GCCNode **, int);

   GCCTUParser *getParser() { return(parser);}

   SEXP R_convertStringVector(StringVector &);
   SEXP R_convertNodeVector(NodeVector &, NodeIndexVector &);


#if 0
   ~GCCNode() {
       int i;
       for(i = 0; i < n; i++)
	   entries
   }
#endif

protected:
    char *_index;
    int INDEX;

    GCCTUParser *parser;

    /*XXX We could std:map and not hash_map. */
    __gnu_cxx::hash_map<const char*, const char *, __gnu_cxx::hash<const char *>, eqstr> entries;    
    __gnu_cxx::hash_map<const char*, VectorEntries, __gnu_cxx::hash<const char *>, eqstr> dupEntries;

#ifdef DEBUG_R_INTERN
public:
/* For debugging the interning problem */
    const char * fieldNames[100];
    int numFields;
#endif
    
};

class GCCInfoNode : public GCCNode {
public:
    char *type;
    GCCInfoNode(const char *nodeType) {
	type = strdup(nodeType);
    }
    virtual const char *const RTypeName() const {return("GCCInfoNode"); };
    ~GCCInfoNode() {
	free(type);
    }
};

class OperandNode : public GCCNode {

public:
#if 0
    virtual void pushEntry(std::string name, std::string val) {
	if(strncmp("op ", name.data(), 3) == 0)  {
	    operands.push_back(strdup(val.data()));
	} else
	    GCCNode::pushEntry(name, val);
    }
#endif

public:
    std::vector<unsigned int> operands;    
    std::vector<GCCNode *> nodes;    

    void addOperand(std::string val);
    GCCNode * getNode(unsigned int index);
};

class GCCListNode : public OperandNode {

public:
    void addElement(std::string value) {    OperandNode::addOperand(value); }
    void pushEntry(std::string name, std::string val) {
	addElement(val);
	OperandNode::pushEntry(name, val);
    }    
};

/*******************************************************************/
#include "NodeClasses.h"

#endif
