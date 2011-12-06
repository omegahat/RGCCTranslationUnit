#!/usr/bin/perl

# The idea is to find all non-local variables in a given file
# and then to identify where these global variables are used
# and how to group them into small collections (structures)
# and modify the code to accept these as additional arguments.
# We need to find the entry points and determine if these
# are indeed global variables or simply being used for carrying
# information across routines.

 


use GCC::TranslationUnit; 

$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

$filename = $ARGV[0];
$filename =~ s|.*/||;
$filename =~ s|\.tu$||;

print "'", $filename, "'\n";

# Get the first entry within the namespace.

#$nodes = $tu->root->{dcls};
$nodes = $tu->root;

$node = $nodes;

#%routines;
#%globalVars;

#	 join(', ', keys(%{$node}));

while($node) {

       # Have to look for variables not within a scope, e.g an @node...
       # so that we can find them in .h files also, e.g. main.c has some from Rinternals.h

    if($node->isa("GCC::Node::var_decl") && $node->source =~ /^$filename/) {
	$globalVars{$node->{name}->{string}} = $node;

    } elsif( $node->isa("GCC::Node::function_decl")  && $node->{source} =~ /^$filename/) {
	$routines{$node->{name}->{string}} = $node;
#	1;
    }

    $node = $node->chain;
}


foreach $varName (keys(%globalVars)) {
	print "Global variable ", $varName, "\n";
	@routines = findReferencingRoutines($globalVars{$varName}, $nodes);
}

foreach $varName (keys(%routines)) {
	print "Routine ", $varName, "\n";
}


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
