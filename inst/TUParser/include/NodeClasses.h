class  abs_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    abs_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  abs_expr );}
};

class  addr_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    addr_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  addr_expr );}
};

class  array_ref : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    array_ref () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  array_ref );}
};

class  array_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * domn ;
    GCCNode * elts ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * size ;
    GCCNode * unql ;
    int domn_index;
    int elts_index;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    array_type () : 
          algn ( 0 ),
         constant ( 0 ),
         domn ( 0 ),
         elts ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         domn_index ( -1 ),
         elts_index ( -1 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  array_type );}
};

class  arrow_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    arrow_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  arrow_expr );}
};

class  baselink : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    baselink ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  baselink );}
};

class  bind_expr : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * type ;
    GCCNode * vars ;
    int body_index;
    int type_index;
    int vars_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bind_expr () : 
          body ( 0 ),
         type ( 0 ),
         vars ( 0 ),
         body_index ( -1 ),
         type_index ( -1 ),
         vars_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bind_expr );}
};

class  binfo : public  GCCNode
{

public:
    StringVector access ;
    GCCNode * base ;
    int bases ;
    NodeVector binf ;
    const char * spec ;
    GCCNode * type ;
    int base_index;
    int type_index;
    NodeIndexVector binf_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    binfo () : 
          base ( 0 ),
         bases ( 0 ),
         spec ( 0 ),
         type ( 0 ),
         base_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  binfo );}
};

class  bit_and_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bit_and_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bit_and_expr );}
};

class  bit_field_ref : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bit_field_ref () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bit_field_ref );}
};

class  bit_ior_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bit_ior_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bit_ior_expr );}
};

class  bit_not_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bit_not_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bit_not_expr );}
};

class  bit_xor_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    bit_xor_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  bit_xor_expr );}
};

class  boolean_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * size ;
    GCCNode * unql ;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    boolean_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  boolean_type );}
};

class  break_stmt : public  GCCNode
{

public:
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    break_stmt () : 
          line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  break_stmt );}
};

class  call_expr : public  GCCNode
{

public:
    GCCNode * args ;
    GCCNode * fn ;
    GCCNode * type ;
    int args_index;
    int fn_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    call_expr () : 
          args ( 0 ),
         fn ( 0 ),
         type ( 0 ),
         args_index ( -1 ),
         fn_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  call_expr );}
};

class  case_label : public  OperandNode
{

public:
    GCCNode * low ;
    GCCNode * next ;
    int low_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    case_label () : 
          low ( 0 ),
         next ( 0 ),
         low_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  case_label );}
};

class  case_label_expr : public  GCCNode
{

public:
    GCCNode * low ;
    GCCNode * name ;
    GCCNode * type ;
    int low_index;
    int name_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    case_label_expr () : 
          low ( 0 ),
         name ( 0 ),
         type ( 0 ),
         low_index ( -1 ),
         name_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  case_label_expr );}
};

class  cast_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    cast_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  cast_expr );}
};

class  complex_expr : public  GCCNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    complex_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  complex_expr );}
};

class  complex_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * name ;
    GCCNode * size ;
    int name_index;
    int size_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    complex_type () : 
          algn ( 0 ),
         name ( 0 ),
         size ( 0 ),
         name_index ( -1 ),
         size_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  complex_type );}
};

class  component_ref : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    component_ref () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  component_ref );}
};

class  compound_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    compound_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  compound_expr );}
};

class  compound_stmt : public  OperandNode
{

public:
    GCCNode * body ;
    GCCNode * line ;
    GCCNode * next ;
    int body_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    compound_stmt () : 
          body ( 0 ),
         line ( 0 ),
         next ( 0 ),
         body_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  compound_stmt );}
};

class  cond_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    cond_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  cond_expr );}
};

class  const_cast_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    const_cast_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  const_cast_expr );}
};

class  const_decl : public  GCCNode
{

public:
    int artificial ;
    GCCNode * chan ;
    GCCNode * cnst ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * scpe ;
    const char * source ;
    GCCNode * type ;
    int chan_index;
    int cnst_index;
    int name_index;
    int scpe_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    const_decl () : 
          artificial ( 0 ),
         chan ( 0 ),
         cnst ( 0 ),
         name ( 0 ),
         scpe ( 0 ),
         source ( 0 ),
         type ( 0 ),
         chan_index ( -1 ),
         cnst_index ( -1 ),
         name_index ( -1 ),
         scpe_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  const_decl );}
};

