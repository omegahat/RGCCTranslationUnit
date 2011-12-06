#include "RUtils.h"
#include <Rdefines.h>

Rboolean
R_isInstanceOf(SEXP obj, const char *klass)
{

    SEXP klasses;
    int n, i;

    klasses = GET_CLASS(obj);
    n = GET_LENGTH(klasses);
    for(i = 0; i < n ; i++) {
	if(strcmp(CHAR(STRING_ELT(klasses, i)), klass) == 0)
	    return(TRUE);
    }

    return(FALSE);
}

