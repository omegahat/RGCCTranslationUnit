#include "twod.h"

double matrix[3][2] = {
	{1,2},
        {3,4},
        {5,6}
};

X xarray2D[3][5];

int iarray[2][3][4] =
{
	{ {1,2,3,4}, {5, 6, 7, 8}, {10,11,12,13}}, // missing 9
	{ {14,15,16,17}, {18,19,20,21}, {22,23,24,25}}
};

double *matrix_ptr = &(matrix[0][0]);


int iarray4D[2][3][4][5]
#if 0
 =
{
	{ 
	    { {1,   2,   3,   4,   5 }, { 6,   7,   8, 9,  10}, { 11,  12,  13,  14,  15}, { 16,  17,  18, 19, 20 } },
	    { {21,  22,  23,  24,  25 },  {26,  27,  28,  29,  30}, {31,  32,  33,  34,  35}, {36, 37,  38,  39,  40} },
	    { {41,  42,  43,  44 , 45}, {46,  47,  48,  49,  50}, {51,  52,  53,  54,  55}, {56,  57,  58,  59,  60 } }
	},
	{ 
	  { {61,  62,  63,  64, 65}, {66,  67,  68,  69,  70}, {71,  72, 73, 74, 75}},
 	  { {76,  77,  78,  79,  80 },  { 81,  82,  83,  84,  85}, {86,  87,  88,  89,  90}, { 91,  92,  93,  94,  95}, {96,  97,  98,  99, 100}},
	  { {101, 102, 103, 104, 105}, {106, 107, 108, 109, 110}, {111, 112, 113, 114, 115}, { 116, 117, 118, 119, 120}}
	}
}
#endif
;


int
init_iarray4D()
{
	int a, b, c, d, pos = 1;
	for(a = 0; a < 2; a++) 
	   for(b = 0; b < 3; b++)
	      for(c = 0; c < 4; c++)
		 for(d = 0; d < 5; d++)
		    iarray4D[a][b][c][d] = pos++;
}



#if 0
int
set_iarray4D()
{
	int sizes[] = {sizeof(iarray4D[0]), sizeof(iarray4D[0][0]), sizeof(iarray4D[0][0][0]), sizeof(iarray4D[0][0][0][0])};
	int counters[] = {0, 0, 0, 0};
	int numCounters = 4;
	int len = 2 * 3 * 4 * 5;
	int *p;

	for(i = 0; i < len, i++) {
	    *p = 100 + i;
	    updateCounters(counters, numCounters)
	    for(j = 
	    p = iarray4D + offset
	}
}
#endif


#include <stdlib.h>

float ***FloatPtr = NULL;

void
init_FloatPtr(int sizes[3])
{
  int n1, n2, n3, i, j, k, pos = 1;

  n1 = sizes[0];
  n2 = sizes[1];
  n3 = sizes[2];

  FloatPtr = (float ***) malloc(sizeof(double) * n1);
  for(i = 0; i < n1 ; i++) {
	  FloatPtr[i] = (float **) malloc(sizeof(double) * n2);
	  for(j = 0; j < n2 ; j++) {
	     FloatPtr[i][j] = (float *) malloc(sizeof(double) * n3);
    	     for(k = 0; k < n3 ; k++) {
  	        FloatPtr[i][j][k] = pos;
		pos = 2 * pos;
	     }
	  }
  }
}

#ifndef __cplusplus
int
sum_elements(size_t r, size_t c, const int els[][c])
{
   int i, j, total = 0;
   for(i = 0; i < r; i++)
     for(j = 0; j < c; j++)
         total += els[i][j];

   return(total);
}
#endif

