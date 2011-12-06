#ifndef PARSER_H
#define PARSER_H

#include "GCCNode.h"
#include <vector>

#include <pcrecpp.h>


#include "ContentSource.h"

class GeneralGCCTUParser {

public:

    virtual int parseTU(void);

    virtual const char *getLine() {
       if(_source)
	   return(_source->getLine());
       else
	   return(NULL);
    };

   virtual GCCNode *parseNode(const char *lines);
   virtual GCCNode *createNode(const char *type) { return(new GCCNode()); } 


   ContentSource *source() {
       return(_source);
   }

   ContentSource *source(ContentSource *src) {
       _source = src;
       return(_source);
   }


   GeneralGCCTUParser() {
           /* name <space>:<space> either built-in:0 or @digits<space>   */
       /* 3rd condition is for things like strg: basic_ios::clear 
          4th is for numbers as in real_cst    valu: 0.0  XXX  need to handle scientific notation. */
       int i = 0;
        regexps[BARE_WORD] = tokenRegExpr = new pcrecpp::RE("(\\w+)\\s*:\\s+(<built-in>:0|[@\\w-]+::[@\\w-]+|[@\\w-]+|[0-9]*(\\.[0-9]+)?)\\s*");
        regexps[NUM_TOKEN] = numTokenRegExpr = new pcrecpp::RE("(\\w+)\\s*:\\s+([0-9]+\\.?[0-9]+([eE][+-]?[0-9]+)?\\s*");

        regexps[STRING] = stringRE = new pcrecpp::RE("strg:\\s+(.*)\\s+lngt:\\s+([0-9]+)\\s*");
        realValueRE = new pcrecpp::RE("valu:\\s+([0-9]+\\.?[0-9]+([eE][+-]?[0-9]+)?)\\s*");

//	tokenRegExpr = new pcrecpp::RE("((srcp):\\s(\\w+:[0-9]+|<built-in>:0)|(\\w+)\\s*:\\s([@\\w]+))\\s*");
        regexps[i++] = startNodeRE = new pcrecpp::RE("^@(\\d+)\\s+(\\w+)\\s*"); //xxx not used yet.

	       /* Deal with the srcp: filename:line_number */
	regexps[i++] = srcRegExpr = new pcrecpp::RE("^\\s*(srcp):\\s(.*?:\\d+)\\s*");    
	regexps[i++] = opRegExpr = new pcrecpp::RE("(op \\d):\\s@(\\d+)\\s*");    
	regexps[i++] = operatorNoteRegExpr = new pcrecpp::RE("\\s*note: operator\\s+([a-zA-Z]+)\\s*");    
	regexps[i++] = twoWordNoteRegExpr = new pcrecpp::RE("\\s*note: ([a-zA-Z]+ [a-zA-Z]+)\\s+");    
	// last attempt to match just free words such as bitfield that float alone.
	regexps[i++] = bareWordRegExpr = new pcrecpp::RE("\\s*([a-zA-Z]+)\\s+");    
	regexps[i++] = noteOpMemberRE = new pcrecpp::RE("\\s*note: operator\\s+note:\\s*member\\s*");    

	if(i > sizeof(regexps)/sizeof(regexps[0]))
	    fprintf(stderr, "Too many regexps\n");
   }

   enum { SOURCE, OP_NOTE_MEMBER, OP_NOTE, TWO_WORD_NOTE, OP, TOKEN, NUM_TOKEN, BARE_WORD, STRING, REAL_VALUE, NUM_RGXPS};

   virtual ~GeneralGCCTUParser() {
       delete tokenRegExpr;
       delete startNodeRE;
       delete srcRegExpr;
       delete opRegExpr;
       delete operatorNoteRegExpr;
       delete twoWordNoteRegExpr;
       delete bareWordRegExpr;
       delete noteOpMemberRE;
       delete stringRE;
       delete realValueRE;

       if(_source) {
	   delete _source;
       }
   };


protected:
   pcrecpp::RE * regexps[100];//ignre now.

