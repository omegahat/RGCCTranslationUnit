%.cc.001t.tu: %.cc
	$(CXX) -fdump-translation-unit -c -o /dev/null $<

%.tu: %.cc
	$(CXX) -fdump-translation-unit -c -o /dev/null $<

%.tu: %.cpp
	$(CXX) -fdump-translation-unit -c -o /dev/null $<

#include Makefile.rules

