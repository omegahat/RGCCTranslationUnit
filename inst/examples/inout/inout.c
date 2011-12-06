
typedef struct {
  int x;
  double d;
} A;


int foo(int n, int *x, A *a)
{
  int i = 0;
  for(i = 0; i < n; i++)
     a->x += x[i];

  return(a->x);  
}


int bar(int n, int *x, A *a)
{
  int i = 0;
  for(i = 0; i < n; i++)
     x[i] = 1; 

  return(a->x);  
}
