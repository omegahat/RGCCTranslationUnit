# e.g.
# make  ~/Projects/R/R-devel/src/library/stats/src/burg.c.tu

# This needs to find a way to append PKG_CPPFLAGS to whatever is there for the particular package.
#
# When using the R rules via , make will not build if the .o is already up to date.
# Try adding our GNUmakefile (this one) to the list of R's rules.
# Done via --file=...  but need to say "make foo.c.tu" rather than make foo.o in the COMPILE
#
this=$(HOME)/Rpackage/RGCCTranslationUnit/etc/make/GNUmakefile

%.c.tu: %.c
	(export CFLAGS="`R CMD config CFLAGS` -fdump-translation-unit -c -o /dev/null" ; \
	  export CXXFLAGS="`R CMD config CXXFLAGS` -fdump-translation-unit -c -o /dev/null" ;\
	  R CMD COMPILE  --file="$(this)" $<)