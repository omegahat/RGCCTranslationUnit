struct F {
  int i;
  double d;
};

typedef struct B Fake;


typedef struct {

  int x;
  double y;
  char *str;
  
  /*XXX Put another struct in here also to test things.*/
  struct F f;

} A;

A* createA();
A returnA();

struct F makeF();