class  constructor : public  GCCNode
{

public:
    GCCNode * elts ;
    GCCNode * idx ;
    int lngt ;
    GCCNode * type ;
    GCCNode * val ;
    int elts_index;
    int idx_index;
    int type_index;
    int val_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    constructor () : 
          elts ( 0 ),
         idx ( 0 ),
         lngt ( 0 ),
         type ( 0 ),
         val ( 0 ),
         elts_index ( -1 ),
         idx_index ( -1 ),
         type_index ( -1 ),
         val_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  constructor );}
};

class  continue_stmt : public  GCCNode
{

public:
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    continue_stmt () : 
          line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  continue_stmt );}
};

class  convert_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    convert_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  convert_expr );}
};

class  ctor_initializer : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ctor_initializer ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  ctor_initializer );}
};

class  ctor_stmt : public  GCCNode
{

public:
    GCCNode * begn ;
    GCCNode * end ;
    GCCNode * line ;
    GCCNode * next ;
    int begn_index;
    int end_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ctor_stmt () : 
          begn ( 0 ),
         end ( 0 ),
         line ( 0 ),
         next ( 0 ),
         begn_index ( -1 ),
         end_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  ctor_stmt );}
};

class  decl_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    decl_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  decl_expr );}
};

class  decl_stmt : public  OperandNode
{

public:
    GCCNode * decl ;
    GCCNode * line ;
    GCCNode * next ;
    int decl_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    decl_stmt () : 
          decl ( 0 ),
         line ( 0 ),
         next ( 0 ),
         decl_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  decl_stmt );}
};

class  dl_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    dl_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  dl_expr );}
};

class  do_stmt : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * cond ;
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int body_index;
    int cond_index;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    do_stmt () : 
          body ( 0 ),
         cond ( 0 ),
         line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         body_index ( -1 ),
         cond_index ( -1 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  do_stmt );}
};

class  dotstar_expr : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    dotstar_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  dotstar_expr );}
};

class  enumeral_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * csts ;
    GCCNode * max ;
    GCCNode * min ;
    GCCNode * name ;
    int prec ;
    const char * qual ;
    const char * sign ;
    GCCNode * size ;
    GCCNode * unql ;
    int unsigned_x ;
    int csts_index;
    int max_index;
    int min_index;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    enumeral_type () : 
          algn ( 0 ),
         constant ( 0 ),
         csts ( 0 ),
         max ( 0 ),
         min ( 0 ),
         name ( 0 ),
         prec ( 0 ),
         qual ( 0 ),
         sign ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         unsigned_x ( 0 ),
         csts_index ( -1 ),
         max_index ( -1 ),
         min_index ( -1 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  enumeral_type );}
};

class  eq_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    eq_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  eq_expr );}
};

class  error_mark : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    error_mark ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  error_mark );}
};

class  expr_stmt : public  GCCNode
{

public:
    GCCNode * expr ;
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int expr_index;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    expr_stmt () : 
          expr ( 0 ),
         line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         expr_index ( -1 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  expr_stmt );}
};

class  field_decl : public  GCCNode
{

public:
    const char * access ;
    int algn ;
    int artificial ;
    int bitfield ;
    GCCNode * bpos ;
    GCCNode * chan ;
    GCCNode * mngl ;
    GCCNode * name ;
    StringVector note ;
    int protected_x ;
    int public_x ;
    GCCNode * scpe ;
    GCCNode * size ;
    const char * spec ;
    const char * source ;
    GCCNode * type ;
    int bpos_index;
    int chan_index;
    int mngl_index;
    int name_index;
    int scpe_index;
    int size_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    field_decl () : 
          access ( 0 ),
         algn ( 0 ),
         artificial ( 0 ),
         bitfield ( 0 ),
         bpos ( 0 ),
         chan ( 0 ),
         mngl ( 0 ),
         name ( 0 ),
         protected_x ( 0 ),
         public_x ( 0 ),
         scpe ( 0 ),
         size ( 0 ),
         spec ( 0 ),
         source ( 0 ),
         type ( 0 ),
         bpos_index ( -1 ),
         chan_index ( -1 ),
         mngl_index ( -1 ),
         name_index ( -1 ),
         scpe_index ( -1 ),
         size_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  field_decl );}
};

