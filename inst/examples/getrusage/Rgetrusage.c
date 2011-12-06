#include <sys/time.h> 
#include <sys/resource.h> 
#include <Rdefines.h> 
#include "RConverters.h" 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
convertCharPtrToR ( size_t dim , const char* array [ dim ] , int copyEls , int start, int end)
{
    int i, pos, len;
    SEXP r_ans;
    if(start < 0 || start > dim1 - 1 || end < 0 || end > dim1 - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) dim1
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_CHARACTER( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_STRING_ELT(r_ans, i, COPY_TO_USER_STRING(array[pos]));
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertCharPtrToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    const char* (*array) [dim] ;
    array = ( const char* (*) [dim] ) R_getNativeReference(r_array,  "charPtr" ,  "charPtr" );
    return( convertCharPtrToR ( dim , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetCharPtr (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t pos;
    char* (*array) [dim] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( char* (*) [dim] ) R_getNativeReference(r_array,  "charPtr" ,  "charPtr" );
    for(i = 0; i < n; i++) {
        pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array[pos] = strdup(CHAR(STRING_ELT(r_tmp, 0)));
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetCharPtr (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        const char* (*array) [dim] ;
        array = ( const char* (*) [dim] ) R_getNativeReference(r_array,  "charPtr" ,  "charPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  R_createNativeReference( (void *)  (*array)[ INTEGER(els)[i] - 1 ] ,  "charPtr" , "charPtr" ) : R_createNativeReference( (void *)  (*array)[ INTEGER(els)[i] -1 ] ,  "charPtr" , "charPtr" ) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setpriority(SEXP r_r14, SEXP r_r27, SEXP r_r43)
{
    
    	SEXP r_ans = R_NilValue;
    	int r14 ;
    	id_t r27 ;
    	int r43 ;
    	 int ans ;
    
    	 r14  =  asInteger( r_r14 ); ;
    	 r27  =  asInteger( r_r27 ); ;
    	 r43  =  asInteger( r_r43 ); ;
    
    	ans =  setpriority ( r14, r27, r43 );
    	 r_ans =  ScalarInteger( ans ) ;
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_getpriority(SEXP r_r52, SEXP r_r69)
{
    
    	SEXP r_ans = R_NilValue;
    	int r52 ;
    	id_t r69 ;
    	 int ans ;
    
    	 r52  =  asInteger( r_r52 ); ;
    	 r69  =  asInteger( r_r69 ); ;
    
    	ans =  getpriority ( r52, r69 );
    	 r_ans =  ScalarInteger( ans ) ;
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_getrusage(SEXP r_r26, SEXP r_r41, SEXP r__copy, SEXP r_resultLength)
{
    
    	SEXP r_ans = R_NilValue;
    	SEXP r_names = R_NilValue;
    	int r_ctr = 0;
    	struct  rusage r41, *_p_r41 = &r41;
    	int r26 ;
    	 int ans ;
    
    	 r26  =  asInteger( r_r26 ); ;
    	 if(GET_LENGTH( r_r41 ) > 0)  {
    	 	_p_r41  =  (struct  rusage *) R_getNativeReference(r_r41, "rusagePtr", NULL); ;
    	 		}
    
    	ans =  getrusage ( r26, _p_r41 );
    	 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 SET_VECTOR_ELT(r_ans, 0,  ScalarInteger( ans ) );
	 SET_STRING_ELT(r_names, 0, mkChar(".result"));
	 r_ctr++;
	 
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_r41 ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument r41 as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_r41 ) > 0 ?  r_r41 : R_copyStruct_rusage( &*_p_r41 ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("r41"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setrlimit(SEXP r_r7, SEXP r_r15, SEXP r__copy, SEXP r_resultLength)
{
    
    	SEXP r_ans = R_NilValue;
    	SEXP r_names = R_NilValue;
    	int r_ctr = 0;
    	struct  rlimit r15, *_p_r15 = &r15;
    	int r7 ;
    	 int ans ;
    
    	 r7  =  asInteger( r_r7 ); ;
    	 if(GET_LENGTH( r_r15 ) > 0)  {
    	 	_p_r15  =  (struct  rlimit *) R_getNativeReference(r_r15, "rlimitPtr", NULL); ;
    	 		}
    
    	ans =  setrlimit ( r7, _p_r15 );
    	 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 SET_VECTOR_ELT(r_ans, 0,  ScalarInteger( ans ) );
	 SET_STRING_ELT(r_names, 0, mkChar(".result"));
	 r_ctr++;
	 
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_r15 ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument r15 as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_r15 ) > 0 ?  r_r15 : R_copyStruct_rlimit( &*_p_r15 ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("r15"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_getrlimit(SEXP r_r40, SEXP r_r53, SEXP r__copy, SEXP r_resultLength)
{
    
    	SEXP r_ans = R_NilValue;
    	SEXP r_names = R_NilValue;
    	int r_ctr = 0;
    	struct  rlimit r53, *_p_r53 = &r53;
    	int r40 ;
    	 int ans ;
    
    	 r40  =  asInteger( r_r40 ); ;
    	 if(GET_LENGTH( r_r53 ) > 0)  {
    	 	_p_r53  =  (struct  rlimit *) R_getNativeReference(r_r53, "rlimitPtr", NULL); ;
    	 		}
    
    	ans =  getrlimit ( r40, _p_r53 );
    	 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 SET_VECTOR_ELT(r_ans, 0,  ScalarInteger( ans ) );
	 SET_STRING_ELT(r_names, 0, mkChar(".result"));
	 r_ctr++;
	 
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_r53 ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument r53 as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_r53 ) > 0 ?  r_r53 : R_copyStruct_rlimit( &*_p_r53 ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("r53"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
    
    	 return(r_ans);
}
 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_daylight ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & daylight ,  "intPtr" , "intPtr" ) ;
    else
        ans =  ScalarInteger( daylight ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_getdate_err ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & getdate_err ,  "intPtr" , "intPtr" ) ;
    else
        ans =  ScalarInteger( getdate_err ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_tzname ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( tzname ,  "charPtr" ,  "charPtr" ,  (int[]) {  }, 0 , sizeof( char* [  ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertCharPtrToR (  ,  *(const  char* (*) [] ) & tzname , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_daylight (SEXP value)
{
    SEXP ans = R_NilValue;
    
    daylight = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_getdate_err (SEXP value)
{
    SEXP ans = R_NilValue;
    
    getdate_err = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_tzname (SEXP value)
{
    SEXP ans = R_NilValue;
    
      {
       int i;
       char **els = NULL;
       int isStringVector = TYPEOF( value ) == STRSXP;
       if(!isStringVector)
            els = DEREF_REF_PTR( value ,  char * );
       for(i=0; i <  ; i++) {
              tzname [i] = isStringVector ? strdup(CHAR(STRING_ELT( value , i))) : els[i];
       }
      }
    
    return(ans);
} 

/* registration information for the C/C++ routines accessible by R */

#include <R_ext/Rdynload.h>

static const R_CallMethodDef CallEntries [] = {
    { "R_setpriority" , (DL_FUNC) & R_setpriority , 3 } ,
   { "R_getpriority" , (DL_FUNC) & R_getpriority , 2 } ,
   { "R_getrusage" , (DL_FUNC) & R_getrusage , 4 } ,
   { "R_setrlimit" , (DL_FUNC) & R_setrlimit , 4 } ,
   { "R_getrlimit" , (DL_FUNC) & R_getrlimit , 4 } ,
   { "R_set_daylight" , (DL_FUNC) & R_set_daylight , 1 } ,
   { "R_get_daylight" , (DL_FUNC) & R_get_daylight , 1 } ,
   { "R_set_getdate_err" , (DL_FUNC) & R_set_getdate_err , 1 } ,
   { "R_get_getdate_err" , (DL_FUNC) & R_get_getdate_err , 1 } ,
   { "R_set_tzname" , (DL_FUNC) & R_set_tzname , 1 } ,
   { "R_get_tzname" , (DL_FUNC) & R_get_tzname , 3 } ,
   { "R_convertCharPtrToR" , (DL_FUNC) & R_convertCharPtrToR , 5 } ,
   { "R_subsetCharPtr" , (DL_FUNC) & R_subsetCharPtr , 4 } ,
   { "R_setSubsetCharPtr" , (DL_FUNC) & R_setSubsetCharPtr , 4 } , 
    {NULL, NULL, 0} 
};
 
#ifdef __cplusplus
extern "C"
#endif
void
#ifdef HAVE_VISIBILITY_ATTRIBUTE
__attribute__ ((visibility ("default")))
#endif
R_init_Rgetrusage(DllInfo *dll)
{
    R_registerRoutines(dll,  NULL, CallEntries, NULL, NULL );
    R_useDynamicSymbols(dll, FALSE );
}