   pcrecpp::RE *tokenRegExpr, *numTokenRegExpr, *stringRE, *realValueRE;
   pcrecpp::RE *startNodeRE;
   pcrecpp::RE *srcRegExpr, *opRegExpr, 
       *operatorNoteRegExpr, *noteOpMemberRE, 
               *twoWordNoteRegExpr, 
               *bareWordRegExpr;


protected:
   ContentSource *_source;
};


class BasicGCCTUParser : public GeneralGCCTUParser 
{

  public:
    BasicGCCTUParser() : GeneralGCCTUParser() {};
    virtual int parseTU(const char *filename);

};



/* 
  Uses a vector to store the nodes.
 */
class GCCTUParser : public BasicGCCTUParser {

public:

   virtual GCCNode *parseNode(const char *lines) {
       GCCNode *node = BasicGCCTUParser::parseNode(lines);
       nodes.push_back(node);
       return(node);
   };


   unsigned int numNodes() {
       return(nodes.size());
   };

/*
   GCCNode *getEnumerations(int n);
*/

   GCCNode* getElement(unsigned int i) {
       if(i >= nodes.size())
          return((GCCNode *) NULL);
       return(nodes[i]);
   };

   virtual ~GCCTUParser() {
       int i, n;
       n = nodes.size();
       for(i = 0 ; i < n; i++) {
	   delete nodes[i];
       }
       nodes.clear();
   };

protected:
   std::vector<GCCNode*> nodes;
};


/* This is used to collect information about TU 
   files and their nodes so that we can create the
   definitions of nodes from this. It is for meta-computing
   and aims to be bare bones.
*/
class GCCTUInfoParser : public GCCTUParser
{
public:
    GCCNode*createNode(const char *type) {
	return(new GCCInfoNode(type));
    }
};

extern void initializeClassCreationTable();

/* Version that uses  hash table to find the routine to create a new node
   for the specific type. */
class GCCTUParserDynClass : public GCCTUParser
{
public:    
   virtual GCCNode *createNode(const char *type);
//   virtual ~GCCTUParserDynClass() {};
   GCCTUParserDynClass() {
       initializeClassCreationTable();
   };
};

/*
  Stores the 
*/
class RGCCTUParserDynClass : public GCCTUParserDynClass
{
public:    
   RGCCTUParserDynClass() : GCCTUParserDynClass() {}
   virtual GCCNode *createNode(const char *type);
   virtual ~RGCCTUParserDynClass() {};

//protected:
   std::vector<GCCNode*> enumDefs;
   std::vector<GCCNode*> classDefs;  
   std::vector<GCCNode*> varDefs;  
   std::vector<GCCNode*> routines;  
};




typedef GCCNode *(*InstanceCreatorFun)(void);


/*
  Version of the parser used for diagnostic information 
  telling us about the classes of the nodes in the TU file.
  This is used to generate the R and C++ code to represent 
  these classes by name.
 */

class GCCTUCollectNodeTypeParser : public GCCTUParser
{
public:    

   GCCTUCollectNodeTypeParser (const char *filename) {
       _source = new FileContentSource(filename);
   }

   GCCTUCollectNodeTypeParser () { }

   virtual GCCNode *parseNode(const char *lines) {
       std::string value, var;
       pcrecpp::RE rindex("^@(\\d+)\\s+(\\w+)\\s*");    
       pcrecpp::StringPiece input(lines);
       rindex.Consume(&input, &value, &var);
       nodeNames[strdup(var.data())]++;
       return(NULL);
   }

public:
    __gnu_cxx::hash_map<const char*, int, __gnu_cxx::hash<const char*>, eqstr > nodeNames;      
};




SEXP R_internal_OperandNode_operands(OperandNode *node, bool asNodes);


#endif
