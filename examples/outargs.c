#include "outargs.h"
void
myVoid(int x, A *a, B *b)
{
    a->x = x;
    a->y = 3.1415;
    b->str = "my string";
}



int
myInt(int x, A *a, B *b)
{
    myVoid(x, a, b);
    return(11);
}


