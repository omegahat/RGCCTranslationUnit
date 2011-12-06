RAUTOGEN=$(OMEGA_HOME)/R/RAutoGenRunTime
PKG_CPPFLAGS=-I$(RAUTOGEN)/inst/include

# classes.cc xClasses.cc
SRC= Rgetrusage.c ../RConverters.c

# Manually created and overridden by generated code
#Circle.cc

Rgetrusage.so: $(SRC)

tu: getrusage.cc
	g++ -fdump-translation-unit -c getrusage.cc -o /dev/null

include ../Makefile.rules
