#include "shapes.h" 
#include "RDerivedClass.h" 
#include "RConverters.h" 

 class R_Rectangle   :  public Rectangle , public  RDerivedClass {


public :

R_Rectangle ( int newx, int newy, int newwidth, int newheight )
		     : Rectangle ( newx, newy, newwidth, newheight )
		 {
		     _R_methods_init();
		 }
		 


public :

   int getWidth (  ) {

		 SEXP fun;
		 fun =  R_getWidth_m ;
		 if(fun == NULL || fun == R_NilValue) {
		     return     Rectangle :: getWidth (  );
		 }
		 

		 SEXP p, expr = allocVector(LANGSXP, 2 );
		 PROTECT(expr);
		 p = CDR(expr);
		 SETCAR(expr, fun);
		 SETCAR(p,  R_createNativeReference( (void *)  this ,  "RectanglePtr" , "RectanglePtr" ) );
		 p = CDR(p);
		 SEXP ans = callMethod(expr);
		 PROTECT(ans);
		 int result ;
		 result =  asInteger( ans ) ;
		 UNPROTECT(2);
		 return( result );
  }


public :

   int getHeight (  ) {

		 SEXP fun;
		 fun =  R_getHeight_m ;
		 if(fun == NULL || fun == R_NilValue) {
		     return     Rectangle :: getHeight (  );
		 }
		 

		 SEXP p, expr = allocVector(LANGSXP, 2 );
		 PROTECT(expr);
		 p = CDR(expr);
		 SETCAR(expr, fun);
		 SETCAR(p,  R_createNativeReference( (void *)  this ,  "RectanglePtr" , "RectanglePtr" ) );
		 p = CDR(p);
		 SEXP ans = callMethod(expr);
		 PROTECT(ans);
		 int result ;
		 result =  asInteger( ans ) ;
		 UNPROTECT(2);
		 return( result );
  }


public :

   void setWidth ( int newwidth ) {

		 SEXP fun;
		 fun =  R_setWidth_m ;
		 if(fun == NULL || fun == R_NilValue) {
		     Rectangle :: setWidth ( newwidth );
		     return;
		 }
		 

		 SEXP p, expr = allocVector(LANGSXP, 3 );
		 PROTECT(expr);
		 p = CDR(expr);
		 SETCAR(expr, fun);
		 SETCAR(p,  R_createNativeReference( (void *)  this ,  "RectanglePtr" , "RectanglePtr" ) );
		 p = CDR(p);
		 SETCAR(p,  ScalarInteger ( newwidth ) );
		 p = CDR(p);
		 SEXP ans = callMethod(expr);
		 PROTECT(ans);
		 UNPROTECT(2);
		 return;
  }


public :

   void setHeight ( int newheight ) {

		 SEXP fun;
		 fun =  R_setHeight_m ;
		 if(fun == NULL || fun == R_NilValue) {
		     Rectangle :: setHeight ( newheight );
		     return;
		 }
		 

		 SEXP p, expr = allocVector(LANGSXP, 3 );
		 PROTECT(expr);
		 p = CDR(expr);
		 SETCAR(expr, fun);
		 SETCAR(p,  R_createNativeReference( (void *)  this ,  "RectanglePtr" , "RectanglePtr" ) );
		 p = CDR(p);
		 SETCAR(p,  ScalarInteger ( newheight ) );
		 p = CDR(p);
		 SEXP ans = callMethod(expr);
		 PROTECT(ans);
		 UNPROTECT(2);
		 return;
  }


public :

   void draw (  ) {

		 SEXP fun;
		 fun =  R_draw_m ;
		 if(fun == NULL || fun == R_NilValue) {
		     Rectangle :: draw (  );
		     return;
		 }
		 

		 SEXP p, expr = allocVector(LANGSXP, 2 );
		 PROTECT(expr);
		 p = CDR(expr);
		 SETCAR(expr, fun);
		 SETCAR(p,  R_createNativeReference( (void *)  this ,  "RectanglePtr" , "RectanglePtr" ) );
		 p = CDR(p);
		 SEXP ans = callMethod(expr);
		 PROTECT(ans);
		 UNPROTECT(2);
		 return;
  }


public:
	 virtual
	 ~ R_Rectangle ()
	 {
	 	 if( R_getWidth_m != NULL) R_ReleaseObject( R_getWidth_m );
	 	 if( R_getHeight_m != NULL) R_ReleaseObject( R_getHeight_m );
	 	 if( R_setWidth_m != NULL) R_ReleaseObject( R_setWidth_m );
	 	 if( R_setHeight_m != NULL) R_ReleaseObject( R_setHeight_m );
	 	 if( R_draw_m != NULL) R_ReleaseObject( R_draw_m );
	 };
public:
void _setRMethods ( SEXP r_R_getWidth_m, SEXP r_R_getHeight_m, SEXP r_R_setWidth_m, SEXP r_R_setHeight_m, SEXP r_R_draw_m )
{
	if( r_R_getWidth_m != NA_STRING) {
		 if( R_getWidth_m != NULL) R_ReleaseObject( R_getWidth_m );
		 R_PreserveObject( R_getWidth_m = Rf_duplicate( r_R_getWidth_m ));
	}
	if( r_R_getHeight_m != NA_STRING) {
		 if( R_getHeight_m != NULL) R_ReleaseObject( R_getHeight_m );
		 R_PreserveObject( R_getHeight_m = Rf_duplicate( r_R_getHeight_m ));
	}
	if( r_R_setWidth_m != NA_STRING) {
		 if( R_setWidth_m != NULL) R_ReleaseObject( R_setWidth_m );
		 R_PreserveObject( R_setWidth_m = Rf_duplicate( r_R_setWidth_m ));
	}
	if( r_R_setHeight_m != NA_STRING) {
		 if( R_setHeight_m != NULL) R_ReleaseObject( R_setHeight_m );
		 R_PreserveObject( R_setHeight_m = Rf_duplicate( r_R_setHeight_m ));
	}
	if( r_R_draw_m != NA_STRING) {
		 if( R_draw_m != NULL) R_ReleaseObject( R_draw_m );
		 R_PreserveObject( R_draw_m = Rf_duplicate( r_R_draw_m ));
	}
}
SEXP _getRMethods ()
{
	SEXP _r_ans;
	   PROTECT(_r_ans = NEW_LIST( 5 ));
	SET_VECTOR_ELT(_r_ans,  0 ,  R_getWidth_m  == NULL ? R_NilValue :  R_getWidth_m );
	SET_VECTOR_ELT(_r_ans,  1 ,  R_getHeight_m  == NULL ? R_NilValue :  R_getHeight_m );
	SET_VECTOR_ELT(_r_ans,  2 ,  R_setWidth_m  == NULL ? R_NilValue :  R_setWidth_m );
	SET_VECTOR_ELT(_r_ans,  3 ,  R_setHeight_m  == NULL ? R_NilValue :  R_setHeight_m );
	SET_VECTOR_ELT(_r_ans,  4 ,  R_draw_m  == NULL ? R_NilValue :  R_draw_m );
	SET_NAMES(_r_ans, R_methodNames());
	UNPROTECT(1);
	return(_r_ans);
}



protected:
void _R_methods_init() {
    R_getWidth_m = NULL;
    R_getHeight_m = NULL;
    R_setWidth_m = NULL;
    R_setHeight_m = NULL;
    R_draw_m = NULL;
}


protected:
	SEXP R_getWidth_m ;
	SEXP R_getHeight_m ;
	SEXP R_setWidth_m ;
	SEXP R_setHeight_m ;
	SEXP R_draw_m ;


	 static const char * const methodNames[ 5 ];
	 
	 static const char* const * getMethodNames(int *n) {
	 	*n =  5 ;
	 	return(methodNames);
	 };
	 



	 public:
	 static SEXP R_methodNames() {
	 	return(convertStringArrayToR(methodNames, 
	 5
	 ));
	 };

};


