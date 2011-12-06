#include <stdlib.h>
#include <string.h>

#include "structs.h"

A*
createA()
{
  return((A *) calloc(1, sizeof(A)));
}

A
returnA()
{
  A a;
  a.x = 10;
  a.y = 3.1415;
  a.str = strdup("Hi there, Mr A"); /* local value otherwise */

  return(a);
}


struct F
makeF()
{
  struct F f = { 1, 1.33};
  return(f);
}
