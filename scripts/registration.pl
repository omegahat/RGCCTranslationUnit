use GCC::TranslationUnit; 

use CTypes;  # Our own code.


$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

$fileName = $ARGV[0];
$fileName =~ s|(.*/)?(.*)\.tu$|$2|;

print "Filename: $fileName\n";

$node = $tu->root;

# Alternatively, find the first function_decl node and then follow its chan/chain field.
while ($node) {
    if($node->isa("GCC::Node::function_decl")  && $node->{'source'} =~ m/$fileName/) {
	print $node->{'name'}->{'string'}, "\n";
	if(defined(getRegistrationInfo($node, $tu->root))) {
	    print $node->{'name'}->{'string'}, "\n";
	}
    }

    $node = $node->chain;
}

sub getRegistrationInfo
{
    my $node = shift;
    my $info = undef;
    
    # Get the return type and check if it is a void or a SEXP.
    my $returnType = $node->{type}->{retn};
    if($returnType->isa("GCC::Node::void_type")) {
        $info = getDotCInfo($type, $node);
    } elsif(isSEXP($returnType)) {

    }

    return($info);
}

sub getDotCInfo 
{
    my ($func, $node) = @_;
    my $params = $node->{args};
    my $numArgs;

    my @args;

    while($params) {
	my $name = $params->name->string;
	my $type = getType($params->type);
	push @args, $type;
	$numArgs++;
	$params = $params->chain
    }

    return(@args);
}

sub getType
{
    my $typeNode = @_;

    if($typeNode->is("GGC::Node::pointer_type")) {
	$pointerDepth = 1;
	while($typeNode) {
	    $pointerDepth ++;
	    $typeNode = $typeNode->ptd;
	}
	$tp = getType($typeNode);
	return(PointerType->new($pointerDepth, $tp));
    } else {

	

    }
}


sub isSEXP 
{

    my $type  = shift;

    if(!$type->isa("GCC::Node::pointer_type")) {
	return(0);
    } else {

    }

#    $type->

    return(0);
}   

