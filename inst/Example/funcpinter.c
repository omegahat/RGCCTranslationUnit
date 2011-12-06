#include <stdio.h>

typedef enum {FALSE, TRUE} Boolean;

typedef struct SEXPREC *SEXP;
typedef struct sv   *SV;

typedef Boolean (*Predicate)(SEXP value, SEXP type, int recurse);
typedef SV (*Convert)(SEXP value, SEXP type, int recurse);

SEXP dummy;


typedef struct _Converter {
    struct _Converter *next;

    Convert convert;
    Predicate check;

} Converter;


static Converter *Converters;

Convert
check(SEXP value, SEXP type, int recurse)
{
    Converter *converters = Converters;
    Predicate p;

    while(converters) {
	p = converters->check;
	if(p(value, type, recurse))
	    return(converters->convert);
	converters = converters->next;
    }

    return((Convert) NULL);
}
