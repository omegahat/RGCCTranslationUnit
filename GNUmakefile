
install: configure
	R CMD INSTALL .

check: configure
	(cd ..  ; R CMD INSTALL Perl)

configure: configure.in
	autoconf

R/BuiltinTypeTable.R: data/BuiltinTypeTable.csv
	echo 'BuiltinTypeTable = read.csv("data/BuiltinTypeTable.csv", stringsAsFactors = FALSE); dump("BuiltinTypeTable", "R/BuiltinTypeTable.R")' | R --slave