class  file_stmt : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    file_stmt ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  file_stmt );}
};

class  fix_trunc_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    fix_trunc_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  fix_trunc_expr );}
};

class  float_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    float_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  float_expr );}
};

class  for_stmt : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * cond ;
    GCCNode * expr ;
    GCCNode * init ;
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int body_index;
    int cond_index;
    int expr_index;
    int init_index;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    for_stmt () : 
          body ( 0 ),
         cond ( 0 ),
         expr ( 0 ),
         init ( 0 ),
         line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         body_index ( -1 ),
         cond_index ( -1 ),
         expr_index ( -1 ),
         init_index ( -1 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  for_stmt );}
};

class  function_decl : public  GCCNode
{

public:
    const char * access ;
    GCCNode * args ;
    int artificial ;
    int assign ;
    GCCNode * body ;
    int C ;
    GCCNode * chan ;
    int constructor ;
    int delete_x ;
    int extern_x ;
    const char * lang ;
    const char * link ;
    int member ;
    GCCNode * mngl ;
    GCCNode * name ;
    int new_x ;
    StringVector note ;
    const char * Operator ;
    GCCNode * orig ;
    int public_x ;
    GCCNode * scpe ;
    StringVector spec ;
    const char * source ;
    int static_x ;
    GCCNode * type ;
    int undefined ;
    int vecdelete ;
    int vecnew ;
    int virtual_x ;
    int args_index;
    int body_index;
    int chan_index;
    int mngl_index;
    int name_index;
    int orig_index;
    int scpe_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    function_decl () : 
          access ( 0 ),
         args ( 0 ),
         artificial ( 0 ),
         assign ( 0 ),
         body ( 0 ),
         C ( 0 ),
         chan ( 0 ),
         constructor ( 0 ),
         delete_x ( 0 ),
         extern_x ( 0 ),
         lang ( 0 ),
         link ( 0 ),
         member ( 0 ),
         mngl ( 0 ),
         name ( 0 ),
         new_x ( 0 ),
         Operator ( 0 ),
         orig ( 0 ),
         public_x ( 0 ),
         scpe ( 0 ),
         source ( 0 ),
         static_x ( 0 ),
         type ( 0 ),
         undefined ( 0 ),
         vecdelete ( 0 ),
         vecnew ( 0 ),
         virtual_x ( 0 ),
         args_index ( -1 ),
         body_index ( -1 ),
         chan_index ( -1 ),
         mngl_index ( -1 ),
         name_index ( -1 ),
         orig_index ( -1 ),
         scpe_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  function_decl );}
};

class  function_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    GCCNode * prms ;
    const char * qual ;
    GCCNode * retn ;
    GCCNode * size ;
    GCCNode * unql ;
    int is_volatile ;
    int name_index;
    int prms_index;
    int retn_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    function_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         prms ( 0 ),
         qual ( 0 ),
         retn ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         is_volatile ( 0 ),
         name_index ( -1 ),
         prms_index ( -1 ),
         retn_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  function_type );}
};

class  ge_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ge_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  ge_expr );}
};

class  goto_expr : public  GCCNode
{

public:
    GCCNode * labl ;
    GCCNode * type ;
    int labl_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    goto_expr () : 
          labl ( 0 ),
         type ( 0 ),
         labl_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  goto_expr );}
};

class  goto_stmt : public  OperandNode
{

public:
    GCCNode * dest ;
    GCCNode * line ;
    GCCNode * next ;
    int dest_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    goto_stmt () : 
          dest ( 0 ),
         line ( 0 ),
         next ( 0 ),
         dest_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  goto_stmt );}
};

class  gt_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    gt_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  gt_expr );}
};

class  handler : public  GCCNode
{

public:
    GCCNode * body ;
    int line ;
    int body_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    handler () : 
          body ( 0 ),
         line ( 0 ),
         body_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  handler );}
};

class  identifier_node : public  GCCNode
{

public:
    const char * name ;
    StringVector note ;
    int Operator ;
    const char * string ;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    identifier_node () : 
          name ( 0 ),
         Operator ( 0 ),
         string ( 0 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  identifier_node );}
};

