#include "Classes.h" 


#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RMyClass   :  public MyClass , public  NA {


public :
void    Scale (  ) ;

public:
/* Constructors */
RMyClass (   SEXP _r_methods) ;
public:
	 virtual ~ RMyClass ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_Scale_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_Scale_m )
        R_ReleaseObject( _R_Scale_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_Scale_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 3 ];
	 static const char * const methodTypes[ 3 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  3 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  3 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  3 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  3 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:



public:


};
 

 const char * const RMyClass ::methodNames[] = {
 		"Scale()",
		"new()",
		"~()" 
	};
 

 const char * const RMyClass ::methodTypes[] = {
 		"",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RMyClass (SEXP getTypes)
{
	SEXP ans;
	  ans = RMyClass :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RMyClass :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RMyClass :: ~ RMyClass ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RMyClass" , "RMyClass" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RMyClass_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RMyClass * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RMyClass ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RMyClass" , "RMyClass" ) ;
	
		 return(r_ans);
}
 
RMyClass :: RMyClass (   SEXP _r_methods)
    : MyClass (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RMyClass" , "RMyClass" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
void
RMyClass ::    Scale (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_Scale_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("Scale()");
	if(  fun == NULL || fun == R_NilValue) {
	    MyClass :: Scale (  );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RMyClass" , "RMyClass" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RMyClass::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  3 ) {
	   PROBLEM "must have  3  for  RMyClass "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "Scale()" , classMethods)) != NULL)) {
	    if(this-> _R_Scale_m )
	       R_ReleaseObject(this-> _R_Scale_m );
	
	    R_PreserveObject(this-> _R_Scale_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RMyClass::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 3 ));
	PROTECT(r_names = NEW_CHARACTER( 3 ));
	
	if(this-> _R_Scale_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_Scale_m );
	SET_STRING_ELT(r_names, i, mkChar( "Scale()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RMyClass_Scale_p1MyClass(SEXP r_This, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		MyClass * This ;
	
		 This  =  (MyClass *) R_getNativeReference(r_This, "MyClass", NULL) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> Scale (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> MyClass :: Scale (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "MyClass") == 0)
		 	 	  This-> MyClass :: Scale (  ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"Scale\""
		 	 	 WARN;
		 	 }
		 }
	
		 return(r_ans);
}
 

