typedef int IArray[10];

int x[10];
int a[3][7];


IArray *A()
{
  IArray a;
 
  return(&a);
}


double B(IArray in)
{
 
  return(1.0);
}

double C(int x[] , int len)
{
   return(0.0);
}

double D(int x[10])
{
  return(0.0);
}
