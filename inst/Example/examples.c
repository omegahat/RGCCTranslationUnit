#include <stdio.h>
#include <math.h>
#include "examples.h"


int MyGlobalInt = -1;

/* Use full 'struct Foo' declaration. */
struct Foo  elFoo1 = {-1, -3.141, MAGENTA};
/* Use the typedef here. */
SFoo  elFoo2 = {1, 2.3, BLACK};

/* static so non-global */
static RGB bgColor  =  BLUE;

SFoo *ptr;
struct Foo *fooPtr;

void
foo(int x)
{
    fprintf(stderr, "[foo] %d\n", x); fflush(stderr);
    x++;
}

int
incr(int x)
{
    fprintf(stderr, "[incr] %d\n", x); fflush(stderr);
    x++;
    return(x);
}


double
bar(int x, char *id)
{
    double s = 0;
    char *p = id;

    fprintf(stderr, "[bar] %d %s\n", x, id); fflush(stderr);

    while(p && p[0]) {
	s += p[0];
    }
    return(sqrt(s));
}


/* typedef enum {RED=1, BLUE=2, GREEN=4} RGB; */


double
Foo(struct Foo f, int z, RGB rgb)
{
    fprintf(stderr, "x = %d, y = %lf, primary = %d, z = %d, rgb = %d\n", f.x, f.y, f.primary, z, rgb);
    fflush(stderr);
    return(f.x + f.y + f.primary + z + rgb);
}


double
myFoo(struct Foo f, int z)
{
    double val;
    fprintf(stderr, "x = %d, y = %lf, primary = %d, z = %d\n", f.x, f.y, f.primary, z);
    fflush(stderr);
    val = (double) (f.x + f.y + f.primary + z);
    fprintf(stderr, "%lf\n", val); fflush(stderr);
    return(val);
}




struct Foo
aFoo()
{
    struct Foo f;

    f.x = 10;
    f.y = 3.141;
    f.primary = MAGENTA;

    fprintf(stderr, "%d", bgColor);

    return(f);
}

