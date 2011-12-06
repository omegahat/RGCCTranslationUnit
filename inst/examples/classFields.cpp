class A {
 
 public:
   int i;
   double d;

 protected:
   int protected_i;

 private:
   double private_d;

 public:
   A() {
       i = 0;
       d = 3.1415;
       protected_i = 1;
       private_d = -2.718282;
   }
};

A 
foo()
{
  A a;
  a.i = 1;
  return(a);
}

