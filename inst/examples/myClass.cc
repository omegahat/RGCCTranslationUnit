class RmyClass {

public:
  int plot() {
    return(0);
  }

protected:
  int x;
  double y;
};

#if 0
void
foo(RmyClass m)
{
  m.plot();
}
#endif

int
main(int argc, char *argv[])
{
  RmyClass m;
  m.plot();
  return(0);
}
