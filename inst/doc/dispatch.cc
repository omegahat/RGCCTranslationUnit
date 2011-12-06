#include "dispatch.h"
#include <stdio.h>
#define MSG(x) fprintf(stderr, "<MSG> " x "\n");

int A::foo(int x) {
    MSG("A::foo(int x)");
    return(0);
}

int A::foo(double x) {
    MSG("A::foo(double x)");
    return(0);
}

int B::foo(int x) {
    MSG("B::foo(int x)");
    return(0);
}

int B::foo(double x) {
    MSG("B::foo(double x)")
    return(0);
}

int B::foo(int x, double y, int z) {
    MSG("B::foo(int x, double y, int)");
    return(0);
}

int B::foo(const char *) {
    MSG("B::foo(const char *)");
    return(0);
}

int C::foo(int x) {
    MSG("C::foo(int)");
    return(0);
}

int C::foo(double x) {
    MSG("C::foo(double)");
    return(0);
}

void A::bar(int x)
{
 MSG("A::bar(int)")
}

void A::bar(int a, double b)
{
 MSG("A::bar(int, double)")
}

void B::bar(int x)
{
 MSG("B::bar(int)")
}


int C::bar(double f, int g, int h)
{
    MSG("C::bar(double, int, int)");
    return(11);
}


void A::multi(int a, double b)
{
 MSG("A::multi(int, double)")
}

void C::multi(int a, double b)
{
 MSG("C::multi(int, double)")
}


void W::multi(int x, double y) {
    MSG("W::multi(int, double)")
}

int D::foo(int x) {
    MSG("D::foo(int)");
    return(0);
}


double 
foo(const char *x, int y)
{
    MSG("top-level foo");
    fprintf(stderr, "y = %d\n", y);
    return(1.2345);
}


void A::staticMethod()
{
    MSG("A::staticMethod")
}

void A::other()
{
    MSG("A::other");
}

int
main(int argc, char *argv[])
{
    A a, *ptr;
    B b;
    C c;
    D d;
    Fields f;
    MoreFields o;


    a.foo(1);
    b.foo(2, 0);

    ptr = &a;
    ptr->foo(1);

    ptr = &b;
    ptr->foo(1);

    ptr->foo(1.1); // not virtual so gets A's

    c.foo(2);
    c.foo(2.1);

    a.bar();
    b.bar();

    a.bar(1, 1.1);

    ptr->bar();
    ptr->A::bar();

    MSG("Moving to W")

    W *w, iw;
    w = &iw;
    iw.multi(1, 1.0);
    w->multi(1, 1.1);
    w->A::multi(1, 1.1);
    w->C::multi(1, 1.1);

    MSG("reinterpret_cast");
    C *tmp = reinterpret_cast<C *>(w);
    tmp->multi(1, 1.1);

    MSG("static_cast");
    tmp = static_cast<C *>(w);
    tmp->multi(1, 1.1);

    MSG("dynamic_cast");
    tmp = dynamic_cast<C *>(w);
    tmp->multi(1, 1.1);


    foo("my name");

    return(0);
}


