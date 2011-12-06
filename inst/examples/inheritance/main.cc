#include "Classes.h"

C *c;
Y *y;
Z *z;

#if defined(USE_COPY) && USE_COPY
Copy *copy;
#endif

void
foo()
{
  C c;

  C b(c);
}
