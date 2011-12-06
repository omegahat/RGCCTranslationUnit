/*
  Read the content from an R connection on an as needed basis.
  This requires knowledge about R data structures so is in a file of its own.
 */
class RConnectionContentSource : public ContentSource {

    static const int MAX_SIZE = 500;
protected:

    SEXP expr;
    char buf[MAX_SIZE];

   
public:

    RConnectionContentSource(SEXP con) {
	expr = allocVector(LANGSXP, 3);
	
	R_PreserveObject(expr);
	SETCAR(expr, Rf_install("readLines"));
	SETCAR(CDR(expr), con);
	SETCAR(CDDR(expr), ScalarInteger(1));
	Rf_PrintValue(expr);

    } 

    ~ RConnectionContentSource() {
	R_ReleaseObject(expr);
    }

    const char * getLine() {
	SEXP ans = Rf_eval(expr, R_GlobalEnv);
	if(TYPEOF(ans) != STRSXP) {
	    // error
	}

	if(length(ans) == 0) {
	    return(NULL);
	}

	strncpy(buf, CHAR(STRING_ELT(ans, 0)), MAX_SIZE);
	return(buf);
    }
};
