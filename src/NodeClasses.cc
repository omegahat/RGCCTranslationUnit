#ifndef R_NO_NATIVE_TU_PARSER
#include "RTUParser.h"

void  abs_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP abs_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  addr_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP addr_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  array_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP array_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  array_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "domn" ) == 0)
       domn = setNodeIndex(fieldVal, &domn_index) ;
    else if(fieldName.compare( "elts" ) == 0)
       elts = setNodeIndex(fieldVal, &elts_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP array_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "domn" ) == 0)
       return( createGCCNodeRObject( &domn, domn_index) );
    else if(strcmp(elName,  "elts" ) == 0)
       return( createGCCNodeRObject( &elts, elts_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  arrow_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP arrow_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bind_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "vars" ) == 0)
       vars = setNodeIndex(fieldVal, &vars_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bind_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "vars" ) == 0)
       return( createGCCNodeRObject( &vars, vars_index) );

  return(GCCNode::getRElement(r_elName));
}

void  binfo ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "accs" ) == 0)
        access.push_back(internString(fieldVal.c_str(), true)) ;
    else if(fieldName.compare( "base" ) == 0)
       base = setNodeIndex(fieldVal, &base_index) ;
    else if(fieldName.compare( "bases" ) == 0)
       bases = toInteger(fieldVal) ;
    else if(fieldName.compare( "binf" ) == 0)
        binf_index.push_back(toNodeIndex(fieldVal)) ;
    else if(fieldName.compare( "spec" ) == 0)
       spec = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP binfo ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "access" ) == 0)
       return( R_convertStringVector( access ) );
    else if(strcmp(elName,  "base" ) == 0)
       return( createGCCNodeRObject( &base, base_index) );
    else if(strcmp(elName,  "bases" ) == 0)
       return( ScalarInteger( bases ) );
    else if(strcmp(elName,  "binf" ) == 0)
       return( R_convertNodeVector(binf, binf_index) );
    else if(strcmp(elName,  "spec" ) == 0)
       return( spec ? mkString( spec ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bit_and_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bit_and_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bit_field_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bit_field_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bit_ior_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bit_ior_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bit_not_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bit_not_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  bit_xor_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP bit_xor_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  boolean_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP boolean_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  break_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP break_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  call_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "args" ) == 0)
       args = setNodeIndex(fieldVal, &args_index) ;
    else if(fieldName.compare( "fn" ) == 0)
       fn = setNodeIndex(fieldVal, &fn_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP call_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "args" ) == 0)
       return( createGCCNodeRObject( &args, args_index) );
    else if(strcmp(elName,  "fn" ) == 0)
       return( createGCCNodeRObject( &fn, fn_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  case_label ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "low" ) == 0)
       low = setNodeIndex(fieldVal, &low_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP case_label ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "low" ) == 0)
       return( createGCCNodeRObject( &low, low_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  case_label_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "low" ) == 0)
       low = setNodeIndex(fieldVal, &low_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP case_label_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "low" ) == 0)
       return( createGCCNodeRObject( &low, low_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  cast_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP cast_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  complex_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP complex_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  complex_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP complex_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );

  return(GCCNode::getRElement(r_elName));
}

void  component_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP component_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  compound_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP compound_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  compound_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP compound_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  cond_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP cond_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  const_cast_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP const_cast_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  const_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "cnst" ) == 0)
       cnst = setNodeIndex(fieldVal, &cnst_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP const_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "cnst" ) == 0)
       return( createGCCNodeRObject( &cnst, cnst_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  constructor ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "elts" ) == 0)
       elts = setNodeIndex(fieldVal, &elts_index) ;
    else if(fieldName.compare( "idx" ) == 0)
       idx = setNodeIndex(fieldVal, &idx_index) ;
    else if(fieldName.compare( "lngt" ) == 0)
       lngt = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "val" ) == 0)
       val = setNodeIndex(fieldVal, &val_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP constructor ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "elts" ) == 0)
       return( createGCCNodeRObject( &elts, elts_index) );
    else if(strcmp(elName,  "idx" ) == 0)
       return( createGCCNodeRObject( &idx, idx_index) );
    else if(strcmp(elName,  "lngt" ) == 0)
       return( ScalarInteger( lngt ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "val" ) == 0)
       return( createGCCNodeRObject( &val, val_index) );

  return(GCCNode::getRElement(r_elName));
}

