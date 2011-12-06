#!/usr/bin/perl

use GCC::TranslationUnit; 

use CTypes;  # Our own code.

use Getopt::Long;

sub ProcessArg 
{ 
  push @targetFuns, shift;
}


$outputFile = "bob";
$fileName = undef;
my $verbose;

my $result = GetOptions("tu:s" => \$fileName, "output|o=s" => \$outputFile, "verbose|v" => \$verbose, '<>' => \&ProcessArg);

if(!defined($fileName)) {
    $fileName = $targetFuns[0];
     # Do we need to check that there are elements here and set this to () otheriwse.
    @targetFuns = @targetFuns[1..$#targetFuns];
}

if($verbose) {
    CTypes->verbose(1);
    print "Target routines: ", join(', ', @targetFuns), "\n";
    print "Using $outputFile as the target output.\n";
    print "Input file: $fileName\n";
}

#######################################################################################################################



$tu = GCC::TranslationUnit::Parser->parsefile($fileName);


# Get the filename without the .tu at the end.
$fileName =~ s|(.*/)?(.*)\.tu$|$2|;
if($verbose) {
    print "Filename: $fileName\n";
}

$node = $tu->root;

my $x;


=head2 
 
  Filter that determines whether we will process a particular function_decl.
  This checks whether the name of the routine is in the list of target routines,
  or if there are not target routines, whether the routine is declared within
  the source file we are processing (and not in an included header file).

=cut 

sub funcFilter {

    my $node = shift;

    if($#targetFuns > -1) {
	my $name = $node->{'name'}->{'string'};
	print "Looking for $name in ", join(', ', @targetFuns), "\n";
	foreach $f (@targetFuns) {
	    if($name eq $f) {

		return(1);
	    }
	}
	return(0);
    }

    my $status = $node->{'source'} =~ m/$fileName/;

    return($status);
}


use SCInterface;

my $gen = SCInterface->new();


## Alternatively, find the first function_decl node and then follow its chan/chain field.
while ($node) {

 # Want to skip over duplicates that are caused by typedefs
 # which results in two entries, one with a name and unql field
 # and the other without these references.

      # error handling if we don't have a regular node object.
    if(ref($node) eq "HASH") {
	last;
	print "($ctr) Non-reference ", $node, "  ";
	print join(', ', keys(%{$node})), "\n"; 
	print $node->{'position'}, "\n";
    }


    if($node->isa("GCC::Node::function_decl")  && funcFilter($node)) { #  && ($node->{'source'} =~ m/$fileName/)
	$x = GenericType::makeType($node, \$nodes);
	$functions{$x->{'name'}} = $x;
    } elsif($node->isa("GCC::Node::var_decl")) {
#	print "Creating variable ", $node, "\n";
	$x = GenericType::makeType($node, \$nodes);
	$gen->createVariableAccessor($x);
#	print "Variable ", $x, "\n";
#	print "\t", ref($x->{'type'}), "\n";
	$variables{$x->{'name'}} = $x;
    }

       # Loop over the nodes, not the chain as the enumeration nodes
       # are one-level below if typedefed.
    $node = pop @{$tu};
}


$displayResults = 1;

if($verbose) {
    print  "Routines in $fileName: ", join(', ', keys(%functions)), "\n";
}

# If the caller did not specify any target routines, use them all.
if($#targetFuns < 0) {
    @targetFuns = keys(%functions);
}


if($verbose) {
    print "Target routines: ", join(', ', @targetFuns), "\n";
}


foreach $targetFun (@targetFuns) {

	if(!exists($functions{$targetFun})) {
	    print "No routine named $targetFun in $fileName\n";
	    exit(1);
	}

	my $f = $functions{$targetFun};
	
	if($verbose) {
	    print "Generating code for routine $f->{'name'}: ";
	    print "S";
	}
	my $s = $gen->generateSFunction($f);


	if($verbose) {
	    print " C";
	}
	my $c = $gen->generateCRoutine($f);
	if($verbose) {
	    print " done\n";
        }
}


    if($verbose) {
	print "Writing code to files\n";
    }

#    $gen->{'CHeader'} =  "#include \"RConverters.h\"\n#include \"examples.h\"\n";
    $gen->outputCode($outputFile, "#include \"RConverters.h\"\n#include \"Rdefines.h\"\n#include \"examples.h\"\n");

 if(0) {
    if(exists($gen->{'S4ClassNames'})) {
	foreach $p (@{$gen->{'S4ClassNames'}}) {
	    print $gen->{'S4Classes'}{$p}, "\n";
	}
    }
    if(exists($gen->{'EnumerationDefs'})) {
	foreach $p (@{$gen->{'EnumerationDefs'}}) {
	    print $p, "\n";
	}
    }
 }
