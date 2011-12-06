use GCC::TranslationUnit; 

use CTypes;  # Our own code.

if($#ARGV > 0) {
    $targetFun = $ARGV[1];
} else {
    $targetFun = "foo";
}



$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

CTypes->verbose(1);

$fileName = $ARGV[0];
$fileName =~ s|(.*/)?(.*)\.tu$|$2|;

print "Filename: $fileName\n";

$node = $tu->root;

# print $#{$tu}, "\n";


my $x;
## Alternatively, find the first function_decl node and then follow its chan/chain field.
while ($node) {

 # Want to skip over duplicates that are caused by typedefs
 # which results in two entries, one with a name and unql field
 # and the other without these references.

    if(ref($node) eq "HASH") {
	last;
	print "($ctr) Non-reference ", $node, "  ";
	print join(', ', keys(%{$node})), "\n"; 
	print $node->{'position'}, "\n";
    }


    if($node->isa("GCC::Node::enumeral_type")) {
	$x = GenericType::makeType($node, \$nodes);
	push @enums, $x;
    } elsif($node->isa("GCC::Node::function_decl") && ($node->{'source'} =~ m/$fileName/ || $node->{'source'} =~ m/stat\.h/)) {
	$x = GenericType::makeType($node, \$nodes);
	$functions{$x->{'name'}} = $x;
    } elsif($node->isa("GCC::Node::var_decl")) {
	print "Creating variable ", $node, "\n";
	$x = GenericType::makeType($node, \$nodes);
	print "Variable ", $x, "\n";
	print "\t", ref($x->{'type'}), "\n";
	$variables{$x->{'name'}} = $x;
    }

       # Loop over the nodes, not the chain as the enumeration nodes
       # are one-level below if typedefed.
    $node = pop @{$tu};
}


$displayResults = 1;


#$t = $functions{'foo'};
#print ref($t), "\n";
#print "Foo parameter names: ", join(', ', @{$t->{'argNames'}}), "\n";

if(defined($displayResults)) {

    print "Enumerations\n";
    foreach $e (@enums) {
	print "Enum: ", $e, "\n";
    }

    print "\nRoutines\n";

    foreach $n (keys(%functions)) {
	print "Function: ", $functions{$n}, "\n";
    }

    print "\nVariables\n";

    foreach $n (keys(%variables)) {
	print "Variable: ", $variables{$n}, "\n";
    }

    print "\n\n";
}

$genInterface = 1;

print  "Functions in $fileName: ", join(', ', keys(%functions)), "\n";


if(defined($genInterface)) {
    use SCInterface;
    print "Creating code for '$targetFun'\n";
    my $gen = SCInterface->new();
    my $f = $functions{$targetFun};

    my $s = $gen->generateSFunction($f);
    my $c = $gen->generateCRoutine($f);

    print "#S code\n", $s, "\n";

    print "/* C code */\n", $c, "\n";
}
