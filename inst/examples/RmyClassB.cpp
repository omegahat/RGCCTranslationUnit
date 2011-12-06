#include "RConverters.h" 
#include "ABC.h" 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_A_A_void() ;
    SEXP R_A_A_int(SEXP r_x) ;
    SEXP R_A_A_int_double(SEXP r_x, SEXP r_y) ;
    SEXP R_A_getX(SEXP r_this) ;
    SEXP R_A_setX(SEXP r_this, SEXP r_val) ;
    SEXP R_A_foo(SEXP r_this, SEXP r_x) ;
}
SEXP
R_A_A_void()
{

    SEXP r_ans = R_NilValue;
    A * ans ;


    ans =  new A (  );
    r_ans =  R_MAKE_REF_TYPE( ans ,  A ) ;

    return(r_ans);
}
SEXP
R_A_A_int(SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    int x ;
    A * ans ;

    x  =  INTEGER( r_x )[0] ;

    ans =  new A ( x );
    r_ans =  R_MAKE_REF_TYPE( ans ,  A ) ;

    return(r_ans);
}
SEXP
R_A_A_int_double(SEXP r_x, SEXP r_y)
{

    SEXP r_ans = R_NilValue;
    int x ;
    double y ;
    A * ans ;

    x  =  INTEGER( r_x )[0] ;
    y  =  REAL( r_y )[0] ;

    ans =  new A ( x, y );
    r_ans =  R_MAKE_REF_TYPE( ans ,  A ) ;

    return(r_ans);
}
SEXP
R_A_getX(SEXP r_this)
{

    SEXP r_ans = R_NilValue;
    A * This ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  A ) ;

    ans =  This -> getX (  );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_A_setX(SEXP r_this, SEXP r_val)
{

    SEXP r_ans = R_NilValue;
    A * This ;
    int val ;

    This  =  R_GET_REF_TYPE( r_this ,  A ) ;
    val  =  INTEGER( r_val )[0] ;

     This -> setX ( val );

    return(r_ans);
}
SEXP
R_A_foo(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    A * This ;
    int x ;

    This  =  R_GET_REF_TYPE( r_this ,  A ) ;
    x  =  INTEGER( r_x )[0] ;

     This -> foo ( x );

    return(r_ans);
}
/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_B_B_void() ;
    SEXP R_B_B_int(SEXP r_val) ;
    SEXP R_B_B_bool(SEXP r_v) ;
    SEXP R_B_square(SEXP r_this) ;
    SEXP R_B_shift(SEXP r_this, SEXP r_a, SEXP r_b) ;
    SEXP R_B_bob_p1B(SEXP r_this) ;
    SEXP R_B_bob_p1B_int(SEXP r_this, SEXP r_x) ;
    SEXP R_B_bob_p1B_double(SEXP r_this, SEXP r_x) ;
    SEXP R_B_bob_p1B_long_int(SEXP r_this, SEXP r_x) ;
}
SEXP
R_B_B_void()
{

    SEXP r_ans = R_NilValue;
    B * ans ;


    ans =  new B (  );
    r_ans =  R_MAKE_REF_TYPE( ans ,  B ) ;

    return(r_ans);
}
SEXP
R_B_B_int(SEXP r_val)
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
R_B_B_bool(SEXP r_v)
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
R_B_square(SEXP r_this)
{

    SEXP r_ans = R_NilValue;
    B * This ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;

    ans =  This -> square (  );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_B_shift(SEXP r_this, SEXP r_a, SEXP r_b)
{

    SEXP r_ans = R_NilValue;
    B * This ;
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
SEXP
R_B_bob_p1B(SEXP r_this)
{

    SEXP r_ans = R_NilValue;
    B * This ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;

    ans =  This -> bob (  );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_B_bob_p1B_int(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    B * This ;
    int x ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;
    x  =  INTEGER( r_x )[0] ;

    ans =  This -> bob ( x );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_B_bob_p1B_double(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    B * This ;
    double x ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;
    x  =  REAL( r_x )[0] ;

    ans =  This -> bob ( x );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_B_bob_p1B_long_int(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    B * This ;
    long int x ;
    int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  B ) ;
    x  =  INTEGER( r_x )[0] ;

    ans =  This -> bob ( x );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_C_bar(SEXP r_this, SEXP r_x) ;
    SEXP R_C_foo(SEXP r_this, SEXP r_x) ;
}
SEXP
R_C_bar(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    C * This ;
    int x ;
    long int ans ;

    This  =  R_GET_REF_TYPE( r_this ,  C ) ;
    x  =  INTEGER( r_x )[0] ;

    ans =  This -> bar ( x );
    r_ans =  ScalarInteger( ans ) ;

    return(r_ans);
}
SEXP
R_C_foo(SEXP r_this, SEXP r_x)
{

    SEXP r_ans = R_NilValue;
    C * This ;
    int x ;

    This  =  R_GET_REF_TYPE( r_this ,  C ) ;
    x  =  INTEGER( r_x )[0] ;

     This -> foo ( x );

    return(r_ans);
}
