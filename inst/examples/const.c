const int x = 10;
const double d = 3.1415;


const int arr[] = {1, 5, 10};

const double double_arr[] = {1.4, 5.6, 10.9};

const char * const names []  = {"abc", "def"};


char *str;
const char *str1 = "abc";    /* str1 and str2 are not constant, but have constant elements. */
char * const str2 = "xyz";   /* str2 is constant */ 
char  const *str3 = "xyz"; 

typedef struct {
  int a;
  const char *x;
} A;

const A a = { 1, "bob" };
A b;

#if 0
void
foo()
{
	names[1][0] = 'A';
	names[1] = "other";

	str[1] = 'A';
	str1[1] = 'x';
	str2[1] = 'A';
	str3[1] = 'A';
	str = "other";
	str1 = "other";
	str2 = "other";
	str3 = "other";

	a.x = "other";
	a.x[0] = 'A';
	b.x = "other";
	b.x[0] = 'A';
}

#endif