void  continue_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP continue_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  convert_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP convert_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  ctor_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "begn" ) == 0)
       begn = setNodeIndex(fieldVal, &begn_index) ;
    else if(fieldName.compare( "end" ) == 0)
       end = setNodeIndex(fieldVal, &end_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP ctor_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "begn" ) == 0)
       return( createGCCNodeRObject( &begn, begn_index) );
    else if(strcmp(elName,  "end" ) == 0)
       return( createGCCNodeRObject( &end, end_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  decl_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP decl_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  decl_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "decl" ) == 0)
       decl = setNodeIndex(fieldVal, &decl_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP decl_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "decl" ) == 0)
       return( createGCCNodeRObject( &decl, decl_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  dl_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP dl_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  do_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP do_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  enumeral_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "csts" ) == 0)
       csts = setNodeIndex(fieldVal, &csts_index) ;
    else if(fieldName.compare( "max" ) == 0)
       max = setNodeIndex(fieldVal, &max_index) ;
    else if(fieldName.compare( "min" ) == 0)
       min = setNodeIndex(fieldVal, &min_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "prec" ) == 0)
       prec = toInteger(fieldVal) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "sign" ) == 0)
       sign = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "unsigned_x" ) == 0)
       unsigned_x = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP enumeral_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "csts" ) == 0)
       return( createGCCNodeRObject( &csts, csts_index) );
    else if(strcmp(elName,  "max" ) == 0)
       return( createGCCNodeRObject( &max, max_index) );
    else if(strcmp(elName,  "min" ) == 0)
       return( createGCCNodeRObject( &min, min_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "prec" ) == 0)
       return( ScalarInteger( prec ) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "sign" ) == 0)
       return( sign ? mkString( sign ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "unsigned" ) == 0)
       return( ScalarInteger( unsigned_x ) );

  return(GCCNode::getRElement(r_elName));
}

void  eq_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP eq_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  expr_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "expr" ) == 0)
       expr = setNodeIndex(fieldVal, &expr_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP expr_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "expr" ) == 0)
       return( createGCCNodeRObject( &expr, expr_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  field_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "accs" ) == 0)
       access = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "bitfield" ) == 0)
       bitfield = toInteger(fieldVal) ;
    else if(fieldName.compare( "bpos" ) == 0)
       bpos = setNodeIndex(fieldVal, &bpos_index) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "mngl" ) == 0)
       mngl = setNodeIndex(fieldVal, &mngl_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "protected_x" ) == 0)
       protected_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "public_x" ) == 0)
       public_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "spec" ) == 0)
       spec = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP field_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "access" ) == 0)
       return( access ? mkString( access ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "bitfield" ) == 0)
       return( ScalarInteger( bitfield ) );
    else if(strcmp(elName,  "bpos" ) == 0)
       return( createGCCNodeRObject( &bpos, bpos_index) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "mngl" ) == 0)
       return( createGCCNodeRObject( &mngl, mngl_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "protected" ) == 0)
       return( ScalarInteger( protected_x ) );
    else if(strcmp(elName,  "public" ) == 0)
       return( ScalarInteger( public_x ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "spec" ) == 0)
       return( spec ? mkString( spec ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  fix_trunc_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP fix_trunc_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  float_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP float_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  for_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "expr" ) == 0)
       expr = setNodeIndex(fieldVal, &expr_index) ;
    else if(fieldName.compare( "init" ) == 0)
       init = setNodeIndex(fieldVal, &init_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP for_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "expr" ) == 0)
       return( createGCCNodeRObject( &expr, expr_index) );
    else if(strcmp(elName,  "init" ) == 0)
       return( createGCCNodeRObject( &init, init_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  function_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "accs" ) == 0)
       access = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "args" ) == 0)
       args = setNodeIndex(fieldVal, &args_index) ;
    else if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "assign" ) == 0)
       assign = toInteger(fieldVal) ;
    else if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "C" ) == 0)
       C = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "constructor" ) == 0)
       constructor = toInteger(fieldVal) ;
    else if(fieldName.compare( "delete_x" ) == 0)
       delete_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "extern_x" ) == 0)
       extern_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "lang" ) == 0)
       lang = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "link" ) == 0)
       link = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "member" ) == 0)
       member = toInteger(fieldVal) ;
    else if(fieldName.compare( "mngl" ) == 0)
       mngl = setNodeIndex(fieldVal, &mngl_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "new_x" ) == 0)
       new_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "operator" ) == 0)
       Operator = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "orig" ) == 0)
       orig = setNodeIndex(fieldVal, &orig_index) ;
    else if(fieldName.compare( "public_x" ) == 0)
       public_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "spec" ) == 0)
        spec.push_back(internString(fieldVal.c_str(), true)) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "static_x" ) == 0)
       static_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "undefined" ) == 0)
       undefined = toInteger(fieldVal) ;
    else if(fieldName.compare( "vecdelete" ) == 0)
       vecdelete = toInteger(fieldVal) ;
    else if(fieldName.compare( "vecnew" ) == 0)
       vecnew = toInteger(fieldVal) ;
    else if(fieldName.compare( "virtual_x" ) == 0)
       virtual_x = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP function_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "access" ) == 0)
       return( access ? mkString( access ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "args" ) == 0)
       return( createGCCNodeRObject( &args, args_index) );
    else if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "assign" ) == 0)
       return( ScalarInteger( assign ) );
    else if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "C" ) == 0)
       return( ScalarInteger( C ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "constructor" ) == 0)
       return( ScalarInteger( constructor ) );
    else if(strcmp(elName,  "delete" ) == 0)
       return( ScalarInteger( delete_x ) );
    else if(strcmp(elName,  "extern" ) == 0)
       return( ScalarInteger( extern_x ) );
    else if(strcmp(elName,  "lang" ) == 0)
       return( lang ? mkString( lang ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "link" ) == 0)
       return( link ? mkString( link ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "member" ) == 0)
       return( ScalarInteger( member ) );
    else if(strcmp(elName,  "mngl" ) == 0)
       return( createGCCNodeRObject( &mngl, mngl_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "new" ) == 0)
       return( ScalarInteger( new_x ) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "Operator" ) == 0)
       return( Operator ? mkString( Operator ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "orig" ) == 0)
       return( createGCCNodeRObject( &orig, orig_index) );
    else if(strcmp(elName,  "public" ) == 0)
       return( ScalarInteger( public_x ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "spec" ) == 0)
       return( R_convertStringVector( spec ) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "static" ) == 0)
       return( ScalarInteger( static_x ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "undefined" ) == 0)
       return( ScalarInteger( undefined ) );
    else if(strcmp(elName,  "vecdelete" ) == 0)
       return( ScalarInteger( vecdelete ) );
    else if(strcmp(elName,  "vecnew" ) == 0)
       return( ScalarInteger( vecnew ) );
    else if(strcmp(elName,  "virtual" ) == 0)
       return( ScalarInteger( virtual_x ) );

  return(GCCNode::getRElement(r_elName));
}

