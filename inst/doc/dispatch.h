
/*
  Added fields to see about offsets
 */
class A {
public:
  virtual ~A(){}
  virtual int foo(int x);
  int foo(double x);

  virtual void bar(int x = 1);
  virtual void bar(int u, double v); // had default argument for v.
                                     // moved so we could call bar(int) unambiguously.

  virtual void multi(int u, double v);

  static void staticMethod();

  void other();

protected:
  int dummy;
  const char *str;
};

class B : public A {
public:
  virtual ~B(){}
    virtual int foo(int x, double y, int z = 0);
  int foo(int x);            // virtual from A.
  virtual int foo(double x); // virtual but does not override A's 
                             // method since it is not virtual.
  int foo(const char *);

  virtual void bar(int x = 1);

protected:
  int gratuitous;
};

class C {
public:
  virtual ~C(){}

   int foo(int x);
   int foo(double x);

   int bar(double f, int g, int h = 1);


   virtual void multi(int u, double v);
};

// top-level routine not in any class.
double foo(const char *, int y = -1);


/*  
  Multiple inheritance.
 */
class W : public A, public C {
public:
  virtual ~W(){}
    virtual void multi(int x, double y);
};


class D : public B {

public:
    virtual ~D(){}
    int foo(int x);
};

class Fields {
 
public:
    int i;
    double d;
    char *str;
    W     w;
};

class MoreFields : public Fields {

public:
    int otherI;
};
