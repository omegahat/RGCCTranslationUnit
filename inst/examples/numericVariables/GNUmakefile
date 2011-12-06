SRC= Rvars.c vars.c ../RConverters.c

Rvars.so: $(SRC)

tu: vars.c
	g++ -fdump-translation-unit -c $< -o /dev/null

twod.so: twod.c twod.h
	R CMD SHLIB -o twod.so Rtwod.c twod.c ../RConverters.c
%.tu: %.c
	g++ -fdump-translation-unit -c $< -o /dev/null

clean:
	rm *.o *.so

include ../Makefile.rules