void  function_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "prms" ) == 0)
       prms = setNodeIndex(fieldVal, &prms_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "retn" ) == 0)
       retn = setNodeIndex(fieldVal, &retn_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "volatile" ) == 0)
       is_volatile = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP function_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "prms" ) == 0)
       return( createGCCNodeRObject( &prms, prms_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "retn" ) == 0)
       return( createGCCNodeRObject( &retn, retn_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "is_volatile" ) == 0)
       return( ScalarInteger( is_volatile ) );

  return(GCCNode::getRElement(r_elName));
}

void  ge_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP ge_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  goto_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "labl" ) == 0)
       labl = setNodeIndex(fieldVal, &labl_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP goto_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "labl" ) == 0)
       return( createGCCNodeRObject( &labl, labl_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  goto_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "dest" ) == 0)
       dest = setNodeIndex(fieldVal, &dest_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP goto_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "dest" ) == 0)
       return( createGCCNodeRObject( &dest, dest_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  gt_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP gt_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  handler ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP handler ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );

  return(GCCNode::getRElement(r_elName));
}

void  identifier_node ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "name" ) == 0)
       name = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "operator" ) == 0)
       Operator = toInteger(fieldVal) ;
    else if(fieldName.compare( "string" ) == 0)
       string = internString(fieldVal.c_str()  ) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP identifier_node ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "name" ) == 0)
       return( name ? mkString( name ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "Operator" ) == 0)
       return( ScalarInteger( Operator ) );
    else if(strcmp(elName,  "string" ) == 0)
       return( string ? mkString( string ) : NEW_CHARACTER(0) );

  return(GCCNode::getRElement(r_elName));
}

