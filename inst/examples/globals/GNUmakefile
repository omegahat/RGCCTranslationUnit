include Makevars

Rglobals.so: Rglobals.c RglobalsCode.c globals.c  $(AUTOGEN_DIR)/src/RConverters.o 
	R CMD SHLIB -o $@ $^

$(AUTOGEN_DIR)/src/RConverters.o: $(AUTOGEN_DIR)/src/RConverters.c
	(cd $(@D) ; R CMD COMPILE $(^F))

globalConstants.R: globalConstants
	./globalConstants > $@

globalConstants: globalConstants.o globals.o
	gcc -o $@ $^ 

code globalConstants.c: globals.c.tu globals.R
	R --vanilla --no-save < globals.R


