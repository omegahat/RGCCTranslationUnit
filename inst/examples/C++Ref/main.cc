
#include "code.h"


int
main(int argc, char *argv[])
{
    A a;

    a.show();
    Foo &f = a.getF();
    f.bob( f.bob() + 1);
    f.x( f.x() * 2.);
    a.show();
    return(0);
}
