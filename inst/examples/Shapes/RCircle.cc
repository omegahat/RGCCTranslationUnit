#include "RCircle.h"

#if 0


RCircle::RCircle(int newx, int newy, int newradius, SEXP r_methods) 
  : Circle(newx, newy, newradius),
#ifdef RTU_USE_FIELDS_FOR_R_METHODS
    _R_new_m(NULL),
    _R_new_int_int_int_m(NULL),
    _R_area_m(NULL),
    _R_scale_int_m(NULL),
    _R_scale_int_int_m(NULL)
#endif
{
  SEXP fun;

  R_setMethods(r_methods);

#ifdef RTU_USE_FIELDS_FOR_R_METHODS
  fun = _R_new_int_int_int_m;
  if(!fun)
    fun = _R_new_m; // empty constructor
#else
  fun = lookupFunction("new(int,int,int)");
  if(!fun)
    fun = lookupFunction("new()");
#endif

  if(!fun || fun == R_NilValue)
    return;

  SEXP e, p;
  PROTECT(p = e = allocVector(LANGSXP, 5));
  SETCAR(p, fun); p = CDR(e);
  SETCAR(p, R_createNativeReference(this, "RCircle", "RCircle")); p = CDR(e);
  SETCAR(p, ScalarInteger(newx)); p = CDR(e);
  SETCAR(p, ScalarInteger(newy)); p = CDR(e);
  SETCAR(p, ScalarInteger(newradius)); p = CDR(e);

  Rf_eval(e, R_GlobalEnv);

  UNPROTECT(1);
}


