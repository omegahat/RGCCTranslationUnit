typedef enum {CYAN = 1, MAGENTA = 2, YELLOW = 4, BLACK = 8} CYMK;

struct Foo {
    int x;
    double y;
    CYMK primary;
};


typedef struct Foo SFoo;

struct Foo aFoo();

typedef enum {RED=1, BLUE=2, GREEN=4} RGB;

double myFoo(struct Foo f, int z);
double Foo(struct Foo f, int z, RGB rgb);
double bar(int x, char *id);
int incr(int x);
void foo(int x);