class  if_stmt : public  GCCNode
{

public:
    GCCNode * cond ;
    GCCNode * else_x ;
    int line ;
    GCCNode * next ;
    GCCNode * then ;
    GCCNode * type ;
    int cond_index;
    int else_x_index;
    int next_index;
    int then_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    if_stmt () : 
          cond ( 0 ),
         else_x ( 0 ),
         line ( 0 ),
         next ( 0 ),
         then ( 0 ),
         type ( 0 ),
         cond_index ( -1 ),
         else_x_index ( -1 ),
         next_index ( -1 ),
         then_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  if_stmt );}
};

class  imagpart_expr : public  GCCNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    imagpart_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  imagpart_expr );}
};

class  indirect_ref : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    indirect_ref () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  indirect_ref );}
};

class  init_expr : public  OperandNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    init_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  init_expr );}
};

class  integer_cst : public  GCCNode
{

public:
    int high ;
    int low ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    integer_cst () : 
          high ( 0 ),
         low ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  integer_cst );}
};

class  integer_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * max ;
    GCCNode * min ;
    GCCNode * name ;
    int prec ;
    const char * qual ;
    const char * sign ;
    GCCNode * size ;
    GCCNode * unql ;
    int unsigned_x ;
    int is_volatile ;
    int max_index;
    int min_index;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    integer_type () : 
          algn ( 0 ),
         constant ( 0 ),
         max ( 0 ),
         min ( 0 ),
         name ( 0 ),
         prec ( 0 ),
         qual ( 0 ),
         sign ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         unsigned_x ( 0 ),
         is_volatile ( 0 ),
         max_index ( -1 ),
         min_index ( -1 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  integer_type );}
};

class  label_decl : public  GCCNode
{

public:
    int artificial ;
    GCCNode * chan ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * orig ;
    GCCNode * scpe ;
    const char * source ;
    GCCNode * type ;
    int chan_index;
    int name_index;
    int orig_index;
    int scpe_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    label_decl () : 
          artificial ( 0 ),
         chan ( 0 ),
         name ( 0 ),
         orig ( 0 ),
         scpe ( 0 ),
         source ( 0 ),
         type ( 0 ),
         chan_index ( -1 ),
         name_index ( -1 ),
         orig_index ( -1 ),
         scpe_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  label_decl );}
};

class  label_expr : public  GCCNode
{

public:
    GCCNode * name ;
    GCCNode * type ;
    int name_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    label_expr () : 
          name ( 0 ),
         type ( 0 ),
         name_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  label_expr );}
};

class  label_stmt : public  GCCNode
{

public:
    GCCNode * labl ;
    GCCNode * line ;
    GCCNode * next ;
    int labl_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    label_stmt () : 
          labl ( 0 ),
         line ( 0 ),
         next ( 0 ),
         labl_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  label_stmt );}
};

class  lang_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * name ;
    int name_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    lang_type () : 
          algn ( 0 ),
         name ( 0 ),
         name_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  lang_type );}
};

class  le_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    le_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  le_expr );}
};

class  lshift_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    lshift_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  lshift_expr );}
};

class  lt_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    lt_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  lt_expr );}
};

class  max_expr : public  GCCNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    max_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  max_expr );}
};

class  member_ref : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    member_ref ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  member_ref );}
};

class  method_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * clas ;
    GCCNode * prms ;
    GCCNode * retn ;
    GCCNode * size ;
    GCCNode * unql ;
    int clas_index;
    int prms_index;
    int retn_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    method_type () : 
          algn ( 0 ),
         clas ( 0 ),
         prms ( 0 ),
         retn ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         clas_index ( -1 ),
         prms_index ( -1 ),
         retn_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  method_type );}
};

class  min_expr : public  GCCNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    min_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  min_expr );}
};

class  minus_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    minus_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  minus_expr );}
};

class  modify_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    modify_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  modify_expr );}
};

class  modop_expr : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    modop_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  modop_expr );}
};

class  mult_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    mult_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  mult_expr );}
};

class  namespace_decl : public  GCCNode
{

public:
    int C ;
    GCCNode * chan ;
    GCCNode * dcls ;
    const char * lang ;
    GCCNode * name ;
    const char * source ;
    GCCNode * type ;
    GCCNode * scpe ;
    int chan_index;
    int dcls_index;
    int name_index;
    int type_index;
    int scpe_index;

public:
  static const char * RClassName;

  const char * const RTypeName() const { 
      return(RClassName);
  }


