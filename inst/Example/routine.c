#include <Rdefines.h>

typedef struct {
    double vals[1000];
    char *id;
} ImageData;

SEXP copyImageDataToR(ImageData *d);

int
getImageData(char *inputFile,  ImageData *data)
{
    /* This reads data from the binary format and populates the ImageData structure.  */
}


SEXP
R_getImageData(SEXP inputFile)
{
    SEXP ans;
    ImageData data;

    getImageData( CHAR(STRING_ELT(inputFile, 0)), &data);
 
    ans = copyImageDataToR(&data);

    return(ans);
}

SEXP
copyImageDataToR(ImageData *d)
{
    SEXP ans, el, names;

    PROTECT(ans = allocVector(LISTSXP, 1));

    SET_VECTOR_ELT(ans, 0, mkString(d->id));

    PROTECT(el = allocVector(REALSXP, 1000));
    memcpy(REAL(el), d->vals, 1000*sizeof(double));
    SET_VECTOR_ELT(ans, 1, el);

    /* Put names on the result */
    SET_STRING_ELT(names, 0, mkString("id"));
    SET_STRING_ELT(names, 1, mkString("vals"));
    SET_NAMES(ans, names);

    SET_CLASS(ans, mkString("ImageData"));
    UNPROTECT(2);

    return(ans);
}


void
doCRoutine(int *len, char **str)
{

}






