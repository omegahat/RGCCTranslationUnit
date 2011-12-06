/* File : example.c */

#include "example.h"

int do_op(int a, int b, int (*op)(int,int)) {
  return (*op)(a,b);
}

int do_op1(int a, int b, BinaryFun op, void *data) {
	return op(a,b, data);
}

int add(int a, int b) {
  return a+b;
}

int sub(int a, int b) {
  return a-b;
}

int mul(int a, int b) {
  return a*b;
}

int (*funcvar)(int,int) = add;



int myCall(int a, int b, void *data)
{
	return(a + (b * a));
}