    namespace_decl () : 
          C ( 0 ),
         chan ( 0 ),
         dcls ( 0 ),
         lang ( 0 ),
         name ( 0 ),
         source ( 0 ),
         type ( 0 ),
         scpe(0),
         chan_index ( -1 ),
         dcls_index ( -1 ),
         name_index ( -1 ),
         type_index ( -1 ), 
         scpe_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  namespace_decl );}
};

class  ne_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ne_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  ne_expr );}
};

class  negate_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    negate_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  negate_expr );}
};

class  non_lvalue_expr : public  OperandNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    non_lvalue_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  non_lvalue_expr );}
};

class  nop_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    nop_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  nop_expr );}
};

class  nw_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    nw_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  nw_expr );}
};

class  obj_type_ref : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    obj_type_ref () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  obj_type_ref );}
};

class  overload : public  GCCNode
{

public:
    GCCNode * chan ;
    GCCNode * crnt ;
    int chan_index;
    int crnt_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    overload () : 
          chan ( 0 ),
         crnt ( 0 ),
         chan_index ( -1 ),
         crnt_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  overload );}
};

class  parm_decl : public  GCCNode
{

public:
    int algn ;
    GCCNode * argt ;
    int artificial ;
    GCCNode * chan ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * orig ;
    GCCNode * scpe ;
    GCCNode * size ;
    const char * source ;
    GCCNode * type ;
    int used ;
    int argt_index;
    int chan_index;
    int name_index;
    int orig_index;
    int scpe_index;
    int size_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    parm_decl () : 
          algn ( 0 ),
         argt ( 0 ),
         artificial ( 0 ),
         chan ( 0 ),
         name ( 0 ),
         orig ( 0 ),
         scpe ( 0 ),
         size ( 0 ),
         source ( 0 ),
         type ( 0 ),
         used ( 0 ),
         argt_index ( -1 ),
         chan_index ( -1 ),
         name_index ( -1 ),
         orig_index ( -1 ),
         scpe_index ( -1 ),
         size_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  parm_decl );}
};

class  plus_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    plus_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  plus_expr );}
};

class  pointer_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    GCCNode * ptd ;
    const char * qual ;
    int restricted ;
    GCCNode * size ;
    GCCNode * unql ;
    int is_volatile ;
    int name_index;
    int ptd_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    pointer_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         ptd ( 0 ),
         qual ( 0 ),
         restricted ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         is_volatile ( 0 ),
         name_index ( -1 ),
         ptd_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  pointer_type );}
};

class  postdecrement_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    postdecrement_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  postdecrement_expr );}
};

class  postincrement_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    postincrement_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  postincrement_expr );}
};

class  predecrement_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    predecrement_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  predecrement_expr );}
};

class  preincrement_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    preincrement_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  preincrement_expr );}
};

class  rdiv_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    rdiv_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  rdiv_expr );}
};

class  real_cst : public  GCCNode
{

public:
    GCCNode * type ;
    double valu ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    real_cst () : 
          type ( 0 ),
         valu ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  real_cst );}
};

class  realpart_expr : public  GCCNode
{

public:
    GCCNode * op ;
    GCCNode * type ;
    int op_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    realpart_expr () : 
          op ( 0 ),
         type ( 0 ),
         op_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  realpart_expr );}
};

class  real_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    int prec ;
    const char * qual ;
    GCCNode * size ;
    GCCNode * unql ;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    real_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         prec ( 0 ),
         qual ( 0 ),
         size ( 0 ),
         unql ( 0 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  real_type );}
};

class  record_type : public  GCCNode
{

public:
    StringVector access ;
    int algn ;
    NodeVector base ;
    GCCNode * binf ;
    GCCNode * cls ;
    int constant ;
    GCCNode * flds ;
    GCCNode * fncs ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * ptd ;
    int public_x ;
    const char * qual ;
    GCCNode * size ;
    const char * spec ;
    int struct_x ;
    const char * tag ;
    GCCNode * unql ;
    GCCNode * vfld ;
    int binf_index;
    int cls_index;
    int flds_index;
    int fncs_index;
    int name_index;
    int ptd_index;
    int size_index;
    int unql_index;
    int vfld_index;
    NodeIndexVector base_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    record_type () : 
          algn ( 0 ),
         binf ( 0 ),
         cls ( 0 ),
         constant ( 0 ),
         flds ( 0 ),
         fncs ( 0 ),
         name ( 0 ),
         ptd ( 0 ),
         public_x ( 0 ),
         qual ( 0 ),
         size ( 0 ),
         spec ( 0 ),
         struct_x ( 0 ),
         tag ( 0 ),
         unql ( 0 ),
         vfld ( 0 ),
         binf_index ( -1 ),
         cls_index ( -1 ),
         flds_index ( -1 ),
         fncs_index ( -1 ),
         name_index ( -1 ),
         ptd_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ),
         vfld_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  record_type );}
};

