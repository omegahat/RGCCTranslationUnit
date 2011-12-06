#ifndef ABC_H
#define ABC_H 1

#include <stdio.h>

struct E {
   int i;
};

class Other {

public:
  Other() {}

  int table(int x) { return(_table[x]); }

protected:
  int *_table;

};

class A {

 public:
  A() {};
  A(int x) { setX(x); }
  A(int x, double y) { setX(x); this->y = y; };

  int getX() { return(x); }   
  void setX(int val) { x = val; }   

/* The inclusion of the virtual keyword, makes the resolveType for this class go nuts.
   Fixed now to and we skip the virtual table in a routine. */
  virtual void foo(int x = 2) { fprintf(stderr, "In A::foo %d\n", x);};

 protected:
  int x;
  double y;
  char *str;
};

class B : public A, public Other
{
 public:
     B() : A(4) { z = true;};
     B(int val) : A(val) { z = true;};
     B(bool v) { z = v; };

     int square() {return( getX()* getX());}
     int shift(int a, int b);

     int bob() { return(1);}
     int bob(int x) { return(x);}
     int bob(double x) { return((int) x * 2);}
     int bob(long x) { return((int) x * 3);}

     static int StaticMethod(int x);

protected:
  bool z;
  A *ref;
};

#if 1
class C : public B
{
 public:
	long bar(int x) { return((long) 10L + x);}
 void foo(int x = 2) { fprintf(stderr, "In C::foo %d\n", x); }
};
#endif

char *foo(int x, double y, char *str);



#endif

