USE_DOCBOOK_SHORTHAND=1
#include $(OMEGA_HOME)/Config/local.config
#include $(OMEGA_HOME)/Config/GNUmakefile.xml

include $(DYN_DOCS)/inst/Make/Makefile

dispatch: dispatch.cc dispatch.h
	$(CXX) -o $@ $<

# Compute the links
LINKS=$(shell xsltproc --html ~/Projects/org/omegahat/Docs/XSL/getLinks.xsl ../../Web/index.html.in | egrep  -v '(http|mailto|@[A-Z_]+@)')

TARGET_DIR=eeyore.ucdavis.edu:OmegaWeb/RGCCTranslationUnit/

links:
	@echo $(LINKS)
shipLinks: $(LINKS)
	scp $(LINKS) $(TARGET_DIR)

manual RGCCTranslationUnit.pdf:
	R CMD Rd2dvi -o RGCCTranslationUnit.pdf --pdf --no-preview ../../man
