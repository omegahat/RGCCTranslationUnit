#include "typemap.h"
#include <Rinternals.h>
#include <Rdefines.h>

#include <stdio.h>

FILE *
R_openFile(SEXP r_f, SEXP r_mode)
{
    char *fileName;
    char *mode = "r";
    FILE *f;
    
    fileName = CHAR(STRING_ELT(r_f, 0));
    f = fopen(fileName,  CHAR(STRING_ELT(r_mode, 0)));
    if(!f) {
	PROBLEM "cannot open file %s", fileName
        ERROR;
    }

    return(f);
}

#include "RConverters.h"
SEXP
R_asFILERef(SEXP r_f, SEXP r_mode)
{
    FILE *f;
    char *fileName;

    fileName = CHAR(STRING_ELT(r_f, 0));
    f = fopen(fileName,  CHAR(STRING_ELT(r_mode, 0)));
    if(!f) {
	PROBLEM "cannot open file %s", fileName
        ERROR;
    }

    return(R_MAKE_REF_TYPE(f, FILERef));
}

SEXP
R_closeFile(SEXP r_fileref)
{
    FILE *f;
    f = R_GET_REF_TYPE(r_fileref, FILE);
    if(f)
       fclose(f);
    return(R_NilValue);
}
