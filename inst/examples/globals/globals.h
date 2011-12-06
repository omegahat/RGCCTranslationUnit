#ifndef GLOBALS_H
#define GLOBALS_H

typedef struct {
  int x;
  double y;
} A;

extern A a;
extern A *aref;
extern int i;
extern const double x;


void update_a();
void update_aref();
void update_i();

void useInt(int );
void useAref(A *);
void useA(A);

#endif
