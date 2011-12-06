#include <Rinternals.h>
#include <Rdefines.h>

SEXP
R_call(SEXP a, SEXP b, SEXP c)
{
    return(R_NilValue);
}


SEXP
R_ambiguous(SEXP a, SEXP b, SEXP c, SEXP d)
{

    return(R_NilValue);
}

SEXP
R_external(SEXP a, SEXP b, SEXP c, SEXP d)
{

    return(R_NilValue);
}


void
R_c(int *len, double *vals, char **names, char *raw_data)
{

}

void
R_otherc()
{

}
