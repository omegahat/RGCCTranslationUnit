# Not using S4 representation as the Perl parser is an S3-style
# class, being a reference. We could change this.


if(USE_PERL_TU_PARSER) {
setOldClass("TUParser")
setOldClass(c("PerlTUParser", "TUParser"))
} else {
 setClass("TUParser")
#setOldClass(c("C++TUParser", "TUParser"))
}



