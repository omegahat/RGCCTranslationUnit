#include "vars.h"

unsigned int ui;
double d;
int i;
short s;
long l;
unsigned long ul;

long long ll;
unsigned short us;

int array[10] = {1, 2, 3, 4, 5, 6, 7, 8 , 9, 121};
unsigned int uarray[8] = {4, 6, 4, 6, 5, 5, 3, 10};

unsigned short usarray[3] = {200, 201, 202};

A a = {3, {1,2,3}}, *ap = &a;


unsigned long long int ulli;
long double ld = 3;

unsigned char uc;

const int fixed = 3;

int *pointer;
int pointerLen;

X xarray[4] = { {1, 2.3},
		{2, 3.2},
		{3, 4.1},
		{4, 5.0}};


#ifdef TWO_D_ARRAY
#include "twod.c"
#endif

#ifdef LINKED_LISTS
#include <stdlib.h>

Element *
makeList(int n)
{
   Element *el, *p;
   int i = 1;

   p = el = (Element *) malloc(sizeof(el));
   el->prev = NULL; el->next = NULL;
   while(i < n) {
       p->next = (Element *) malloc(sizeof(el));
       p->next->next = NULL;
       p->next->prev = p; 
       p = p->next;
       i++;
   }

   return(el);
}
#endif

struct D d_struct = {3};
struct E e_struct = {{3}};
struct F f_struct = {&e_struct, &d_struct};
struct G g_struct;

void
init()
{
	int i;

	g_struct.ae = e_struct;
	g_struct.ad = d_struct;
	g_struct.af = f_struct;

	pointerLen = 30;
	pointer = (int *) malloc(sizeof(int) * pointerLen);
	for(i = 0; i < pointerLen; i++)
	    pointer[i] = i * i * 2;
}


struct L1 l1;

#ifdef STRING_ARRAY
const char *Strings[7] = {
   	"First", "Second", "Third", 
	"Fourth", "Fifth", "Sixth", "Seventh"
     }; 
#endif


int Aroutine(A a)
{
     return(a.i);
}


#ifdef TEST_UNION
Ut ut;

void toggle_u()
{
   if(ut.type == 0) {
      ut.type = Int;
      ut.u.d = 3.141;
   }
   ut.type == ut.type == Int ? Double : Int;
   if(ut.type == Int)
      ut.u.i = ut.u.d + 1;
   else
      ut.u.d = ut.u.i + 1;
}
#endif
