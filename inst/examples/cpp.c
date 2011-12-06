#define A "a string"
#define MAX(a, b)  ((a) < (b) ? (b) : (a))

int
foo(int a, int b)
{
   return(MAX(a,  b));
}