extern "C"
SEXP
R_RMyClass_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RMyClass * This;
	This = ( RMyClass *)  R_getNativeReference(r_This, "RMyClass", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RMyClass_setMethods (SEXP r_This, SEXP r_methods)
{
	RMyClass * This;
	This = ( RMyClass *)  R_getNativeReference(r_This, "RMyClass", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RMyClass :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RMyClass_set_R_sharedClassMethods (SEXP methods)
{
	RMyClass :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RMyClass_get_R_sharedClassMethods ()
{
	return( RMyClass :: get_R_sharedClassMethods());
} 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RX   :  public X , public  NA {



public:
/* Constructors */
RX (   SEXP _r_methods) ;
public:
	 virtual ~ RX ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 2 ];
	 static const char * const methodTypes[ 2 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  2 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  2 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  2 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  2 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:



public:


};
 

 const char * const RX ::methodNames[] = {
 		"new()",
		"~()" 
	};
 

 const char * const RX ::methodTypes[] = {
 		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RX (SEXP getTypes)
{
	SEXP ans;
	  ans = RX :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RX :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RX :: ~ RX ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RX" , "RX" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RX_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RX * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RX ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RX" , "RX" ) ;
	
		 return(r_ans);
}
 
RX :: RX (   SEXP _r_methods)
    : X (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RX" , "RX" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RX::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  2 ) {
	   PROBLEM "must have  2  for  RX "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RX::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 2 ));
	PROTECT(r_names = NEW_CHARACTER( 2 ));
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 


extern "C"
SEXP
R_RX_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RX * This;
	This = ( RX *)  R_getNativeReference(r_This, "RX", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RX_setMethods (SEXP r_This, SEXP r_methods)
{
	RX * This;
	This = ( RX *)  R_getNativeReference(r_This, "RX", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RX :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RX_set_R_sharedClassMethods (SEXP methods)
{
	RX :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RX_get_R_sharedClassMethods ()
{
	return( RX :: get_R_sharedClassMethods());
} 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RA   :  public A , public  NA {


public :
int    foo (  ) ;
int    mine (  ) ;
int    yours (  ) ;

public:
/* Constructors */
RA (   SEXP _r_methods) ;
public:
	 virtual ~ RA ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_foo_m = NULL;
    _R_mine_m = NULL;
    _R_yours_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_foo_m )
        R_ReleaseObject( _R_foo_m );
    if( _R_mine_m )
        R_ReleaseObject( _R_mine_m );
    if( _R_yours_m )
        R_ReleaseObject( _R_yours_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_foo_m ;
    SEXP _R_mine_m ;
    SEXP _R_yours_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 5 ];
	 static const char * const methodTypes[ 5 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  5 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  5 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  5 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  5 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:
double
p (  )
{
	return( A :: p (  ) ) ;
}



public:


};
 

 const char * const RA ::methodNames[] = {
 		"foo()",
		"mine()",
		"yours()",
		"new()",
		"~()" 
	};
 

 const char * const RA ::methodTypes[] = {
 		"integer",
		"integer",
		"integer",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RA (SEXP getTypes)
{
	SEXP ans;
	  ans = RA :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RA :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RA :: ~ RA ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RA" , "RA" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RA_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RA * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RA ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RA" , "RA" ) ;
	
		 return(r_ans);
}
 
RA :: RA (   SEXP _r_methods)
    : A (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RA" , "RA" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
int
RA ::    foo (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_foo_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("foo()");
	if(  fun == NULL || fun == R_NilValue) {
	    return A :: foo (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RA" , "RA" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RA ::    mine (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_mine_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("mine()");
	if(  fun == NULL || fun == R_NilValue) {
	    return A :: mine (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RA" , "RA" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RA ::    yours (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_yours_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("yours()");
	if(  fun == NULL || fun == R_NilValue) {
	    return A :: yours (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RA" , "RA" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RA::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  5 ) {
	   PROBLEM "must have  5  for  RA "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "foo()" , classMethods)) != NULL)) {
	    if(this-> _R_foo_m )
	       R_ReleaseObject(this-> _R_foo_m );
	
	    R_PreserveObject(this-> _R_foo_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "mine()" , classMethods)) != NULL)) {
	    if(this-> _R_mine_m )
	       R_ReleaseObject(this-> _R_mine_m );
	
	    R_PreserveObject(this-> _R_mine_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "yours()" , classMethods)) != NULL)) {
	    if(this-> _R_yours_m )
	       R_ReleaseObject(this-> _R_yours_m );
	
	    R_PreserveObject(this-> _R_yours_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RA::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 5 ));
	PROTECT(r_names = NEW_CHARACTER( 5 ));
	
	if(this-> _R_foo_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_foo_m );
	SET_STRING_ELT(r_names, i, mkChar( "foo()" ));
	i++;
	
	if(this-> _R_mine_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_mine_m );
	SET_STRING_ELT(r_names, i, mkChar( "mine()" ));
	i++;
	
	if(this-> _R_yours_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_yours_m );
	SET_STRING_ELT(r_names, i, mkChar( "yours()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RA_foo_p1A(SEXP r_This, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> foo (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> A :: foo (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "A") == 0)
		 	 	 ans = This-> A :: foo (  ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"foo\""
		 	 	 WARN;
		 	 }
		 }
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RA_mine_p1A(SEXP r_This, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> mine (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> A :: mine (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "A") == 0)
		 	 	 ans = This-> A :: mine (  ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"mine\""
		 	 	 WARN;
		 	 }
		 }
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RA_yours_p1A(SEXP r_This, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		A * This ;
		 int ans ;
	
		 This  =  (A *) R_getNativeReference(r_This, "A", NULL) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> yours (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> A :: yours (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "A") == 0)
		 	 	 ans = This-> A :: yours (  ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"yours\""
		 	 	 WARN;
		 	 }
		 }
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 

extern "C"
SEXP
R_RA_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RA * This;
	This = ( RA *)  R_getNativeReference(r_This, "RA", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RA_setMethods (SEXP r_This, SEXP r_methods)
{
	RA * This;
	This = ( RA *)  R_getNativeReference(r_This, "RA", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RA :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RA_set_R_sharedClassMethods (SEXP methods)
{
	RA :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RA_get_R_sharedClassMethods ()
{
	return( RA :: get_R_sharedClassMethods());
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RA_p_p1RA(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		RA * This ;
	CHECK_IS_PROTECTED(r_This)
		 double ans ;
	
		 This  =  (RA *) R_getNativeReference(r_This, "RA", NULL) ;
	
		ans = This -> p (  );
		 r_ans =  ScalarReal( ans ) ;
	
		 return(r_ans);
}
 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RY   :  public Y , public  NA {



public:
/* Constructors */
RY (   SEXP _r_methods) ;
public:
	 virtual ~ RY ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 2 ];
	 static const char * const methodTypes[ 2 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  2 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  2 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  2 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  2 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:



public:


};
 

 const char * const RY ::methodNames[] = {
 		"new()",
		"~()" 
	};
 

 const char * const RY ::methodTypes[] = {
 		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RY (SEXP getTypes)
{
	SEXP ans;
	  ans = RY :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RY :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RY :: ~ RY ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RY" , "RY" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RY_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RY * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RY ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RY" , "RY" ) ;
	
		 return(r_ans);
}
 
RY :: RY (   SEXP _r_methods)
    : Y (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RY" , "RY" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RY::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  2 ) {
	   PROBLEM "must have  2  for  RY "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RY::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 2 ));
	PROTECT(r_names = NEW_CHARACTER( 2 ));
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 


extern "C"
SEXP
R_RY_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RY * This;
	This = ( RY *)  R_getNativeReference(r_This, "RY", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RY_setMethods (SEXP r_This, SEXP r_methods)
{
	RY * This;
	This = ( RY *)  R_getNativeReference(r_This, "RY", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RY :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RY_set_R_sharedClassMethods (SEXP methods)
{
	RY :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RY_get_R_sharedClassMethods ()
{
	return( RY :: get_R_sharedClassMethods());
} 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RB   :  public B , public  NA {


public :
int    foo (  ) ;
int    mine (  ) ;
int    yours (  ) ;

public:
/* Constructors */
RB (   SEXP _r_methods) ;
public:
	 virtual ~ RB ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:

void _R_methods_init() {
    _R_foo_m = NULL;
    _R_mine_m = NULL;
    _R_yours_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_foo_m )
        R_ReleaseObject( _R_foo_m );
    if( _R_mine_m )
        R_ReleaseObject( _R_mine_m );
    if( _R_yours_m )
        R_ReleaseObject( _R_yours_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_foo_m ;
    SEXP _R_mine_m ;
    SEXP _R_yours_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 5 ];
	 static const char * const methodTypes[ 5 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  5 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  5 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  5 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  5 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:
void
b_m (  )
{
	 B :: b_m (  )  ;
}
double
p (  )
{
	return( A :: p (  ) ) ;
}



public:
int
__R_p_i_get () const { return( p_i );}
void
__R_p_i_set ( int gvalue ) {  p_i = gvalue;}


};
 

 const char * const RB ::methodNames[] = {
 		"foo()",
		"mine()",
		"yours()",
		"new()",
		"~()" 
	};
 

 const char * const RB ::methodTypes[] = {
 		"integer",
		"integer",
		"integer",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RB (SEXP getTypes)
{
	SEXP ans;
	  ans = RB :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RB :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RB :: ~ RB ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RB" , "RB" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RB_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RB * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RB ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RB" , "RB" ) ;
	
		 return(r_ans);
}
 
RB :: RB (   SEXP _r_methods)
    : B (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RB" , "RB" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
int
RB ::    foo (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_foo_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("foo()");
	if(  fun == NULL || fun == R_NilValue) {
	    return B :: foo (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RB" , "RB" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RB ::    mine (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_mine_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("mine()");
	if(  fun == NULL || fun == R_NilValue) {
	    return B :: mine (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RB" , "RB" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RB ::    yours (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_yours_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("yours()");
	if(  fun == NULL || fun == R_NilValue) {
	    return B :: yours (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RB" , "RB" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RB::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  5 ) {
	   PROBLEM "must have  5  for  RB "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "foo()" , classMethods)) != NULL)) {
	    if(this-> _R_foo_m )
	       R_ReleaseObject(this-> _R_foo_m );
	
	    R_PreserveObject(this-> _R_foo_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "mine()" , classMethods)) != NULL)) {
	    if(this-> _R_mine_m )
	       R_ReleaseObject(this-> _R_mine_m );
	
	    R_PreserveObject(this-> _R_mine_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "yours()" , classMethods)) != NULL)) {
	    if(this-> _R_yours_m )
	       R_ReleaseObject(this-> _R_yours_m );
	
	    R_PreserveObject(this-> _R_yours_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RB::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 5 ));
	PROTECT(r_names = NEW_CHARACTER( 5 ));
	
	if(this-> _R_foo_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_foo_m );
	SET_STRING_ELT(r_names, i, mkChar( "foo()" ));
	i++;
	
	if(this-> _R_mine_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_mine_m );
	SET_STRING_ELT(r_names, i, mkChar( "mine()" ));
	i++;
	
	if(this-> _R_yours_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_yours_m );
	SET_STRING_ELT(r_names, i, mkChar( "yours()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 


extern "C"
SEXP
R_RB_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RB * This;
	This = ( RB *)  R_getNativeReference(r_This, "RB", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RB_setMethods (SEXP r_This, SEXP r_methods)
{
	RB * This;
	This = ( RB *)  R_getNativeReference(r_This, "RB", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RB :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RB_set_R_sharedClassMethods (SEXP methods)
{
	RB :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RB_get_R_sharedClassMethods ()
{
	return( RB :: get_R_sharedClassMethods());
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R__RB___R_p_i_get (SEXP r_This)
{
	RB * This;
	CHECK_IS_PROTECTED(r_This)
	This = ( RB *) R_getNativeReference(r_This,  "RB" , NULL);
	int ans ;
	ans = This-> __R_p_i_get ();
	SEXP r_ans;
	r_ans =  ScalarInteger ( ans ) ;
	return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R__RB___R_p_i_set (SEXP r_This, SEXP r_val)
{
	RB * This;
	CHECK_IS_PROTECTED(r_This)
	This = ( RB *) R_getNativeReference(r_This,  "RB" , NULL);
	int val ;
	val =  asInteger( r_val ) ;
	 This-> __R_p_i_set (val);
	return(R_NilValue);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RB_b_m_p1RB(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		RB * This ;
	CHECK_IS_PROTECTED(r_This)
	
		 This  =  (RB *) R_getNativeReference(r_This, "RB", NULL) ;
	
		This -> b_m (  );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RB_p_p1RB(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		RB * This ;
	CHECK_IS_PROTECTED(r_This)
		 double ans ;
	
		 This  =  (RB *) R_getNativeReference(r_This, "RB", NULL) ;
	
		ans = This -> p (  );
		 r_ans =  ScalarReal( ans ) ;
	
		 return(r_ans);
}
 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RMyOtherClass   :  public MyOtherClass , public  NA {


public :
void    p ( bool b ) ;
void    Scale (  ) ;

public:
/* Constructors */
RMyOtherClass (   SEXP _r_methods) ;
public:
	 virtual ~ RMyOtherClass ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_p_bool_m = NULL;
    _R_Scale_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_p_bool_m )
        R_ReleaseObject( _R_p_bool_m );
    if( _R_Scale_m )
        R_ReleaseObject( _R_Scale_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_p_bool_m ;
    SEXP _R_Scale_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 4 ];
	 static const char * const methodTypes[ 4 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  4 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  4 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  4 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  4 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:



public:


};
 

 const char * const RMyOtherClass ::methodNames[] = {
 		"p(logical)",
		"Scale()",
		"new()",
		"~()" 
	};
 

 const char * const RMyOtherClass ::methodTypes[] = {
 		"",
		"",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RMyOtherClass (SEXP getTypes)
{
	SEXP ans;
	  ans = RMyOtherClass :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RMyOtherClass :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RMyOtherClass :: ~ RMyOtherClass ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RMyOtherClass" , "RMyOtherClass" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RMyOtherClass_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RMyOtherClass * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RMyOtherClass ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RMyOtherClass" , "RMyOtherClass" ) ;
	
		 return(r_ans);
}
 
RMyOtherClass :: RMyOtherClass (   SEXP _r_methods)
    : MyOtherClass (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RMyOtherClass" , "RMyOtherClass" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
void
RMyOtherClass ::    p ( bool b )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_p_bool_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("p(bool)");
	if(  fun == NULL || fun == R_NilValue) {
	    MyOtherClass :: p ( b );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 3 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RMyOtherClass" , "RMyOtherClass" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SETCAR(p,  ScalarLogical( b ) ); p = CDR(p);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
void
RMyOtherClass ::    Scale (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_Scale_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("Scale()");
	if(  fun == NULL || fun == R_NilValue) {
	    MyOtherClass :: Scale (  );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RMyOtherClass" , "RMyOtherClass" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RMyOtherClass::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  4 ) {
	   PROBLEM "must have  4  for  RMyOtherClass "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "p(logical)" , classMethods)) != NULL)) {
	    if(this-> _R_p_bool_m )
	       R_ReleaseObject(this-> _R_p_bool_m );
	
	    R_PreserveObject(this-> _R_p_bool_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "Scale()" , classMethods)) != NULL)) {
	    if(this-> _R_Scale_m )
	       R_ReleaseObject(this-> _R_Scale_m );
	
	    R_PreserveObject(this-> _R_Scale_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RMyOtherClass::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 4 ));
	PROTECT(r_names = NEW_CHARACTER( 4 ));
	
	if(this-> _R_p_bool_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_p_bool_m );
	SET_STRING_ELT(r_names, i, mkChar( "p(logical)" ));
	i++;
	
	if(this-> _R_Scale_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_Scale_m );
	SET_STRING_ELT(r_names, i, mkChar( "Scale()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RMyOtherClass_p_p1MyOtherClass_bool(SEXP r_This, SEXP r_b, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		MyOtherClass * This ;
		bool b ;
	
		 This  =  (MyOtherClass *) R_getNativeReference(r_This, "MyOtherClass", NULL) ;
		 b  =  asLogical( r_b ) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> p ( b ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> MyOtherClass :: p ( b ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "MyOtherClass") == 0)
		 	 	  This-> MyOtherClass :: p ( b ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"p\""
		 	 	 WARN;
		 	 }
		 }
	
		 return(r_ans);
}
 

extern "C"
SEXP
R_RMyOtherClass_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RMyOtherClass * This;
	This = ( RMyOtherClass *)  R_getNativeReference(r_This, "RMyOtherClass", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RMyOtherClass_setMethods (SEXP r_This, SEXP r_methods)
{
	RMyOtherClass * This;
	This = ( RMyOtherClass *)  R_getNativeReference(r_This, "RMyOtherClass", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RMyOtherClass :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RMyOtherClass_set_R_sharedClassMethods (SEXP methods)
{
	RMyOtherClass :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RMyOtherClass_get_R_sharedClassMethods ()
{
	return( RMyOtherClass :: get_R_sharedClassMethods());
} 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RZ   :  public Z , public  NA {


public :
void    Scale (  ) ;

public:
/* Constructors */
RZ (   SEXP _r_methods) ;
public:
	 virtual ~ RZ ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_Scale_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_Scale_m )
        R_ReleaseObject( _R_Scale_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_Scale_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 3 ];
	 static const char * const methodTypes[ 3 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  3 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  3 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  3 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  3 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:



public:


};
 

 const char * const RZ ::methodNames[] = {
 		"Scale()",
		"new()",
		"~()" 
	};
 

 const char * const RZ ::methodTypes[] = {
 		"",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RZ (SEXP getTypes)
{
	SEXP ans;
	  ans = RZ :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RZ :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RZ :: ~ RZ ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RZ" , "RZ" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RZ_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RZ * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RZ ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RZ" , "RZ" ) ;
	
		 return(r_ans);
}
 
RZ :: RZ (   SEXP _r_methods)
    : Z (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RZ" , "RZ" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
void
RZ ::    Scale (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_Scale_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("Scale()");
	if(  fun == NULL || fun == R_NilValue) {
	    Z :: Scale (  );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RZ" , "RZ" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RZ::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  3 ) {
	   PROBLEM "must have  3  for  RZ "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "Scale()" , classMethods)) != NULL)) {
	    if(this-> _R_Scale_m )
	       R_ReleaseObject(this-> _R_Scale_m );
	
	    R_PreserveObject(this-> _R_Scale_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RZ::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 3 ));
	PROTECT(r_names = NEW_CHARACTER( 3 ));
	
	if(this-> _R_Scale_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_Scale_m );
	SET_STRING_ELT(r_names, i, mkChar( "Scale()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 


extern "C"
SEXP
R_RZ_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RZ * This;
	This = ( RZ *)  R_getNativeReference(r_This, "RZ", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RZ_setMethods (SEXP r_This, SEXP r_methods)
{
	RZ * This;
	This = ( RZ *)  R_getNativeReference(r_This, "RZ", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RZ :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RZ_set_R_sharedClassMethods (SEXP methods)
{
	RZ :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RZ_get_R_sharedClassMethods ()
{
	return( RZ :: get_R_sharedClassMethods());
} 
 
 
#include "RDerivedClass.h" 
#include "RConverters.h" 



 class RC   :  public C , public  NA {


public :
int    cmethod (  ) ;
int    foo (  ) ;
int    mine (  ) ;
int    yours (  ) ;
void    p ( bool b ) ;
void    Scale (  ) ;

public:
/* Constructors */
RC (   SEXP _r_methods) ;
public:
	 virtual ~ RC ();



#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS

void R_setMethods(SEXP newMethods) ;
SEXP R_getMethods() ;

protected:
void _R_methods_init() {
    _R_cmethod_m = NULL;
    _R_foo_m = NULL;
    _R_mine_m = NULL;
    _R_yours_m = NULL;
    _R_p_bool_m = NULL;
    _R_Scale_m = NULL;
    _R_new_m = NULL;
    _R_finalize_m = NULL;
}

void _R_methods_finalize() {
    if( _R_cmethod_m )
        R_ReleaseObject( _R_cmethod_m );
    if( _R_foo_m )
        R_ReleaseObject( _R_foo_m );
    if( _R_mine_m )
        R_ReleaseObject( _R_mine_m );
    if( _R_yours_m )
        R_ReleaseObject( _R_yours_m );
    if( _R_p_bool_m )
        R_ReleaseObject( _R_p_bool_m );
    if( _R_Scale_m )
        R_ReleaseObject( _R_Scale_m );
    if( _R_new_m )
        R_ReleaseObject( _R_new_m );
    if( _R_finalize_m )
        R_ReleaseObject( _R_finalize_m );
}
    SEXP _R_cmethod_m ;
    SEXP _R_foo_m ;
    SEXP _R_mine_m ;
    SEXP _R_yours_m ;
    SEXP _R_p_bool_m ;
    SEXP _R_Scale_m ;
    SEXP _R_new_m ;
    SEXP _R_finalize_m ;
#endif


	 protected:
	 
	 static const char * const methodNames[ 8 ];
	 static const char * const methodTypes[ 8 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  8 ;
	 	return(methodNames);
	 };
	 
	 static const char* const * getMethodTypes(int *n) {
	 	*n =  8 ;
	 	return(methodTypes);
	 };
	 



	 public:
	 
	 static SEXP R_getMethodNames() {
	 	return(convertStringArrayToR(methodNames,  8 ));
	 };
	 static SEXP R_getMethodTypes() {
	 	return(convertStringArrayToR(methodTypes,  8 ));
	 };

protected:
   static SEXP R_sharedMethods;

public:
 static  void set_R_sharedClassMethods (SEXP methods) {
    if(R_sharedMethods && R_sharedMethods != R_NilValue)
        R_ReleaseObject(R_sharedMethods);
    R_PreserveObject(R_sharedMethods = Rf_duplicate(methods));
  }

  static SEXP get_R_sharedClassMethods() { return(R_sharedMethods ? R_sharedMethods : R_NilValue);} 

  SEXP get_R_sharedMethods() const { return(R_sharedMethods ? R_sharedMethods : R_NilValue);}
public:
void
b_m (  )
{
	 B :: b_m (  )  ;
}
double
p (  )
{
	return( A :: p (  ) ) ;
}



public:
int
__R_p_i_get () const { return( p_i );}
void
__R_p_i_set ( int gvalue ) {  p_i = gvalue;}


};
 

 const char * const RC ::methodNames[] = {
 		"cmethod()",
		"foo()",
		"mine()",
		"yours()",
		"p(logical)",
		"Scale()",
		"new()",
		"~()" 
	};
 

 const char * const RC ::methodTypes[] = {
 		"integer",
		"integer",
		"integer",
		"integer",
		"",
		"",
		"",
		"" 
	};
 
extern "C"
SEXP
R_getNativeMethodIds_RC (SEXP getTypes)
{
	SEXP ans;
	  ans = RC :: R_getMethodNames();
	
	if(LOGICAL(getTypes)[0]) {
	  PROTECT(ans);
	    SET_NAMES(ans,  RC :: R_getMethodTypes());
	  UNPROTECT(1);
	}
	    return(ans);
} 
RC :: ~ RC ()
{
	SEXP fun;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun =  _R_finalize_m ;
	#endif
	if(!fun)
	   fun = lookupFunction("~()");
	
	if(fun) {
	 // call the R function with the reference to this
	SEXP e;
	PROTECT(e = allocVector(LANGSXP, 2));
	SETCAR(e, fun);
	SETCAR(CDR(e), R_createNativeReference(this, "RC" , "RC" ));
	callMethod(e);
	}
	
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	_R_methods_finalize();
	#endif
}; 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RC_new(SEXP r_methods)
{
	
		SEXP r_ans = R_NilValue;
		SEXP methods ;
		 RC * ans ;
	
		 methods  =  r_methods ;
	
		ans = new RC ( methods );
		 r_ans =  R_createNativeReference( (void *)  ans ,  "RC" , "RC" ) ;
	
		 return(r_ans);
}
 
RC :: RC (   SEXP _r_methods)
    : C (  )
{
	_R_methods_init();
	 R_setMethods(_r_methods);
	
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_new_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("new()");
	if(  fun == NULL || fun == R_NilValue) {
	    
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}


 
int
RC ::    cmethod (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_cmethod_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("cmethod()");
	if(  fun == NULL || fun == R_NilValue) {
	    return C :: cmethod (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RC ::    foo (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_foo_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("foo()");
	if(  fun == NULL || fun == R_NilValue) {
	    return C :: foo (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RC ::    mine (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_mine_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("mine()");
	if(  fun == NULL || fun == R_NilValue) {
	    return C :: mine (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
int
RC ::    yours (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_yours_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("yours()");
	if(  fun == NULL || fun == R_NilValue) {
	    return C :: yours (  );
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	int result ;
	result =  asInteger( ans ) ;
	UNPROTECT(2);
	return( result );
}

 
void
RC ::    p ( bool b )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_p_bool_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("p(bool)");
	if(  fun == NULL || fun == R_NilValue) {
	    MyOtherClass :: p ( b );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 3 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SETCAR(p,  ScalarLogical( b ) ); p = CDR(p);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
void
RC ::    Scale (  )
{
	SEXP fun ;
	#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS
	   fun = _R_Scale_m ;
	#endif
	if(! fun )
	  fun= lookupFunction("Scale()");
	if(  fun == NULL || fun == R_NilValue) {
	    C :: Scale (  );
	    return;
	}
	

	SEXP p, expr = allocVector(LANGSXP, 2 ), r_tmp;
	PROTECT(expr); p = CDR(expr);
	SETCAR(expr, fun);
	PROTECT(r_tmp = R_createNativeReference(this, "RC" , "RC" ));
	SETCAR(p, R_make_protected_callable(r_tmp)); p = CDR(p);
	UNPROTECT(1);
	SEXP ans = callMethod(expr);
	PROTECT(ans);
	UNPROTECT(2);
	return;
}

 
#ifdef RTU_USE_INDIVIDUAL_METHOD_FIELDS 
void
RC::R_setMethods (SEXP r_methods)
{
	
	if(Rf_length(r_methods) == 0)
	   return;
	if(Rf_length(r_methods) !=  8 ) {
	   PROBLEM "must have  8  for  RC "
	      ERROR;
	    }
	int i = 0;
	SEXP tmp;
	SEXP classMethods = get_R_sharedMethods();
	bool useClassMethods = (classMethods == NULL || Rf_length(classMethods) > 0);
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "cmethod()" , classMethods)) != NULL)) {
	    if(this-> _R_cmethod_m )
	       R_ReleaseObject(this-> _R_cmethod_m );
	
	    R_PreserveObject(this-> _R_cmethod_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "foo()" , classMethods)) != NULL)) {
	    if(this-> _R_foo_m )
	       R_ReleaseObject(this-> _R_foo_m );
	
	    R_PreserveObject(this-> _R_foo_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "mine()" , classMethods)) != NULL)) {
	    if(this-> _R_mine_m )
	       R_ReleaseObject(this-> _R_mine_m );
	
	    R_PreserveObject(this-> _R_mine_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "yours()" , classMethods)) != NULL)) {
	    if(this-> _R_yours_m )
	       R_ReleaseObject(this-> _R_yours_m );
	
	    R_PreserveObject(this-> _R_yours_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "p(logical)" , classMethods)) != NULL)) {
	    if(this-> _R_p_bool_m )
	       R_ReleaseObject(this-> _R_p_bool_m );
	
	    R_PreserveObject(this-> _R_p_bool_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "Scale()" , classMethods)) != NULL)) {
	    if(this-> _R_Scale_m )
	       R_ReleaseObject(this-> _R_Scale_m );
	
	    R_PreserveObject(this-> _R_Scale_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "new()" , classMethods)) != NULL)) {
	    if(this-> _R_new_m )
	       R_ReleaseObject(this-> _R_new_m );
	
	    R_PreserveObject(this-> _R_new_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
	if(Rf_length(tmp = VECTOR_ELT(r_methods, i)) 
	         || (useClassMethods && (tmp = lookupFunction( "~()" , classMethods)) != NULL)) {
	    if(this-> _R_finalize_m )
	       R_ReleaseObject(this-> _R_finalize_m );
	
	    R_PreserveObject(this-> _R_finalize_m = Rf_duplicate(VECTOR_ELT(r_methods, i)));
	}
	i++;
	
} 
SEXP
RC::R_getMethods (void)
{
	int i = 0;
	SEXP r_ans, r_names;
	
	PROTECT(r_ans = NEW_LIST( 8 ));
	PROTECT(r_names = NEW_CHARACTER( 8 ));
	
	if(this-> _R_cmethod_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_cmethod_m );
	SET_STRING_ELT(r_names, i, mkChar( "cmethod()" ));
	i++;
	
	if(this-> _R_foo_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_foo_m );
	SET_STRING_ELT(r_names, i, mkChar( "foo()" ));
	i++;
	
	if(this-> _R_mine_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_mine_m );
	SET_STRING_ELT(r_names, i, mkChar( "mine()" ));
	i++;
	
	if(this-> _R_yours_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_yours_m );
	SET_STRING_ELT(r_names, i, mkChar( "yours()" ));
	i++;
	
	if(this-> _R_p_bool_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_p_bool_m );
	SET_STRING_ELT(r_names, i, mkChar( "p(logical)" ));
	i++;
	
	if(this-> _R_Scale_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_Scale_m );
	SET_STRING_ELT(r_names, i, mkChar( "Scale()" ));
	i++;
	
	if(this-> _R_new_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_new_m );
	SET_STRING_ELT(r_names, i, mkChar( "new()" ));
	i++;
	
	if(this-> _R_finalize_m )
	   SET_VECTOR_ELT(r_ans, i, this-> _R_finalize_m );
	SET_STRING_ELT(r_names, i, mkChar( "~()" ));
	i++;
	
	
	SET_NAMES(r_ans, r_names);
	UNPROTECT(2);
	return(r_ans);
} 
#endif 

#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RC_cmethod_p1C(SEXP r_This, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		C * This ;
		 int ans ;
	
		 This  =  (C *) R_getNativeReference(r_This, "C", NULL) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> cmethod (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> C :: cmethod (  ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "C") == 0)
		 	 	 ans = This-> C :: cmethod (  ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"cmethod\""
		 	 	 WARN;
		 	 }
		 }
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 

extern "C"
SEXP
R_RC_getMethods (SEXP r_This, SEXP r_mergeClassMethods)
{
	RC * This;
	This = ( RC *)  R_getNativeReference(r_This, "RC", NULL) ;
	return(This->R_getMethods());
} 
extern "C"
SEXP
R_RC_setMethods (SEXP r_This, SEXP r_methods)
{
	RC * This;
	This = ( RC *)  R_getNativeReference(r_This, "RC", NULL) ;
	This->R_setMethods(r_methods);
	return(R_NilValue);
} 
SEXP RC :: R_sharedMethods = NULL; 
extern "C"
SEXP
R_RC_set_R_sharedClassMethods (SEXP methods)
{
	RC :: set_R_sharedClassMethods (methods);
	return(R_NilValue);
} 
extern "C"
SEXP
R_RC_get_R_sharedClassMethods ()
{
	return( RC :: get_R_sharedClassMethods());
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R__RC___R_p_i_get (SEXP r_This)
{
	RC * This;
	CHECK_IS_PROTECTED(r_This)
	This = ( RC *) R_getNativeReference(r_This,  "RC" , NULL);
	int ans ;
	ans = This-> __R_p_i_get ();
	SEXP r_ans;
	r_ans =  ScalarInteger ( ans ) ;
	return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R__RC___R_p_i_set (SEXP r_This, SEXP r_val)
{
	RC * This;
	CHECK_IS_PROTECTED(r_This)
	This = ( RC *) R_getNativeReference(r_This,  "RC" , NULL);
	int val ;
	val =  asInteger( r_val ) ;
	 This-> __R_p_i_set (val);
	return(R_NilValue);
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RC_b_m_p1RC(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		RC * This ;
	CHECK_IS_PROTECTED(r_This)
	
		 This  =  (RC *) R_getNativeReference(r_This, "RC", NULL) ;
	
		This -> b_m (  );
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RC_p_p1RC(SEXP r_This)
{
	
		SEXP r_ans = R_NilValue;
		RC * This ;
	CHECK_IS_PROTECTED(r_This)
		 double ans ;
	
		 This  =  (RC *) R_getNativeReference(r_This, "RC", NULL) ;
	
		ans = This -> p (  );
		 r_ans =  ScalarReal( ans ) ;
	
		 return(r_ans);
}
 
 
 
