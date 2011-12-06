class Basic {
    int x;
};

typedef struct _Foo {
    int x;

} Foo;

void
foo()
{
    Basic b;
    int x;
    void *p;
    p = (void *) &b;
}
