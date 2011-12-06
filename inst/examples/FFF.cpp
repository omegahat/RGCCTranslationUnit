#include "ABC.h"

#include <string.h>

int
B::shift(int a, int b)
{
  return(a + b * getX());
}

char *
foo(int x, double y, char *str)
{
  char buf[1000];
  sprintf(buf, "%s: %d %f", str, x, y);
  return(strdup(buf));
}


void
bar(A *a, B * b)
{
 a = new B();
 b->shift(1, 2);
}


int 
B::StaticMethod(int x)
{
  return(x + 10);
}
