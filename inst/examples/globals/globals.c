#include "globals.h"

A a;

static A dummy = { 1, 3.1414};
A *aref = &dummy;

int i;
const double x = 1.0;

void
update_i()
{
    i++;
}

void
update_a()
{
    a.x++;
}

#include <stdlib.h>

void
update_aref()
{
    A *prev = aref;
    aref = (A *) malloc( sizeof(A) );
    aref->x = prev->x + 1;
    aref->y = prev->y;
}



#include <stdio.h>

void
useAref(A *val)
{
    fprintf(stderr, "In useAref %d\n", val->x);
}


void
useA(A val)
{
    fprintf(stderr, "In useA %d\n", val.x);
}


void
useInt(int x)
{
	fprintf(stderr, "In useInt %d\n", x);
}


