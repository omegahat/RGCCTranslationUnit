#include "Rglobals.h" 

SEXP
R_useInt(SEXP r_x)
{

    SEXP r_ans = R_NilValue;
   int x ;

        x  =  INTEGER( r_x )[0] ;

      useInt ( x ) ;

    return(r_ans);
}

SEXP
R_useA(SEXP r_val)
{

    SEXP r_ans = R_NilValue;
   A val ;

        val  =  DEREF_REF( r_val ,  A ) ;

      useA ( val ) ;

    return(r_ans);
}

SEXP
R_useAref(SEXP r_val)
{

    SEXP r_ans = R_NilValue;
   A * val ;

        val  =  R_GET_REF_TYPE( r_val ,  A  ) ;

      useAref ( val ) ;

    return(r_ans);
}

SEXP
R_update_aref()
{

    SEXP r_ans = R_NilValue;

    

      update_aref (  ) ;

    return(r_ans);
}

SEXP
R_update_a()
{

    SEXP r_ans = R_NilValue;

    

      update_a (  ) ;

    return(r_ans);
}

SEXP
R_update_i()
{

    SEXP r_ans = R_NilValue;

    

      update_i (  ) ;

    return(r_ans);
}
SEXP R_copyStruct_A ( A   *value) 
{
	 SEXP r_ans = R_NilValue, klass;
	 klass = MAKE_CLASS("A");
	 if(klass == R_NilValue) {
	    PROBLEM "Cannot find R class A "
	     ERROR;
	 }
	 

	 PROTECT(klass);
	 PROTECT(r_ans = NEW(klass));

	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("x"), ScalarInteger ( value -> x ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("y"), ScalarReal( value -> y ) ));
	 UNPROTECT( 4 );
	 
	 return(r_ans);
}
SEXP
R_ARef_get_x (SEXP r_obj  )
{
	 A *obj ;
	 obj = ( A * ) R_getNativeReference(r_obj,  "A" , "A" );
	 return( ScalarInteger ( obj -> x ) );
}
SEXP
R_ARef_get_y (SEXP r_obj  )
{
	 A *obj ;
	 obj = ( A * ) R_getNativeReference(r_obj,  "A" , "A" );
	 return( ScalarReal( obj -> y ) );
}
SEXP
R_ARef_set_x (SEXP r_obj , SEXP r_value )
{
	 A *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( A * ) R_getNativeReference(r_obj,  "A" , "A" );
	 obj -> x = value ;
	 return(r_obj);
}
SEXP
R_ARef_set_y (SEXP r_obj , SEXP r_value )
{
	 A *obj ;
	 double value ;
	 value =  REAL( r_value )[0] ;
	 obj = ( A * ) R_getNativeReference(r_obj,  "A" , "A" );
	 obj -> y = value ;
	 return(r_obj);
}


SEXP
R_coerce_A_ARef ( SEXP r_from )
{
	A * ans ;
	
	SEXP tmp;
	
	ans = ( A  *) malloc( sizeof( A ));
	tmp = GET_SLOT(r_from, Rf_install("x"));
	ans->x = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("y"));
	ans->y = REAL( tmp )[0] ;
	
	return ( R_MAKE_REF_TYPE(ans,  ARef ) );
}
 
SEXP
R_coerce_ARef_A ( SEXP from )
{
	A * ans ;
	ans = R_GET_REF_TYPE(from, A  );
	return( R_copyStruct_A ( ans ) );
} 
SEXP
R_new_A ()
{
	SEXP r_ans = R_NilValue;
	A   * ans;
	
	ans =  calloc (1, sizeof( A   ));
	 r_ans = R_MAKE_REF_TYPE( ans,  ARef );
	return(r_ans);
} 