#if 0
RCircle::RCircle(SEXP r_methods) 
  : Circle(),
    RDerivedClass(r_methods)
{
  SEXP fun;
#ifdef RTU_USE_FIELDS_FOR_R_METHODS
  fun = _R_m; // empty constructor
#else
  fun = lookupFunction("new()");
#endif

  if(!fun || fun == R_NilValue)
    return;

  SEXP e, p;
  PROTECT(p = e = allocVector(LANGSXP, 5));
  SETCAR(p, fun); p = CDR(e);
  SETCAR(p, R_createNativeReference(this, "RCircle", "RCircle")); p = CDR(e);

  Rf_eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
#endif



double
RCircle::area()
{
  SEXP fun;
#ifdef RTU_USE_FIELDS_FOR_R_METHODS
  fun = _R_area_m;
#else
  fun = lookupFunction("area()");
#endif

  if(!fun || fun == R_NilValue)
    return(Circle::area());

  SEXP e, r_ans, p;
  PROTECT(p = e = allocVector(LANGSXP, 2));
  SETCAR(p, fun); p = CDR(e);
  SETCAR(p, R_createNativeReference(this, "RCircle", "RCircle")); p = CDR(e);

  r_ans = Rf_eval(e, R_GlobalEnv);
  double ans;
  ans = REAL(r_ans)[0];

  UNPROTECT(1);

  return(ans);
}

void
RCircle::scale(int x)
{
  SEXP fun;
#ifdef USE_FIELDS_FOR_R_METHODS
  fun = _R_scale_int_m;
#else
  fun = lookupFunction("scale(int)");
#endif

  if(!fun || fun == R_NilValue)
    return(Circle::scale(x));

  SEXP e, r_ans, p;
  PROTECT(p = e = allocVector(LANGSXP, 3));
  SETCAR(p, fun); p = CDR(e);
  SETCAR(p, R_createNativeReference(this, "RCircle", "RCircle")); p = CDR(e);
  SETCAR(p, ScalarInteger(x)); p = CDR(e);

  Rf_eval(e, R_GlobalEnv);

  UNPROTECT(1);
}

void
RCircle::scale(int x, int y)
{
  SEXP fun;
#ifdef RTU_USE_FIELDS_FOR_R_METHODS
  fun = _R_scale_int_int_m;
#else
  fun = lookupFunction("scale(int,int)");
#endif

  if(!fun || fun == R_NilValue)
    return(Circle::scale(x, y));

  SEXP e, r_ans, p;
  PROTECT(p = e = allocVector(LANGSXP, 4));
  SETCAR(p, fun); p = CDR(e);
  SETCAR(p, R_createNativeReference(this, "RCircle", "RCircle")); p = CDR(e);
  SETCAR(p, ScalarInteger(x)); p = CDR(e);
  SETCAR(p, ScalarInteger(y)); p = CDR(e);

  Rf_eval(e, R_GlobalEnv);

  UNPROTECT(1);
}


extern "C"
SEXP
R_RCircle_setMethods(SEXP r_This, SEXP r_methods)
{
  RCircle *This;
  This = (RCircle *) R_getNativeReference(r_This, "RCircle", "RCircle");

  This->R_setMethods(r_methods);

  return(R_NilValue);
}


extern "C"
SEXP
R_RCircle_getMethods(SEXP r_This)
{
  RCircle *This;
  This = (RCircle *) R_getNativeReference(r_This, "RCircle", "RCircle");
  //  This = R_GET_REF_TYPE(r_This, "RCircle");
  return(This->R_getMethods());
}


#ifdef RTU_USE_FIELDS_FOR_R_METHODS
SEXP
RCircle::R_getMethods()
{
  SEXP r_ans, r_names;

  PROTECT(r_ans = NEW_LIST(5));
  PROTECT(r_names = NEW_CHARACTER(5));
  int i = 0;

  if(this->_R_new_m) {
    SET_VECTOR_ELT(r_ans, i, this->_R_new_m);
    SET_STRING_ELT(r_names, i, mkChar("new()"));
  }
  i++;

  if(this->_R_new_int_int_int_m) {
    SET_VECTOR_ELT(r_ans, i, this->_R_new_int_int_int_m);
    SET_STRING_ELT(r_names, i, mkChar("new(int,int,int)"));
  }
  i++;

  if(this->_R_area_m) {
    SET_VECTOR_ELT(r_ans, i, this->_R_area_m);
    SET_STRING_ELT(r_names, i, mkChar("area()"));
  }
  i++;

  if(this->_R_scale_int_m) {
    SET_VECTOR_ELT(r_ans, i, this->_R_scale_int_m);
    SET_STRING_ELT(r_names, i, mkChar("scale(int)"));
  }
  i++;

  if(this->_R_scale_int_int_m) {
    SET_VECTOR_ELT(r_ans, i, this->_R_scale_int_int_m);
    SET_STRING_ELT(r_names, i, mkChar("scale(int,int)"));
  }
  i++;

 UNPROTECT(2);
}
#endif

#ifdef RTU_USE_FIELDS_FOR_R_METHODS
void 
RCircle::R_setMethods(SEXP r_methods) 
{
  int i = -1;
  // new methods.

  i++;
  if(Rf_length(VECTOR_ELT(r_methods, i))) {
    if(this->_R_new_m)
      R_ReleaseObject(this->_R_new_m);
    
    R_PreserveObject(this->_R_new_m = VECTOR_ELT(r_methods, i));
  }

  i++;
  if(Rf_length(VECTOR_ELT(r_methods, i))) {
    if(this->_R_new_m)
      R_ReleaseObject(this->_R_new_int_int_int_m);
    
    R_PreserveObject(this->_R_new_int_int_int_m = VECTOR_ELT(r_methods, i));
  }


  i++;
  if(Rf_length(VECTOR_ELT(r_methods, i))) {
    if(this->_R_area_m)
      R_ReleaseObject(this->_R_area_m);
    
    R_PreserveObject(this->_R_area_m = VECTOR_ELT(r_methods, i));
  }

  i++;
  if(Rf_length(VECTOR_ELT(r_methods, i))) {
    if(this->_R_scale_int_m)
      R_ReleaseObject(this->_R_scale_int_m);
    
    R_PreserveObject(this->_R_scale_int_m = VECTOR_ELT(r_methods, i));
  }

  i++;
  if(Rf_length(VECTOR_ELT(r_methods, i))) {
    if(this->_R_scale_int_int_m)
      R_ReleaseObject(this->_R_scale_int_int_m);
    
    R_PreserveObject(this->_R_scale_int_int_m = VECTOR_ELT(r_methods, i));
  }
}
#endif




extern "C"
SEXP
R_RCircle_new(SEXP r_newx, SEXP r_newy, SEXP r_newradius, SEXP r_methods)
{
  RCircle *ans;
  ans = new RCircle(INTEGER(r_newx)[0], INTEGER(r_newy)[0], INTEGER(r_newradius)[0], r_methods);
  return(R_MAKE_REF_TYPE(ans, RCircle));
}

#endif


double
RCircle::area(bool super)
{
  if(super)
    return(Circle::area());
  else
    return(this->area());
}

extern "C"
SEXP
R_RCircle_area(SEXP r_This, SEXP r_super)
{
	
		SEXP r_ans = R_NilValue;
		RCircle * This ;
		 double ans ;
	
		 This  =  (RCircle *) R_getNativeReference(r_This, "RCircle", NULL) ;
                 ans = This->area((bool) LOGICAL(r_super)[0]);

		 r_ans =  ScalarReal( ans ) ;
	
		 return(r_ans);
}






#if 0
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RCircle_scale_p1Circle_int_int(SEXP r_This, SEXP r_x, SEXP r_y, SEXP r__inherited)
{
	
		SEXP r_ans = R_NilValue;
		Circle * This ;
		int x ;
		int y ;
	
		 This  =  (Circle *) R_getNativeReference(r_This, "RCircle", NULL) ;
		 x  =  asInteger( r_x ) ;
		 y  =  asInteger( r_y ) ;
	
		 if(GET_LENGTH(r__inherited) == 0
		     || TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == FALSE) {
		              // default call to own or inherited method.
		      This-> scale ( x, y ) ;
		 
		 } else if (TYPEOF(r__inherited) == LGLSXP && LOGICAL(r__inherited)[0] == TRUE) {
		            This-> Circle :: scale ( x, y ) ;
		 
		 } else if (TYPEOF(r__inherited) == STRSXP) {
		               // use the names to find out which one.
		 
		 	 const char *className = CHAR(STRING_ELT(r__inherited, 0));
		 	if(strcmp(className, "Circle") == 0)
		 	 	  This-> Circle :: scale ( x, y ) ;
		 	 else {
		 		PROBLEM ".inherited specified, but class name does not match parent classes with method \"scale\""
		 	 	 WARN;
		 	 }
		 }
	
		 return(r_ans);
}
 

#endif
