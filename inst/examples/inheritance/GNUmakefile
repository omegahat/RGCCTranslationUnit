RAUTOGEN=$(OMEGA_HOME)/R/RAutoGenRunTime
PKG_CPPFLAGS=-I$(RAUTOGEN)/inst/include

# classes.cc xClasses.cc
SRC= IFaces.cc RClasses.cc routines.cc Cast.cc Methods.cc ../RDerivedClass.cpp  ../RConverters.c  

#Classes.cc

# Manually created and overridden by generated code
#Circle.cc

foo.so: $(SRC)

%.o: %.cc
	R CMD COMPILE $<

testCast: testCast.cc Classes.h Methods.cc
	  $(CXX) -o $@ $^

tu: main.tu

include ../Makefile.rules
