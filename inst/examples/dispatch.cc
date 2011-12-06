typedef struct {

} A;

typedef struct {
  int i;
} B;

typedef struct {

} C;

typedef struct {
  int i;
} X;

//B g_b = {1};

void foo(C c);
void foo();
void foo(A a);
void foo(A a, B b);
void foo(A a, C c);
void foo(A a, B b, C c);
void foo(X x, B b);
void foo(A a, B b, X x);

void foo(X x, int b = 1);


