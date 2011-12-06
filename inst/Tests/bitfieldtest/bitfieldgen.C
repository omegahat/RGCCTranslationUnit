#include "RConverters.h" 
#include "bitfieldtest.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_mybitfield ( const struct  mybitfield *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("mybitfield");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class mybitfield "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("bfld"), ScalarInteger( value -> bfld ) ));
    UNPROTECT( 3 );
    
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_mybitfieldPtr_get_bfld (SEXP r_obj   )
{
    const struct  mybitfield *obj ;
    obj = ( const struct  mybitfield * )  R_getNativeReference(r_obj, "mybitfield", NULL) ;
    return( ScalarInteger( obj -> bfld ) );
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_mybitfieldPtr_set_bfld (SEXP r_obj , SEXP r_value  )
{
    struct  mybitfield *obj ;
    unsigned int value ;
    value = asInteger( r_value );
    obj = ( struct  mybitfield * )  R_getNativeReference(r_obj, "mybitfield", NULL) ;
    obj -> bfld = value;
    return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
struct  mybitfield *
coerce_mybitfield_mybitfieldPtr ( SEXP r_from,  struct  mybitfield * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  mybitfield * ) malloc( sizeof( struct  mybitfield ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("bfld"));
    ans->bfld = asInteger( tmp );
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_mybitfield_mybitfieldPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_mybitfield_mybitfieldPtr (r_from, NULL), "mybitfieldPtr" , "mybitfieldPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_mybitfieldPtr_mybitfield ( SEXP from )
{
    struct  mybitfield * ans ;
    ans = (struct  mybitfield *) R_getNativeReference(from, "mybitfield", NULL);
    return( R_copyStruct_mybitfield ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_mybitfield ()
{
    SEXP r_ans = R_NilValue;
    struct  mybitfield * ans;
    
    ans = ( struct  mybitfield *) calloc (1, sizeof( struct  mybitfield ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "mybitfieldPtr" , "mybitfieldPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_mybitfieldPtr_finalizer (SEXP val)
{
    struct  mybitfield * ans = NULL;
    ans = ( struct  mybitfield * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing mybitfield  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_mybitfieldPtr (SEXP val)
{
    struct  mybitfield * ans = NULL;
    ans =  (struct  mybitfield *) R_getNativeReference(val, "mybitfieldPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing mybitfield  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_mybitfield (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  mybitfield * value ;
    struct  mybitfield * ans ;
    SEXP r_ans;
    
    value = (struct  mybitfield *) R_getNativeReference(r_value, "mybitfieldPtr", NULL);
    ans = ( struct  mybitfield  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "mybitfieldPtr" , "mybitfieldPtr" ) ;
    return(r_ans);
} 
