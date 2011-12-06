#include "dispatch.h" 
#include <Rinternals.h> 
#include <Rdefines.h> 
#include "RConverters.h" 
/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_A_foo_p1A_int(SEXP r_This, SEXP r_x) ;
    SEXP R_A_foo_p1A_double(SEXP r_This, SEXP r_x) ;
    SEXP R_A_bar_p1A_int(SEXP r_This, SEXP r_x) ;
    SEXP R_A_bar_p1A_int_double(SEXP r_This, SEXP r_a, SEXP r_b) ;
    SEXP R_A_multi_p1A_int_double(SEXP r_This, SEXP r_a, SEXP r_b) ;
    SEXP R_A_staticMethod() ;
    SEXP R_A_other(SEXP r_This) ;
    SEXP R_A_new() ;
}
/* dispatch.cc:5 */
extern "C"
SEXP
R_A_foo_p1A_int(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	A * This ;
	int x ;
	 int ans ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;
	 x  =  asInteger( r_x ) ;

	ans = This -> foo ( x );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:10 */
extern "C"
SEXP
R_A_foo_p1A_double(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	A * This ;
	double x ;
	 int ans ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;
	 x  =  asReal( r_x ) ;

	ans = This -> foo ( x );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:45 */
extern "C"
SEXP
R_A_bar_p1A_int(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	A * This ;
	int x ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;
	 x  =  asInteger( r_x ) ;

	This -> bar ( x );

	 return(r_ans);
}
/* dispatch.cc:50 */
extern "C"
SEXP
R_A_bar_p1A_int_double(SEXP r_This, SEXP r_a, SEXP r_b)
{

	SEXP r_ans = R_NilValue;
	A * This ;
	int a ;
	double b ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;
	 a  =  asInteger( r_a ) ;
	 b  =  asReal( r_b ) ;

	This -> bar ( a, b );

	 return(r_ans);
}
/* dispatch.cc:68 */
extern "C"
SEXP
R_A_multi_p1A_int_double(SEXP r_This, SEXP r_a, SEXP r_b)
{

	SEXP r_ans = R_NilValue;
	A * This ;
	int a ;
	double b ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;
	 a  =  asInteger( r_a ) ;
	 b  =  asReal( r_b ) ;

	This -> multi ( a, b );

	 return(r_ans);
}
/* dispatch.cc:98 */
extern "C"
SEXP
R_A_staticMethod()
{

	SEXP r_ans = R_NilValue;

	 

	A :: staticMethod (  );

	 return(r_ans);
}
/* dispatch.cc:103 */
extern "C"
SEXP
R_A_other(SEXP r_This)
{

	SEXP r_ans = R_NilValue;
	A * This ;

	 This  =  (A *) R_getNativeReference(r_This, "APtr", "APtr") ;

	This -> other (  );

	 return(r_ans);
}
/* artificially constructed */
extern "C"
SEXP
R_A_new()
{

	SEXP r_ans = R_NilValue;
	 A * ans ;

	 

	ans = new A (  );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "APtr" , "APtr" ) ;

	 return(r_ans);
}




extern "C"
SEXP
R_A_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	A  *ptr = dynamic_cast< A *>( ( A *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	A * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<A*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<A*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<A*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<A*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to A"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "APtr" , "APtr" ));
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_B_foo_p1B_int_double_int(SEXP r_This, SEXP r_x, SEXP r_y, SEXP r_z) ;
    SEXP R_B_foo_p1B_int(SEXP r_This, SEXP r_x, SEXP r__inherited) ;
    SEXP R_B_foo_p1B_double(SEXP r_This, SEXP r_x) ;
    SEXP R_B_foo_p1B_p1char(SEXP r_This, SEXP r_u1822) ;
    SEXP R_B_bar_p1B_int(SEXP r_This, SEXP r_x, SEXP r__inherited) ;
    SEXP R_B_new() ;
}
/* dispatch.cc:25 */
extern "C"
SEXP
R_B_foo_p1B_int_double_int(SEXP r_This, SEXP r_x, SEXP r_y, SEXP r_z)
{

	SEXP r_ans = R_NilValue;
	B * This ;
	int x ;
	double y ;
	int z ;
	 int ans ;

	 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	 x  =  asInteger( r_x ) ;
	 y  =  asReal( r_y ) ;
	 z  =  asInteger( r_z ) ;

	ans = This -> foo ( x, y, z );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:15 */
extern "C"
SEXP
R_B_foo_p1B_int(SEXP r_This, SEXP r_x, SEXP r__inherited)
{

	SEXP r_ans = R_NilValue;
	B * This ;
	int x ;
	 int ans ;

	 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	 x  =  asInteger( r_x ) ;

	 if(GET_LENGTH(r__inherited) == 0
	     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
	              // default call to own or inherited method.
	      This-> foo ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
	            This-> A :: foo ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == STRSXP) {
	               // use the names to find out which one.
	 
	 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
	 	if(strcmp(className, "A") == 0)
	 	 	 ans = This-> A :: foo ( x ) ;
	 	 else {
	 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"foo\""
	 	 	 WARN;
	 	 }
	 }
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:20 */
extern "C"
SEXP
R_B_foo_p1B_double(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	B * This ;
	double x ;
	 int ans ;

	 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	 x  =  asReal( r_x ) ;

	ans = This -> foo ( x );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:30 */
extern "C"
SEXP
R_B_foo_p1B_p1char(SEXP r_This, SEXP r_u1822)
{

	SEXP r_ans = R_NilValue;
	B * This ;
	char * u1822 ;
	 int ans ;

	 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	 

	ans = This -> foo ( u1822 );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:55 */
extern "C"
SEXP
R_B_bar_p1B_int(SEXP r_This, SEXP r_x, SEXP r__inherited)
{

	SEXP r_ans = R_NilValue;
	B * This ;
	int x ;

	 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	 x  =  asInteger( r_x ) ;

	 if(GET_LENGTH(r__inherited) == 0
	     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
	              // default call to own or inherited method.
	      This-> bar ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
	            This-> A :: bar ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == STRSXP) {
	               // use the names to find out which one.
	 
	 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
	 	if(strcmp(className, "A") == 0)
	 	 	  This-> A :: bar ( x ) ;
	 	 else {
	 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"bar\""
	 	 	 WARN;
	 	 }
	 }

	 return(r_ans);
}
/* artificially constructed */
extern "C"
SEXP
R_B_new()
{

	SEXP r_ans = R_NilValue;
	 B * ans ;

	 

	ans = new B (  );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "BPtr" , "BPtr" ) ;

	 return(r_ans);
}




extern "C"
SEXP
R_B_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	B  *ptr = dynamic_cast< B *>( ( B *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	B * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<B*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<B*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<B*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<B*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to B"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "BPtr" , "BPtr" ));
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_C_foo_p1C_int(SEXP r_This, SEXP r_x) ;
    SEXP R_C_foo_p1C_double(SEXP r_This, SEXP r_x) ;
    SEXP R_C_bar_p1C_double_int_int(SEXP r_This, SEXP r_f, SEXP r_g, SEXP r_h) ;
    SEXP R_C_multi_p1C_int_double(SEXP r_This, SEXP r_a, SEXP r_b) ;
    SEXP R_C_new() ;
}
/* dispatch.cc:35 */
extern "C"
SEXP
R_C_foo_p1C_int(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	C * This ;
	int x ;
	 int ans ;

	 This  =  (C *) R_getNativeReference(r_This, "CPtr", "CPtr") ;
	 x  =  asInteger( r_x ) ;

	ans = This -> foo ( x );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:40 */
extern "C"
SEXP
R_C_foo_p1C_double(SEXP r_This, SEXP r_x)
{

	SEXP r_ans = R_NilValue;
	C * This ;
	double x ;
	 int ans ;

	 This  =  (C *) R_getNativeReference(r_This, "CPtr", "CPtr") ;
	 x  =  asReal( r_x ) ;

	ans = This -> foo ( x );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:61 */
extern "C"
SEXP
R_C_bar_p1C_double_int_int(SEXP r_This, SEXP r_f, SEXP r_g, SEXP r_h)
{

	SEXP r_ans = R_NilValue;
	C * This ;
	double f ;
	int g ;
	int h ;
	 int ans ;

	 This  =  (C *) R_getNativeReference(r_This, "CPtr", "CPtr") ;
	 f  =  asReal( r_f ) ;
	 g  =  asInteger( r_g ) ;
	 h  =  asInteger( r_h ) ;

	ans = This -> bar ( f, g, h );
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* dispatch.cc:73 */
extern "C"
SEXP
R_C_multi_p1C_int_double(SEXP r_This, SEXP r_a, SEXP r_b)
{

	SEXP r_ans = R_NilValue;
	C * This ;
	int a ;
	double b ;

	 This  =  (C *) R_getNativeReference(r_This, "CPtr", "CPtr") ;
	 a  =  asInteger( r_a ) ;
	 b  =  asReal( r_b ) ;

	This -> multi ( a, b );

	 return(r_ans);
}
/* artificially constructed */
extern "C"
SEXP
R_C_new()
{

	SEXP r_ans = R_NilValue;
	 C * ans ;

	 

	ans = new C (  );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "CPtr" , "CPtr" ) ;

	 return(r_ans);
}




extern "C"
SEXP
R_C_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	C  *ptr = dynamic_cast< C *>( ( C *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	C * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<C*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<C*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<C*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<C*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to C"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "CPtr" , "CPtr" ));
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_D_foo_p1D_int(SEXP r_This, SEXP r_x, SEXP r__inherited) ;
    SEXP R_D_new() ;
}
/* dispatch.cc:83 */
extern "C"
SEXP
R_D_foo_p1D_int(SEXP r_This, SEXP r_x, SEXP r__inherited)
{

	SEXP r_ans = R_NilValue;
	D * This ;
	int x ;
	 int ans ;

	 This  =  (D *) R_getNativeReference(r_This, "DPtr", "DPtr") ;
	 x  =  asInteger( r_x ) ;

	 if(GET_LENGTH(r__inherited) == 0
	     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
	              // default call to own or inherited method.
	      This-> foo ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
	            This-> B :: foo ( x ) ;
	 
	 } else if (TYPEOF(r__inherited) == STRSXP) {
	               // use the names to find out which one.
	 
	 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
	 	if(strcmp(className, "B") == 0)
	 	 	 ans = This-> B :: foo ( x ) ;
	 	else if(strcmp(className, "A") == 0)
	 	 	 ans = This-> A :: foo ( x ) ;
	 	 else {
	 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"foo\""
	 	 	 WARN;
	 	 }
	 }
	 r_ans =  ScalarInteger ( ans ) ;

	 return(r_ans);
}
/* artificially constructed */
extern "C"
SEXP
R_D_new()
{

	SEXP r_ans = R_NilValue;
	 D * ans ;

	 

	ans = new D (  );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "DPtr" , "DPtr" ) ;

	 return(r_ans);
}




extern "C"
SEXP
R_D_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	D  *ptr = dynamic_cast< D *>( ( D *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	D * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<D*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<D*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<D*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<D*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to D"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "DPtr" , "DPtr" ));
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_W_multi_p1W_int_double(SEXP r_This, SEXP r_x, SEXP r_y, SEXP r__inherited) ;
    SEXP R_W_new() ;
}
/* dispatch.cc:79 */
extern "C"
SEXP
R_W_multi_p1W_int_double(SEXP r_This, SEXP r_x, SEXP r_y, SEXP r__inherited)
{

	SEXP r_ans = R_NilValue;
	W * This ;
	int x ;
	double y ;

	 This  =  (W *) R_getNativeReference(r_This, "WPtr", "WPtr") ;
	 x  =  asInteger( r_x ) ;
	 y  =  asReal( r_y ) ;

	 if(GET_LENGTH(r__inherited) == 0
	     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
	              // default call to own or inherited method.
	      This-> multi ( x, y ) ;
	 
	 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
	            This-> A :: multi ( x, y ) ;
	 
	 } else if (TYPEOF(r__inherited) == STRSXP) {
	               // use the names to find out which one.
	 
	 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
	 	if(strcmp(className, "A") == 0)
	 	 	  This-> A :: multi ( x, y ) ;
	 	else if(strcmp(className, "C") == 0)
	 	 	  This-> C :: multi ( x, y ) ;
	 	 else {
	 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"multi\""
	 	 	 WARN;
	 	 }
	 }

	 return(r_ans);
}
/* artificially constructed */
extern "C"
SEXP
R_W_new()
{

	SEXP r_ans = R_NilValue;
	 W * ans ;

	 

	ans = new W (  );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "WPtr" , "WPtr" ) ;

	 return(r_ans);
}




extern "C"
SEXP
R_W_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	W  *ptr = dynamic_cast< W *>( ( W *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	W * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<W*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<W*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<W*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<W*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to W"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "WPtr" , "WPtr" ));
} 


