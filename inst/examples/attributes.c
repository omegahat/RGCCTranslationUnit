int foo(int x, int n __attribute__ ((__unused__))) __attribute__ ((__deprecated__));

int
foo(int x, int n __attribute__ ((__unused__)))
{
	return(x+1);
}

void
bar()
{
	foo(1, 2);
}
