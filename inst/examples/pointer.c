/*
  x is an input only array with len elements
  We write onto the value of y
*/
void outArg(int *x, int len, double *y)
{
   int i;

   *y = 0.;
   for(i = 0; i < len; i++)
       *y += x[i];
}

void foo(int y)
{
    int *x = &y;
    x[0] = 2;
    *x = 3;
    x[3] = 5; /* not correct! */
}
