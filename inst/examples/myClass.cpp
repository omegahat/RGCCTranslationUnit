class Other {

public:
  Other() {}

  int table(int x) { return(_table[x]); }

protected:
  int *_table;

};

class A {

 public:
  A() {};
  A(int x) { setX(x); }
  A(int x, double y) { setX(x); this->y = y; };

  int getX() { return(x); }   
  void setX(int val) { x = val; }   

  void foo(int x = 2) { };

 protected:
  int x;
  double y;
  char *str;
};

class B : public A, public Other
{
 public:
     B() {};
     B(int val) : A(val) {};
     B(bool v);

     int square() {return( getX()* getX());}
     int shift(int a, int b);

     int bob() { return(1);}
     int bob(int x) { return(x);}
     int bob(double x) { return((int) x * 2);}
     int bob(long x) { return((int) x * 3);}

protected:
    int notForYou(int x);
    int notForYou(double x);
    void internal(double x);

protected:
  bool z;
  A *ref;

};

class C : public B
{
};