void  if_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "else_x" ) == 0)
       else_x = setNodeIndex(fieldVal, &else_x_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "then" ) == 0)
       then = setNodeIndex(fieldVal, &then_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP if_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "else" ) == 0)
       return( createGCCNodeRObject( &else_x, else_x_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "then" ) == 0)
       return( createGCCNodeRObject( &then, then_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  imagpart_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP imagpart_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  indirect_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP indirect_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  init_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP init_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  integer_cst ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "high" ) == 0)
       high = toInteger(fieldVal) ;
    else if(fieldName.compare( "low" ) == 0)
       low = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP integer_cst ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "high" ) == 0)
       return( ScalarInteger( high ) );
    else if(strcmp(elName,  "low" ) == 0)
       return( ScalarInteger( low ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  integer_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "max" ) == 0)
       max = setNodeIndex(fieldVal, &max_index) ;
    else if(fieldName.compare( "min" ) == 0)
       min = setNodeIndex(fieldVal, &min_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "prec" ) == 0)
       prec = toInteger(fieldVal) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "sign" ) == 0)
       sign = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "unsigned_x" ) == 0)
       unsigned_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "volatile" ) == 0)
       is_volatile = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP integer_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "max" ) == 0)
       return( createGCCNodeRObject( &max, max_index) );
    else if(strcmp(elName,  "min" ) == 0)
       return( createGCCNodeRObject( &min, min_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "prec" ) == 0)
       return( ScalarInteger( prec ) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "sign" ) == 0)
       return( sign ? mkString( sign ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "unsigned" ) == 0)
       return( ScalarInteger( unsigned_x ) );
    else if(strcmp(elName,  "is_volatile" ) == 0)
       return( ScalarInteger( is_volatile ) );

  return(GCCNode::getRElement(r_elName));
}

void  label_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "orig" ) == 0)
       orig = setNodeIndex(fieldVal, &orig_index) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP label_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "orig" ) == 0)
       return( createGCCNodeRObject( &orig, orig_index) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  label_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP label_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  label_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "labl" ) == 0)
       labl = setNodeIndex(fieldVal, &labl_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP label_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "labl" ) == 0)
       return( createGCCNodeRObject( &labl, labl_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  lang_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP lang_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );

  return(GCCNode::getRElement(r_elName));
}

void  le_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP le_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  lshift_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP lshift_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  lt_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP lt_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  max_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP max_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  method_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "clas" ) == 0)
       clas = setNodeIndex(fieldVal, &clas_index) ;
    else if(fieldName.compare( "prms" ) == 0)
       prms = setNodeIndex(fieldVal, &prms_index) ;
    else if(fieldName.compare( "retn" ) == 0)
       retn = setNodeIndex(fieldVal, &retn_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP method_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "clas" ) == 0)
       return( createGCCNodeRObject( &clas, clas_index) );
    else if(strcmp(elName,  "prms" ) == 0)
       return( createGCCNodeRObject( &prms, prms_index) );
    else if(strcmp(elName,  "retn" ) == 0)
       return( createGCCNodeRObject( &retn, retn_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  min_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP min_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  minus_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP minus_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  modify_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP modify_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  mult_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP mult_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  namespace_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "C" ) == 0)
       C = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "dcls" ) == 0)
       dcls = setNodeIndex(fieldVal, &dcls_index) ;
    else if(fieldName.compare( "lang" ) == 0)
       lang = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
#if 1
    else if(fieldName.compare( "scpe" ) == 0)
       type = setNodeIndex(fieldVal, &scpe_index) ;
#endif

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP namespace_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "C" ) == 0)
       return( ScalarInteger( C ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "dcls" ) == 0)
       return( createGCCNodeRObject( &dcls, dcls_index) );
    else if(strcmp(elName,  "lang" ) == 0)
       return( lang ? mkString( lang ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
#if 1
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
#endif

  return(GCCNode::getRElement(r_elName));
}

void  ne_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP ne_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  negate_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP negate_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "ops" ) == 0)
      return( R_internal_OperandNode_operands(this, true ));

  return(GCCNode::getRElement(r_elName));
}

void  non_lvalue_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP non_lvalue_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  nop_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP nop_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  nw_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP nw_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  obj_type_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP obj_type_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  overload ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "crnt" ) == 0)
       crnt = setNodeIndex(fieldVal, &crnt_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP overload ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "crnt" ) == 0)
       return( createGCCNodeRObject( &crnt, crnt_index) );

  return(GCCNode::getRElement(r_elName));
}

