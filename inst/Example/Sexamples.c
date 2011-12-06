#include "RConverters.h"

/* C code */
SEXP
R_foo(
	SEXP s_x
	)
{

	  /* Return values for call to routine and for R. */
	SEXP ans = R_NilValue;



	  /* Declarations for local variables */
	int x = convertFromRToInt(s_x);

	  /* call the actual routine. */
	foo(x);

	return(ans);
}

/* C code */
SEXP
R_incr(
	SEXP s_x
	)
{

	  /* Return values for call to routine and for R. */
	SEXP ans = R_NilValue;
	int rvalue;



	  /* Declarations for local variables */
	int x = convertFromRToInt(s_x);

	  /* call the actual routine. */
	rvalue = incr(x);

	ans = convertIntToR(rvalue);

	return(ans);
}


