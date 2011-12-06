#include <stdio.h>
#include "foo.h"

void
foo(char *str, double *data, int data_length, FooAction action, void *userData)
{
    boolean doAgain;

    do {

	doAgain = action(str, data, data_length, userData);
	/* Now do something useful. */

    } while(doAgain);
}


boolean
myAction(char *str, double *v, int v_length, void *data)
{
    int *ctr = (int *)data;

    fprintf(stderr, "[myAction] %d\n", *ctr);fflush(stderr);
    v[(*ctr)++]++;

    return(*ctr == 3 ? FOO_FALSE : FOO_TRUE); 
}

int
main(int argc, char *argv[])
{
    int n = 0;
    double v[4];
    v[0] = 1;
    v[1] = 2;
    v[2] = 10;
    v[3] = 20;
    
    foo("Bob", v, sizeof(v)/sizeof(v[0]), myAction, &n);

    return(0);
}


