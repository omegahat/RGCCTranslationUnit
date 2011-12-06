class A {
public:
  A(int x, int y) {}
  A(int x, int y, int z) {}
};

class B {
public:
  B() {};
  B(int a){}
};


class C : public A,  public B {
public:
  C(int x, int y) : A(x, y), B() {}
  C(int x, int y, int z) : A(x, y, z), B() {}
  //  C(int x, int y, int a) : A(x, y), B(a) {}
  C(int x, int y, int z, int a) : A(x, y, z), B(a) {}
};
