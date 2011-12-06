library(RSPerl)
.PerlExpr("use GCC::TranslationUnit;")


# Keep it as an array for the moment.
zz = .Perl("GCC::TranslationUnit::Parser::parseTU",
           "",
           "/home/duncan/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/examples/gtk.c.tu",
          convert = FALSE)



# Get the names of the different routines declared in this TU.
# Compare with getFuncNames.pl.  That will be a lot faster, but this is easier for us
# to understand and adapt in R.





typeNames = getElementNames(zz, "GCC::Node::type_decl")

wx = .Perl("GCC::TranslationUnit::Parser::parseTU",
           "",
           "/home/duncan/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/examples/wxWidgets.cpp.tu",
          convert = FALSE)

.PerlLength(wx)
# 59720

wxClassNames = unique(getElementNames(wx,  "GCC::Node::type_decl", "object.h"))

# Note that there are duplicates for the class definitions.
# One entry has a scpe field and no chan, and the other has the chan.

# wxObject  wxClassInfo wxHashTable wxObjectRefData  wxDynamicObject
# The wxObjectConstructorFun is not a class, but a regular typedef.
# We could determine this by  looking at the type_decl and its type
# to see if it is of the appropriate type for a class.
#
# For the wxObject class, the type_decl has an artificial and its type attribute
# points to a record_type whose name points back to the type_decl.
#
# And the record_type has vfld and flds and also fncs.
# And  binf helps us identify the class inheritance via base, although that points us to
# a tree_vec.   The base field in the record_type tells us the inheritance.
#

# Follow the fields, but then it goes from field_decl, field_decl to type_decl.
# Does that signify the end?

#

my = .Perl("GCC::TranslationUnit::Parser::parseTU",
           "",
           "/home/duncan/C++/myClass.cpp.tu",
          convert = FALSE)

o = my[[2]]
o[["dcls"]]  # infinite loop.

 # But the following is okay.
tt = o$decls(convert = FALSE)  


# But then
tt$chain(convert = FALSE)
# doesn't give us the PerlHashReference.


# Treat the differently, getting the root node for the declarations.
z = .Perl("GCC::TranslationUnit::Parser::readTU", "",
           "/home/duncan/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/examples/gtk.c.tu",
          convert = FALSE)
