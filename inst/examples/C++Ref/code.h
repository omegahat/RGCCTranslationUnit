class Foo {

  public:
    Foo(int a, double y) : _bob(a), _x(y) {};

    int &bob() { return _bob;};
    double x() { return _x;};

    int &bob(int v) { _bob = v; return _bob;};
    double x(double v) { _x = v; return _x;};

  protected:
    int _bob;
    double _x;
};

#include <stdio.h>


class A {
protected:
    Foo f;

public:
    A() : f(Foo(11, 100.2)) {
    };

    Foo &getF() {return f;};
    void show() {
	fprintf(stderr, "%d  %lf\n",  f.bob(), f.x());
    };
};
