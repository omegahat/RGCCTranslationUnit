include Makevars

Rtypemap.so: RtypemapCode.c typemap.c Rutils.c $(AUTOGEN_DIR)/src/RConverters.o 
	R CMD SHLIB -o $@ $^

$(AUTOGEN_DIR)/src/RConverters.o: $(AUTOGEN_DIR)/src/RConverters.c
	(cd $(@D) ; R CMD COMPILE $(^F))


code:
	R --vanilla --no-save < typemap.R