void  parm_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "argt" ) == 0)
       argt = setNodeIndex(fieldVal, &argt_index) ;
    else if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "orig" ) == 0)
       orig = setNodeIndex(fieldVal, &orig_index) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "used" ) == 0)
       used = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP parm_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "argt" ) == 0)
       return( createGCCNodeRObject( &argt, argt_index) );
    else if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "orig" ) == 0)
       return( createGCCNodeRObject( &orig, orig_index) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "used" ) == 0)
       return( ScalarInteger( used ) );

  return(GCCNode::getRElement(r_elName));
}

void  plus_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP plus_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  pointer_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "ptd" ) == 0)
       ptd = setNodeIndex(fieldVal, &ptd_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "restricted" ) == 0)
       restricted = toInteger(fieldVal) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "volatile" ) == 0)
       is_volatile = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP pointer_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "ptd" ) == 0)
       return( createGCCNodeRObject( &ptd, ptd_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "restricted" ) == 0)
       return( ScalarInteger( restricted ) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "is_volatile" ) == 0)
       return( ScalarInteger( is_volatile ) );

  return(GCCNode::getRElement(r_elName));
}

void  postdecrement_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP postdecrement_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  postincrement_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP postincrement_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  predecrement_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP predecrement_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  preincrement_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP preincrement_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  rdiv_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP rdiv_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  real_cst ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "valu" ) == 0)
       valu = toDouble(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP real_cst ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "valu" ) == 0)
       return( ScalarReal( valu ) );

  return(GCCNode::getRElement(r_elName));
}

void  realpart_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "op" ) == 0)
       op = setNodeIndex(fieldVal, &op_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP realpart_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( createGCCNodeRObject( &op, op_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  real_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "prec" ) == 0)
       prec = toInteger(fieldVal) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP real_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "prec" ) == 0)
       return( ScalarInteger( prec ) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  record_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "accs" ) == 0)
        access.push_back(internString(fieldVal.c_str(), true)) ;
    else if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "base" ) == 0)
        base_index.push_back(toNodeIndex(fieldVal)) ;
    else if(fieldName.compare( "binf" ) == 0)
       binf = setNodeIndex(fieldVal, &binf_index) ;
    else if(fieldName.compare( "cls" ) == 0)
       cls = setNodeIndex(fieldVal, &cls_index) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "flds" ) == 0)
       flds = setNodeIndex(fieldVal, &flds_index) ;
    else if(fieldName.compare( "fncs" ) == 0)
       fncs = setNodeIndex(fieldVal, &fncs_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "ptd" ) == 0)
       ptd = setNodeIndex(fieldVal, &ptd_index) ;
    else if(fieldName.compare( "public_x" ) == 0)
       public_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "spec" ) == 0)
       spec = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "struct_x" ) == 0)
       struct_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "tag" ) == 0)
       tag = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "vfld" ) == 0)
       vfld = setNodeIndex(fieldVal, &vfld_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP record_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "access" ) == 0)
       return( R_convertStringVector( access ) );
    else if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "base" ) == 0)
       return( R_convertNodeVector(base, base_index) );
    else if(strcmp(elName,  "binf" ) == 0)
       return( createGCCNodeRObject( &binf, binf_index) );
    else if(strcmp(elName,  "cls" ) == 0)
       return( createGCCNodeRObject( &cls, cls_index) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "flds" ) == 0)
       return( createGCCNodeRObject( &flds, flds_index) );
    else if(strcmp(elName,  "fncs" ) == 0)
       return( createGCCNodeRObject( &fncs, fncs_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "ptd" ) == 0)
       return( createGCCNodeRObject( &ptd, ptd_index) );
    else if(strcmp(elName,  "public" ) == 0)
       return( ScalarInteger( public_x ) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "spec" ) == 0)
       return( spec ? mkString( spec ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "struct" ) == 0)
       return( ScalarInteger( struct_x ) );
    else if(strcmp(elName,  "tag" ) == 0)
       return( tag ? mkString( tag ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "vfld" ) == 0)
       return( createGCCNodeRObject( &vfld, vfld_index) );

  return(GCCNode::getRElement(r_elName));
}

void  reference_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "refd" ) == 0)
       refd = setNodeIndex(fieldVal, &refd_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP reference_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "refd" ) == 0)
       return( createGCCNodeRObject( &refd, refd_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );

  return(GCCNode::getRElement(r_elName));
}

void  reinterpret_cast_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP reinterpret_cast_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  result_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP result_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  return_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "expr" ) == 0)
       expr = setNodeIndex(fieldVal, &expr_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP return_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "expr" ) == 0)
       return( createGCCNodeRObject( &expr, expr_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  return_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "expr" ) == 0)
       expr = setNodeIndex(fieldVal, &expr_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP return_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "expr" ) == 0)
       return( createGCCNodeRObject( &expr, expr_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );

  return(GCCNode::getRElement(r_elName));
}

