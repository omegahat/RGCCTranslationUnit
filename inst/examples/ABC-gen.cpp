#include <RConverters.h> 
#include "ABC.h" 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_B_B_void() ;
    SEXP R_B_B_int(SEXP r_val) ;
    SEXP R_B_B_bool(SEXP r_v) ;
    SEXP R_B_square(SEXP r_This) ;
    SEXP R_B_shift(SEXP r_This, SEXP r_a, SEXP r_b) ;
    SEXP R_B_bob_p1B(SEXP r_This) ;
    SEXP R_B_bob_p1B_int(SEXP r_This, SEXP r_x) ;
    SEXP R_B_bob_p1B_double(SEXP r_This, SEXP r_x) ;
    SEXP R_B_bob_p1B_long_int(SEXP r_This, SEXP r_x) ;
    SEXP R_B_StaticMethod(SEXP r_x) ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_B_void()
{
	
		SEXP r_ans = R_NilValue;
		 B * ans ;
	
		 
	
		ans = new B (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "BPtr" , "BPtr" ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_B_int(SEXP r_val)
{
	
		SEXP r_ans = R_NilValue;
		int val ;
		 B * ans ;
	
		 val  =  asInteger( r_val ) ;
	
		ans = new B ( val );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "BPtr" , "BPtr" ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_B_bool(SEXP r_v)
{
	
		SEXP r_ans = R_NilValue;
		bool v ;
		 B * ans ;
	
		 v  =  asLogical( r_v ) ;
	
		ans = new B ( v );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "BPtr" , "BPtr" ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_square(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	
		ans = This -> square (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_shift(SEXP r_This, SEXP r_a, SEXP r_b)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		int a ;
		int b ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
		 a  =  asInteger( r_a ) ;
		 b  =  asInteger( r_b ) ;
	
		ans = This -> shift ( a, b );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_bob_p1B(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
	
		ans = This -> bob (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_bob_p1B_int(SEXP r_This, SEXP r_x)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		int x ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
		 x  =  asInteger( r_x ) ;
	
		ans = This -> bob ( x );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_bob_p1B_double(SEXP r_This, SEXP r_x)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		double x ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
		 x  =  asReal( r_x ) ;
	
		ans = This -> bob ( x );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_bob_p1B_long_int(SEXP r_This, SEXP r_x)
{
	
		SEXP r_ans = R_NilValue;
		B * This ;
		long int x ;
		 int ans ;
	
		 This  =  (B *) R_getNativeReference(r_This, "BPtr", "BPtr") ;
		 x  =  asInteger( r_x ) ;
	
		ans = This -> bob ( x );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_StaticMethod(SEXP r_x)
{
	
		SEXP r_ans = R_NilValue;
		int x ;
		 int ans ;
	
		 x  =  asInteger( r_x ) ;
	
		ans = B :: StaticMethod ( x );
		 r_ans =  ScalarInteger ( ans ) ;
	
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


