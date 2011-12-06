use GCC::TranslationUnit; 

use CTypes;


CTypes->verbose(0);

my $root = GCC::TranslationUnit::Parser->readTU($ARGV[0]);

print "Chaining through top-level nodes\n";

findTypeDefs($root);

exit(101);

@x = @{$tu};


#findEnumerals(\@x);
#exit(101);

my $ctr = 0;
while($ctr <= $#x) {
#foreach $node (@x) { 
    $node = $x[$ctr];
    if(defined($node->{'INDEX'}) && $node->isa("GCC::Node::enumeral_type") ) {

	print $node->{INDEX}, "\n";
	if(defined($node->{'name'}) && $node->{'name'}->isa("GCC::Node::type_decl")) {
	    print "Typedef'ed enumeration '", $node->{'name'}->{'name'}->{'string'}, "': ";
	}

	my $c = $node->{'csts'};
	while(defined($c)) {
	    print $c->{'purp'}->{'string'}, " = ", $c->{'valu'}->{'low'}, ", "; 
	    $c = $c->chain;
	}
	print "\n"; # end of the collection of elements for this enumeration.
    }
    $ctr++;
}







# Can't use the chain approach to iterate as the enumeral_type's aren't part of the chain in the top-level
# array.  Iterate over the $node, $node->chain sequence and print the types to see.
# Instead, need to iterate over the entire collection of Nodes in this approach.
sub findEnumerals {

    my @els = shift;

    my $ctr = 0;
    while($ctr <= $#{@x}) {
#    foreach $node (@els) { 
#    while ($node) {
	$node = $x[$ctr];
	$ctr++;
	print $node->{INDEX}, " ", $node, "\n";

	print keys(%{$node}), "\n";
	if($node->isa("GCC::Node::enumeral_type") ) {
	    if(defined($node->{'name'}) && $node->{'name'}->isa("GCC::Node::type_decl")) {
		print "Typedef'ed enumeration ", $node->{'name'}->{'string'}, ": ";
	    }

	    getEnumElements($node->{'csts'});
    

	}
#	$node = $node->chain;
    }
}


sub getEnumElements {

    my ($c) = @_;
    while($c) {
	print $c->{'purp'}->{'string'}, " = ", $c->{'valu'}->{'low'}; 
	$c = $c->chain;
	if($c) { print ", ";} else {print "\n";}
    }
}

sub findTypeDefs
{
    my ($node) = @_;

    while ($node) {

	if($node->isa("GCC::Node::type_decl") 
	   &&  $node->{'type'}->isa("GCC::Node::enumeral_type")
#	   && $node->chain->isa("GCC::Node::const_decl")
	    ) {


	    my $tp = $node->{'type'};
	    if(defined($tp->{'unql'})) { # Check it is an enumeral_type ?
		$tp = $tp->{'unql'};
	    }


	    my $done = 0;
	    foreach my $n (@enumIndices) {
		if($tp->{INDEX} eq $n) {
#		    print "Already done ", $n, "\n";
		    $done = 1;
		    last;
		}
	    }
	    if(!$done) {

               push @enumIndices, $tp->{INDEX};
#	       print "Adding ", $tp->{INDEX}, "\n";


	       my $def;
	       if(!defined($node->{'name'})) {
		   $def = GenericType::makeType($tp, $tu, 0);
#		   print "No name ";

	       } else {
#		   print $node->{'name'}->{'string'}, "\t";
		   $def = GenericType::makeType($node->{'type'}, $tu, 0);
	       }


	       print "<definition>\n", $def, "\n</definition>\n";
	       
#	       print $node->{INDEX}, " ", $tp, " ", $tp->{INDEX}, "  ";
	       
#	       $end = findEnumEnd($node);
#	       print "End is ", $end->{INDEX}, "\n";

#	       getEnumElements($tp->{'csts'});
	       
	    }
	}

	$node = $node->chain;
    }

}


sub findEnumEnd
{
    my ($node) = @_;
    my $n;
    $n = $node->chain;
    while($n->isa("GCC::Node::const_decl")) {
	$n = $n->chain;
    }

    return($n);
}
