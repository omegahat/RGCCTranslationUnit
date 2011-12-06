#include "dispatch.h"
#include <Rinternals.h>
#include <Rdefines.h>

extern "C"
SEXP R_createNativeReference(const void *val, const char *className, const char *tagName);
extern "C"
void * R_getNativeReference(SEXP arg, const char *type, const char *tag);

#if 0
extern "C"
SEXP
R_A_new()
{
    A *ans;
    ans = new A();
    return(R_createNativeReference(ans, "A", "A"));
}

extern "C"
SEXP
R_B_new()
{
    B *ans;
    ans = new B();
    return(R_createNativeReference(ans, "B", "B"));
}

extern "C"
SEXP
R_C_new()
{
    C *ans;
    ans = new C();
    return(R_createNativeReference(ans, "C", "C"));
}

extern "C"
SEXP
R_A_foo_double(SEXP r_this, SEXP r_x)
{
    A *a = (A *) R_getNativeReference(r_this, "A", "A");
    double x = asReal(r_x);
    a->foo(x);
    return(R_NilValue);
}

extern "C"
SEXP
R_B_foo_double(SEXP r_this, SEXP r_x)
{
    B *b = (B *) R_getNativeReference(r_this, "B", "B");
    double x = asReal(r_x);
    b->foo(x);
    return(R_NilValue);
}


extern "C"
SEXP
R_A_bar_int(SEXP r_this, SEXP r_x)
{
    A *a = (A *) R_getNativeReference(r_this, "A", "A");
    int x = asInteger(r_x);
    a->bar(x);
    return(R_NilValue);
}

extern "C"
SEXP
R_B_bar_int(SEXP r_this, SEXP r_x)
{
    B *b = (B *) R_getNativeReference(r_this, "B", "B");
    int x = asInteger(r_x);
    b->bar(x);
    return(R_NilValue);
}

#endif



/**********************************************************************************************/

extern "C"
SEXP
R_createNativeReference(const void *val, const char *className, const char *tagName)
{
 SEXP ans;
 SEXP klass = MAKE_CLASS((char *) className);

 if(klass == R_NilValue) {
	 PROBLEM "Can't find class %s", className
    ERROR;
 }

 /* should check this extends RC++Reference.. */
 PROTECT(klass);
 PROTECT(ans = NEW(klass));

 ans = SET_SLOT(ans, Rf_install("ref"),  R_MakeExternalPtr((void *) val, Rf_install(tagName), R_NilValue));

 UNPROTECT(2);
 return(ans);
}

extern "C"
void *
R_getNativeReference(SEXP arg, const char *type, const char *tag)
{
 SEXP el; 
 void *ans;

 el = GET_SLOT(arg, Rf_install("ref"));

//XXX not checking inheritance
 if(0 && tag && tag[0] && R_ExternalPtrTag(el) != Rf_install(tag)) {

        /* So not a direct match. Now see if it is from a derived class
           by comparing the value in the object to the name of each of the
           ancestor classes.
         */
    SEXP ancestors = GET_SLOT(arg, Rf_install("classes"));
    int n, i;
    n = Rf_length(ancestors);
    for(i = 0; i < n  ; i ++) {
        if(strcmp(CHAR(STRING_ELT(ancestors, i)), tag) == 0)
  	   break;
    }
    if(i == n) {
      PROBLEM "Looking for %s, got %s",
	      tag, CHAR(PRINTNAME(R_ExternalPtrTag(el)))
      ERROR;
    }
 }

 ans = R_ExternalPtrAddr(el);

 if(!ans) {
   PROBLEM "NULL value passed to R_getNativeReference. This may not be an error, but it could be very serious!"
   ERROR;
 }
 return(ans);
}




