#include "Rinternals.h"
#include "myClass.cpp"

SEXP R_make_reference(void *, const char *);
SEXP R_get_reference(void *, const char *);

#define R_MAKE_REF_TYPE(arg, klass) \
     R_make_reference((void *) arg, #klass)
#define R_GET_REF_TYPE(val, klass) \
    (klass *) R_get_reference(val, #klass)

SEXP
R_B_void_B(SEXP r_this)
{

    SEXP r_ans = R_NilValue;
    B * ans ;


    ans =  new B (  );
    r_ans =  R_MAKE_REF_TYPE( ans ,  B ) ;

    return(r_ans);
}
SEXP
R_B_int_B(SEXP r_this, SEXP r_val)
{

    SEXP r_ans = R_NilValue;
    int val ;
    B * ans ;

    val  =  INTEGER( r_val )[0] ;

    ans =  new B ( val );
    r_ans =  R_MAKE_REF_TYPE( ans ,  B ) ;

    return(r_ans);
}
SEXP
R_B_bool_B(SEXP r_this, SEXP r_v)
{

    SEXP r_ans = R_NilValue;
    bool v ;
    B * ans ;

    v  =  LOGICAL( r_v )[0] ;

    ans =  new B ( v );
    r_ans =  R_MAKE_REF_TYPE( ans ,  B ) ;

    return(r_ans);
}
SEXP
R_square_B(SEXP r_this)
{

    SEXP r_ans = R_NilValue;
    B * This;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;

    ans =  This -> square (  );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_shift_B(SEXP r_this, SEXP r_a, SEXP r_b)
{

    SEXP r_ans = R_NilValue;
    B * This;
    int a ;
    int b ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;
    a  =  INTEGER( r_a )[0] ;
    b  =  INTEGER( r_b )[0] ;

    ans =  This -> shift ( a, b );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
