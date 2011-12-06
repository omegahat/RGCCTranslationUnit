int foo(int a);
int bar(int x);
int dummyCondition();
int dummy();

int yes();
int no();

typedef int (*Callback)();

/* Remove the initialization of x, and we halve the number calls to foo.*/
int foobar() {
/* foo = 5, bar = 3, dummy = 2, dummyCondition = 1, yes = 2, no = 1
 */
    Callback fun = &dummy;
    int x = foo(1), i;
    int array[10];

    i = x + 1;
    for(i = 0; i < dummyCondition(); i++) {
	foo(bar(x));
        dummy();
        array[bar(x)];
    }

    fun();

    if(yes()) 
	foo(1);
    else {
	int z = foo(1);
	x += bar(foo(z));
    }

    dummy();

    return(x ? yes() : no());

}
