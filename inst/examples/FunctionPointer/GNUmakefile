include ../Makefile.rules

SRC= doop.c example.c ../RConverters.c other.c

doop.so:  $(SRC)
	R CMD SHLIB -o $@ $(SRC)

doop.c example.c: example.h

tu:
	g++ -fdump-translation-unit -o /dev/null -c example.c 


-include $(DYN_DOCS)/inst/Make/Makefile
