#!/usr/bin/perl

use GCC::TranslationUnit; 
use CTypes;


if ($#ARGV >= 1) {
    $filename = $ARGV[1];
} else  {
    $filename = $ARGV[0];
    $filename =~ s|.*/||;
    $filename =~ s|\.tu$||;
}

print "'", $filename, "'\n";


my $nodes = GCC::TranslationUnit::Parser->readTU($ARGV[0]);
# Get the first entry within the namespace.


my $node = $nodes;

while($node) {
       # Have to look for variables not within a scope, e.g an @node...
       # so that we can find them in .h files also, e.g. main.c has some from Rinternals.h

    if($node->isa("GCC::Node::var_decl") && $node->source =~ /^$filename/) {
#	print join(', ', keys(%{$node})), "\n";
	if(defined($node->{'static'})) {
	    print $node->{name}->{string},  " is static\n";
	} else {
	    my $tp = GenericType::makeType($node, $nodes); # the 0 means do follow the name.
	    $globalVars{$node->{name}->{string}} = $tp;
	}
    }

    $node = $node->chain;
}


foreach $varName (keys(%globalVars)) {
	print "Global variable ", $varName, " ", ref($globalVars{$varName}->{'type'}), "\n";
	print "\t", $globalVars{$varName}, "\n";
#	@routines = findReferencingRoutines($globalVars{$varName}, $nodes);
}

#foreach $varName (keys(%routines)) {
#	print "Routine ", $varName, "\n";
#}


sub resolveFunctionNodes {

    return(1);

    my ($func)=@_;

    my @calls, @varRefs;

    my $tmp = $func->body;

    while($tmp) {
	
	$tmp->chan;
    }
    
    

}


sub findReferencingRoutines {
    my ($var, $nodes) = @_;



    while($nodes) {

	

	$nodes=$nodes->chain;
    }

}
