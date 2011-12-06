include Makevars

Rstruct.so: Rstruct.c struct.c Rstruct.c  $(AUTOGEN_DIR)/src/RConverters.o 
	R CMD SHLIB -o $@ $^

$(AUTOGEN_DIR)/src/RConverters.o: $(AUTOGEN_DIR)/src/RConverters.c
	(cd $(@D) ; R CMD COMPILE $(^F))

globalConstants.R: globalConstants
	./globalConstants > $@

globalConstants: globalConstants.o globals.o
	gcc -o $@ $^ 

code: struct.R  struct.c
	R --vanilla --no-save < struct.R