class  reference_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * refd ;
    GCCNode * size ;
    int refd_index;
    int size_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    reference_type () : 
          algn ( 0 ),
         refd ( 0 ),
         size ( 0 ),
         refd_index ( -1 ),
         size_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  reference_type );}
};

class  reinterpret_cast_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    reinterpret_cast_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  reinterpret_cast_expr );}
};

class  result_decl : public  GCCNode
{

public:
    int algn ;
    int artificial ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * scpe ;
    GCCNode * size ;
    const char * source ;
    GCCNode * type ;
    int name_index;
    int scpe_index;
    int size_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    result_decl () : 
          algn ( 0 ),
         artificial ( 0 ),
         name ( 0 ),
         scpe ( 0 ),
         size ( 0 ),
         source ( 0 ),
         type ( 0 ),
         name_index ( -1 ),
         scpe_index ( -1 ),
         size_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  result_decl );}
};

class  return_expr : public  GCCNode
{

public:
    GCCNode * expr ;
    GCCNode * type ;
    int expr_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    return_expr () : 
          expr ( 0 ),
         type ( 0 ),
         expr_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  return_expr );}
};

class  return_stmt : public  OperandNode
{

public:
    GCCNode * expr ;
    GCCNode * line ;
    GCCNode * next ;
    int expr_index;
    int line_index;
    int next_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    return_stmt () : 
          expr ( 0 ),
         line ( 0 ),
         next ( 0 ),
         expr_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  return_stmt );}
};

class  rshift_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    rshift_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  rshift_expr );}
};

class  save_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    save_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  save_expr );}
};

class  scope_ref : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    scope_ref () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  scope_ref );}
};

class  scope_stmt : public  OperandNode
{

public:
    GCCNode * begn ;
    GCCNode * clnp ;
    GCCNode * end ;
    GCCNode * line ;
    GCCNode * next ;
    GCCNode * null ;
    int begn_index;
    int clnp_index;
    int end_index;
    int line_index;
    int next_index;
    int null_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    scope_stmt () : 
          begn ( 0 ),
         clnp ( 0 ),
         end ( 0 ),
         line ( 0 ),
         next ( 0 ),
         null ( 0 ),
         begn_index ( -1 ),
         clnp_index ( -1 ),
         end_index ( -1 ),
         line_index ( -1 ),
         next_index ( -1 ),
         null_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  scope_stmt );}
};

class  sizeof_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    sizeof_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  sizeof_expr );}
};

class  statement_list : public  GCCListNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    statement_list ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  statement_list );}
};

class  static_cast_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    static_cast_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  static_cast_expr );}
};

class  stmt_expr : public  GCCNode
{

public:
    GCCNode * stmt ;
    GCCNode * type ;
    int stmt_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    stmt_expr () : 
          stmt ( 0 ),
         type ( 0 ),
         stmt_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  stmt_expr );}
};

class  string_cst : public  GCCNode
{

public:
    const char * strg ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    string_cst () : 
          strg ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  string_cst );}
};

class  switch_expr : public  GCCNode
{

public:
    GCCNode * cond ;
    GCCNode * labl ;
    GCCNode * type ;
    int cond_index;
    int labl_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    switch_expr () : 
          cond ( 0 ),
         labl ( 0 ),
         type ( 0 ),
         cond_index ( -1 ),
         labl_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  switch_expr );}
};

class  switch_stmt : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * cond ;
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int body_index;
    int cond_index;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    switch_stmt () : 
          body ( 0 ),
         cond ( 0 ),
         line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         body_index ( -1 ),
         cond_index ( -1 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  switch_stmt );}
};

class  target_expr : public  GCCNode
{

public:
    GCCNode * decl ;
    GCCNode * init ;
    GCCNode * type ;
    int decl_index;
    int init_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    target_expr () : 
          decl ( 0 ),
         init ( 0 ),
         type ( 0 ),
         decl_index ( -1 ),
         init_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  target_expr );}
};

