
#include <stdlib.h>

typedef int (*Comparator)(void *a, void *b);

Comparator compare;

int
sort(int *x, size_t len, Comparator comp)
{
	int val;
	unsigned int i;
	for(i = 0; i < len ; i++) {
		val = comp(x +i, x + i+1);
		if(val)
		    x[i+1] = x[i];
	}

	return(0);
}

