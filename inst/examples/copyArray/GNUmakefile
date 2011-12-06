CXX=/usr/bin/g++

RcopyArray.so: RcopyArray.c $(AUTOGEN_DIR)/src/RConverters.o 
	R CMD SHLIB -o $@ $^

$(AUTOGEN_DIR)/src/RConverters.o: $(AUTOGEN_DIR)/src/RConverters.c
	(cd $(@D) ; R CMD COMPILE $(^F))

code:
	R --vanilla --no-save < copyArray.R

copyArray.c.tu: copyArray.c copyArray.h
	$(CXX) -fdump-translation-unit -c -o /dev/null copyArray.c
