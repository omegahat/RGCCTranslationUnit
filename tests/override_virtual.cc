class A {
  public:
    virtual int foo() { return(1);}
};

class C : public A {
    virtual int foo() { return(2);} 
};

class B : public A {
  public:
    int foo() { return(-1);}   
};

#include <stdio.h>

int
main(int argc, char *argv[])
{
  A a;
  B b;
  B *p;

  fprintf(stderr, "a.foo() %d\n", a.foo());
  fprintf(stderr, "b.foo() %d\n", b.foo());
  fprintf(stderr, "b->A::foo() %d\n", b.A::foo());

  p = &b;
  int ans;
  ans = dynamic_cast<A*>(p)->foo();
  fprintf(stderr, "dynamic_cast<A*>(p)->foo() %d\n", ans);
  ans = static_cast<A*>(p)->foo();
  fprintf(stderr, "static_cast<A*>(p)->foo() %d\n", ans);


  C c;
  ans = static_cast<A*>(&c)->foo();
  fprintf(stderr, "static_cast<A*>(&c)->foo() %d\n", ans);
  ans = dynamic_cast<A*>(&c)->foo();
  fprintf(stderr, "dynamic_cast<A*>(&c)->foo() %d\n", ans);
  

  return(0);
}
