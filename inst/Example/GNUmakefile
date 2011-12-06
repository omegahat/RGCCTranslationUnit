
R_HOME=$(HOME)/Projects/R/trunk
CFLAGS=-Wall -I. -I../../src -I../Example -I$(R_HOME)/include -fdump-translation-unit

-include local.config

examples.c.tu: examples.c examples.h
example.cc.tu: examples.c examples.h example.cc

%.c.tu: %.c
	$(CC) -c $(CFLAGS) -o /dev/null $<

%.e: %.c
	$(CC) -E $(CFLAGS) -o $@ $<

%.cc.tu: %.cc
	$(CXX) -c $(CFLAGS) -o /dev/null $<

curl.c.001t.tu: curl.c
	g++ -c -fdump-translation-unit `curl-config --cflags` -o /dev/null $^


SVM_LIGHT_DIR=$(HOME)/SVM_light
svm_light.c.001t.tu: svm_light.c
	g++ -c -fdump-translation-unit -I$(SVM_LIGHT_DIR) -o /dev/null $^
