#include <stdlib.h>

int x[7];
char z[5];

double dd[11];

typedef enum { RED, GREEN, BLUE} Color; 
Color colors[3];

struct FooType {
    int x;
    char *y;
    Color colors[3];    
};

struct FooType zz;

struct FooType foos[19];

extern struct FooType xx(int [3], struct FooType tp);

void foo(int x[7], double z[])
{

}


char **
foobar(char *str, char sep)
{
    char *tmp = str, **ans;
    int ctr = 0;

    while(tmp[0]) {
	if(tmp[0] == sep)
	    ctr++;
	tmp++;
    }

    if(ctr == 0) {
	return(NULL);
    }

    ans = (char **) malloc((ctr + 1)* sizeof(char *));

    tmp = str;
    ctr = 0;
    while(tmp[0]) {
	if(tmp[0] == sep) {
	    tmp[0] = '\0';
	    ans[ctr++] = tmp+1;
	}
	tmp++;
    }
    ans[ctr] = NULL; /* Null terminated array. */

    return(ans);
}

/* Whoever calls this needs to know the number of elements, so we have
   an out argument which is used to relay this information. 

   The only ways we can really "know" that this is the length of the array
   is to 
    a) read the C code, or 
    b) to use some convention in the name 
       (e.g. returnValueLength/return_value_length), or
    c) allow the person who is creating the automated bindings to 
       provide additional information (interactively or ahead after the 
       descriptions of the routines, etc. have been created, but before
       the code is generated).

    a) is made complicated both by the need to have code that processes
     the source and detects the length. And more problematic is the 
     need to have the source available, which is commonly not possible
     (e.g. system headers).

    b) we can build heuristics that can do this by examining the names of
      the arguments.
  */
char **
getNames(int *length)
{
    static char *names[] = {"A", "XYZ", "DEF"};
    *length = 3;
    return(names);
}
