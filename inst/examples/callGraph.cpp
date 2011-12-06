
double a();
int b();
void c();
void d();

extern void e(int);


void
foo() {
  a();
  b();
}

double
a()
{
  b();
  c();
  return(1.0);
}


int
b()
{
  a();
  d();
  return(3);
}

void
c()
{
  a();
  b();
  d();
}

void
d()
{
  int i, n;
  double x = a();

  for(i = 0; i < b(); i++)  {
     while(x) {
        e(i);
     }
  }


}
