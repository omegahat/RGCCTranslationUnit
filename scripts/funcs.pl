use GCC::TranslationUnit; 

$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

# $tu is an array of nodes.

$node = $tu->root;

$ctr = 0;

while ($node) {

         # && $node->{'name'}->{'string'} eq "foo"
    if($node->isa("GCC::Node::function_decl") 
       && !( $node->{'name'}->{'string'} =~ m/^_/)
      ) 
     {
	my %x = getFunctionSignature($node);

#	$nargs = countFunctionArgs($node);
	$funcs{$node->{'name'}->{'string'}} = \%x; 
	
#	print "Function declaration  ";
#	print $node->{'name'}->{'string'}, "  ", $nargs, "\n";
	$ctr++;

    }
    $node = $node->chain;
}

# my $tmp = $funcs{'foo'};
# my @n = @{${%{$tmp}}{'args'}};

foreach $k (keys(%funcs)) {
    showFunction($funcs{$k}, $k);
}

#showFunction($funcs{'foo'});

sub showFunction {
    my ($fun, $name) = @_;

#    print $name, "\n";

#    print join(', ', keys(%{$fun})), "\n";

# Get the args reference.
    my $a = $fun->{'args'};
# Cast it as an array, and get its length.
    my $n = $#{@{$a}};
    print "$name  has ", $n+1, " arguments\n";
    
    foreach $a (@{$a}) {
	print $a, " ";
    }

    print "\n";

    print "Type: ", $fun->{'type'}, "\n--\n";
}

sub getFunctionSignature 
{
    my ($node) = @_;

    my ($type, @args, $name);

     # Name of the function.
    $name = $node->{'name'}->{'string'};

#    print "Function name: ", $name, "\n";

    print $name, ": ", join(', ', keys(%{$node})), "\n";
    @args = getFunctionArgs($node->{'type'}->{'prms'}, $name);

  my %obj;
    $obj{'name'}= $name;
    $obj{'type'} = getType($node->{'type'}->{'retn'});
    $obj{'args'} = \@args;

#    my $foo = {name=> $name, type=>getType($node->{'type'}->{'retn'}), args=>\@args};
#    return($foo);

# 'name', $name,
# 'type', getType($node),
# 'args', \@args
# };

#    print "Type: ", $obj{'type'}, "\n";

#    print "# args: ", $#args, "\n";

    return(%obj);    
}


sub getFunctionArgs {
     # Process the argument list.
    my ($tmp, $name) = @_;
    my @args;

    while ($tmp && $tmp->chain) {
	print "<$name> Next arg\n";
	# Just names for now.
	push @args, $tmp->{'name'}->{'string'};
	$tmp = $tmp->chain;
    }
    return(@args);
}

sub getType {
    my ($type) = @_;

    if($type->isa("GCC::Node::pointer_type")) {
	$type = $type->{'ptd'};
    }

    if(!defined($type->{'name'})) {
	print "Return: ", $type->{'type'}->{'retn'}, "\n";
	return("?");
    }

    $type = $type->{'name'};

    if($type->isa("GCC::Node::identifier_node")) {
	return($type->{'string'});
    }

    if($type->isa("GCC::Node::type_decl")) {
	$type = $type->{'name'}->{'string'};
    }
    return($type);

# print $n->{'type'}->{'retn'}->{'name'}->{'name'}->{'string'};
}

sub countFunctionArgs {
    my ($node) = @_;
    my $tmp;

    my $ctr = 0;

    $tmp = $node->{'args'};

    while ($tmp) {
	$ctr++;
	$tmp = $tmp->chain;
    }
    return($ctr);
}

