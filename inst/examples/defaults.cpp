typedef struct  {
  int i;
  double d;
} X;

X global_x = {1, 2.0};

int
foo(int i, double d = 0.0, X x = global_x)
{
  return(i + x.i);
}


double
bar(int i, double d = 99.0)
{
  return(i + d);
}

#include <string.h>

int
len(const char *str = "my string")
{
  strlen(str);
}

 
class Z {

  public:
  double foobar(int x, double d = 3.0, const char *msg = "A message") {
      count ++;
      return(x + d);
  }

  double foobar(double a, double b = 101.0, const char *c = "Another message") {
      count ++;
      return(a + b);
  }


  double xar(double a, double b = 101.0, int c = 1) {
   return(a + b + c);
  }

  double xar(int a, double b = 1.0, int c = 2) {
   return(a + b + c);
  }

  double xar(int x, int y = 4.0, int z = 3) {
   return(x + y + z);
  }

/*
 This should map to 
 setGeneric("xar", function(z, a = 0, b = 0, c = 0) standardGeneric("xar"))

 setMethod("xar", c(z = "ZPtr", a = "numeric"),
             function(z, a, b = 101.0, c = 1) {
print(b)
                .xCall("R_Z_ar_double_double_int", z, a, as.numeric(b), as.integer(c))
             })

 setMethod("xar", c(z = "ZPtr", a = "integer"),
             function(z, a, b = 1.0, c = 2)
                .xCall("R_Z_ar_int_double_int", z, a, as.numeric(b), as.integer(c)))

 setMethod("xar", c(z = "ZPtr", a = "integer", b = "integer"),
             function(z, a, b = 4.0, c = 3)
                .xCall("R_Z_ar_int_int_int", z, a, b, as.integer(c)))
*/

  protected:
    int count;
};

double foobar(Z *a)
{
  return(a->foobar(1));
}
