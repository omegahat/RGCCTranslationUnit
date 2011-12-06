#
# To use the Perl scripts, set the environment variable
#    PERL5LIB 
# to include ../lib/
# 
#


CC=gcc

-include local.config

ifndef GTK_CFLAGS
 GTK_CFLAGS=`pkg-config --cflags gtk+-2.0`
 GTK_CFLAGS=`gtk-config --cflags`
endif


gtkRoutineNames: gtk.c.tu ../scripts/getFuncNames.pl
	perl ../scripts/getFuncNames.pl gtk.c.tu  | grep -v 'Okay - loaded' > $@

gtk.c.tu: gtk.c GNUmakefile
	$(CC) -c -fdump-translation-unit $(GTK_CFLAGS) gtk.c	  

%.c.tu: %.c
	$(CC) -c -fdump-translation-unit $< -o /dev/null

%.cc.tu: %.cc
	$(CXX) -c -fdump-translation-unit $< -o /dev/null

%.cpp.tu: %.cpp
	$(CXX) -c -fdump-translation-unit $< -o /dev/null

WX_CFLAGS=$(shell wx-config --cflags)

wx%.cpp.tu: wx%.cpp
	$(CXX) -c $(WX_CFLAGS) -fdump-translation-unit $< -o /dev/null



XML_CFLAGS=`xml2-config --cflags`

GGOBI_FLAGS=$(GTK_CFLAGS) -I$(GGOBI_HOME) $(XML_CFLAGS)

ggobiTypes.c.tu: ggobiTypes.c
	$(CC) -c -fdump-translation-unit $(GGOBI_FLAGS) $< 	 

gtkIncludes:
	$(CC) -M  $(GTK_CFLAGS) gtk.c > $@
	  	 
