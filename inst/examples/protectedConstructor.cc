// need gcc/g++ 4.3.* to get the info about the classes defined here. 
// 4.2.* doesn't emit this information.
#include <stdio.h>

class Foo {

public:
  int doit() { fprintf(stderr, "In do\n"); }

protected:
  Foo() { fprintf(stderr, "In protected constructor for Foo\n"); };
};

class Bar : public Foo {

public :
  Bar() {}
};


int 
main(int argc, char *argv[])
{
  Bar b;
  b.doit();
  return(argc);
}



