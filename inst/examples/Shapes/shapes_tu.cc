#include "shapes.h"

int
main(int argc, char *argv[])
{
  Circle c(1,2, 3);
  Rectangle r(1, 2, 3, 4);
  c.draw();
  r.draw();
}
