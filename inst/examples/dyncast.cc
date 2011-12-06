#include <stdio.h>

class A {
    void draw() { fprintf(stderr, "A\n"); };
};

class B {
    void draw() { fprintf(stderr, "Bn"); };
};


int main(int argc, char *argv[])
{
    A *a;
    a = new A();
    B *ptr = (B *) a;
    B *b = dynamic_cast<B*>(ptr);

    if(b)
        fprintf(stderr, "a = %p, b = %p\n", a, b);
    else
        fprintf(stderr, "Okay - NULL after cast\n");

    return(0);
}
