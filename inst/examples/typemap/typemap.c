#include "typemap.h"
#include <stdlib.h>

char *
getLine(FILE *f)
{
    char *tmp;
    tmp = (char *) calloc(1000, sizeof(char));
    fgets(tmp, 1000, f);
    return(tmp);
}


