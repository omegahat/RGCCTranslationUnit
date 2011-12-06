#include "RConverters.h" 
#include "struct.h" 
SEXP R_copyStruct_Named ( Named   *value) 
{
	 SEXP r_ans = R_NilValue, klass;
	 klass = MAKE_CLASS("Named");
	 if(klass == R_NilValue) {
	    PROBLEM "Cannot find R class Named "
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
R_NamedRef_get_x (SEXP r_obj  )
{
	 Named *obj ;
	 obj = ( Named * ) R_getNativeReference(r_obj,  "Named" , "Named" );
	 return( ScalarInteger ( obj -> x ) );
}
SEXP
R_NamedRef_get_y (SEXP r_obj  )
{
	 Named *obj ;
	 obj = ( Named * ) R_getNativeReference(r_obj,  "Named" , "Named" );
	 return( ScalarReal( obj -> y ) );
}
SEXP
R_NamedRef_set_x (SEXP r_obj , SEXP r_value )
{
	 Named *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( Named * ) R_getNativeReference(r_obj,  "Named" , "Named" );
	 obj -> x = value ;
	 return(r_obj);
}
SEXP
R_NamedRef_set_y (SEXP r_obj , SEXP r_value )
{
	 Named *obj ;
	 double value ;
	 value =  REAL( r_value )[0] ;
	 obj = ( Named * ) R_getNativeReference(r_obj,  "Named" , "Named" );
	 obj -> y = value ;
	 return(r_obj);
}


SEXP
R_coerce_Named_NamedRef ( SEXP r_from )
{
	Named * ans ;
	
	SEXP tmp;
	
	ans = ( Named  *) malloc( sizeof( Named ));
	tmp = GET_SLOT(r_from, Rf_install("x"));
	ans->x = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("y"));
	ans->y = REAL( tmp )[0] ;
	
	return ( R_MAKE_REF_TYPE(ans,  NamedRef ) );
}
 
SEXP
R_coerce_NamedRef_Named ( SEXP from )
{
	Named * ans ;
	ans = R_GET_REF_TYPE(from, Named  );
	return( R_copyStruct_Named ( ans ) );
} 
SEXP
R_new_Named ()
{
	SEXP r_ans = R_NilValue;
	Named   * ans;
	
	ans =  calloc (1, sizeof( Named   ));
	 r_ans = R_MAKE_REF_TYPE( ans,  NamedRef );
	return(r_ans);
} 
SEXP R_copyStruct_struct Unnamed ( struct  struct Unnamed   *value) 
{
	 SEXP r_ans = R_NilValue, klass;
	 klass = MAKE_CLASS("struct Unnamed");
	 if(klass == R_NilValue) {
	    PROBLEM "Cannot find R class struct Unnamed "
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
R_struct UnnamedRef_get_x (SEXP r_obj  )
{
	 struct  struct Unnamed *obj ;
	 obj = ( struct  struct Unnamed * ) R_getNativeReference(r_obj,  "struct Unnamed" , "struct Unnamed" );
	 return( ScalarInteger ( obj -> x ) );
}
SEXP
R_struct UnnamedRef_get_y (SEXP r_obj  )
{
	 struct  struct Unnamed *obj ;
	 obj = ( struct  struct Unnamed * ) R_getNativeReference(r_obj,  "struct Unnamed" , "struct Unnamed" );
	 return( ScalarReal( obj -> y ) );
}
SEXP
R_struct UnnamedRef_set_x (SEXP r_obj , SEXP r_value )
{
	 struct  struct Unnamed *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( struct  struct Unnamed * ) R_getNativeReference(r_obj,  "struct Unnamed" , "struct Unnamed" );
	 obj -> x = value ;
	 return(r_obj);
}
SEXP
R_struct UnnamedRef_set_y (SEXP r_obj , SEXP r_value )
{
	 struct  struct Unnamed *obj ;
	 double value ;
	 value =  REAL( r_value )[0] ;
	 obj = ( struct  struct Unnamed * ) R_getNativeReference(r_obj,  "struct Unnamed" , "struct Unnamed" );
	 obj -> y = value ;
	 return(r_obj);
}


SEXP
R_coerce_struct Unnamed_struct UnnamedRef ( SEXP r_from )
{
	 * ans ;
	
	SEXP tmp;
	
	ans = ( struct Unnamed  *) malloc( sizeof( struct Unnamed ));
	tmp = GET_SLOT(r_from, Rf_install("x"));
	ans->x = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("y"));
	ans->y = REAL( tmp )[0] ;
	
	return ( R_MAKE_REF_TYPE(ans,  UnnamedRef ) );
}
 
SEXP
R_coerce_struct UnnamedRef_struct Unnamed ( SEXP from )
{
	 * ans ;
	ans = R_GET_REF_TYPE(from, struct Unnamed  );
	return( R_copyStruct_struct Unnamed ( ans ) );
} 
SEXP
R_new_struct Unnamed ()
{
	SEXP r_ans = R_NilValue;
	struct  struct Unnamed   * ans;
	
	ans =  calloc (1, sizeof( struct  struct Unnamed   ));
	 r_ans = R_MAKE_REF_TYPE( ans,  UnnamedRef );
	return(r_ans);
} 
SEXP R_copyStruct_Both ( Both   *value) 
{
	 SEXP r_ans = R_NilValue, klass;
	 klass = MAKE_CLASS("Both");
	 if(klass == R_NilValue) {
	    PROBLEM "Cannot find R class Both "
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
R_BothRef_get_x (SEXP r_obj  )
{
	 Both *obj ;
	 obj = ( Both * ) R_getNativeReference(r_obj,  "Both" , "Both" );
	 return( ScalarInteger ( obj -> x ) );
}
SEXP
R_BothRef_get_y (SEXP r_obj  )
{
	 Both *obj ;
	 obj = ( Both * ) R_getNativeReference(r_obj,  "Both" , "Both" );
	 return( ScalarReal( obj -> y ) );
}
SEXP
R_BothRef_set_x (SEXP r_obj , SEXP r_value )
{
	 Both *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( Both * ) R_getNativeReference(r_obj,  "Both" , "Both" );
	 obj -> x = value ;
	 return(r_obj);
}
SEXP
R_BothRef_set_y (SEXP r_obj , SEXP r_value )
{
	 Both *obj ;
	 double value ;
	 value =  REAL( r_value )[0] ;
	 obj = ( Both * ) R_getNativeReference(r_obj,  "Both" , "Both" );
	 obj -> y = value ;
	 return(r_obj);
}


SEXP
R_coerce_Both_BothRef ( SEXP r_from )
{
	Both * ans ;
	
	SEXP tmp;
	
	ans = ( Both  *) malloc( sizeof( Both ));
	tmp = GET_SLOT(r_from, Rf_install("x"));
	ans->x = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("y"));
	ans->y = REAL( tmp )[0] ;
	
	return ( R_MAKE_REF_TYPE(ans,  BothRef ) );
}
 
SEXP
R_coerce_BothRef_Both ( SEXP from )
{
	Both * ans ;
	ans = R_GET_REF_TYPE(from, Both  );
	return( R_copyStruct_Both ( ans ) );
} 
SEXP
R_new_Both ()
{
	SEXP r_ans = R_NilValue;
	Both   * ans;
	
	ans =  calloc (1, sizeof( Both   ));
	 r_ans = R_MAKE_REF_TYPE( ans,  BothRef );
	return(r_ans);
} 
