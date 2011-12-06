#include "myClass.h"
#include <stdio.h> /* for NULL */

int Next::i(int val)
{
    int old = Top::i(val);
    istar = this->_i * 1.5;
    return(old);
}


extern "C" {
  void *  newNext(int i);
}


void * newNext(int i) 
{
    return(new Next(i, NULL));
}