void  rshift_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP rshift_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  save_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP save_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  scope_ref ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP scope_ref ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  scope_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "begn" ) == 0)
       begn = setNodeIndex(fieldVal, &begn_index) ;
    else if(fieldName.compare( "clnp" ) == 0)
       clnp = setNodeIndex(fieldVal, &clnp_index) ;
    else if(fieldName.compare( "end" ) == 0)
       end = setNodeIndex(fieldVal, &end_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = setNodeIndex(fieldVal, &line_index) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "null" ) == 0)
       null = setNodeIndex(fieldVal, &null_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP scope_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "begn" ) == 0)
       return( createGCCNodeRObject( &begn, begn_index) );
    else if(strcmp(elName,  "clnp" ) == 0)
       return( createGCCNodeRObject( &clnp, clnp_index) );
    else if(strcmp(elName,  "end" ) == 0)
       return( createGCCNodeRObject( &end, end_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( createGCCNodeRObject( &line, line_index) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "null" ) == 0)
       return( createGCCNodeRObject( &null, null_index) );

  return(GCCNode::getRElement(r_elName));
}

void  sizeof_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP sizeof_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  static_cast_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP static_cast_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  stmt_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "stmt" ) == 0)
       stmt = setNodeIndex(fieldVal, &stmt_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP stmt_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "stmt" ) == 0)
       return( createGCCNodeRObject( &stmt, stmt_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  string_cst ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "strg" ) == 0) {
      /* Change name of field to string, not strg to be consistent with identifier_node
         and also terminate the string one short of what it is now. */
      char *tmp = strdup(fieldVal.c_str());
       tmp[strlen(tmp)-1] = '\0';
       strg = internString(tmp) ;
       
       GCCNode::pushEntry("string", std::string(tmp)); // fieldVal
       return;
    } else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

    GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP string_cst ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "strg" ) == 0)
       return( strg ? mkString( strg ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  switch_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "labl" ) == 0)
       labl = setNodeIndex(fieldVal, &labl_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP switch_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "labl" ) == 0)
       return( createGCCNodeRObject( &labl, labl_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  switch_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP switch_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  target_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "decl" ) == 0)
       decl = setNodeIndex(fieldVal, &decl_index) ;
    else if(fieldName.compare( "init" ) == 0)
       init = setNodeIndex(fieldVal, &init_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP target_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "decl" ) == 0)
       return( createGCCNodeRObject( &decl, decl_index) );
    else if(strcmp(elName,  "init" ) == 0)
       return( createGCCNodeRObject( &init, init_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  template_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "inst" ) == 0)
       inst = setNodeIndex(fieldVal, &inst_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "orig" ) == 0)
       orig = setNodeIndex(fieldVal, &orig_index) ;
    else if(fieldName.compare( "prms" ) == 0)
       prms = setNodeIndex(fieldVal, &prms_index) ;
    else if(fieldName.compare( "rslt" ) == 0)
       rslt = setNodeIndex(fieldVal, &rslt_index) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "spcs" ) == 0)
       spcs = setNodeIndex(fieldVal, &spcs_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP template_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "inst" ) == 0)
       return( createGCCNodeRObject( &inst, inst_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "orig" ) == 0)
       return( createGCCNodeRObject( &orig, orig_index) );
    else if(strcmp(elName,  "prms" ) == 0)
       return( createGCCNodeRObject( &prms, prms_index) );
    else if(strcmp(elName,  "rslt" ) == 0)
       return( createGCCNodeRObject( &rslt, rslt_index) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "spcs" ) == 0)
       return( createGCCNodeRObject( &spcs, spcs_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  template_id_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP template_id_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  template_type_parm ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP template_type_parm ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  throw_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP throw_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  translation_unit_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "srcp" ) == 0)
       source = setNodeIndex(fieldVal, &source_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP translation_unit_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "source" ) == 0)
       return( createGCCNodeRObject( &source, source_index) );

  return(GCCNode::getRElement(r_elName));
}

void  tree_list ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "purp" ) == 0)
       purp = setNodeIndex(fieldVal, &purp_index) ;
    else if(fieldName.compare( "valu" ) == 0)
       valu = setNodeIndex(fieldVal, &valu_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP tree_list ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "purp" ) == 0)
       return( createGCCNodeRObject( &purp, purp_index) );
    else if(strcmp(elName,  "valu" ) == 0)
       return( createGCCNodeRObject( &valu, valu_index) );

  return(GCCNode::getRElement(r_elName));
}