const char * const R_Rectangle ::methodNames[] = {
	"getWidth",
		"getHeight",
		"setWidth",
		"setHeight",
		"draw"
};

 
extern "C"
SEXP
R_Rectangle_setRMethods (SEXP r_This,  SEXP R_getWidth_m, SEXP R_getHeight_m, SEXP R_setWidth_m, SEXP R_setHeight_m, SEXP R_draw_m )
{
	R_Rectangle* This = (R_Rectangle*) R_getNativeReference(r_This, "R_RectanglePtr", "R_RectanglePtr");
	This->_setRMethods( R_getWidth_m, R_getHeight_m, R_setWidth_m, R_setHeight_m, R_draw_m );
	return(R_NilValue);
} 
extern "C"
SEXP
R_Rectangle_getRMethods (SEXP r_This)
{
	R_Rectangle* This = (R_Rectangle*) R_getNativeReference(r_This, "R_RectanglePtr", "R_RectanglePtr");
	return(This->_getRMethods());
} 
extern "C"
SEXP
R_R_Rectangle_new(SEXP r_newx, SEXP r_newy, SEXP r_newwidth, SEXP r_newheight)
{

	SEXP r_ans = R_NilValue;
	int newx ;
	int newy ;
	int newwidth ;
	int newheight ;
	 R_Rectangle * ans ;

	 newx  =  asInteger( r_newx ) ;
	 newy  =  asInteger( r_newy ) ;
	 newwidth  =  asInteger( r_newwidth ) ;
	 newheight  =  asInteger( r_newheight ) ;

	ans = new R_Rectangle ( newx, newy, newwidth, newheight );
	 r_ans =  R_createNativeReference( (void *)  ans ,  "R_RectanglePtr" , "R_RectanglePtr" ) ;

	 return(r_ans);
}
