#include "vars.h" 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
convertUnsignedIntArrayToR ( size_t dim1 , const unsigned int array [ dim1 ] , int copyEls , int start, int end)
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
    r_ans = NEW_REAL ( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 REAL (r_ans)[i] = ( unsigned int ) array[pos];
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertUnsignedIntArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    const unsigned int (*array) [dim1] ;
    array = ( const unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "unsignedIntPtr" ,  "unsignedIntPtr" );
    return( convertUnsignedIntArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetUnsignedIntArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t pos;
    unsigned int (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "unsignedIntPtr" ,  "unsignedIntPtr" );
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
R_subsetUnsignedIntArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_REAL (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        const unsigned int (*array) [dim1] ;
        array = ( const unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "unsignedIntPtr" ,  "unsignedIntPtr" );
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
SEXP R_copyStruct_A ( const A *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("A");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class A "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("i"), ScalarInteger( value -> i ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("uarray"), convertUnsignedIntArrayToR ( 3 , value -> uarray , 1 , 0, 2 ) ));
    UNPROTECT( 4 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_APtr_get_i (SEXP r_obj  , SEXP r_copy )
{
    const A *obj ;
    obj = ( const A * )  R_getNativeReference(r_obj, "A", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> i ) : R_createNativeReference( (void *)  &( obj -> i ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_APtr_get_uarray (SEXP r_obj  , SEXP r_copy )
{
    const A *obj ;
    obj = ( const A * )  R_getNativeReference(r_obj, "A", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertUnsignedIntArrayToR ( 3 , obj -> uarray , 1 , 0, 2 ) : R_createArrayReference( obj -> uarray ,  "Array" ,  "unsignedIntPtr" ,  (int[]) { 3 }, 1 , sizeof( unsigned int [ 3 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_APtr_set_i (SEXP r_obj , SEXP r_value  )
{
    A *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( A * )  R_getNativeReference(r_obj, "A", NULL) ;
    obj -> i = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_APtr_set_uarray (SEXP r_obj , SEXP r_value  )
{
    A *obj ;
    obj = ( A * )  R_getNativeReference(r_obj, "A", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->uarray [i] = REAL ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
A *
coerce_A_APtr ( SEXP r_from,  A * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( A * ) malloc( sizeof( A ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("i"));
    ans->i = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("uarray"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->uarray [i] = REAL ( tmp )[i];
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_A_APtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_A_APtr (r_from, NULL), "APtr" , "APtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_APtr_A ( SEXP from )
{
    A * ans ;
    ans = (A *) R_getNativeReference(from, "A", NULL);
    return( R_copyStruct_A ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_A ()
{
    SEXP r_ans = R_NilValue;
    A * ans;
    
    ans = ( A *) calloc (1, sizeof( A ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "APtr" , "APtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_APtr_finalizer (SEXP val)
{
    A * ans = NULL;
    ans = ( A * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing A  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_APtr (SEXP val)
{
    A * ans = NULL;
    ans =  (A *) R_getNativeReference(val, "APtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing A  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_A (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    A * value ;
    A * ans ;
    SEXP r_ans;
    
    value = (A *) R_getNativeReference(r_value, "APtr", NULL);
    ans = ( A  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "APtr" , "APtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayToR ( size_t dim1 , const int array [ dim1 ] , int copyEls , int start, int end)
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
R_convertIntArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    const int (*array) [dim1] ;
    array = ( const int (*) [dim1] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    return( convertIntArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    int (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
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
R_subsetIntArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_INTEGER (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        const int (*array) [dim1] ;
        array = ( const int (*) [dim1] ) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
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
SEXP R_copyStruct_L5 ( const struct  L5 *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("L5");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class L5 "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("i"), ScalarInteger( value -> i ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("d"), ScalarReal( value -> d ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("a5"), convertIntArrayToR ( 5 , value -> a5 , 1 , 0, 4 ) ));
    UNPROTECT( 5 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_get_i (SEXP r_obj  , SEXP r_copy )
{
    const struct  L5 *obj ;
    obj = ( const struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> i ) : R_createNativeReference( (void *)  &( obj -> i ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_get_d (SEXP r_obj  , SEXP r_copy )
{
    const struct  L5 *obj ;
    obj = ( const struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> d ) : R_createNativeReference( (void *)  &( obj -> d ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_get_a5 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L5 *obj ;
    obj = ( const struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( 5 , obj -> a5 , 1 , 0, 4 ) : R_createArrayReference( obj -> a5 ,  "Array" ,  "intPtr" ,  (int[]) { 5 }, 1 , sizeof( int [ 5 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_set_i (SEXP r_obj , SEXP r_value  )
{
    struct  L5 *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
    obj -> i = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_set_d (SEXP r_obj , SEXP r_value  )
{
    struct  L5 *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
    obj -> d = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L5Ptr_set_a5 (SEXP r_obj , SEXP r_value  )
{
    struct  L5 *obj ;
    obj = ( struct  L5 * )  R_getNativeReference(r_obj, "L5", NULL) ;
     {
       int i;
       for(i = 0; i < 5 ; i++)
            obj->a5 [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  L5 *
coerce_L5_L5Ptr ( SEXP r_from,  struct  L5 * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  L5 * ) malloc( sizeof( struct  L5 ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("i"));
    ans->i = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("d"));
    ans->d = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("a5"));
     {
       int i;
       for(i = 0; i < 5 ; i++)
            ans->a5 [i] = INTEGER ( tmp )[i];
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L5_L5Ptr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_L5_L5Ptr (r_from, NULL), "L5Ptr" , "L5Ptr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L5Ptr_L5 ( SEXP from )
{
    struct  L5 * ans ;
    ans = (struct  L5 *) R_getNativeReference(from, "L5", NULL);
    return( R_copyStruct_L5 ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_L5 ()
{
    SEXP r_ans = R_NilValue;
    struct  L5 * ans;
    
    ans = ( struct  L5 *) calloc (1, sizeof( struct  L5 ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "L5Ptr" , "L5Ptr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_L5Ptr_finalizer (SEXP val)
{
    struct  L5 * ans = NULL;
    ans = ( struct  L5 * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing L5  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_L5Ptr (SEXP val)
{
    struct  L5 * ans = NULL;
    ans =  (struct  L5 *) R_getNativeReference(val, "L5Ptr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing L5  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_L5 (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  L5 * value ;
    struct  L5 * ans ;
    SEXP r_ans;
    
    value = (struct  L5 *) R_getNativeReference(r_value, "L5Ptr", NULL);
    ans = ( struct  L5  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "L5Ptr" , "L5Ptr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_L4 ( const struct  L4 *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("L4");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class L4 "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("l5"), R_copyStruct_L5( &value -> l5 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("x4"), ScalarInteger( value -> x4 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("a4"), convertIntArrayToR ( 4 , value -> a4 , 1 , 0, 3 ) ));
    UNPROTECT( 5 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_get_l5 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L4 *obj ;
    obj = ( const struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_L5( &obj -> l5 ) : R_createNativeReference( (void *)  &( obj -> l5 ) ,  "L5Ptr" , "L5Ptr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_get_x4 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L4 *obj ;
    obj = ( const struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> x4 ) : R_createNativeReference( (void *)  &( obj -> x4 ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_get_a4 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L4 *obj ;
    obj = ( const struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( 4 , obj -> a4 , 1 , 0, 3 ) : R_createArrayReference( obj -> a4 ,  "Array" ,  "intPtr" ,  (int[]) { 4 }, 1 , sizeof( int [ 4 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_set_l5 (SEXP r_obj , SEXP r_value  )
{
    struct  L4 *obj ;
    struct  L5 value ;
    value = * ( struct  L5  *) R_getNativeReference( r_value , "L5Ptr" , "L5Ptr" );
    obj = ( struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
    obj -> l5 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_set_x4 (SEXP r_obj , SEXP r_value  )
{
    struct  L4 *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
    obj -> x4 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L4Ptr_set_a4 (SEXP r_obj , SEXP r_value  )
{
    struct  L4 *obj ;
    obj = ( struct  L4 * )  R_getNativeReference(r_obj, "L4", NULL) ;
     {
       int i;
       for(i = 0; i < 4 ; i++)
            obj->a4 [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  L4 *
coerce_L4_L4Ptr ( SEXP r_from,  struct  L4 * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  L4 * ) malloc( sizeof( struct  L4 ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("l5"));
    coerce_L5_L5Ptr ( tmp , & ans -> l5 );
    tmp = GET_SLOT(r_from, Rf_install("x4"));
    ans->x4 = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("a4"));
     {
       int i;
       for(i = 0; i < 4 ; i++)
            ans->a4 [i] = INTEGER ( tmp )[i];
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L4_L4Ptr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_L4_L4Ptr (r_from, NULL), "L4Ptr" , "L4Ptr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L4Ptr_L4 ( SEXP from )
{
    struct  L4 * ans ;
    ans = (struct  L4 *) R_getNativeReference(from, "L4", NULL);
    return( R_copyStruct_L4 ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_L4 ()
{
    SEXP r_ans = R_NilValue;
    struct  L4 * ans;
    
    ans = ( struct  L4 *) calloc (1, sizeof( struct  L4 ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "L4Ptr" , "L4Ptr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_L4Ptr_finalizer (SEXP val)
{
    struct  L4 * ans = NULL;
    ans = ( struct  L4 * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing L4  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_L4Ptr (SEXP val)
{
    struct  L4 * ans = NULL;
    ans =  (struct  L4 *) R_getNativeReference(val, "L4Ptr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing L4  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_L4 (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  L4 * value ;
    struct  L4 * ans ;
    SEXP r_ans;
    
    value = (struct  L4 *) R_getNativeReference(r_value, "L4Ptr", NULL);
    ans = ( struct  L4  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "L4Ptr" , "L4Ptr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_L3 ( const struct  L3 *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("L3");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class L3 "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("l4"), R_copyStruct_L4( &value -> l4 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("x3"), ScalarInteger( value -> x3 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("a3"), convertIntArrayToR ( 3 , value -> a3 , 1 , 0, 2 ) ));
    UNPROTECT( 5 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_get_l4 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L3 *obj ;
    obj = ( const struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_L4( &obj -> l4 ) : R_createNativeReference( (void *)  &( obj -> l4 ) ,  "L4Ptr" , "L4Ptr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_get_x3 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L3 *obj ;
    obj = ( const struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> x3 ) : R_createNativeReference( (void *)  &( obj -> x3 ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_get_a3 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L3 *obj ;
    obj = ( const struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( 3 , obj -> a3 , 1 , 0, 2 ) : R_createArrayReference( obj -> a3 ,  "Array" ,  "intPtr" ,  (int[]) { 3 }, 1 , sizeof( int [ 3 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_set_l4 (SEXP r_obj , SEXP r_value  )
{
    struct  L3 *obj ;
    struct  L4 value ;
    value = * ( struct  L4  *) R_getNativeReference( r_value , "L4Ptr" , "L4Ptr" );
    obj = ( struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
    obj -> l4 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_set_x3 (SEXP r_obj , SEXP r_value  )
{
    struct  L3 *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
    obj -> x3 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L3Ptr_set_a3 (SEXP r_obj , SEXP r_value  )
{
    struct  L3 *obj ;
    obj = ( struct  L3 * )  R_getNativeReference(r_obj, "L3", NULL) ;
     {
       int i;
       for(i = 0; i < 3 ; i++)
            obj->a3 [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  L3 *
coerce_L3_L3Ptr ( SEXP r_from,  struct  L3 * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  L3 * ) malloc( sizeof( struct  L3 ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("l4"));
    coerce_L4_L4Ptr ( tmp , & ans -> l4 );
    tmp = GET_SLOT(r_from, Rf_install("x3"));
    ans->x3 = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("a3"));
     {
       int i;
       for(i = 0; i < 3 ; i++)
            ans->a3 [i] = INTEGER ( tmp )[i];
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L3_L3Ptr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_L3_L3Ptr (r_from, NULL), "L3Ptr" , "L3Ptr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L3Ptr_L3 ( SEXP from )
{
    struct  L3 * ans ;
    ans = (struct  L3 *) R_getNativeReference(from, "L3", NULL);
    return( R_copyStruct_L3 ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_L3 ()
{
    SEXP r_ans = R_NilValue;
    struct  L3 * ans;
    
    ans = ( struct  L3 *) calloc (1, sizeof( struct  L3 ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "L3Ptr" , "L3Ptr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_L3Ptr_finalizer (SEXP val)
{
    struct  L3 * ans = NULL;
    ans = ( struct  L3 * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing L3  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_L3Ptr (SEXP val)
{
    struct  L3 * ans = NULL;
    ans =  (struct  L3 *) R_getNativeReference(val, "L3Ptr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing L3  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_L3 (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  L3 * value ;
    struct  L3 * ans ;
    SEXP r_ans;
    
    value = (struct  L3 *) R_getNativeReference(r_value, "L3Ptr", NULL);
    ans = ( struct  L3  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "L3Ptr" , "L3Ptr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_L2 ( const struct  L2 *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("L2");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class L2 "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("l3"), R_copyStruct_L3( &value -> l3 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("x2"), ScalarInteger( value -> x2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("a2"), convertIntArrayToR ( 2 , value -> a2 , 1 , 0, 1 ) ));
    UNPROTECT( 5 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_get_l3 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L2 *obj ;
    obj = ( const struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_L3( &obj -> l3 ) : R_createNativeReference( (void *)  &( obj -> l3 ) ,  "L3Ptr" , "L3Ptr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_get_x2 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L2 *obj ;
    obj = ( const struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> x2 ) : R_createNativeReference( (void *)  &( obj -> x2 ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_get_a2 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L2 *obj ;
    obj = ( const struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertIntArrayToR ( 2 , obj -> a2 , 1 , 0, 1 ) : R_createArrayReference( obj -> a2 ,  "Array" ,  "intPtr" ,  (int[]) { 2 }, 1 , sizeof( int [ 2 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_set_l3 (SEXP r_obj , SEXP r_value  )
{
    struct  L2 *obj ;
    struct  L3 value ;
    value = * ( struct  L3  *) R_getNativeReference( r_value , "L3Ptr" , "L3Ptr" );
    obj = ( struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
    obj -> l3 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_set_x2 (SEXP r_obj , SEXP r_value  )
{
    struct  L2 *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
    obj -> x2 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L2Ptr_set_a2 (SEXP r_obj , SEXP r_value  )
{
    struct  L2 *obj ;
    obj = ( struct  L2 * )  R_getNativeReference(r_obj, "L2", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->a2 [i] = INTEGER ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  L2 *
coerce_L2_L2Ptr ( SEXP r_from,  struct  L2 * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  L2 * ) malloc( sizeof( struct  L2 ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("l3"));
    coerce_L3_L3Ptr ( tmp , & ans -> l3 );
    tmp = GET_SLOT(r_from, Rf_install("x2"));
    ans->x2 = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("a2"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->a2 [i] = INTEGER ( tmp )[i];
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L2_L2Ptr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_L2_L2Ptr (r_from, NULL), "L2Ptr" , "L2Ptr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L2Ptr_L2 ( SEXP from )
{
    struct  L2 * ans ;
    ans = (struct  L2 *) R_getNativeReference(from, "L2", NULL);
    return( R_copyStruct_L2 ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_L2 ()
{
    SEXP r_ans = R_NilValue;
    struct  L2 * ans;
    
    ans = ( struct  L2 *) calloc (1, sizeof( struct  L2 ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "L2Ptr" , "L2Ptr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_L2Ptr_finalizer (SEXP val)
{
    struct  L2 * ans = NULL;
    ans = ( struct  L2 * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing L2  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_L2Ptr (SEXP val)
{
    struct  L2 * ans = NULL;
    ans =  (struct  L2 *) R_getNativeReference(val, "L2Ptr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing L2  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_L2 (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  L2 * value ;
    struct  L2 * ans ;
    SEXP r_ans;
    
    value = (struct  L2 *) R_getNativeReference(r_value, "L2Ptr", NULL);
    ans = ( struct  L2  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "L2Ptr" , "L2Ptr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_L1 ( const struct  L1 *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("L1");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class L1 "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("l2"), R_copyStruct_L2( &value -> l2 ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("x1"), ScalarInteger( value -> x1 ) ));
    UNPROTECT( 4 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L1Ptr_get_l2 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L1 *obj ;
    obj = ( const struct  L1 * )  R_getNativeReference(r_obj, "L1", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_L2( &obj -> l2 ) : R_createNativeReference( (void *)  &( obj -> l2 ) ,  "L2Ptr" , "L2Ptr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L1Ptr_get_x1 (SEXP r_obj  , SEXP r_copy )
{
    const struct  L1 *obj ;
    obj = ( const struct  L1 * )  R_getNativeReference(r_obj, "L1", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> x1 ) : R_createNativeReference( (void *)  &( obj -> x1 ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L1Ptr_set_l2 (SEXP r_obj , SEXP r_value  )
{
    struct  L1 *obj ;
    struct  L2 value ;
    value = * ( struct  L2  *) R_getNativeReference( r_value , "L2Ptr" , "L2Ptr" );
    obj = ( struct  L1 * )  R_getNativeReference(r_obj, "L1", NULL) ;
    obj -> l2 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_L1Ptr_set_x1 (SEXP r_obj , SEXP r_value  )
{
    struct  L1 *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  L1 * )  R_getNativeReference(r_obj, "L1", NULL) ;
    obj -> x1 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  L1 *
coerce_L1_L1Ptr ( SEXP r_from,  struct  L1 * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  L1 * ) malloc( sizeof( struct  L1 ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("l2"));
    coerce_L2_L2Ptr ( tmp , & ans -> l2 );
    tmp = GET_SLOT(r_from, Rf_install("x1"));
    ans->x1 = asInteger( tmp );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L1_L1Ptr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_L1_L1Ptr (r_from, NULL), "L1Ptr" , "L1Ptr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_L1Ptr_L1 ( SEXP from )
{
    struct  L1 * ans ;
    ans = (struct  L1 *) R_getNativeReference(from, "L1", NULL);
    return( R_copyStruct_L1 ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_L1 ()
{
    SEXP r_ans = R_NilValue;
    struct  L1 * ans;
    
    ans = ( struct  L1 *) calloc (1, sizeof( struct  L1 ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "L1Ptr" , "L1Ptr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_L1Ptr_finalizer (SEXP val)
{
    struct  L1 * ans = NULL;
    ans = ( struct  L1 * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing L1  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_L1Ptr (SEXP val)
{
    struct  L1 * ans = NULL;
    ans =  (struct  L1 *) R_getNativeReference(val, "L1Ptr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing L1  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_L1 (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  L1 * value ;
    struct  L1 * ans ;
    SEXP r_ans;
    
    value = (struct  L1 *) R_getNativeReference(r_value, "L1Ptr", NULL);
    ans = ( struct  L1  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "L1Ptr" , "L1Ptr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_D ( const struct  D *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("D");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class D "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("val"), ScalarInteger( value -> val ) ));
    UNPROTECT( 3 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DPtr_get_val (SEXP r_obj   )
{
    const struct  D *obj ;
    obj = ( const struct  D * )  R_getNativeReference(r_obj, "D", NULL) ;
    return( ScalarInteger( obj -> val ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DPtr_set_val (SEXP r_obj , SEXP r_value  )
{
    struct  D *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( struct  D * )  R_getNativeReference(r_obj, "D", NULL) ;
    obj -> val = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  D *
coerce_D_DPtr ( SEXP r_from,  struct  D * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  D * ) malloc( sizeof( struct  D ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("val"));
    ans->val = asInteger( tmp );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_D_DPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_D_DPtr (r_from, NULL), "DPtr" , "DPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_DPtr_D ( SEXP from )
{
    struct  D * ans ;
    ans = (struct  D *) R_getNativeReference(from, "D", NULL);
    return( R_copyStruct_D ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_D ()
{
    SEXP r_ans = R_NilValue;
    struct  D * ans;
    
    ans = ( struct  D *) calloc (1, sizeof( struct  D ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "DPtr" , "DPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_DPtr_finalizer (SEXP val)
{
    struct  D * ans = NULL;
    ans = ( struct  D * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing D  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_DPtr (SEXP val)
{
    struct  D * ans = NULL;
    ans =  (struct  D *) R_getNativeReference(val, "DPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing D  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_D (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  D * value ;
    struct  D * ans ;
    SEXP r_ans;
    
    value = (struct  D *) R_getNativeReference(r_value, "DPtr", NULL);
    ans = ( struct  D  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "DPtr" , "DPtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_E ( const struct  E *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("E");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class E "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ad"), R_copyStruct_D( &value -> ad ) ));
    UNPROTECT( 3 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_EPtr_get_ad (SEXP r_obj  , SEXP r_copy )
{
    const struct  E *obj ;
    obj = ( const struct  E * )  R_getNativeReference(r_obj, "E", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_D( &obj -> ad ) : R_createNativeReference( (void *)  &( obj -> ad ) ,  "DPtr" , "DPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_EPtr_set_ad (SEXP r_obj , SEXP r_value  )
{
    struct  E *obj ;
    struct  D value ;
    value = * ( struct  D  *) R_getNativeReference( r_value , "DPtr" , "DPtr" );
    obj = ( struct  E * )  R_getNativeReference(r_obj, "E", NULL) ;
    obj -> ad = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  E *
coerce_E_EPtr ( SEXP r_from,  struct  E * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  E * ) malloc( sizeof( struct  E ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("ad"));
    coerce_D_DPtr ( tmp , & ans -> ad );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_E_EPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_E_EPtr (r_from, NULL), "EPtr" , "EPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_EPtr_E ( SEXP from )
{
    struct  E * ans ;
    ans = (struct  E *) R_getNativeReference(from, "E", NULL);
    return( R_copyStruct_E ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_E ()
{
    SEXP r_ans = R_NilValue;
    struct  E * ans;
    
    ans = ( struct  E *) calloc (1, sizeof( struct  E ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "EPtr" , "EPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_EPtr_finalizer (SEXP val)
{
    struct  E * ans = NULL;
    ans = ( struct  E * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing E  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_EPtr (SEXP val)
{
    struct  E * ans = NULL;
    ans =  (struct  E *) R_getNativeReference(val, "EPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing E  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_E (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  E * value ;
    struct  E * ans ;
    SEXP r_ans;
    
    value = (struct  E *) R_getNativeReference(r_value, "EPtr", NULL);
    ans = ( struct  E  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "EPtr" , "EPtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_F ( const struct  F *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("F");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class F "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ae"), R_createNativeReference( (void *)  value -> ae ,  "EPtr" , "EPtr" ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ad"), R_createNativeReference( (void *)  value -> ad ,  "DPtr" , "DPtr" ) ));
    UNPROTECT( 4 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_FPtr_get_ae (SEXP r_obj  , SEXP r_copy )
{
    const struct  F *obj ;
    obj = ( const struct  F * )  R_getNativeReference(r_obj, "F", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_createNativeReference( (void *)  obj -> ae ,  "EPtr" , "EPtr" ) : R_createNativeReference( (void *)  obj -> ae ,  "EPtr" , "EPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_FPtr_get_ad (SEXP r_obj  , SEXP r_copy )
{
    const struct  F *obj ;
    obj = ( const struct  F * )  R_getNativeReference(r_obj, "F", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_createNativeReference( (void *)  obj -> ad ,  "DPtr" , "DPtr" ) : R_createNativeReference( (void *)  obj -> ad ,  "DPtr" , "DPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_FPtr_set_ae (SEXP r_obj , SEXP r_value  )
{
    struct  F *obj ;
    obj = ( struct  F * )  R_getNativeReference(r_obj, "F", NULL) ;
    obj->ae = (struct  E *) R_getNativeReference(r_value, "EPtr", NULL);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_FPtr_set_ad (SEXP r_obj , SEXP r_value  )
{
    struct  F *obj ;
    obj = ( struct  F * )  R_getNativeReference(r_obj, "F", NULL) ;
    obj->ad = (struct  D *) R_getNativeReference(r_value, "DPtr", NULL);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  F *
coerce_F_FPtr ( SEXP r_from,  struct  F * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  F * ) malloc( sizeof( struct  F ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("ae"));
    ans->ae = (struct  E *) R_getNativeReference(tmp, "EPtr", NULL);
    tmp = GET_SLOT(r_from, Rf_install("ad"));
    ans->ad = (struct  D *) R_getNativeReference(tmp, "DPtr", NULL);
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_F_FPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_F_FPtr (r_from, NULL), "FPtr" , "FPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_FPtr_F ( SEXP from )
{
    struct  F * ans ;
    ans = (struct  F *) R_getNativeReference(from, "F", NULL);
    return( R_copyStruct_F ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_F ()
{
    SEXP r_ans = R_NilValue;
    struct  F * ans;
    
    ans = ( struct  F *) calloc (1, sizeof( struct  F ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "FPtr" , "FPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_FPtr_finalizer (SEXP val)
{
    struct  F * ans = NULL;
    ans = ( struct  F * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing F  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_FPtr (SEXP val)
{
    struct  F * ans = NULL;
    ans =  (struct  F *) R_getNativeReference(val, "FPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing F  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_F (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  F * value ;
    struct  F * ans ;
    SEXP r_ans;
    
    value = (struct  F *) R_getNativeReference(r_value, "FPtr", NULL);
    ans = ( struct  F  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "FPtr" , "FPtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_G ( const struct  G *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("G");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class G "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ae"), R_copyStruct_E( &value -> ae ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ad"), R_copyStruct_D( &value -> ad ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("af"), R_copyStruct_F( &value -> af ) ));
    UNPROTECT( 5 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_get_ae (SEXP r_obj  , SEXP r_copy )
{
    const struct  G *obj ;
    obj = ( const struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_E( &obj -> ae ) : R_createNativeReference( (void *)  &( obj -> ae ) ,  "EPtr" , "EPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_get_ad (SEXP r_obj  , SEXP r_copy )
{
    const struct  G *obj ;
    obj = ( const struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_D( &obj -> ad ) : R_createNativeReference( (void *)  &( obj -> ad ) ,  "DPtr" , "DPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_get_af (SEXP r_obj  , SEXP r_copy )
{
    const struct  G *obj ;
    obj = ( const struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_copyStruct_F( &obj -> af ) : R_createNativeReference( (void *)  &( obj -> af ) ,  "FPtr" , "FPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_set_ae (SEXP r_obj , SEXP r_value  )
{
    struct  G *obj ;
    struct  E value ;
    value = * ( struct  E  *) R_getNativeReference( r_value , "EPtr" , "EPtr" );
    obj = ( struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    obj -> ae = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_set_ad (SEXP r_obj , SEXP r_value  )
{
    struct  G *obj ;
    struct  D value ;
    value = * ( struct  D  *) R_getNativeReference( r_value , "DPtr" , "DPtr" );
    obj = ( struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    obj -> ad = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_GPtr_set_af (SEXP r_obj , SEXP r_value  )
{
    struct  G *obj ;
    struct  F value ;
    value = * ( struct  F  *) R_getNativeReference( r_value , "FPtr" , "FPtr" );
    obj = ( struct  G * )  R_getNativeReference(r_obj, "G", NULL) ;
    obj -> af = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  G *
coerce_G_GPtr ( SEXP r_from,  struct  G * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  G * ) malloc( sizeof( struct  G ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("ae"));
    coerce_E_EPtr ( tmp , & ans -> ae );
    tmp = GET_SLOT(r_from, Rf_install("ad"));
    coerce_D_DPtr ( tmp , & ans -> ad );
    tmp = GET_SLOT(r_from, Rf_install("af"));
    coerce_F_FPtr ( tmp , & ans -> af );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_G_GPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_G_GPtr (r_from, NULL), "GPtr" , "GPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_GPtr_G ( SEXP from )
{
    struct  G * ans ;
    ans = (struct  G *) R_getNativeReference(from, "G", NULL);
    return( R_copyStruct_G ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_G ()
{
    SEXP r_ans = R_NilValue;
    struct  G * ans;
    
    ans = ( struct  G *) calloc (1, sizeof( struct  G ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "GPtr" , "GPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_GPtr_finalizer (SEXP val)
{
    struct  G * ans = NULL;
    ans = ( struct  G * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing G  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_GPtr (SEXP val)
{
    struct  G * ans = NULL;
    ans =  (struct  G *) R_getNativeReference(val, "GPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing G  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_G (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  G * value ;
    struct  G * ans ;
    SEXP r_ans;
    
    value = (struct  G *) R_getNativeReference(r_value, "GPtr", NULL);
    ans = ( struct  G  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "GPtr" , "GPtr" ) ;
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertShortUnsignedIntArrayToR ( size_t dim1 , const short unsigned int array [ dim1 ] , int copyEls , int start, int end)
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
    r_ans = NEW_INTEGER ( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 INTEGER (r_ans)[i] = ( short unsigned int ) array[pos];
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertShortUnsignedIntArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    const short unsigned int (*array) [dim1] ;
    array = ( const short unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "shortUnsignedIntPtr" ,  "shortUnsignedIntPtr" );
    return( convertShortUnsignedIntArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetShortUnsignedIntArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t pos;
    short unsigned int (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( short unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "shortUnsignedIntPtr" ,  "shortUnsignedIntPtr" );
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
R_subsetShortUnsignedIntArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_INTEGER (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        const short unsigned int (*array) [dim1] ;
        array = ( const short unsigned int (*) [dim1] ) R_getNativeReference(r_array,  "shortUnsignedIntPtr" ,  "shortUnsignedIntPtr" );
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
convertCharPtrArrayToR ( size_t dim1 , const char* array [ dim1 ] , int copyEls , int start, int end)
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
R_convertCharPtrArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    const char* (*array) [dim1] ;
    array = ( const char* (*) [dim1] ) R_getNativeReference(r_array,  "charPtrPtr" ,  "charPtrPtr" );
    return( convertCharPtrArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetCharPtrArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t pos;
    char* (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( char* (*) [dim1] ) R_getNativeReference(r_array,  "charPtrPtr" ,  "charPtrPtr" );
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
R_subsetCharPtrArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_LIST (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        const char* (*array) [dim1] ;
        array = ( const char* (*) [dim1] ) R_getNativeReference(r_array,  "charPtrPtr" ,  "charPtrPtr" );
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
convertXArrayToR ( size_t dim1 , const X array [ dim1 ] , int copyEls , int start, int end)
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
    const X (*array) [dim1] ;
    array = ( const X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    return( convertXArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    X (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
    for(i = 0; i < n; i++) {
        pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array[pos] = * ( X  *) R_getNativeReference( r_tmp , "XPtr" , "XPtr" );
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
        const X (*array) [dim1] ;
        array = ( const X (*) [dim1] ) R_getNativeReference(r_array,  "XPtr" ,  "XPtr" );
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
convertIntArrayArrayToR ( size_t dim1, size_t dim2 , const int array [ dim1 ] [ dim2 ] , int copyEls , int start, int end)
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
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertIntArrayToR ( 5 , array[pos] , 1 , 0, 4 ) : R_createArrayReference( array[pos] ,  "intArray" ,  "intPtr" ,  (int[]) { 5 }, 1 , sizeof( int [ 5 ] )) );
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
    const int (*array) [dim1][dim2] ;
    array = ( const int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
    return( convertIntArrayArrayToR ( dim1, dim2 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    int (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
    for(i = 0; i < n; i++) {
        pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
       int i;
       for(i = 0; i < 5 ; i++)
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
        const int (*array) [dim1][dim2] ;
        array = ( const int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertIntArrayToR ( 5 , (*array)[ INTEGER(els)[i] - 1 ] , 1 , 0, 4 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "intArray" ,  "intPtr" ,  (int[]) { 5 }, 1 , sizeof( int [ 5 ] )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setCellsIntArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t pos1;
    size_t pos2;
    int (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(VECTOR_ELT(els, 0));
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2] ) R_getNativeReference(r_array,  "intPtrPtr" ,  "intPtrPtr" );
    for(i = 0; i < n; i++) {
        pos1 = INTEGER(VECTOR_ELT(els, 0))[i] - 1;
        pos2 = INTEGER(VECTOR_ELT(els, 1))[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array [pos1][pos2] = asInteger( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayArrayArrayToR ( size_t dim1, size_t dim2, size_t dim3 , const int array [ dim1 ] [ dim2 ] [ dim3 ] , int copyEls , int start, int end)
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
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertIntArrayArrayToR ( 4, 5 , array[pos] , 1 , 0, 3 ) : R_createArrayReference( array[pos] ,  "intArrayArray" ,  "intPtrPtr" ,  (int[]) { 4, 5 }, 2 , sizeof( int [ 4 ] [ 5 ] )) );
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
    const int (*array) [dim1][dim2][dim3] ;
    array = ( const int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtrPtr" ,  "intPtrPtrPtr" );
    return( convertIntArrayArrayArrayToR ( dim1, dim2, dim3 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    int (*array) [dim1][dim2][dim3] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtrPtr" ,  "intPtrPtrPtr" );
    for(i = 0; i < n; i++) {
        pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
    int ** _tmp ;
    _tmp =  DEREF_REF_PTR( r_tmp ,  int * ) ;
    memcpy( *array[pos] , _tmp, sizeof( int ) * 4 );
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
        const int (*array) [dim1][dim2][dim3] ;
        array = ( const int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtrPtr" ,  "intPtrPtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertIntArrayArrayToR ( 4, 5 , (*array)[ INTEGER(els)[i] - 1 ] , 1 , 0, 3 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "intArrayArray" ,  "intPtrPtr" ,  (int[]) { 4, 5 }, 2 , sizeof( int [ 4 ] [ 5 ] )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setCellsIntArrayArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    size_t pos1;
    size_t pos2;
    size_t pos3;
    int (*array) [dim1][dim2][dim3] ;
    int  n, i;
    
    n = Rf_length(VECTOR_ELT(els, 0));
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2][dim3] ) R_getNativeReference(r_array,  "intPtrPtrPtr" ,  "intPtrPtrPtr" );
    for(i = 0; i < n; i++) {
        pos1 = INTEGER(VECTOR_ELT(els, 0))[i] - 1;
        pos2 = INTEGER(VECTOR_ELT(els, 1))[i] - 1;
        pos3 = INTEGER(VECTOR_ELT(els, 2))[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array [pos1][pos2][pos3] = asInteger( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertIntArrayArrayArrayArrayToR ( size_t dim1, size_t dim2, size_t dim3, size_t dim4 , const int array [ dim1 ] [ dim2 ] [ dim3 ] [ dim4 ] , int copyEls , int start, int end)
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
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertIntArrayArrayArrayToR ( 3, 4, 5 , array[pos] , 1 , 0, 2 ) : R_createArrayReference( array[pos] ,  "intArrayArrayArray" ,  "intPtrPtrPtr" ,  (int[]) { 3, 4, 5 }, 3 , sizeof( int [ 3 ] [ 4 ] [ 5 ] )) );
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_convertIntArrayArrayArrayArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    size_t dim4 = INTEGER(r_dims)[3];
    const int (*array) [dim1][dim2][dim3][dim4] ;
    array = ( const int (*) [dim1][dim2][dim3][dim4] ) R_getNativeReference(r_array,  "intPtrPtrPtrPtr" ,  "intPtrPtrPtrPtr" );
    return( convertIntArrayArrayArrayArrayToR ( dim1, dim2, dim3, dim4 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setSubsetIntArrayArrayArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    size_t dim4 = INTEGER(r_dims)[3];
    size_t pos;
    int (*array) [dim1][dim2][dim3][dim4] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2][dim3][dim4] ) R_getNativeReference(r_array,  "intPtrPtrPtrPtr" ,  "intPtrPtrPtrPtr" );
    for(i = 0; i < n; i++) {
        pos = INTEGER(els)[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
     {
    int *** _tmp ;
    _tmp =  DEREF_REF_PTR( r_tmp ,  int ** ) ;
    memcpy( *array[pos] , _tmp, sizeof( int ) * 3 );
     }
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_subsetIntArrayArrayArrayArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
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
        size_t dim4 = INTEGER(r_dims)[3];
        const int (*array) [dim1][dim2][dim3][dim4] ;
        array = ( const int (*) [dim1][dim2][dim3][dim4] ) R_getNativeReference(r_array,  "intPtrPtrPtrPtr" ,  "intPtrPtrPtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertIntArrayArrayArrayToR ( 3, 4, 5 , (*array)[ INTEGER(els)[i] - 1 ] , 1 , 0, 2 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "intArrayArrayArray" ,  "intPtrPtrPtr" ,  (int[]) { 3, 4, 5 }, 3 , sizeof( int [ 3 ] [ 4 ] [ 5 ] )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setCellsIntArrayArrayArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t dim3 = INTEGER(r_dims)[2];
    size_t dim4 = INTEGER(r_dims)[3];
    size_t pos1;
    size_t pos2;
    size_t pos3;
    size_t pos4;
    int (*array) [dim1][dim2][dim3][dim4] ;
    int  n, i;
    
    n = Rf_length(VECTOR_ELT(els, 0));
    if(n == 0) return(r_array);
    
    array = ( int (*) [dim1][dim2][dim3][dim4] ) R_getNativeReference(r_array,  "intPtrPtrPtrPtr" ,  "intPtrPtrPtrPtr" );
    for(i = 0; i < n; i++) {
        pos1 = INTEGER(VECTOR_ELT(els, 0))[i] - 1;
        pos2 = INTEGER(VECTOR_ELT(els, 1))[i] - 1;
        pos3 = INTEGER(VECTOR_ELT(els, 2))[i] - 1;
        pos4 = INTEGER(VECTOR_ELT(els, 3))[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array [pos1][pos2][pos3][pos4] = asInteger( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertXArrayArrayToR ( size_t dim1, size_t dim2 , const X array [ dim1 ] [ dim2 ] , int copyEls , int start, int end)
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
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertXArrayToR ( 5 , array[pos] , 1 , 0, 4 ) : R_createArrayReference( array[pos] ,  "XArray" ,  "XPtr" ,  (int[]) { 5 }, 1 , sizeof( X [ 5 ] )) );
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
    const X (*array) [dim1][dim2] ;
    array = ( const X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtrPtr" ,  "XPtrPtr" );
    return( convertXArrayArrayToR ( dim1, dim2 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    X (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtrPtr" ,  "XPtrPtr" );
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
        const X (*array) [dim1][dim2] ;
        array = ( const X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtrPtr" ,  "XPtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertXArrayToR ( 5 , (*array)[ INTEGER(els)[i] - 1 ] , 1 , 0, 4 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "XArray" ,  "XPtr" ,  (int[]) { 5 }, 1 , sizeof( X [ 5 ] )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setCellsXArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t pos1;
    size_t pos2;
    X (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(VECTOR_ELT(els, 0));
    if(n == 0) return(r_array);
    
    array = ( X (*) [dim1][dim2] ) R_getNativeReference(r_array,  "XPtrPtr" ,  "XPtrPtr" );
    for(i = 0; i < n; i++) {
        pos1 = INTEGER(VECTOR_ELT(els, 0))[i] - 1;
        pos2 = INTEGER(VECTOR_ELT(els, 1))[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array [pos1][pos2] = * ( X  *) R_getNativeReference( r_tmp , "XPtr" , "XPtr" );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
convertDoubleArrayToR ( size_t dim1 , const double array [ dim1 ] , int copyEls , int start, int end)
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
R_convertDoubleArrayToR (SEXP r_array, SEXP start, SEXP end , SEXP  r_copy , SEXP r_dims)
{
    size_t dim1 = INTEGER(r_dims)[0];
    const double (*array) [dim1] ;
    array = ( const double (*) [dim1] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
    return( convertDoubleArrayToR ( dim1 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    double (*array) [dim1] ;
    int  n, i;
    
    n = Rf_length(els);
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
R_subsetDoubleArray (SEXP r_array, SEXP els , SEXP r_copy , SEXP r_dims)
{
     /* get a subset of the external array as an R object */
    SEXP r_ans;
    int  n = Rf_length(els);
    PROTECT(r_ans = NEW_REAL (n));
    
    if(n > 0) {
        int i;
        size_t dim1 = INTEGER(r_dims)[0];
        const double (*array) [dim1] ;
        array = ( const double (*) [dim1] ) R_getNativeReference(r_array,  "doublePtr" ,  "doublePtr" );
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
convertDoubleArrayArrayToR ( size_t dim1, size_t dim2 , const double array [ dim1 ] [ dim2 ] , int copyEls , int start, int end)
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
    r_ans = NEW_LIST( len ) ;
    
    PROTECT(r_ans);
    for(i = 0, pos = start; i < len; i++, pos++) {
    	 SET_VECTOR_ELT(r_ans, i, copyEls ? convertDoubleArrayToR ( 2 , array[pos] , 1 , 0, 1 ) : R_createArrayReference( array[pos] ,  "doubleArray" ,  "doublePtr" ,  (int[]) { 2 }, 1 , sizeof( double [ 2 ] )) );
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
    const double (*array) [dim1][dim2] ;
    array = ( const double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtrPtr" ,  "doublePtrPtr" );
    return( convertDoubleArrayArrayToR ( dim1, dim2 , *array , INTEGER(r_copy)[0] , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
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
    size_t pos;
    double (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(els);
    if(n == 0) return(r_array);
    
    array = ( double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtrPtr" ,  "doublePtrPtr" );
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
        const double (*array) [dim1][dim2] ;
        array = ( const double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtrPtr" ,  "doublePtrPtr" );
        for(i = 0; i < n; i++) {
          SET_VECTOR_ELT(r_ans, i, INTEGER(r_copy)[0] ?  convertDoubleArrayToR ( 2 , (*array)[ INTEGER(els)[i] - 1 ] , 1 , 0, 1 ) : R_createArrayReference( (*array)[ INTEGER(els)[i] -1 ] ,  "doubleArray" ,  "doublePtr" ,  (int[]) { 2 }, 1 , sizeof( double [ 2 ] )) );
        }
    }
    UNPROTECT(1);
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_setCellsDoubleArrayArray (SEXP r_array, SEXP els, SEXP r_values, SEXP r_dims)
{
     /* set a subset of the external array as an R object */
    SEXP r_ans, r_tmp;
    size_t dim1 = INTEGER(r_dims)[0];
    size_t dim2 = INTEGER(r_dims)[1];
    size_t pos1;
    size_t pos2;
    double (*array) [dim1][dim2] ;
    int  n, i;
    
    n = Rf_length(VECTOR_ELT(els, 0));
    if(n == 0) return(r_array);
    
    array = ( double (*) [dim1][dim2] ) R_getNativeReference(r_array,  "doublePtrPtr" ,  "doublePtrPtr" );
    for(i = 0; i < n; i++) {
        pos1 = INTEGER(VECTOR_ELT(els, 0))[i] - 1;
        pos2 = INTEGER(VECTOR_ELT(els, 1))[i] - 1;
      r_tmp = VECTOR_ELT(r_values, i);
    *array [pos1][pos2] = ( double ) asReal( r_tmp );
    }
    return(r_array);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Aroutine(SEXP r_a)
{
    
    	SEXP r_ans = R_NilValue;
    	A a ;
    	 int ans ;
    
    	 a  =  * ( A  *) R_getNativeReference( r_a , "APtr" , "APtr" ); ;
    
    	ans =  Aroutine ( a );
    	 r_ans =  ScalarInteger( ans ) ;
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_init()
{
    
    	SEXP r_ans = R_NilValue;
    
    	 
    
    	 init (  );
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_makeList(SEXP r_n)
{
    
    	SEXP r_ans = R_NilValue;
    	int n ;
    	 Element * ans ;
    
    	 n  =  asInteger( r_n ); ;
    
    	ans =  makeList ( n );
    	 r_ans =  R_createNativeReference( (void *)  ans ,  "ElementPtr" , "ElementPtr" ) ;
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_init_FloatPtr(SEXP r_sizes, SEXP r__copy, SEXP r_resultLength)
{
    
    	SEXP r_ans = R_NilValue;
    	SEXP r_names = R_NilValue;
    	int r_ctr = 0;
    	int sizes, *_p_sizes = &sizes;
    	
    
    	 if(GET_LENGTH( r_sizes ) > 0)  {
    	 	_p_sizes  =  INTEGER ( r_sizes ); ;
    	 		}
    
    	 init_FloatPtr ( _p_sizes );
    	 PROTECT(r_ans = NEW_LIST( INTEGER(r_resultLength)[0]));
	 PROTECT(r_names = NEW_CHARACTER( INTEGER(r_resultLength)[0]));
	 if( LOGICAL(r__copy)[ 0 ]  != NA_LOGICAL) {
	 	 if( LOGICAL(r__copy)[ 0 ]  == FALSE && GET_LENGTH( r_sizes ) == 0) {
	 	 	 PROBLEM "ignoring request to not copy argument sizes as only local/stack value is available"
	 	 	 WARN;
	 	 }
	 	 SET_VECTOR_ELT( r_ans, r_ctr, LOGICAL(r__copy)[ 0 ] == FALSE && GET_LENGTH( r_sizes ) > 0 ?  r_sizes : ScalarInteger( *_p_sizes ) );
	 	SET_STRING_ELT( r_names, r_ctr++, mkChar("sizes"));
	 }
	 
	 SET_NAMES(r_ans, r_names);
	 UNPROTECT(2);
    
    	 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_init_iarray4D()
{
    
    	SEXP r_ans = R_NilValue;
    	 int ans ;
    
    	 
    
    	ans =  init_iarray4D (  );
    	 r_ans =  ScalarInteger( ans ) ;
    
    	 return(r_ans);
}
 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_l1 ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & l1 ,  "L1Ptr" , "L1Ptr" ) ;
    else
        ans =  R_copyStruct_L1( &l1 ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_g_struct ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & g_struct ,  "GPtr" , "GPtr" ) ;
    else
        ans =  R_copyStruct_G( &g_struct ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_f_struct ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & f_struct ,  "FPtr" , "FPtr" ) ;
    else
        ans =  R_copyStruct_F( &f_struct ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_pointerLen ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & pointerLen ,  "intPtr" , "intPtr" ) ;
    else
        ans =  ScalarInteger( pointerLen ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_e_struct ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & e_struct ,  "EPtr" , "EPtr" ) ;
    else
        ans =  R_copyStruct_E( &e_struct ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_pointer ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & pointer ,  "intPtrPtr" , "intPtrPtr" ) ;
    else
        ans =  R_createNativeReference( (void *)  pointer ,  "intPtr" , "intPtr" ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_d_struct ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & d_struct ,  "DPtr" , "DPtr" ) ;
    else
        ans =  R_copyStruct_D( &d_struct ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_usarray ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( usarray ,  "shortUnsignedIntArray" ,  "shortUnsignedIntPtr" ,  (int[]) { 3 }, 1 , sizeof( short unsigned int [ 3 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertShortUnsignedIntArrayToR ( 3 ,  *(const  short unsigned int (*) [3] ) & usarray , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_uarray ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( uarray ,  "unsignedIntArray" ,  "unsignedIntPtr" ,  (int[]) { 8 }, 1 , sizeof( unsigned int [ 8 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertUnsignedIntArrayToR ( 8 ,  *(const  unsigned int (*) [8] ) & uarray , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_Strings ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( Strings ,  "charPtrArray" ,  "charPtrPtr" ,  (int[]) { 7 }, 1 , sizeof( char* [ 7 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertCharPtrArrayToR ( 7 ,  *(const  char* (*) [7] ) & Strings , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_array ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( array ,  "intArray" ,  "intPtr" ,  (int[]) { 10 }, 1 , sizeof( int [ 10 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertIntArrayToR ( 10 ,  *(const  int (*) [10] ) & array , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_us ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & us ,  "short unsigned intPtr" , "short unsigned intPtr" ) ;
    else
        ans =  ScalarInteger( us ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_FloatPtr ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & FloatPtr ,  "floatPtrPtrPtrPtr" , "floatPtrPtrPtrPtr" ) ;
    else
        ans =  R_createNativeReference( (void *)  FloatPtr ,  "floatPtrPtrPtr" , "floatPtrPtrPtr" ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ll ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ll ,  "long long intPtr" , "long long intPtr" ) ;
    else
        ans =  ScalarInteger( ll ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ul ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ul ,  "long unsigned intPtr" , "long unsigned intPtr" ) ;
    else
        ans =  ScalarReal( ul ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_xarray ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( xarray ,  "XArray" ,  "XPtr" ,  (int[]) { 4 }, 1 , sizeof( X [ 4 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertXArrayToR ( 4 ,  *(const  X (*) [4] ) & xarray , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_iarray4D ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( iarray4D ,  "intArrayArrayArrayArray" ,  "intPtrPtrPtrPtr" ,  (int[]) { 2, 3, 4, 5 }, 4 , sizeof( int [ 2 ] [ 3 ] [ 4 ] [ 5 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertIntArrayArrayArrayArrayToR ( 2, 3, 4, 5 ,  *(const  int (*) [2][3][4][5] ) & iarray4D , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_l ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & l ,  "long intPtr" , "long intPtr" ) ;
    else
        ans =  ScalarReal( l ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_iarray ( SEXP copy ,   SEXP start, SEXP end )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createArrayReference( iarray ,  "intArrayArrayArray" ,  "intPtrPtrPtr" ,  (int[]) { 2, 3, 4 }, 3 , sizeof( int [ 2 ] [ 3 ] [ 4 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertIntArrayArrayArrayToR ( 2, 3, 4 ,  *(const  int (*) [2][3][4] ) & iarray , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_s ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & s ,  "short intPtr" , "short intPtr" ) ;
    else
        ans =  ScalarInteger( s ) ;
    
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
        ans = R_createArrayReference( xarray2D ,  "XArrayArray" ,  "XPtrPtr" ,  (int[]) { 3, 5 }, 2 , sizeof( X [ 3 ] [ 5 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertXArrayArrayToR ( 3, 5 ,  *(const  X (*) [3][5] ) & xarray2D , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_i ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & i ,  "intPtr" , "intPtr" ) ;
    else
        ans =  ScalarInteger( i ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_uc ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & uc ,  "unsigned charPtr" , "unsigned charPtr" ) ;
    else
        ans =  ScalarRaw( uc ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_matrix_ptr ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & matrix_ptr ,  "doublePtrPtr" , "doublePtrPtr" ) ;
    else
        ans =  R_createNativeReference( (void *)  matrix_ptr ,  "doublePtr" , "doublePtr" ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_d ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & d ,  "doublePtr" , "doublePtr" ) ;
    else
        ans =  ScalarReal( d ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ld ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ld ,  "long doublePtr" , "long doublePtr" ) ;
    else
        ans =  ScalarReal( ld ) ;
    
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
        ans = R_createArrayReference( matrix ,  "doubleArrayArray" ,  "doublePtrPtr" ,  (int[]) { 3, 2 }, 2 , sizeof( double [ 3 ] [ 2 ] )) ;
    else
     {
    int from, to;
    if(Rf_length(start) == 2) to = INTEGER(start)[1]; 
    else if(Rf_length(start) == 0 || Rf_length(end) == 0) {
       PROBLEM "need scalar values for range of array to fetch"
       ERROR
    }
    from = INTEGER(start)[0]; to = INTEGER(end)[0];
    
        ans =  convertDoubleArrayArrayToR ( 3, 2 ,  *(const  double (*) [3][2] ) & matrix , INTEGER(copy)[0] , from - 1, to - 1 ) ;
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ui ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ui ,  "unsigned intPtr" , "unsigned intPtr" ) ;
    else
        ans =  ScalarInteger( ui ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ulli ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ulli ,  "long long unsigned intPtr" , "long long unsigned intPtr" ) ;
    else
        ans =  ScalarReal( ulli ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_ap ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & ap ,  "APtrPtr" , "APtrPtr" ) ;
    else
        ans =  R_createNativeReference( (void *)  ap ,  "APtr" , "APtr" ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_get_a ( SEXP copy  )
{
    SEXP ans;
    
    if(!LOGICAL(copy)[0])
        ans = R_createNativeReference( (void *)  & a ,  "APtr" , "APtr" ) ;
    else
        ans =  R_copyStruct_A( &a ) ;
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_l1 (SEXP value)
{
    SEXP ans = R_NilValue;
    
    l1 = * ( struct  L1  *) R_getNativeReference( value , "L1Ptr" , "L1Ptr" );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_g_struct (SEXP value)
{
    SEXP ans = R_NilValue;
    
    g_struct = * ( struct  G  *) R_getNativeReference( value , "GPtr" , "GPtr" );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_f_struct (SEXP value)
{
    SEXP ans = R_NilValue;
    
    f_struct = * ( struct  F  *) R_getNativeReference( value , "FPtr" , "FPtr" );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_pointerLen (SEXP value)
{
    SEXP ans = R_NilValue;
    
    pointerLen = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_e_struct (SEXP value)
{
    SEXP ans = R_NilValue;
    
    e_struct = * ( struct  E  *) R_getNativeReference( value , "EPtr" , "EPtr" );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_pointer (SEXP value)
{
    SEXP ans = R_NilValue;
    
    pointer = INTEGER ( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_d_struct (SEXP value)
{
    SEXP ans = R_NilValue;
    
    d_struct = * ( struct  D  *) R_getNativeReference( value , "DPtr" , "DPtr" );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_usarray (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
       int i;
       for(i = 0; i < 3 ; i++)
            usarray [i] = INTEGER ( value )[i];
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_uarray (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
       int i;
       for(i = 0; i < 8 ; i++)
            uarray [i] = REAL ( value )[i];
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_Strings (SEXP value)
{
    SEXP ans = R_NilValue;
    
      {
       int i;
       char **els = NULL;
       int isStringVector = TYPEOF( value ) == STRSXP;
       if(!isStringVector)
            els = DEREF_REF_PTR( value ,  char * );
       for(i=0; i < 7 ; i++) {
              Strings [i] = isStringVector ? strdup(CHAR(STRING_ELT( value , i))) : els[i];
       }
      }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_array (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
       int i;
       for(i = 0; i < 10 ; i++)
            array [i] = INTEGER ( value )[i];
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_us (SEXP value)
{
    SEXP ans = R_NilValue;
    
    us = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_FloatPtr (SEXP value)
{
    SEXP ans = R_NilValue;
    
    FloatPtr = REAL ( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ll (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ll = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ul (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ul = ( long unsigned int ) asReal( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_xarray (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
    X * _tmp ;
    _tmp =  DEREF_REF_PTR( value ,  X ) ;
    memcpy( xarray , _tmp, sizeof( X ) * 4 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_iarray4D (SEXP value)
{
    SEXP ans = R_NilValue;
    
     {
    int **** _tmp ;
    _tmp =  DEREF_REF_PTR( value ,  int *** ) ;
    memcpy( iarray4D , _tmp, sizeof( int ) * 2 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_l (SEXP value)
{
    SEXP ans = R_NilValue;
    
    l = ( long int ) asReal( value );
    
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
    _tmp =  DEREF_REF_PTR( value ,  int ** ) ;
    memcpy( iarray , _tmp, sizeof( int ) * 2 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_s (SEXP value)
{
    SEXP ans = R_NilValue;
    
    s = asInteger( value );
    
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
    _tmp =  DEREF_REF_PTR( value ,  X * ) ;
    memcpy( xarray2D , _tmp, sizeof( X ) * 3 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_i (SEXP value)
{
    SEXP ans = R_NilValue;
    
    i = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_uc (SEXP value)
{
    SEXP ans = R_NilValue;
    
    uc = ( unsigned char ) RAW( value )[0];
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_matrix_ptr (SEXP value)
{
    SEXP ans = R_NilValue;
    
    matrix_ptr = REAL ( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_d (SEXP value)
{
    SEXP ans = R_NilValue;
    
    d = ( double ) asReal( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ld (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ld = ( long double ) asReal( value );
    
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
    _tmp =  DEREF_REF_PTR( value ,  double * ) ;
    memcpy( matrix , _tmp, sizeof( double ) * 3 );
     }
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ui (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ui = asInteger( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ulli (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ulli = ( long long unsigned int ) asReal( value );
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_ap (SEXP value)
{
    SEXP ans = R_NilValue;
    
    ap = (A *) R_getNativeReference(value, "APtr", NULL);
    
    return(ans);
} 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_set_a (SEXP value)
{
    SEXP ans = R_NilValue;
    
    a = * ( A  *) R_getNativeReference( value , "APtr" , "APtr" );
    
    return(ans);
} 

/* registration information for the C/C++ routines accessible by R */

#include <R_ext/Rdynload.h>

static const R_CallMethodDef CallEntries [] = {
    { "R_Aroutine" , (DL_FUNC) & R_Aroutine , 1 } ,
   { "R_init" , (DL_FUNC) & R_init , 0 } ,
   { "R_makeList" , (DL_FUNC) & R_makeList , 1 } ,
   { "R_init_FloatPtr" , (DL_FUNC) & R_init_FloatPtr , 3 } ,
   { "R_init_iarray4D" , (DL_FUNC) & R_init_iarray4D , 0 } ,
   { "R_set_l1" , (DL_FUNC) & R_set_l1 , 1 } ,
   { "R_get_l1" , (DL_FUNC) & R_get_l1 , 1 } ,
   { "R_set_g_struct" , (DL_FUNC) & R_set_g_struct , 1 } ,
   { "R_get_g_struct" , (DL_FUNC) & R_get_g_struct , 1 } ,
   { "R_set_f_struct" , (DL_FUNC) & R_set_f_struct , 1 } ,
   { "R_get_f_struct" , (DL_FUNC) & R_get_f_struct , 1 } ,
   { "R_set_pointerLen" , (DL_FUNC) & R_set_pointerLen , 1 } ,
   { "R_get_pointerLen" , (DL_FUNC) & R_get_pointerLen , 1 } ,
   { "R_set_e_struct" , (DL_FUNC) & R_set_e_struct , 1 } ,
   { "R_get_e_struct" , (DL_FUNC) & R_get_e_struct , 1 } ,
   { "R_set_pointer" , (DL_FUNC) & R_set_pointer , 1 } ,
   { "R_get_pointer" , (DL_FUNC) & R_get_pointer , 1 } ,
   { "R_set_d_struct" , (DL_FUNC) & R_set_d_struct , 1 } ,
   { "R_get_d_struct" , (DL_FUNC) & R_get_d_struct , 1 } ,
   { "R_set_usarray" , (DL_FUNC) & R_set_usarray , 1 } ,
   { "R_get_usarray" , (DL_FUNC) & R_get_usarray , 3 } ,
   { "R_set_uarray" , (DL_FUNC) & R_set_uarray , 1 } ,
   { "R_get_uarray" , (DL_FUNC) & R_get_uarray , 3 } ,
   { "R_set_Strings" , (DL_FUNC) & R_set_Strings , 1 } ,
   { "R_get_Strings" , (DL_FUNC) & R_get_Strings , 3 } ,
   { "R_set_array" , (DL_FUNC) & R_set_array , 1 } ,
   { "R_get_array" , (DL_FUNC) & R_get_array , 3 } ,
   { "R_set_us" , (DL_FUNC) & R_set_us , 1 } ,
   { "R_get_us" , (DL_FUNC) & R_get_us , 1 } ,
   { "R_set_FloatPtr" , (DL_FUNC) & R_set_FloatPtr , 1 } ,
   { "R_get_FloatPtr" , (DL_FUNC) & R_get_FloatPtr , 1 } ,
   { "R_set_ll" , (DL_FUNC) & R_set_ll , 1 } ,
   { "R_get_ll" , (DL_FUNC) & R_get_ll , 1 } ,
   { "R_set_ul" , (DL_FUNC) & R_set_ul , 1 } ,
   { "R_get_ul" , (DL_FUNC) & R_get_ul , 1 } ,
   { "R_set_xarray" , (DL_FUNC) & R_set_xarray , 1 } ,
   { "R_get_xarray" , (DL_FUNC) & R_get_xarray , 3 } ,
   { "R_set_iarray4D" , (DL_FUNC) & R_set_iarray4D , 1 } ,
   { "R_get_iarray4D" , (DL_FUNC) & R_get_iarray4D , 3 } ,
   { "R_set_l" , (DL_FUNC) & R_set_l , 1 } ,
   { "R_get_l" , (DL_FUNC) & R_get_l , 1 } ,
   { "R_set_iarray" , (DL_FUNC) & R_set_iarray , 1 } ,
   { "R_get_iarray" , (DL_FUNC) & R_get_iarray , 3 } ,
   { "R_set_s" , (DL_FUNC) & R_set_s , 1 } ,
   { "R_get_s" , (DL_FUNC) & R_get_s , 1 } ,
   { "R_set_xarray2D" , (DL_FUNC) & R_set_xarray2D , 1 } ,
   { "R_get_xarray2D" , (DL_FUNC) & R_get_xarray2D , 3 } ,
   { "R_set_i" , (DL_FUNC) & R_set_i , 1 } ,
   { "R_get_i" , (DL_FUNC) & R_get_i , 1 } ,
   { "R_set_uc" , (DL_FUNC) & R_set_uc , 1 } ,
   { "R_get_uc" , (DL_FUNC) & R_get_uc , 1 } ,
   { "R_set_matrix_ptr" , (DL_FUNC) & R_set_matrix_ptr , 1 } ,
   { "R_get_matrix_ptr" , (DL_FUNC) & R_get_matrix_ptr , 1 } ,
   { "R_set_d" , (DL_FUNC) & R_set_d , 1 } ,
   { "R_get_d" , (DL_FUNC) & R_get_d , 1 } ,
   { "R_set_ld" , (DL_FUNC) & R_set_ld , 1 } ,
   { "R_get_ld" , (DL_FUNC) & R_get_ld , 1 } ,
   { "R_set_matrix" , (DL_FUNC) & R_set_matrix , 1 } ,
   { "R_get_matrix" , (DL_FUNC) & R_get_matrix , 3 } ,
   { "R_set_ui" , (DL_FUNC) & R_set_ui , 1 } ,
   { "R_get_ui" , (DL_FUNC) & R_get_ui , 1 } ,
   { "R_set_ulli" , (DL_FUNC) & R_set_ulli , 1 } ,
   { "R_get_ulli" , (DL_FUNC) & R_get_ulli , 1 } ,
   { "R_set_ap" , (DL_FUNC) & R_set_ap , 1 } ,
   { "R_get_ap" , (DL_FUNC) & R_get_ap , 1 } ,
   { "R_set_a" , (DL_FUNC) & R_set_a , 1 } ,
   { "R_get_a" , (DL_FUNC) & R_get_a , 1 } ,
   { "R_convertUnsignedIntArrayToR" , (DL_FUNC) & R_convertUnsignedIntArrayToR , 5 } ,
   { "R_subsetUnsignedIntArray" , (DL_FUNC) & R_subsetUnsignedIntArray , 4 } ,
   { "R_setSubsetUnsignedIntArray" , (DL_FUNC) & R_setSubsetUnsignedIntArray , 4 } ,
   { "coerce_A_APtr" , (DL_FUNC) & coerce_A_APtr , 2 } ,
   { "R_coerce_A_APtr" , (DL_FUNC) & R_coerce_A_APtr , 1 } ,
   { "R_coerce_APtr_A" , (DL_FUNC) & R_coerce_APtr_A , 1 } ,
   { "R_APtr_get_i" , (DL_FUNC) & R_APtr_get_i , 2 } ,
   { "R_APtr_get_uarray" , (DL_FUNC) & R_APtr_get_uarray , 2 } ,
   { "R_APtr_set_i" , (DL_FUNC) & R_APtr_set_i , 2 } ,
   { "R_APtr_set_uarray" , (DL_FUNC) & R_APtr_set_uarray , 2 } ,
   { "R_free_APtr" , (DL_FUNC) & R_free_APtr , 1 } ,
   { "R_new_A" , (DL_FUNC) & R_new_A , 0 } ,
   { "R_duplicate_A" , (DL_FUNC) & R_duplicate_A , 3 } ,
   { "R_convertIntArrayToR" , (DL_FUNC) & R_convertIntArrayToR , 5 } ,
   { "R_subsetIntArray" , (DL_FUNC) & R_subsetIntArray , 4 } ,
   { "R_setSubsetIntArray" , (DL_FUNC) & R_setSubsetIntArray , 4 } ,
   { "coerce_L5_L5Ptr" , (DL_FUNC) & coerce_L5_L5Ptr , 2 } ,
   { "R_coerce_L5_L5Ptr" , (DL_FUNC) & R_coerce_L5_L5Ptr , 1 } ,
   { "R_coerce_L5Ptr_L5" , (DL_FUNC) & R_coerce_L5Ptr_L5 , 1 } ,
   { "R_L5Ptr_get_i" , (DL_FUNC) & R_L5Ptr_get_i , 2 } ,
   { "R_L5Ptr_get_d" , (DL_FUNC) & R_L5Ptr_get_d , 2 } ,
   { "R_L5Ptr_get_a5" , (DL_FUNC) & R_L5Ptr_get_a5 , 2 } ,
   { "R_L5Ptr_set_i" , (DL_FUNC) & R_L5Ptr_set_i , 2 } ,
   { "R_L5Ptr_set_d" , (DL_FUNC) & R_L5Ptr_set_d , 2 } ,
   { "R_L5Ptr_set_a5" , (DL_FUNC) & R_L5Ptr_set_a5 , 2 } ,
   { "R_free_L5Ptr" , (DL_FUNC) & R_free_L5Ptr , 1 } ,
   { "R_new_L5" , (DL_FUNC) & R_new_L5 , 0 } ,
   { "R_duplicate_L5" , (DL_FUNC) & R_duplicate_L5 , 3 } ,
   { "coerce_L4_L4Ptr" , (DL_FUNC) & coerce_L4_L4Ptr , 2 } ,
   { "R_coerce_L4_L4Ptr" , (DL_FUNC) & R_coerce_L4_L4Ptr , 1 } ,
   { "R_coerce_L4Ptr_L4" , (DL_FUNC) & R_coerce_L4Ptr_L4 , 1 } ,
   { "R_L4Ptr_get_l5" , (DL_FUNC) & R_L4Ptr_get_l5 , 2 } ,
   { "R_L4Ptr_get_x4" , (DL_FUNC) & R_L4Ptr_get_x4 , 2 } ,
   { "R_L4Ptr_get_a4" , (DL_FUNC) & R_L4Ptr_get_a4 , 2 } ,
   { "R_L4Ptr_set_l5" , (DL_FUNC) & R_L4Ptr_set_l5 , 2 } ,
   { "R_L4Ptr_set_x4" , (DL_FUNC) & R_L4Ptr_set_x4 , 2 } ,
   { "R_L4Ptr_set_a4" , (DL_FUNC) & R_L4Ptr_set_a4 , 2 } ,
   { "R_free_L4Ptr" , (DL_FUNC) & R_free_L4Ptr , 1 } ,
   { "R_new_L4" , (DL_FUNC) & R_new_L4 , 0 } ,
   { "R_duplicate_L4" , (DL_FUNC) & R_duplicate_L4 , 3 } ,
   { "coerce_L3_L3Ptr" , (DL_FUNC) & coerce_L3_L3Ptr , 2 } ,
   { "R_coerce_L3_L3Ptr" , (DL_FUNC) & R_coerce_L3_L3Ptr , 1 } ,
   { "R_coerce_L3Ptr_L3" , (DL_FUNC) & R_coerce_L3Ptr_L3 , 1 } ,
   { "R_L3Ptr_get_l4" , (DL_FUNC) & R_L3Ptr_get_l4 , 2 } ,
   { "R_L3Ptr_get_x3" , (DL_FUNC) & R_L3Ptr_get_x3 , 2 } ,
   { "R_L3Ptr_get_a3" , (DL_FUNC) & R_L3Ptr_get_a3 , 2 } ,
   { "R_L3Ptr_set_l4" , (DL_FUNC) & R_L3Ptr_set_l4 , 2 } ,
   { "R_L3Ptr_set_x3" , (DL_FUNC) & R_L3Ptr_set_x3 , 2 } ,
   { "R_L3Ptr_set_a3" , (DL_FUNC) & R_L3Ptr_set_a3 , 2 } ,
   { "R_free_L3Ptr" , (DL_FUNC) & R_free_L3Ptr , 1 } ,
   { "R_new_L3" , (DL_FUNC) & R_new_L3 , 0 } ,
   { "R_duplicate_L3" , (DL_FUNC) & R_duplicate_L3 , 3 } ,
   { "coerce_L2_L2Ptr" , (DL_FUNC) & coerce_L2_L2Ptr , 2 } ,
   { "R_coerce_L2_L2Ptr" , (DL_FUNC) & R_coerce_L2_L2Ptr , 1 } ,
   { "R_coerce_L2Ptr_L2" , (DL_FUNC) & R_coerce_L2Ptr_L2 , 1 } ,
   { "R_L2Ptr_get_l3" , (DL_FUNC) & R_L2Ptr_get_l3 , 2 } ,
   { "R_L2Ptr_get_x2" , (DL_FUNC) & R_L2Ptr_get_x2 , 2 } ,
   { "R_L2Ptr_get_a2" , (DL_FUNC) & R_L2Ptr_get_a2 , 2 } ,
   { "R_L2Ptr_set_l3" , (DL_FUNC) & R_L2Ptr_set_l3 , 2 } ,
   { "R_L2Ptr_set_x2" , (DL_FUNC) & R_L2Ptr_set_x2 , 2 } ,
   { "R_L2Ptr_set_a2" , (DL_FUNC) & R_L2Ptr_set_a2 , 2 } ,
   { "R_free_L2Ptr" , (DL_FUNC) & R_free_L2Ptr , 1 } ,
   { "R_new_L2" , (DL_FUNC) & R_new_L2 , 0 } ,
   { "R_duplicate_L2" , (DL_FUNC) & R_duplicate_L2 , 3 } ,
   { "coerce_L1_L1Ptr" , (DL_FUNC) & coerce_L1_L1Ptr , 2 } ,
   { "R_coerce_L1_L1Ptr" , (DL_FUNC) & R_coerce_L1_L1Ptr , 1 } ,
   { "R_coerce_L1Ptr_L1" , (DL_FUNC) & R_coerce_L1Ptr_L1 , 1 } ,
   { "R_L1Ptr_get_l2" , (DL_FUNC) & R_L1Ptr_get_l2 , 2 } ,
   { "R_L1Ptr_get_x1" , (DL_FUNC) & R_L1Ptr_get_x1 , 2 } ,
   { "R_L1Ptr_set_l2" , (DL_FUNC) & R_L1Ptr_set_l2 , 2 } ,
   { "R_L1Ptr_set_x1" , (DL_FUNC) & R_L1Ptr_set_x1 , 2 } ,
   { "R_free_L1Ptr" , (DL_FUNC) & R_free_L1Ptr , 1 } ,
   { "R_new_L1" , (DL_FUNC) & R_new_L1 , 0 } ,
   { "R_duplicate_L1" , (DL_FUNC) & R_duplicate_L1 , 3 } ,
   { "coerce_D_DPtr" , (DL_FUNC) & coerce_D_DPtr , 2 } ,
   { "R_coerce_D_DPtr" , (DL_FUNC) & R_coerce_D_DPtr , 1 } ,
   { "R_coerce_DPtr_D" , (DL_FUNC) & R_coerce_DPtr_D , 1 } ,
   { "R_DPtr_get_val" , (DL_FUNC) & R_DPtr_get_val , 1 } ,
   { "R_DPtr_set_val" , (DL_FUNC) & R_DPtr_set_val , 2 } ,
   { "R_free_DPtr" , (DL_FUNC) & R_free_DPtr , 1 } ,
   { "R_new_D" , (DL_FUNC) & R_new_D , 0 } ,
   { "R_duplicate_D" , (DL_FUNC) & R_duplicate_D , 3 } ,
   { "coerce_E_EPtr" , (DL_FUNC) & coerce_E_EPtr , 2 } ,
   { "R_coerce_E_EPtr" , (DL_FUNC) & R_coerce_E_EPtr , 1 } ,
   { "R_coerce_EPtr_E" , (DL_FUNC) & R_coerce_EPtr_E , 1 } ,
   { "R_EPtr_get_ad" , (DL_FUNC) & R_EPtr_get_ad , 2 } ,
   { "R_EPtr_set_ad" , (DL_FUNC) & R_EPtr_set_ad , 2 } ,
   { "R_free_EPtr" , (DL_FUNC) & R_free_EPtr , 1 } ,
   { "R_new_E" , (DL_FUNC) & R_new_E , 0 } ,
   { "R_duplicate_E" , (DL_FUNC) & R_duplicate_E , 3 } ,
   { "coerce_F_FPtr" , (DL_FUNC) & coerce_F_FPtr , 2 } ,
   { "R_coerce_F_FPtr" , (DL_FUNC) & R_coerce_F_FPtr , 1 } ,
   { "R_coerce_FPtr_F" , (DL_FUNC) & R_coerce_FPtr_F , 1 } ,
   { "R_FPtr_get_ae" , (DL_FUNC) & R_FPtr_get_ae , 2 } ,
   { "R_FPtr_get_ad" , (DL_FUNC) & R_FPtr_get_ad , 2 } ,
   { "R_FPtr_set_ae" , (DL_FUNC) & R_FPtr_set_ae , 2 } ,
   { "R_FPtr_set_ad" , (DL_FUNC) & R_FPtr_set_ad , 2 } ,
   { "R_free_FPtr" , (DL_FUNC) & R_free_FPtr , 1 } ,
   { "R_new_F" , (DL_FUNC) & R_new_F , 0 } ,
   { "R_duplicate_F" , (DL_FUNC) & R_duplicate_F , 3 } ,
   { "coerce_G_GPtr" , (DL_FUNC) & coerce_G_GPtr , 2 } ,
   { "R_coerce_G_GPtr" , (DL_FUNC) & R_coerce_G_GPtr , 1 } ,
   { "R_coerce_GPtr_G" , (DL_FUNC) & R_coerce_GPtr_G , 1 } ,
   { "R_GPtr_get_ae" , (DL_FUNC) & R_GPtr_get_ae , 2 } ,
   { "R_GPtr_get_ad" , (DL_FUNC) & R_GPtr_get_ad , 2 } ,
   { "R_GPtr_get_af" , (DL_FUNC) & R_GPtr_get_af , 2 } ,
   { "R_GPtr_set_ae" , (DL_FUNC) & R_GPtr_set_ae , 2 } ,
   { "R_GPtr_set_ad" , (DL_FUNC) & R_GPtr_set_ad , 2 } ,
   { "R_GPtr_set_af" , (DL_FUNC) & R_GPtr_set_af , 2 } ,
   { "R_free_GPtr" , (DL_FUNC) & R_free_GPtr , 1 } ,
   { "R_new_G" , (DL_FUNC) & R_new_G , 0 } ,
   { "R_duplicate_G" , (DL_FUNC) & R_duplicate_G , 3 } ,
   { "R_convertShortUnsignedIntArrayToR" , (DL_FUNC) & R_convertShortUnsignedIntArrayToR , 5 } ,
   { "R_subsetShortUnsignedIntArray" , (DL_FUNC) & R_subsetShortUnsignedIntArray , 4 } ,
   { "R_setSubsetShortUnsignedIntArray" , (DL_FUNC) & R_setSubsetShortUnsignedIntArray , 4 } ,
   { "R_convertCharPtrArrayToR" , (DL_FUNC) & R_convertCharPtrArrayToR , 5 } ,
   { "R_subsetCharPtrArray" , (DL_FUNC) & R_subsetCharPtrArray , 4 } ,
   { "R_setSubsetCharPtrArray" , (DL_FUNC) & R_setSubsetCharPtrArray , 4 } ,
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
   { "R_convertXArrayToR" , (DL_FUNC) & R_convertXArrayToR , 5 } ,
   { "R_subsetXArray" , (DL_FUNC) & R_subsetXArray , 4 } ,
   { "R_setSubsetXArray" , (DL_FUNC) & R_setSubsetXArray , 4 } ,
   { "R_convertIntArrayArrayToR" , (DL_FUNC) & R_convertIntArrayArrayToR , 5 } ,
   { "R_subsetIntArrayArray" , (DL_FUNC) & R_subsetIntArrayArray , 4 } ,
   { "R_setSubsetIntArrayArray" , (DL_FUNC) & R_setSubsetIntArrayArray , 4 } ,
   { "R_convertIntArrayArrayArrayToR" , (DL_FUNC) & R_convertIntArrayArrayArrayToR , 5 } ,
   { "R_subsetIntArrayArrayArray" , (DL_FUNC) & R_subsetIntArrayArrayArray , 4 } ,
   { "R_setSubsetIntArrayArrayArray" , (DL_FUNC) & R_setSubsetIntArrayArrayArray , 4 } ,
   { "R_convertIntArrayArrayArrayArrayToR" , (DL_FUNC) & R_convertIntArrayArrayArrayArrayToR , 5 } ,
   { "R_subsetIntArrayArrayArrayArray" , (DL_FUNC) & R_subsetIntArrayArrayArrayArray , 4 } ,
   { "R_setSubsetIntArrayArrayArrayArray" , (DL_FUNC) & R_setSubsetIntArrayArrayArrayArray , 4 } ,
   { "R_convertXArrayArrayToR" , (DL_FUNC) & R_convertXArrayArrayToR , 5 } ,
   { "R_subsetXArrayArray" , (DL_FUNC) & R_subsetXArrayArray , 4 } ,
   { "R_setSubsetXArrayArray" , (DL_FUNC) & R_setSubsetXArrayArray , 4 } ,
   { "R_convertDoubleArrayToR" , (DL_FUNC) & R_convertDoubleArrayToR , 5 } ,
   { "R_subsetDoubleArray" , (DL_FUNC) & R_subsetDoubleArray , 4 } ,
   { "R_setSubsetDoubleArray" , (DL_FUNC) & R_setSubsetDoubleArray , 4 } ,
   { "R_convertDoubleArrayArrayToR" , (DL_FUNC) & R_convertDoubleArrayArrayToR , 5 } ,
   { "R_subsetDoubleArrayArray" , (DL_FUNC) & R_subsetDoubleArrayArray , 4 } ,
   { "R_setSubsetDoubleArrayArray" , (DL_FUNC) & R_setSubsetDoubleArrayArray , 4 } , 
    {NULL, NULL, 0} 
};
 
#ifdef __cplusplus
extern "C"
#endif
void
#ifdef HAVE_VISIBILITY_ATTRIBUTE
__attribute__ ((visibility ("default")))
#endif
R_init_Rvars(DllInfo *dll)
{
    R_registerRoutines(dll,  NULL, CallEntries, NULL, NULL );
    R_useDynamicSymbols(dll, FALSE );
}