class  template_decl : public  GCCNode
{

public:
    GCCNode * chan ;
    GCCNode * inst ;
    GCCNode * name ;
    GCCNode * orig ;
    GCCNode * prms ;
    GCCNode * rslt ;
    GCCNode * scpe ;
    GCCNode * spcs ;
    const char * source ;
    GCCNode * type ;
    int chan_index;
    int inst_index;
    int name_index;
    int orig_index;
    int prms_index;
    int rslt_index;
    int scpe_index;
    int spcs_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    template_decl () : 
          chan ( 0 ),
         inst ( 0 ),
         name ( 0 ),
         orig ( 0 ),
         prms ( 0 ),
         rslt ( 0 ),
         scpe ( 0 ),
         spcs ( 0 ),
         source ( 0 ),
         type ( 0 ),
         chan_index ( -1 ),
         inst_index ( -1 ),
         name_index ( -1 ),
         orig_index ( -1 ),
         prms_index ( -1 ),
         rslt_index ( -1 ),
         scpe_index ( -1 ),
         spcs_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  template_decl );}
};

class  template_id_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    template_id_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  template_id_expr );}
};

class  template_parm_index : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    template_parm_index ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  template_parm_index );}
};

class  template_type_parm : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * unql ;
    int name_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    template_type_parm () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         unql ( 0 ),
         name_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  template_type_parm );}
};

class  throw_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    throw_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  throw_expr );}
};

class  translation_unit_decl : public  GCCNode
{

public:
    GCCNode * source ;
    int source_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    translation_unit_decl () : 
          source ( 0 ),
         source_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  translation_unit_decl );}
};

class  tree_list : public  GCCNode
{

public:
    GCCNode * chan ;
    GCCNode * purp ;
    GCCNode * valu ;
    int chan_index;
    int purp_index;
    int valu_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    tree_list () : 
          chan ( 0 ),
         purp ( 0 ),
         valu ( 0 ),
         chan_index ( -1 ),
         purp_index ( -1 ),
         valu_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  tree_list );}
};

class  tree_vec : public  GCCListNode
{

public:
    int lngt ;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    tree_vec () : 
          lngt ( 0 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  tree_vec );}
};

class  trunc_div_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    trunc_div_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  trunc_div_expr );}
};

class  trunc_mod_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    trunc_mod_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  trunc_mod_expr );}
};

class  truth_and_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    truth_and_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  truth_and_expr );}
};

class  truth_andif_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    truth_andif_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  truth_andif_expr );}
};

class  truth_not_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    truth_not_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  truth_not_expr );}
};

class  truth_or_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    truth_or_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  truth_or_expr );}
};

class  truth_orif_expr : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    truth_orif_expr () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  truth_orif_expr );}
};

class  try_block : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * hdlr ;
    int line ;
    GCCNode * type ;
    int body_index;
    int hdlr_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    try_block () : 
          body ( 0 ),
         hdlr ( 0 ),
         line ( 0 ),
         type ( 0 ),
         body_index ( -1 ),
         hdlr_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  try_block );}
};

class  try_catch_expr : public  GCCNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    try_catch_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  try_catch_expr );}
};

class  try_finally : public  OperandNode
{

public:
    int op ;
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    try_finally () : 
          op ( 0 ),
         type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  try_finally );}
};

class  type_decl : public  GCCNode
{

public:
    int artificial ;
    int C ;
    GCCNode * chan ;
    const char * lang ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * scpe ;
    const char * source ;
    GCCNode * type ;
    int chan_index;
    int name_index;
    int scpe_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    type_decl () : 
          artificial ( 0 ),
         C ( 0 ),
         chan ( 0 ),
         lang ( 0 ),
         name ( 0 ),
         scpe ( 0 ),
         source ( 0 ),
         type ( 0 ),
         chan_index ( -1 ),
         name_index ( -1 ),
         scpe_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  type_decl );}
};

class  typename_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * unql ;
    int name_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    typename_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         unql ( 0 ),
         name_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  typename_type );}
};

class  union_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * binf ;
    int constant ;
    GCCNode * flds ;
    GCCNode * fncs ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * size ;
    const char * tag ;
    int union_x ;
    GCCNode * unql ;
    int is_volatile ;
    int binf_index;
    int flds_index;
    int fncs_index;
    int name_index;
    int size_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    union_type () : 
          algn ( 0 ),
         binf ( 0 ),
         constant ( 0 ),
         flds ( 0 ),
         fncs ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         size ( 0 ),
         tag ( 0 ),
         union_x ( 0 ),
         unql ( 0 ),
         is_volatile ( 0 ),
         binf_index ( -1 ),
         flds_index ( -1 ),
         fncs_index ( -1 ),
         name_index ( -1 ),
         size_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  union_type );}
};

