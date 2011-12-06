extern unsigned int ui;
extern double d;
extern int i;
extern short s;
extern long l;
extern unsigned long ul;

extern long long ll;
extern unsigned short us;

extern int array[10];
extern unsigned int uarray[8];

extern unsigned short usarray[3];


extern int *pointer;
extern int pointerLen;

typedef struct {
   int i;
   unsigned uarray[3];
} A;

extern A a, *ap;

extern unsigned long long int ulli;
extern long double ld;

extern unsigned char uc;


extern const int fixed;

/* Not valid!
extern unsigned double ud;
extern long short ls;
*/


typedef struct _X {
 int a;
 double b;
} X;

extern X xarray[4];

typedef struct _Element Element;

#define TWO_D_ARRAY 1
#ifdef TWO_D_ARRAY
#include "twod.h"
#endif



#define LINKED_LISTS 1
#ifdef LINKED_LISTS
struct _Element {
   int content;
   Element *next;
   Element *prev;
};

Element *makeList(int n);
#endif

struct D {
	int val;
};

struct E {
	struct D ad;
};

struct F {
	struct E *ae;
	struct D *ad;
};

struct G {
	struct E ae;
	struct D ad;
	struct F af;
};

extern struct D d_struct;
extern struct E e_struct;
extern struct F f_struct;
extern struct G g_struct;

void init(void);


struct L5 {
   int i;
   double d;
   int a5[5];
};

struct L4 {
   struct L5 l5;
   int x4;
   int a4[4];
};

struct L3 {
   struct L4 l4;
   int x3;
   int a3[3];
};

struct L2 {
   struct L3 l3;
   int x2;
   int a2[2];
};

struct L1 {
   struct L2 l2;
   int x1;
};

extern struct L1 l1;


int Aroutine(A a);



#ifdef TEST_UNION
typedef union {
   int i;
   double d;
} U;

enum UnionType {Int = 1, Double};
typedef struct _Ut{
  enum UnionType type;
  U u;
} Ut;

extern Ut ut;

extern void toggle_u();
#endif
