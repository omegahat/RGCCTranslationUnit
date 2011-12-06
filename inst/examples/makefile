# e.g.
# make  ~/Projects/R/R-devel/src/library/stats/src/burg.c.tu
%.c.tu: %.c
	(export PKG_CPPFLAGS="-fdump-translation-unit -c -o /dev/null" ;  R CMD COMPILE  $<)

%.cpp.tu: %.cpp
	$(CXX) -c -fdump-translation-unit -o /dev/null $<

%.cc.tu: %.cc
	$(CXX) -c -fdump-translation-unit -o /dev/null $<

wxGrid.cpp.tu: wxGrid.cpp
	$(CXX) -c -fdump-translation-unit $(shell wx-config --cflags) -o /dev/null $<


Rshapes.so: Rshapes.cc shapes.cc ${OMEGA_HOME}/R/RAutoGenRunTime/src/RConverters.c ${OMEGA_HOME}/R/RAutoGenRunTime/src/RDerivedClass.cpp
	R CMD SHLIB Rshapes.cc shapes.cc ${OMEGA_HOME}/R/RAutoGenRunTime/src/RConverters.c ${OMEGA_HOME}/R/RAutoGenRunTime/src/RDerivedClass.cpp

RmyClass.so: RmyClassB.cpp ABC.cpp ../src/RConverters.c
	R CMD SHLIB $^

ABC.o: ABC.cpp ABC.h

ABC.cpp.tu: ABC.cpp ABC.h



