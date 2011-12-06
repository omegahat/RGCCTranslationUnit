class  A {
 public:
    int x;
   
    virtual void calc() = 0;
};

class B {
 public:
    int y;
};

class C : public A, protected B {

  public:
    int c;

   virtual void calc() { } 
};

int
main(int argc, char *argv[])
{
    A *a;
    B *b;
    C c;

    c.calc();

    return(0);
}