void  tree_vec ::pushEntry(std::string fieldName, std::string fieldVal) {
    if('0' <= fieldName.data()[0] && fieldName.data()[0] <= '9')  
       addElement(fieldVal);
    else if(fieldName.compare( "lngt" ) == 0)
       lngt = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP tree_vec ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "lngt" ) == 0)
       return( ScalarInteger( lngt ) );

  return(GCCNode::getRElement(r_elName));
}

void  trunc_div_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP trunc_div_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  trunc_mod_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP trunc_mod_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  truth_and_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP truth_and_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  truth_andif_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP truth_andif_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  truth_not_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP truth_not_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  truth_or_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP truth_or_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  truth_orif_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP truth_orif_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  try_block ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "hdlr" ) == 0)
       hdlr = setNodeIndex(fieldVal, &hdlr_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP try_block ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "hdlr" ) == 0)
       return( createGCCNodeRObject( &hdlr, hdlr_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  try_catch_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP try_catch_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  try_finally ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "op" ) == 0)
       op = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP try_finally ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "op" ) == 0)
       return( ScalarInteger( op ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  type_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "C" ) == 0)
       C = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "lang" ) == 0)
       lang = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP type_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "C" ) == 0)
       return( ScalarInteger( C ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "lang" ) == 0)
       return( lang ? mkString( lang ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  typename_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP typename_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );

  return(GCCNode::getRElement(r_elName));
}

void  union_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "binf" ) == 0)
       binf = setNodeIndex(fieldVal, &binf_index) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "flds" ) == 0)
       flds = setNodeIndex(fieldVal, &flds_index) ;
    else if(fieldName.compare( "fncs" ) == 0)
       fncs = setNodeIndex(fieldVal, &fncs_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "tag" ) == 0)
       tag = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "union_x" ) == 0)
       union_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "volatile" ) == 0)
       is_volatile = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP union_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "binf" ) == 0)
       return( createGCCNodeRObject( &binf, binf_index) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "flds" ) == 0)
       return( createGCCNodeRObject( &flds, flds_index) );
    else if(strcmp(elName,  "fncs" ) == 0)
       return( createGCCNodeRObject( &fncs, fncs_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "tag" ) == 0)
       return( tag ? mkString( tag ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "union" ) == 0)
       return( ScalarInteger( union_x ) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "is_volatile" ) == 0)
       return( ScalarInteger( is_volatile ) );

  return(GCCNode::getRElement(r_elName));
}

void  var_decl ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "accs" ) == 0)
       access = internString(fieldVal.c_str() , true ) ;
    else if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "artificial" ) == 0)
       artificial = toInteger(fieldVal) ;
    else if(fieldName.compare( "C" ) == 0)
       C = toInteger(fieldVal) ;
    else if(fieldName.compare( "chan" ) == 0)
       chan = setNodeIndex(fieldVal, &chan_index) ;
    else if(fieldName.compare( "init" ) == 0)
       init = setNodeIndex(fieldVal, &init_index) ;
    else if(fieldName.compare( "lang" ) == 0)
       lang = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "link" ) == 0)
       link = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "mngl" ) == 0)
       mngl = setNodeIndex(fieldVal, &mngl_index) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "note" ) == 0)
        note.push_back(internString(fieldVal.c_str())) ;
    else if(fieldName.compare( "orig" ) == 0)
       orig = setNodeIndex(fieldVal, &orig_index) ;
    else if(fieldName.compare( "public_x" ) == 0)
       public_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "register_x" ) == 0)
       register_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "scpe" ) == 0)
       scpe = setNodeIndex(fieldVal, &scpe_index) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;
    else if(fieldName.compare( "srcp" ) == 0)
       source = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "static_x" ) == 0)
       static_x = toInteger(fieldVal) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;
    else if(fieldName.compare( "used" ) == 0)
       used = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP var_decl ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "access" ) == 0)
       return( access ? mkString( access ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "artificial" ) == 0)
       return( ScalarInteger( artificial ) );
    else if(strcmp(elName,  "C" ) == 0)
       return( ScalarInteger( C ) );
    else if(strcmp(elName,  "chan" ) == 0)
       return( createGCCNodeRObject( &chan, chan_index) );
    else if(strcmp(elName,  "init" ) == 0)
       return( createGCCNodeRObject( &init, init_index) );
    else if(strcmp(elName,  "lang" ) == 0)
       return( lang ? mkString( lang ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "link" ) == 0)
       return( link ? mkString( link ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "mngl" ) == 0)
       return( createGCCNodeRObject( &mngl, mngl_index) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "note" ) == 0)
       return( R_convertStringVector( note ) );
    else if(strcmp(elName,  "orig" ) == 0)
       return( createGCCNodeRObject( &orig, orig_index) );
    else if(strcmp(elName,  "public" ) == 0)
       return( ScalarInteger( public_x ) );
    else if(strcmp(elName,  "register" ) == 0)
       return( ScalarInteger( register_x ) );
    else if(strcmp(elName,  "scpe" ) == 0)
       return( createGCCNodeRObject( &scpe, scpe_index) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );
    else if(strcmp(elName,  "source" ) == 0)
       return( source ? mkString( source ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "static" ) == 0)
       return( ScalarInteger( static_x ) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );
    else if(strcmp(elName,  "used" ) == 0)
       return( ScalarInteger( used ) );

  return(GCCNode::getRElement(r_elName));
}

