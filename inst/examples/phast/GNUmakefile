PHAST_INCLUDES=-I../phast/include
CXX=/usr/bin/g++
# can be one in phast source code or our version here that includes the header file.
# The former gets the parameter names correctly.

SRC_DIR=../phast/src/lib/msa/

msa.c.tu: $(SRC_DIR)msa.c
	$(CXX) $(PHAST_INCLUDES) -fdump-translation-unit -o /dev/null -c $<

mytest.c.tu: mytest.c mytest.h
	$(CXX) $(PHAST_INCLUDES) -fdump-translation-unit -o /dev/null -c $<


msa.dd: msa.c
	$(CC) $(PHAST_INCLUDES) -MM  -c $< > $@

msa.d: msa.c
	$(CC) $(PHAST_INCLUDES) -M  -c $< > $@


call.c.tu: call.c
	$(CXX) -fdump-translation-unit -c $< -o /dev/null

Rmsa.o: Rmsa.c
	R CMD COMPILE $<