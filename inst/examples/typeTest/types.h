class A {
  public:
    int x;
};

typedef struct B {
    double d;
} B;

typedef struct Other {
    double c;
    B b;
} C;


void foo(int, unsigned int, long, unsigned long, short, unsigned char, char *, const char*, 
	 A, A*, B, struct B, C, struct Other);

