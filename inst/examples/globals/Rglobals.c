#include "Rglobals.h" 
SEXP
R_get_i ()
{
	return( R_MAKE_VAR_REFERENCE(&i, "intRef"));
} 

SEXP
R_get_aref ()
{
	return( R_MAKE_VAR_REFERENCE(&aref, "ARefRef"));
} 

SEXP
R_get_a ()
{
	return( R_MAKE_VAR_REFERENCE(&a, "ARef"));
} 

SEXP
R_get_valueOf_intRef (SEXP obj)
{
	int * tmp ;
	tmp = ( int *   ) R_getNativeReference(obj, "int" , "int" );
	if(!tmp) {
	   PROBLEM "NULL value found"
	   ERROR
	}
	return( ScalarInteger ( *tmp ) );
} 

SEXP
R_get_valueOf_ARefRef (SEXP obj)
{
	A ** tmp ;
	tmp = ( A **   ) R_getNativeReference(obj, "ARef" , "ARef" );
	if(!tmp) {
	   PROBLEM "NULL value found"
	   ERROR
	}
	return( R_MAKE_REF_TYPE( (void *)  *tmp ,  ARef ) );
} 

SEXP
R_get_valueOf_ARef (SEXP obj)
{
	A * tmp ;
	tmp = ( A *   ) R_getNativeReference(obj, "ARef" , "ARef" );
	if(!tmp) {
	   PROBLEM "NULL value found"
	   ERROR
	}
	return( R_copyStruct_A( &*tmp ) );
} 