class  var_decl : public  GCCNode
{

public:
    const char * access ;
    int algn ;
    int artificial ;
    int C ;
    GCCNode * chan ;
    GCCNode * init ;
    const char * lang ;
    const char * link ;
    GCCNode * mngl ;
    GCCNode * name ;
    StringVector note ;
    GCCNode * orig ;
    int public_x ;
    int register_x ;
    GCCNode * scpe ;
    GCCNode * size ;
    const char * source ;
    int static_x ;
    GCCNode * type ;
    int used ;
    int chan_index;
    int init_index;
    int mngl_index;
    int name_index;
    int orig_index;
    int scpe_index;
    int size_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    var_decl () : 
          access ( 0 ),
         algn ( 0 ),
         artificial ( 0 ),
         C ( 0 ),
         chan ( 0 ),
         init ( 0 ),
         lang ( 0 ),
         link ( 0 ),
         mngl ( 0 ),
         name ( 0 ),
         orig ( 0 ),
         public_x ( 0 ),
         register_x ( 0 ),
         scpe ( 0 ),
         size ( 0 ),
         source ( 0 ),
         static_x ( 0 ),
         type ( 0 ),
         used ( 0 ),
         chan_index ( -1 ),
         init_index ( -1 ),
         mngl_index ( -1 ),
         name_index ( -1 ),
         orig_index ( -1 ),
         scpe_index ( -1 ),
         size_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  var_decl );}
};

class  vector_type : public  GCCNode
{

public:
    int algn ;
    GCCNode * size ;
    int size_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    vector_type () : 
          algn ( 0 ),
         size ( 0 ),
         size_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  vector_type );}
};

class  void_type : public  GCCNode
{

public:
    int algn ;
    int constant ;
    GCCNode * name ;
    const char * qual ;
    GCCNode * unql ;
    int is_volatile ;
    int name_index;
    int unql_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    void_type () : 
          algn ( 0 ),
         constant ( 0 ),
         name ( 0 ),
         qual ( 0 ),
         unql ( 0 ),
         is_volatile ( 0 ),
         name_index ( -1 ),
         unql_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  void_type );}
};

class  while_stmt : public  GCCNode
{

public:
    GCCNode * body ;
    GCCNode * cond ;
    int line ;
    GCCNode * next ;
    GCCNode * type ;
    int body_index;
    int cond_index;
    int next_index;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    while_stmt () : 
          body ( 0 ),
         cond ( 0 ),
         line ( 0 ),
         next ( 0 ),
         type ( 0 ),
         body_index ( -1 ),
         cond_index ( -1 ),
         next_index ( -1 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  while_stmt );}
};

class  exact_div_expr : public  OperandNode
{

public:
    GCCNode * type ;
    int type_index;

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    exact_div_expr () : 
          type ( 0 ),
         type_index ( -1 ) 
        {}



SEXP getRElement(SEXP r_elName);
void pushEntry(std::string fieldName, std::string fieldVal);

public:
   static GCCNode *createInstance() { return(new  exact_div_expr );}
};

class  floor_div_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    floor_div_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  floor_div_expr );}
};

class  floor_mod_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    floor_mod_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  floor_mod_expr );}
};

class  ceil_div_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ceil_div_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  ceil_div_expr );}
};

class  ceil_mod_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    ceil_mod_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  ceil_mod_expr );}
};

class  round_div_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    round_div_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  round_div_expr );}
};

class  round_mod_expr : public  OperandNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    round_mod_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  round_mod_expr );}
};

class  aggr_init_expr : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    aggr_init_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  aggr_init_expr );}
};

class  using_decl : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    using_decl ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  using_decl );}
};

class  asm_expr : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    asm_expr ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  asm_expr );}
};

class  tag_defn : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    tag_defn ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  tag_defn );}
};

class  offset_type : public  GCCNode
{

public:

public:
  static const char * RClassName;
  const char * const RTypeName() const { return(RClassName);}

    offset_type ()  
  
        {}


public:
   static GCCNode *createInstance() { return(new  offset_type );}
};

