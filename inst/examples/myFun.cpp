#include <string.h>
#include "enum.h"


double xfoo(int xx, unsigned int y = 157, char *str = ""); 

double foo(int x, unsigned int y, char *str = "Boo!") 
{
  double ans = x + y + strlen(str);
  return(ans);
}

enum {H, S, V};
enum {RED, GREEN, BLUE};

typedef enum {ON, OFF = 4} State; 

State status;

struct _A {
  int a;
  long b;
};

typedef _A A;

struct _X {
  char el;
  int o;
};

typedef union {
  int x;
  double y;
} U;

A* bar(int x, A y, struct _X v, unsigned long z);
int mine(A &a);

U * getU();

int arr(int x[10], int y[]);

State getState() {
  return(status);
}

State setState(State val) {
  status = val;
  return(status);
}

char (*f)(int x, double y);

typedef char (*MyFunType)(int x, double y);

MyFunType cur;


const int MyFixedInt = 20;

/* 
 Arrays
 default arguments
 references
 classes
 enums
*/
