#include "globalRef.h"

int i = 10;
S s, *ps = &s;

const int myConstant = 21;

void 
foo(int *x)
{
	*x = 2;
}

void
bar(S *x)
{
	x->i = 3;
	x->d = 3.1415;
}


/*
gtu = setLanguage(gtu, "C")
ii = generateInterface("~/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/inst/Example/globalRef.c.001t.tu", 
                       outfile = "~/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/inst/Example/RglobalRef", 
                       language = "C", 
                       includes = c('"globalRef.h"', '"RConverters.h"'))


 R CMD SHLIB RglobalRef.c globalRef.c RConverters.c 
 
 dyn.load("RglobalRef.so")
 source("RglobalRef.R")

 i
 s
 ps


 a = new("S")
 a@i = 2L
 a@d = 1.2

 as(as(a, "SPtr"), "S")

 ss = new_S()
 ss$i = 2
 ss$d = 1.2
 as(ss, "S")
*/
