#include "Classes.h"

int Scale(double q, bool r, const char *s, long t)
{
  return(-101);
}

int Scale(bool r)
{
  return(-203);
}

int vals[10];

int *
setEls(int x[10])
{
  int i;

  for(i = 0; i < 10; i++)
    vals[i] = x[i];

  return(vals);
}

const char MainString[10] = "My String";

int Copy::Count = 0;
