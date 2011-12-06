#include "twod.h" 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayToR ( size_t dim1 , int array [ dim1 ] ,size_t len  , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_INTEGER ( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 INTEGER (r_ans)[i] = ( int ) array[pos];
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertIntArrayToR (SEXP r_array, SEXP start, SEXP end  , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    int (*array) [dim1] ;
    array = ( int (*) [dim1] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    return( convertIntArrayToR ( dim1 , *array, 4  , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetIntArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    int (*array) [dim1] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array[pos] = asInteger( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetIntArray (SEXP r_array, SEXP els  , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_INTEGER (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        int (*array) [dim1] ;
        array = ( int (*) [dim1] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
        for(i = 0; i < n; i++) {
        INTEGER (r_ans)[i] = (*array)[ INTEGER(els)[i] -1 ];
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayArrayToR ( size_t dim1, size_t dim2 , int array [ dim1 ] [ dim2 ] ,size_t len , int copyEls , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertIntArrayToR ( 4 , array[pos] ,  4  , 0, 3 ) : R_createArrayReference( array[pos] ,  "intArray" ,  "intPtr" ,  4 , sizeof( int )) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertIntArrayArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    int (*array) [dim1][dim2] ;
    array = ( int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    return( convertIntArrayArrayToR ( dim1, dim2 , *array, 3 , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetIntArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    int (*array) [dim1][dim2] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
       int i;
       for(i = 0; i < 4 ; i++)
            *array[pos] [i] = INTEGER ( r_tmp )[i];
     }
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetIntArrayArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        size_t dim2 = INTEGER(r_dims)[1];
        int (*array) [dim1][dim2] ;
        array = ( int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertIntArrayToR ( 4 , (*array)[ INTEGER(els)[i] - 1 ] ,  4  , 0, 3 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "intArray" ,  "intPtr" ,  4 , sizeof( int )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayArrayArrayToR ( size_t dim1, size_t dim2, size_t dim3 , int array [ dim1 ] [ dim2 ] [ dim3 ] ,size_t len , int copyEls , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertIntArrayArrayToR ( 3, 4 , array[pos] ,  3 , 1 , 0, 2 ) : R_createArrayReference( array[pos] ,  "intArray" ,  "intPtr" ,  3 , sizeof( int )) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertIntArrayArrayArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    int (*array) [dim1][dim2][dim3] ;
    array = ( int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
    return( convertIntArrayArrayArrayToR ( dim1, dim2, dim3 , *array, 2 , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetIntArrayArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    int (*array) [dim1][dim2][dim3] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
    int ** _tmp ;
    _tmp =  DEREF_REF_PTR( r_tmp ,  int ) ;
    memcpy( *array[pos] , _tmp, sizeof( int ) * 3 );
     }
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetIntArrayArrayArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        size_t dim2 = INTEGER(r_dims)[1];
        size_t dim3 = INTEGER(r_dims)[2];
        int (*array) [dim1][dim2][dim3] ;
        array = ( int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertIntArrayArrayToR ( 3, 4 , (*array)[ INTEGER(els)[i] - 1 ] ,  3 , 1 , 0, 2 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "intArray" ,  "intPtr" ,  3 , sizeof( int )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_X ( const X *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("X");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class X "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("a"), ScalarInteger( value -> a ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("b"), ScalarReal( value -> b ) ));
    UNPROTECT( 4 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_XPtr_get_a (SEXP r_obj   )
{
    const X *obj ;
    obj = ( const X * )  R_getNativeReference(r_obj, "X", NULL) ;
    return( ScalarInteger( obj -> a ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_XPtr_get_b (SEXP r_obj   )
{
    const X *obj ;
    obj = ( const X * )  R_getNativeReference(r_obj, "X", NULL) ;
    return( ScalarReal( obj -> b ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_XPtr_set_a (SEXP r_obj , SEXP r_value  )
{
    X *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( X * )  R_getNativeReference(r_obj, "X", NULL) ;
    obj -> a = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_XPtr_set_b (SEXP r_obj , SEXP r_value  )
{
    X *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( X * )  R_getNativeReference(r_obj, "X", NULL) ;
    obj -> b = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
X *
coerce_X_XPtr ( SEXP r_from,  X * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( X * ) malloc( sizeof( X ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("a"));
    ans->a = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("b"));
    ans->b = ( double ) asReal( tmp );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_X_XPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_X_XPtr (r_from, NULL), "XPtr" , "XPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_XPtr_X ( SEXP from )
{
    X * ans ;
    ans = (X *) R_getNativeReference(from, "X", NULL);
    return( R_copyStruct_X ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_X ()
{
    SEXP r_ans = R_NilValue;
    X * ans;
    
    ans = ( X *) calloc (1, sizeof( X ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "XPtr" , "XPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_XPtr_finalizer (SEXP val)
{
    X * ans = NULL;
    ans = ( X * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing X  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_XPtr (SEXP val)
{
    X * ans = NULL;
    ans =  (X *) R_getNativeReference(val, "XPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing X  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_X (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    X * value ;
    X * ans ;
    SEXP r_ans;
    
    value = (X *) R_getNativeReference(r_value, "XPtr", NULL);
    ans = ( X  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "XPtr" , "XPtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertXArrayToR ( size_t dim1 , X array [ dim1 ] ,size_t len , int copyEls , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? R_copyStruct_X( &array[pos] ) : R_createNativeReference( (void *)  &( array[pos] ) ,  "XPtr" , "XPtr" ) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertXArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    X (*array) [dim1] ;
    array = ( X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    return( convertXArrayToR ( dim1 , *array, 5 , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetXArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    X (*array) [dim1] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array[pos] = DEREF_REF( r_tmp ,  X );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetXArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        X (*array) [dim1] ;
        array = ( X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  R_copyStruct_X( &(*array)[ INTEGER(els)[i] - 1 ] ) : R_createNativeReference( (void *)  &( (*array)[ INTEGER(els)[i] -1 ] ) ,  "XPtr" , "XPtr" ) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertXArrayArrayToR ( size_t dim1, size_t dim2 , X array [ dim1 ] [ dim2 ] ,size_t len , int copyEls , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertXArrayToR ( 5 , array[pos] ,  5 , 1 , 0, 4 ) : R_createArrayReference( array[pos] ,  "XArray" ,  "XPtr" ,  5 , sizeof( X )) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertXArrayArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    X (*array) [dim1][dim2] ;
    array = ( X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    return( convertXArrayArrayToR ( dim1, dim2 , *array, 3 , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetXArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    X (*array) [dim1][dim2] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
    X * _tmp ;
    _tmp =  DEREF_REF_PTR( r_tmp ,  X ) ;
    memcpy( *array[pos] , _tmp, sizeof( X ) * 5 );
     }
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetXArrayArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        size_t dim2 = INTEGER(r_dims)[1];
        X (*array) [dim1][dim2] ;
        array = ( X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertXArrayToR ( 5 , (*array)[ INTEGER(els)[i] - 1 ] ,  5 , 1 , 0, 4 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "XArray" ,  "XPtr" ,  5 , sizeof( X )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertDoubleArrayToR ( size_t dim1 , double array [ dim1 ] ,size_t len  , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_REAL ( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 REAL (r_ans)[i] = ( double ) array[pos];
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertDoubleArrayToR (SEXP r_array, SEXP start, SEXP end  , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    double (*array) [dim1] ;
    array = ( double (*) [dim1] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
    return( convertDoubleArrayToR ( dim1 , *array, 2  , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetDoubleArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    double (*array) [dim1] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( double (*) [dim1] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array[pos] = ( double ) asReal( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetDoubleArray (SEXP r_array, SEXP els  , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_REAL (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        double (*array) [dim1] ;
        array = ( double (*) [dim1] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
        for(i = 0; i < n; i++) {
        REAL (r_ans)[i] = (*array)[ INTEGER(els)[i] -1 ];
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertDoubleArrayArrayToR ( size_t dim1, size_t dim2 , double array [ dim1 ] [ dim2 ] ,size_t len , int copyEls , int start, int end)
{
    int i, pos;
    SEXP r_ans;
    if(start < 0 || start > len - 1 || end < 0 || end > len - 1) {
      PROBLEM "incorrect offsets for native array access routine (must be between 1 and %d (1-based indexing))", (int) len
      ERROR;
    }
    if(start > end) {
      PROBLEM "end must be >= start  (start = %d, end = %d (1-based index))", start + 1, end + 1
      ERROR;
    }
    
    len = end - start + 1;
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertDoubleArrayToR ( 2 , array[pos] ,  2  , 0, 1 ) : R_createArrayReference( array[pos] ,  "doubleArray" ,  "doublePtr" ,  2 , sizeof( double )) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertDoubleArrayArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    double (*array) [dim1][dim2] ;
    array = ( double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
    return( convertDoubleArrayArrayToR ( dim1, dim2 , *array, 3 , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetDoubleArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    double (*array) [dim1][dim2] ;
    int  n = Rf_length(els), i, pos;
    
    if(n == 0) return(r_array);
    
    array = ( double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
    for(i = 0; i < n; i++) {
      pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
       int i;
       for(i = 0; i < 2 ; i++)
            *array[pos] [i] = REAL ( r_tmp )[i];
     }
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetDoubleArrayArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        size_t dim2 = INTEGER(r_dims)[1];
        double (*array) [dim1][dim2] ;
        array = ( double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertDoubleArrayToR ( 2 , (*array)[ INTEGER(els)[i] - 1 ] ,  2  , 0, 1 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "doubleArray" ,  "doublePtr" ,  2 , sizeof( double )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_iarray ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( iarray , "intArrayArrayArray" , "intPtrPtrPtr" , 2 , sizeof( int [ 2 ] [ 3 ] [ 4 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertIntArrayArrayArrayToR ( 2, 3, 4 ,  iarray ,  2 , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_xarray2D ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( xarray2D , "XArrayArray" , "XPtrPtr" , 3 , sizeof( X [ 3 ] [ 5 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertXArrayArrayToR ( 3, 5 ,  xarray2D ,  3 , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_matrix ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( matrix , "doubleArrayArray" , "doublePtrPtr" , 3 , sizeof( double [ 3 ] [ 2 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertDoubleArrayArrayToR ( 3, 2 ,  matrix ,  3 , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_iarray (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
    int *** _tmp ;
    _tmp =  DEREF_REF_PTR( value ,  int ) ;
    memcpy( iarray , _tmp, sizeof( int ) * 2 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_xarray2D (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
    X ** _tmp ;
    _tmp =  DEREF_REF_PTR( value ,  X ) ;
    memcpy( xarray2D , _tmp, sizeof( X ) * 3 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_matrix (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
    double ** _tmp ;
    _tmp =  DEREF_REF_PTR( value ,  double ) ;
    memcpy( matrix , _tmp, sizeof( double ) * 3 );
     }
    
    return(ans);
} 

/* registration information for the C/C++ routines accessible by R */

#include <R_ext/Rdynload.h>

static const R_CallMethodDef CallEntries [] = {
    { "R_set_iarray" , (DL_FUNC) & R_set_iarray , 1 } ,
   { "R_get_iarray" , (DL_FUNC) & R_get_iarray , 3 } ,
   { "R_set_xarray2D" , (DL_FUNC) & R_set_xarray2D , 1 } ,
   { "R_get_xarray2D" , (DL_FUNC) & R_get_xarray2D , 3 } ,
   { "R_set_matrix" , (DL_FUNC) & R_set_matrix , 1 } ,
   { "R_get_matrix" , (DL_FUNC) & R_get_matrix , 3 } ,
   { "R_convertIntArrayToR" , (DL_FUNC) & R_convertIntArrayToR , 3 } ,
   { "R_subsetIntArray" , (DL_FUNC) & R_subsetIntArray , 2 } ,
   { "R_setSubsetIntArray" , (DL_FUNC) & R_setSubsetIntArray , 3 } ,
   { "R_convertIntArrayArrayToR" , (DL_FUNC) & R_convertIntArrayArrayToR , 3 } ,
   { "R_subsetIntArrayArray" , (DL_FUNC) & R_subsetIntArrayArray , 3 } ,
   { "R_setSubsetIntArrayArray" , (DL_FUNC) & R_setSubsetIntArrayArray , 3 } ,
   { "R_convertIntArrayArrayArrayToR" , (DL_FUNC) & R_convertIntArrayArrayArrayToR , 3 } ,
   { "R_subsetIntArrayArrayArray" , (DL_FUNC) & R_subsetIntArrayArrayArray , 3 } ,
   { "R_setSubsetIntArrayArrayArray" , (DL_FUNC) & R_setSubsetIntArrayArrayArray , 3 } ,
   { "coerce_X_XPtr" , (DL_FUNC) & coerce_X_XPtr , 2 } ,
   { "R_coerce_X_XPtr" , (DL_FUNC) & R_coerce_X_XPtr , 1 } ,
   { "R_coerce_XPtr_X" , (DL_FUNC) & R_coerce_XPtr_X , 1 } ,
   { "R_XPtr_get_a" , (DL_FUNC) & R_XPtr_get_a , 1 } ,
   { "R_XPtr_get_b" , (DL_FUNC) & R_XPtr_get_b , 1 } ,
   { "R_XPtr_set_a" , (DL_FUNC) & R_XPtr_set_a , 2 } ,
   { "R_XPtr_set_b" , (DL_FUNC) & R_XPtr_set_b , 2 } ,
   { "R_free_XPtr" , (DL_FUNC) & R_free_XPtr , 1 } ,
   { "R_new_X" , (DL_FUNC) & R_new_X , 0 } ,
   { "R_duplicate_X" , (DL_FUNC) & R_duplicate_X , 3 } ,
   { "R_convertXArrayToR" , (DL_FUNC) & R_convertXArrayToR , 3 } ,
   { "R_subsetXArray" , (DL_FUNC) & R_subsetXArray , 3 } ,
   { "R_setSubsetXArray" , (DL_FUNC) & R_setSubsetXArray , 3 } ,
   { "R_convertXArrayArrayToR" , (DL_FUNC) & R_convertXArrayArrayToR , 3 } ,
   { "R_subsetXArrayArray" , (DL_FUNC) & R_subsetXArrayArray , 3 } ,
   { "R_setSubsetXArrayArray" , (DL_FUNC) & R_setSubsetXArrayArray , 3 } ,
   { "R_convertDoubleArrayToR" , (DL_FUNC) & R_convertDoubleArrayToR , 3 } ,
   { "R_subsetDoubleArray" , (DL_FUNC) & R_subsetDoubleArray , 2 } ,
   { "R_setSubsetDoubleArray" , (DL_FUNC) & R_setSubsetDoubleArray , 3 } ,
   { "R_convertDoubleArrayArrayToR" , (DL_FUNC) & R_convertDoubleArrayArrayToR , 3 } ,
   { "R_subsetDoubleArrayArray" , (DL_FUNC) & R_subsetDoubleArrayArray , 3 } ,
   { "R_setSubsetDoubleArrayArray" , (DL_FUNC) & R_setSubsetDoubleArrayArray , 3 } , 
    {NULL, NULL, 0} 
};
 
#ifdef __cplusplus
extern "C"
#endif
void
#ifdef HAVE_VISIBILITY_ATTRIBUTE
__attribute__ ((visibility ("default")))
#endif
R_init_Rtwod(DllInfo *dll)
{
    R_registerRoutines(dll,  NULL, CallEntries, NULL, NULL );
    R_useDynamicSymbols(dll, FALSE );
}
