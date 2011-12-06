#include <stdlib.h>

typedef struct {

  int x;
  double y;
  char *str;
  
  /*XXX Put another struct in here also to test things.*/
} A;


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
  a.str = "Hi there, Mr A"; /* local ?*/

  return(a);
}



