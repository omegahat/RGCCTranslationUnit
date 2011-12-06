#include "example.h" 
#include <RConverters.h> 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_do_op(SEXP r_a, SEXP r_b, SEXP r_op)
{
	
		SEXP r_ans = R_NilValue;
		int a ;
		int b ;
		int  (* op ) ( int, int ) ;
		 int ans ;
	
		 a  =  asInteger( r_a ) ;
		 b  =  asInteger( r_b ) ;
		 op  =  ( int  (*) ( int, int ) ) R_asFunctionPointer( r_op ,  do_op_fun ,  do_op_stack ); ;
	
		ans =  do_op ( a, b, op );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_do_op1(SEXP r_a, SEXP r_b, SEXP r_op, SEXP r_data)
{
	
		SEXP r_ans = R_NilValue;
		int a ;
		int b ;
		BinaryFun op ;
		void * data ;
		 int ans ;
	
		 a  =  asInteger( r_a ) ;
		 b  =  asInteger( r_b ) ;
		 op  =  ( int  (*) ( int, int, void * ) ) R_asFunctionPointer( r_op ,  NULL ,  NULL ); ;
		 data  =  TYPEOF( r_data ) == EXTPTRSXP ? R_ExternalPtrAddr( r_data ) :  (void *) r_data ;
	
		ans =  do_op1 ( a, b, op, data );
		 r_ans =  ScalarInteger ( ans ) ;
	
		 return(r_ans);
}
 
int
R_do_op1_proxy_callback ( int r1, int r2, void * r3 )
{
	SEXP e, p, r_ans;
	int ans ;
	  PROTECT(p = e = allocVector(LANGSXP, 3 ));
	  SETCAR(p, (SEXP) r3 ); p = CDR(p);
	
	SETCAR(p, ScalarInteger ( r1 ) ); p = CDR(p);
	SETCAR(p, ScalarInteger ( r2 ) ); p = CDR(p);
	
	PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
	ans = asInteger( r_ans ) ;
	UNPROTECT(2);
	return (ans) ;
} 
