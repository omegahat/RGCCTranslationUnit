struct U {
  int x;
};

typedef struct _S {
  double y;
} S;



class A 
{
      public:
        int x;
	
      protected:
	double y;
};

class B {

      public:
          B(A *a);

	  A *doIt(int x);
};

extern struct U foo(S s, struct U *u, B &b, A *a);
