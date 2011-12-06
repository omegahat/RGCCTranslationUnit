
#include <stdio.h>
#include <stdlib.h>

#define MSG(x) fprintf(stderr, x"\n");

class MyClass {
  public:
	void draw(int x) {MSG("MyClass::draw(int)")}
	virtual void Scale(void) {MSG("MyClass::Scale()")}
	void Scale(int a, double b, const char *c){MSG("MyClass::Scale(int,double,const char*)")}
	
	void p(int x, int y = 3){MSG("MyClass::p(int,int)")}

    int field1;
    double field2;
};

class MyOtherClass : public MyClass {
  
public:
	int otherField1;
	virtual void p(bool b) { MSG("MyOtherClass::p(bool)") }
};


class A {

  public:
	int a;

  virtual int foo() {return(-1);}
  virtual int mine() {return(1);}
  virtual int yours() {return(1);}
  void  bar() {}

  double p(const char *name) { fprintf(stderr, "A::p(const char *) %s", name); return(p());}
protected:
  double p() {return(3.1415);}

#if 0
private:
  A(){}
  A(const A&a){}
#endif
};

class B : public A {
  public:
	B() : b(27) {};
      int b;
      virtual int mine() {return(2);}
      virtual int yours() {return(101);}

protected:
      void b_m(){};

      int p_i;
};

class C : public B, public MyOtherClass {
  public:
      C() : B(), b(3){};
      int b;
      void init() { b = 2; B::b = 25;}
      using B::p;
      using MyOtherClass::p;

      int foo() { return(3);}
      int foo(int x) { return(x);}
      virtual int yours() {return(201);}
      virtual int cmethod(){ return(301); }

      int showFields() { fprintf(stderr, "C::b = %d, B::b = %d\n", b, B::b); return(0);}
};



class X {
public:
	int x() {return(1);};
};

class Y : public X
{

public:
	int y_field;
	int field1; // same as MyClass so that we have shadowing for Z
};

class Z : public Y, public MyClass
{
public:
	Z() {
  	  Y::field1 = 1;
  	  MyClass::field1 = -1;
	}
	int getField1_y(){ return(Y::field1);}
	int getField1_myclass(){ return(MyClass::field1);}
};

#define USE_COPY 1
#if defined(USE_COPY) && USE_COPY
class Copy {
protected:
	int x;
	static int Count;

	int data[10];
private:	

public:
	virtual int operator[](int i) { 
                   if(i > -1 && i < sizeof(data)/sizeof(data[0]))
                     return(data[i]);
                   return(-9999); // how about an exception
               };
	
        Copy() {
	    for(int i = 0; i < sizeof(data)/sizeof(data[0]); i++)
		data[i] = 3 * i *i;
	}
#if 0
#define BOP(op) bool operator op (const Copy &a);
	virtual bool operator~();
	virtual bool operator!();

	virtual Copy& operator=(const Copy &a);
	BOP(==);
	BOP(!=);		
	BOP(>);
//	virtual bool operator==(const Copy &a);
//	virtual bool operator!=(const Copy &a);
//	virtual bool operator>(const Copy &a);
	virtual bool operator<(const Copy &a);
	virtual bool operator&&(const Copy &a);
	virtual bool operator||(const Copy &a);
	virtual bool operator|(const Copy &a);
	virtual bool operator&(const Copy &a);
	virtual bool operator<<(const Copy &a);
	virtual bool operator>>(const Copy &a);
	virtual bool operator<<=(const Copy &a);
	virtual bool operator>>=(const Copy &a);
	virtual Copy operator->(void);
	virtual bool operator[](const Copy &a);
	virtual Copy operator()(const Copy &a);
	virtual Copy operator++(int );
	virtual Copy operator--(int);

	virtual Copy operator+(const Copy &a);
	virtual Copy operator-(const Copy &a);
	virtual Copy operator*(const Copy &a);
	virtual Copy operator/(const Copy &a);

	virtual Copy operator+=(const Copy &a);
	virtual Copy operator-=(const Copy &a);
	virtual Copy operator*=(const Copy &a);
	virtual Copy operator/=(const Copy &a);

	virtual bool operator<=(const Copy &a);
	virtual bool operator>=(const Copy &a);


	virtual bool operator^(const Copy &a);
	virtual bool operator^=(const Copy &a);

	virtual bool operator|=(const Copy &a);
	virtual bool operator&=(const Copy &a);

	virtual bool operator%=(const Copy &a);
	virtual bool operator%(const Copy &a);

	virtual Copy operator->*(const Copy &a);
	virtual Copy operator,(const Copy &a);
#endif
};
#else
#warning "Don't forget about the operators in Copy"
#endif

int Scale(double q, bool r, const char *s, long t);
int Scale(bool r);



#if 0

int* getEls(int x[10]);

typedef struct Node Node, *NodePtr;
typedef bool (NodeWalker)(const Node *n, void *data);
void walker(NodeWalker w);

#else
/*
#warning "Don't forget about the arrays and NodeWalker function pointer"
 */
#endif

extern const char MainString[10];
