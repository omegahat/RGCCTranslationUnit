#include "globalRef.h" 
#include "RConverters.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_S ( const S *value)
{
	SEXP r_ans = R_NilValue, klass;
	klass = MAKE_CLASS("S");
	if(klass == R_NilValue) {
	   PROBLEM "Cannot find R class S "
	    ERROR;
	}
	

	PROTECT(klass);
	PROTECT(r_ans = NEW(klass));

	PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("i"), ScalarInteger ( value -> i ) ));
	PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("d"), ScalarReal( value -> d ) ));
	UNPROTECT( 4 );
	
	return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_SPtr_get_i (SEXP r_obj  )
{
	const S *obj ;
	obj = ( const S * )  R_getNativeReference(r_obj, "S", "SPtr") ;
	return( ScalarInteger ( obj -> i ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_SPtr_get_d (SEXP r_obj  )
{
	const S *obj ;
	obj = ( const S * )  R_getNativeReference(r_obj, "S", "SPtr") ;
	return( ScalarReal( obj -> d ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_SPtr_set_i (SEXP r_obj , SEXP r_value )
{
	S *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( S * )  R_getNativeReference(r_obj, "S", "SPtr") ;
	obj -> i = value ;
	return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_SPtr_set_d (SEXP r_obj , SEXP r_value )
{
	S *obj ;
	double value ;
	value =  asReal( r_value ) ;
	obj = ( S * )  R_getNativeReference(r_obj, "S", "SPtr") ;
	obj -> d = value ;
	return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_S_SPtr ( SEXP r_from )
{
	S * ans ;
	
	SEXP tmp;
	
	ans = ( S * ) malloc( sizeof( S ));
	tmp = GET_SLOT(r_from, Rf_install("i"));
	ans->i = asInteger( tmp ) ;
	tmp = GET_SLOT(r_from, Rf_install("d"));
	ans->d = asReal( tmp ) ;
	
	return ( R_createNativeReference( (void *)  ans ,  "SPtr" , "SPtr" ) );
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_SPtr_S ( SEXP from )
{
	S * ans ;
	ans = (S *) R_getNativeReference(from, "S", "SPtr");
	return( R_copyStruct_S ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_S ()
{
	SEXP r_ans = R_NilValue;
	S * ans;
	
	ans = ( S *) calloc (1, sizeof( S ));
	 r_ans =  R_createNativeReference( (void *)  ans ,  "SPtr" , "SPtr" ) ;
	return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_S_finalizer (SEXP val)
{
	S * ans = NULL;
	ans = ( S * ) R_ExternalPtrAddr(val);
	 if(ans) { fprintf(stderr, "freeing S \n"); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_S (SEXP val)
{
	S * ans = NULL;
	ans =  (S *) R_getNativeReference(val, "SPtr", "SPtr") ;
	
	 if(ans) { fprintf(stderr, "freeing S \n"); free(ans);}
	return(ScalarLogical(ans ? TRUE : FALSE));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_bar(SEXP r_x, SEXP r__copy, SEXP r_resultLength)
{
	
		SEXP r_ans = R_NilValue;
		SEXP r_names = R_NilValue;
		int r_ctr = 0;
		S x, *_p_x = &x;
		
	
		 if(GET_LENGTH( r_x ) > 0)  {
		 	_p_x  =  (S *) R_getNativeReference(r_x, "SPtr", "SPtr") ;
		 		}
	
		 bar ( _p_x );
		 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_x ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument x as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_x ) > 0 ?  r_x : R_copyStruct_S( &*_p_x ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("x"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_foo(SEXP r_x, SEXP r__copy, SEXP r_resultLength)
{
	
		SEXP r_ans = R_NilValue;
		SEXP r_names = R_NilValue;
		int r_ctr = 0;
		int x, *_p_x = &x;
		
	
		 if(GET_LENGTH( r_x ) > 0)  {
		 	if(IS_S4_INSTANCE( r_x ,  "intRef" ))
				 _p_x = R_getNativeReference( r_x ,  "intRef" , "intRef" );
			else
				 _p_x = INTEGER ( r_x );
		 		}
	
		 foo ( _p_x );
		 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_x ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument x as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_x ) > 0 ?  r_x : ScalarInteger ( *_p_x ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("x"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ps (SEXP copy)
{
	SEXP ans;
	
	if(!LOGICAL(copy)[0])
	    ans = R_createNativeReference( (void *)  & ps ,  "SPtrPtr" , "SPtrPtr" ) ;
	else
	    ans =  R_createNativeReference( (void *)  ps ,  "SPtr" , "SPtr" ) ;
	
	return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_s (SEXP copy)
{
	SEXP ans;
	
	if(!LOGICAL(copy)[0])
	    ans = R_createNativeReference( (void *)  & s ,  "SPtr" , "SPtr" ) ;
	else
	    ans =  R_copyStruct_S( &s ) ;
	
	return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_i (SEXP copy)
{
	SEXP ans;
	
	if(!LOGICAL(copy)[0])
	    ans = R_createNativeReference( (void *)  & i ,  "intPtr" , "intPtr" ) ;
	else
	    ans =  ScalarInteger ( i ) ;
	
	return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ps (SEXP value)
{
	SEXP ans;
	
	ps = (S *) R_getNativeReference(value, "SPtr", "SPtr") ;
	ans =  R_createNativeReference( (void *)  ps ,  "SPtr" , "SPtr" ) ;
	
	return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_s (SEXP value)
{
	SEXP ans;
	
	s = DEREF_REF( value ,  S ) ;
	ans =  R_copyStruct_S( &s ) ;
	
	return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_i (SEXP value)
{
	SEXP ans;
	
	i = asInteger( value ) ;
	ans =  ScalarInteger ( i ) ;
	
	return(ans);
} 

/* registration information for the C/C++ routines accessible by R */

#include <R_ext/Rdynload.h>

static const R_CallMethodDef CallEntries [] = {
    { "R_bar" , (DL_FUNC) & R_bar , 3 } ,
   { "R_foo" , (DL_FUNC) & R_foo , 3 } ,
   { "R_set_ps" , (DL_FUNC) & R_set_ps , 1 } ,
   { "R_get_ps" , (DL_FUNC) & R_get_ps , 1 } ,
   { "R_set_s" , (DL_FUNC) & R_set_s , 1 } ,
   { "R_get_s" , (DL_FUNC) & R_get_s , 1 } ,
   { "R_set_i" , (DL_FUNC) & R_set_i , 1 } ,
   { "R_get_i" , (DL_FUNC) & R_get_i , 1 } ,
   { "R_coerce_S_SPtr" , (DL_FUNC) & R_coerce_S_SPtr , 1 } ,
   { "R_coerce_SPtr_S" , (DL_FUNC) & R_coerce_SPtr_S , 1 } ,
   { "R_SPtr_get_i" , (DL_FUNC) & R_SPtr_get_i , 1 } ,
   { "R_SPtr_get_d" , (DL_FUNC) & R_SPtr_get_d , 1 } ,
   { "R_SPtr_set_i" , (DL_FUNC) & R_SPtr_set_i , 2 } ,
   { "R_SPtr_set_d" , (DL_FUNC) & R_SPtr_set_d , 2 } ,
   { "R_free_S_finalizer" , (DL_FUNC) & R_free_S_finalizer , 1 } ,
   { "R_free_S" , (DL_FUNC) & R_free_S , 1 } ,
   { "R_new_S" , (DL_FUNC) & R_new_S , 0 } , 
    {NULL, NULL, 0} 
};
 
#ifdef __cplusplus
extern "C"
#endif
void
#ifdef HAVE_VISIBILITY_ATTRIBUTE
__attribute__ ((visibility ("default")))
#endif
R_init_bob(DllInfo *dll)
{
	R_registerRoutines(dll,  NULL, CallEntries, NULL, NULL );
	R_useDynamicSymbols(dll, FALSE );
}
