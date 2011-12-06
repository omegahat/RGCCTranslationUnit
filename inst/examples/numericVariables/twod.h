extern double matrix[3][2];
extern double *matrix_ptr;

#ifndef TWO_D_ARRAY
typedef struct _X {
 int a;
 double b;
} X;
#endif

extern X xarray2D[3][5];

extern int iarray[2][3][4];


extern int iarray4D[2][3][4][5];
extern int init_iarray4D();


extern float ***FloatPtr;
void init_FloatPtr(int sizes[3]);

#define STRING_ARRAY 1
#if STRING_ARRAY
extern const char *Strings[7];
#endif

#ifndef __cplusplus
#include  <stdlib.h>
//XXX can't do this in C++
int sum_elements(size_t r, size_t c, const int els[][c]);
#endif