void  vector_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "size" ) == 0)
       size = setNodeIndex(fieldVal, &size_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP vector_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "size" ) == 0)
       return( createGCCNodeRObject( &size, size_index) );

  return(GCCNode::getRElement(r_elName));
}

void  void_type ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "algn" ) == 0)
       algn = toInteger(fieldVal) ;
    else if(fieldName.compare( "const" ) == 0)
       constant = toInteger(fieldVal) ;
    else if(fieldName.compare( "name" ) == 0)
       name = setNodeIndex(fieldVal, &name_index) ;
    else if(fieldName.compare( "qual" ) == 0)
       qual = internString(fieldVal.c_str()  ) ;
    else if(fieldName.compare( "unql" ) == 0)
       unql = setNodeIndex(fieldVal, &unql_index) ;
    else if(fieldName.compare( "volatile" ) == 0)
       is_volatile = toInteger(fieldVal) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP void_type ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "algn" ) == 0)
       return( ScalarInteger( algn ) );
    else if(strcmp(elName,  "constant" ) == 0)
       return( ScalarInteger( constant ) );
    else if(strcmp(elName,  "name" ) == 0)
       return( createGCCNodeRObject( &name, name_index) );
    else if(strcmp(elName,  "qual" ) == 0)
       return( qual ? mkString( qual ) : NEW_CHARACTER(0) );
    else if(strcmp(elName,  "unql" ) == 0)
       return( createGCCNodeRObject( &unql, unql_index) );
    else if(strcmp(elName,  "is_volatile" ) == 0)
       return( ScalarInteger( is_volatile ) );

  return(GCCNode::getRElement(r_elName));
}

void  while_stmt ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(fieldName.compare( "body" ) == 0)
       body = setNodeIndex(fieldVal, &body_index) ;
    else if(fieldName.compare( "cond" ) == 0)
       cond = setNodeIndex(fieldVal, &cond_index) ;
    else if(fieldName.compare( "line" ) == 0)
       line = toInteger(fieldVal) ;
    else if(fieldName.compare( "next" ) == 0)
       next = setNodeIndex(fieldVal, &next_index) ;
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP while_stmt ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "body" ) == 0)
       return( createGCCNodeRObject( &body, body_index) );
    else if(strcmp(elName,  "cond" ) == 0)
       return( createGCCNodeRObject( &cond, cond_index) );
    else if(strcmp(elName,  "line" ) == 0)
       return( ScalarInteger( line ) );
    else if(strcmp(elName,  "next" ) == 0)
       return( createGCCNodeRObject( &next, next_index) );
    else if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

void  exact_div_expr ::pushEntry(std::string fieldName, std::string fieldVal) {
    if(strncmp("op ", fieldName.data(), 3) == 0)  
       addOperand(fieldVal);
    else if(fieldName.compare( "type" ) == 0)
       type = setNodeIndex(fieldVal, &type_index) ;

  GCCNode::pushEntry(fieldName, fieldVal);
}

SEXP exact_div_expr ::getRElement(SEXP r_elName) {
const char *elName = CHAR(STRING_ELT(r_elName, 0));
    if(strcmp(elName,  "type" ) == 0)
       return( createGCCNodeRObject( &type, type_index) );

  return(GCCNode::getRElement(r_elName));
}

#else
 static int foo;
#endif
