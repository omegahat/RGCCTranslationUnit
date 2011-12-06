tuparser:

SRC= TUParser.cc parser.cc classes.cc

OBJ=$(SRC:%.cc=%.o)

classes.o: classes.cc include/parser.h

$(OBJ): include/parser.h include/GCCNode.h


#PCRE_CFLAGS=$(shell pkg-config --cflags libpcre)
#PCRE_LIBS=$(shell pkg-config --libs libpcre)

PCRE_CXXFLAGS=$(shell pkg-config --cflags libpcrecpp)
PCRE_LIBS=$(shell pkg-config --libs libpcrecpp)

PKG_LIBS=$(PCRE_LIBS)
PKG_CPPFLAGS=$(PCRE_CXXFLAGS)

CXXFLAGS=-fPIC -Iinclude -g $(PCRE_CXXFLAGS) -I$(R_HOME)/include

R_LIBS=-L$(R_HOME)/lib -lR

tuparser.so: $(OBJ)
#	(echo "Doing it" ; export PKG_CPPFLAGS ; export PKG_LIBS ; R CMD SHLIB -o $@ $(SRC))
	$(CXX) -o $@ -shared $(OBJ) $(PCRE_LIBS) $(R_LIBS)

tuparser: $(OBJ)
	$(CXX) -o $@ $(OBJ) $(PCRE_LIBS) $(R_LIBS)

parser.o: parser.cc include/parser.h