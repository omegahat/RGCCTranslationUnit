#include "Classes.h" 
#include <RDerivedClass.h> 




/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_MyClass_draw_p1MyClass_int(SEXP r_This, SEXP r_x) ;
    SEXP R_MyClass_Scale_p1MyClass(SEXP r_This) ;
    SEXP R_MyClass_Scale_p1MyClass_int_double_p1char(SEXP r_This, SEXP r_a, SEXP r_b, SEXP r_c) ;
    SEXP R_MyClass_p_p1MyClass_int_int(SEXP r_This, SEXP r_x, SEXP r_y) ;
    SEXP R_MyClass_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_draw_p1MyClass_int(SEXP r_This, SEXP r_x)
{
	
		SEXP r_ans = R_NilValue;
		MyClass * This ;
		int x ;
	
		 This  =  (MyClass *) R_getNativeReference(r_This, "MyClass", NULL) ;
		 x  =  asInteger( r_x ) ;
	
		This -> draw ( x );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_Scale_p1MyClass(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		MyClass * This ;
	
		 This  =  (MyClass *) R_getNativeReference(r_This, "MyClass", NULL) ;
	
		This -> Scale (  );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_Scale_p1MyClass_int_double_p1char(SEXP r_This, SEXP r_a, SEXP r_b, SEXP r_c)
{
	
		SEXP r_ans = R_NilValue;
		MyClass * This ;
		int a ;
		double b ;
		const char * c ;
	
		 This  =  (MyClass *) R_getNativeReference(r_This, "MyClass", NULL) ;
		 a  =  asInteger( r_a ) ;
		 b  =  ( double ) asReal( r_b ) ;
		 c  =  GET_LENGTH( r_c ) > 0 ? CHAR(STRING_ELT( r_c , 0)) :  NULL ;
	
		This -> Scale ( a, b, c );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_p_p1MyClass_int_int(SEXP r_This, SEXP r_x, SEXP r_y)
{
	
		SEXP r_ans = R_NilValue;
		MyClass * This ;
		int x ;
		int y ;
	
		 This  =  (MyClass *) R_getNativeReference(r_This, "MyClass", NULL) ;
		 x  =  asInteger( r_x ) ;
		 y  =  asInteger( r_y ) ;
	
		This -> p ( x, y );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_new()
{
	
		SEXP r_ans = R_NilValue;
		 MyClass * ans ;
	
		 
	
		ans = new MyClass (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "MyClass" , "MyClass" ) ;
	
		 return(r_ans);
}
 




extern "C"
SEXP
R_MyClass_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	MyClass  *ptr = dynamic_cast< MyClass *>( ( MyClass *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	MyClass * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<MyClass*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<MyClass*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<MyClass*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<MyClass*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to MyClass"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "MyClassPtr" , "MyClassPtr" ));
} 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_get_field1 (SEXP r_obj  )
{
	const MyClass *obj ;
	obj = ( const MyClass * )  R_getNativeReference(r_obj, "MyClass", NULL) ;
	return( ScalarInteger ( obj -> field1 ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_get_field2 (SEXP r_obj  )
{
	const MyClass *obj ;
	obj = ( const MyClass * )  R_getNativeReference(r_obj, "MyClass", NULL) ;
	return( ScalarReal( obj -> field2 ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_set_field1 (SEXP r_obj , SEXP r_value )
{
	MyClass *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( MyClass * )  R_getNativeReference(r_obj, "MyClass", NULL) ;
	obj -> field1 = value ;
	return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyClass_set_field2 (SEXP r_obj , SEXP r_value )
{
	MyClass *obj ;
	double value ;
	value =  ( double ) asReal( r_value ) ;
	obj = ( MyClass * )  R_getNativeReference(r_obj, "MyClass", NULL) ;
	obj -> field2 = value ;
	return(r_obj);
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_X_x_p1X(SEXP r_This) ;
    SEXP R_X_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_X_x_p1X(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		X * This ;
		 int ans ;
	
		 This  =  (X *) R_getNativeReference(r_This, "X", NULL) ;
	
		ans = This -> x (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_X_new()
{
	
		SEXP r_ans = R_NilValue;
		 X * ans ;
	
		 
	
		ans = new X (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "X" , "X" ) ;
	
		 return(r_ans);
}
 




extern "C"
SEXP
R_X_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	X  *ptr = dynamic_cast< X *>( ( X *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	X * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<X*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<X*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<X*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<X*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to X"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "XPtr" , "XPtr" ));
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_A_foo_p1A(SEXP r_This) ;
    SEXP R_A_mine_p1A(SEXP r_This, SEXP ) ;
    SEXP R_A_yours_p1A(SEXP r_This) ;
    SEXP R_A_bar_p1A(SEXP r_This) ;
    SEXP R_A_p_p1A_p1char(SEXP r_This, SEXP r_name) ;
    SEXP R_A_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_foo_p1A(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		ans = This -> foo (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_mine_p1A(SEXP r_This, SEXP r_whichClass)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;

                const char *className = CHAR(STRING_ELT(r_whichClass, 0));
                if(strcmp(className, "A") == 0)  {
   	  	    ans = This -> mine (  );
                } else if(strcmp(className, "B") == 0) {
                   B * tmp =  dynamic_cast<B*>(This);
                   ans = tmp->B::mine();
                } else if(strcmp(className, "C") == 0) {
                   C * tmp =  dynamic_cast<C*>(This);
                   ans = tmp->C::mine();
                }


		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_yours_p1A(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		ans = This -> yours (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_bar_p1A(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		This -> bar (  );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_p_p1A_p1char(SEXP r_This, SEXP r_name)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		const char * name ;
		 double ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
		 name  =  GET_LENGTH( r_name ) > 0 ? CHAR(STRING_ELT( r_name , 0)) :  NULL ;
	
		ans = This -> p ( name );
		 r_ans =  ScalarReal( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_new()
{
	
		SEXP r_ans = R_NilValue;
		 A * ans ;
	
		 
	
		ans = new A (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "A" , "A" ) ;
	
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


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_get_a (SEXP r_obj  )
{
	const A *obj ;
	obj = ( const A * )  R_getNativeReference(r_obj, "A", NULL) ;
	return( ScalarInteger ( obj -> a ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_A_set_a (SEXP r_obj , SEXP r_value )
{
	A *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( A * )  R_getNativeReference(r_obj, "A", NULL) ;
	obj -> a = value ;
	return(r_obj);
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_Y_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Y_new()
{
	
		SEXP r_ans = R_NilValue;
		 Y * ans ;
	
		 
	
		ans = new Y (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "Y" , "Y" ) ;
	
		 return(r_ans);
}
 




extern "C"
SEXP
R_Y_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	Y  *ptr = dynamic_cast< Y *>( ( Y *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	Y * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<Y*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<Y*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<Y*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<Y*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to Y"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "YPtr" , "YPtr" ));
} 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Y_get_y_field (SEXP r_obj  )
{
	const Y *obj ;
	obj = ( const Y * )  R_getNativeReference(r_obj, "Y", NULL) ;
	return( ScalarInteger ( obj -> y_field ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Y_get_field1 (SEXP r_obj  )
{
	const Y *obj ;
	obj = ( const Y * )  R_getNativeReference(r_obj, "Y", NULL) ;
	return( ScalarInteger ( obj -> field1 ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Y_set_y_field (SEXP r_obj , SEXP r_value )
{
	Y *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( Y * )  R_getNativeReference(r_obj, "Y", NULL) ;
	obj -> y_field = value ;
	return(r_obj);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Y_set_field1 (SEXP r_obj , SEXP r_value )
{
	Y *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( Y * )  R_getNativeReference(r_obj, "Y", NULL) ;
	obj -> field1 = value ;
	return(r_obj);
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_B_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_new()
{
	
		SEXP r_ans = R_NilValue;
		 B * ans ;
	
		 
	
		ans = new B (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "B" , "B" ) ;
	
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


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_get_b (SEXP r_obj  )
{
	const B *obj ;
	obj = ( const B * )  R_getNativeReference(r_obj, "B", NULL) ;
	return( ScalarInteger ( obj -> b ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_B_set_b (SEXP r_obj , SEXP r_value )
{
	B *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( B * )  R_getNativeReference(r_obj, "B", NULL) ;
	obj -> b = value ;
	return(r_obj);
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_MyOtherClass_p_p1MyOtherClass_bool(SEXP r_This, SEXP r_b) ;
    SEXP R_MyOtherClass_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyOtherClass_p_p1MyOtherClass_bool(SEXP r_This, SEXP r_b)
{
	
		SEXP r_ans = R_NilValue;
		MyOtherClass * This ;
		bool b ;
	
		 This  =  (MyOtherClass *) R_getNativeReference(r_This, "MyOtherClass", NULL) ;
		 b  =  asLogical( r_b ) ;
	
		This -> p ( b );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyOtherClass_new()
{
	
		SEXP r_ans = R_NilValue;
		 MyOtherClass * ans ;
	
		 
	
		ans = new MyOtherClass (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "MyOtherClass" , "MyOtherClass" ) ;
	
		 return(r_ans);
}
 




extern "C"
SEXP
R_MyOtherClass_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	MyOtherClass  *ptr = dynamic_cast< MyOtherClass *>( ( MyOtherClass *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	MyOtherClass * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<MyOtherClass*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<MyOtherClass*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<MyOtherClass*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<MyOtherClass*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to MyOtherClass"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "MyOtherClassPtr" , "MyOtherClassPtr" ));
} 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyOtherClass_get_otherField1 (SEXP r_obj  )
{
	const MyOtherClass *obj ;
	obj = ( const MyOtherClass * )  R_getNativeReference(r_obj, "MyOtherClass", NULL) ;
	return( ScalarInteger ( obj -> otherField1 ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_MyOtherClass_set_otherField1 (SEXP r_obj , SEXP r_value )
{
	MyOtherClass *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( MyOtherClass * )  R_getNativeReference(r_obj, "MyOtherClass", NULL) ;
	obj -> otherField1 = value ;
	return(r_obj);
} 


/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_Z_Z_void() ;
    SEXP R_Z_getField1_y_p1Z(SEXP r_This) ;
    SEXP R_Z_getField1_myclass_p1Z(SEXP r_This) ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Z_Z_void()
{
	
		SEXP r_ans = R_NilValue;
		 Z * ans ;
	
		 
	
		ans = new Z (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "Z" , "Z" ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Z_getField1_y_p1Z(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		Z * This ;
		 int ans ;
	
		 This  =  (Z *) R_getNativeReference(r_This, "Z", NULL) ;
	
		ans = This -> getField1_y (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_Z_getField1_myclass_p1Z(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		Z * This ;
		 int ans ;
	
		 This  =  (Z *) R_getNativeReference(r_This, "Z", NULL) ;
	
		ans = This -> getField1_myclass (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 




extern "C"
SEXP
R_Z_cast(SEXP r_obj, SEXP r_how)
{
	CastType how = static_cast<CastType>(asInteger(r_how));
	Z  *ptr = dynamic_cast< Z *>( ( Z *) R_getNativeReference(r_obj, (const char *) NULL, (const char *) NULL));
	Z * ans;
	switch(how) {
		 case STATIC :
		 ans = static_cast<Z*>(ptr);
		 break;
		 case DYNAMIC :
		 ans = dynamic_cast<Z*>(ptr);
		 break;
		 case CONST :
		 ans = const_cast<Z*>(ptr);
		 break;
		 case REINTERPRET :
		 ans = reinterpret_cast<Z*>(ptr);
		 break;
	}
	if(!ans) {
	   PROBLEM "failed to cast to Z"
	    ERROR;
	}
	return(R_createNativeReference( (void *)  ans ,  "ZPtr" , "ZPtr" ));
} 




/* Machine generated code. Do not edit directly. */ 

extern "C" {
    SEXP R_C_cmethod_p1C(SEXP r_This) ;
    SEXP R_C_showFields_p1C(SEXP r_This) ;
    SEXP R_C_new() ;
}
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_C_cmethod_p1C(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		C * This ;
		 int ans ;
	
		 This  =  (C *) R_getNativeReference(r_This, "C", NULL) ;
	
		ans = This -> cmethod (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_C_showFields_p1C(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		C * This ;
		 int ans ;
	
		 This  =  (C *) R_getNativeReference(r_This, "C", NULL) ;
	
		ans = This -> showFields (  );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_C_new()
{
	
		SEXP r_ans = R_NilValue;
		 C * ans ;
	
		 
	
		ans = new C (  );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "C" , "C" ) ;
	
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


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_C_get_b (SEXP r_obj  )
{
	const C *obj ;
	obj = ( const C * )  R_getNativeReference(r_obj, "C", NULL) ;
	return( ScalarInteger ( obj -> b ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_C_set_b (SEXP r_obj , SEXP r_value )
{
	C *obj ;
	int value ;
	value =  asInteger( r_value ) ;
	obj = ( C * )  R_getNativeReference(r_obj, "C", NULL) ;
	obj -> b = value ;
	return(r_obj);
} 


