package CTypes;

our $_verbose = 0;
sub verbose {
    my $class = shift;
    my $verbose = shift;
    if(defined($verbose)) {
	$_verbose = $verbose;
    }
    return($_verbose);
}


#
# We have a curious mix of styles of calling class->method and class::method
# going on in this file.  The difference is that the former passes the class
# as the first argument to the routine whereas the second does not.
#
#  perl -d NodeIterator.pl filename.c.tu

package GenericType;

our %resolvedNodes;

my @current;

sub makeType {

    my ($node, $nodes, $dontFollowName) = @_;

    if(exists($resolvedNodes{ $node->{'INDEX'} })) {
	return($resolvedNodes{ $node->{'INDEX'} });
    }


#    if(defined($dontFollowName)) {
#	print "dontFollowName defined for ", $node, " ", $node->{'INDEX'}, "\n";
#    }

#Debugging stuff for my own exploration.
#   print "[makeType] Node: ", $node->{'INDEX'}, " ",  $node, ": ", join(', ', keys(%{$node})), "\n";
#   if(!ref($node)) {
#	print $node;
#	return("Non reference node");
#   }

    push @current, $node->{INDEX};
    my $ctr=0;
    while($ctr < $#current) {
	print " ";
	$ctr++;
    }
    print "makeType for ", $node->{INDEX}, "\n";

    if(CTypes->verbose()) {
	print "[makeType] ", $node, " ", $node->{INDEX}, " ", ref($node), "\n";

	print "\tElements of node: ", join(', ', keys(%{$node})), "\n";
	
	if(!ref($node)) {
	    print "Non-reference object in makeType ", $node, "\n";
	}
    }


    if($node->isa("GCC::Node::enumeral_type")) {
	if((!defined($dontFollowName)  || !$dontFollowName) && exists($node->{'name'})) {
	    $v = TypeDef->makeTypeDef($node->{'name'}, $nodes, 1, $node->{'type'}->{'unql'});	    
	} else {
	    $v = EnumeralType->makeEnumeralType($node, $nodes);
	}
    } elsif($node->isa("GCC::Node::pointer_type")) {
	if((!defined($dontFollowName) || !$dontFollowName) && exists($node->{'name'})) {
	    if(CTypes->verbose()) {
		print "Following name in pointer_type ", $node->{'INDEX'}, "\n";
	    }
	    $v = TypeDef->makeTypeDef($node->{'name'}, $nodes, 1);
	} else {
	    if(defined($dontFollowName))  {
		print "Skipping name field of pointer since dontFollowName is set (", $dontFollowName, "). (node ", $node->{INDEX}, ")\n";
	    }

	    $v = PointerType->makePointerType($node, $nodes);
	}

    } elsif($node->isa("GCC::Node::integer_type") || $node->isa("GCC::Node::real_type") 
              || $node->isa("GCC::Node::void_type") || $node->isa("GCC::Node::char_type")
              || $node->isa("GCC::Node::boolean_type")) {
	$v = BuiltinType->new($node);
    } elsif($node->isa("GCC::Node::function_decl") || $node->isa("GCC::Node::function_type")) {
	$v = FunctionDecl->makeFunctionType($node, $nodes);
    } elsif($node->isa("GCC::Node::var_decl")) {
	$v = VarDecl->makeVarDecl($node, $nodes);
    } elsif($node->isa("GCC::Node::array_type")) {
	$v = ArrayType->makeArrayType($node, $nodes);
    } elsif($node->isa("GenericType")) {
	$v = $node;
    } elsif($node->isa("GCC::Node::record_type")) {
	$v = Record->makeRecord($node, $nodes);
    } else {
	print "Generic... ", $node, " ", ref($node), "\n";
	print "TTT:",  join(', ', keys(%{$node})), "\n";
	print $node->{'INDEX'}, "\n";

	$v =  GenericType->new($node);
    }


    $resolvedClasses{$node->{'INDEX'}} = $v;

    pop @current;
    return($v);
}


sub new {
    my ($class, $node) = @_;

    my $obj = {
	node => $node
    };

    bless $obj => $class;

    return($obj);
}


sub create {
   my ($class, $node, $name) = @_;   
   my $o = GenericType::new($class, $node);

   if(defined($name)) {
       $o->{name} = $name;
   }
   $resolvedClasses{$node->{'INDEX'}} = $o;
   return($o);
}


sub asString {
    my ($obj) = @_;
    my %tb = %{$obj->{'node'}};

    return("<asString> Not implemented yet for node " . $obj->{'node'}->{'INDEX'} . $obj->{'node'});
}


use overload q("") => \&asString;


sub declaration {
    my $obj = shift;
    return($obj->asString());
}


#########################################################################################################

package PointerType;

our @ISA = qw(GenericType);

sub new {
    my $class = shift;
    
    $obj = { depth => shift,
	     type => shift
	   };

    bless $obj, $class;
    return($obj);
}


sub makePointerType {

    my ($class, $typeNode, $nodes) = @_;
    my $p;

    if(exists($typeNode->{name}) && exists($typeNode->{unql})) {
	print "Pointer type ", $typeNode->{INDEX}, " with name and unql ", $typeNode->{name}->{INDEX}, " and ", $typeNode->{unql}->{INDEX}, "\n";
# Need a new class here.
#	$p = GenericType::makeType($node->{name});
	$p = PointerType->create($typeNode);
	$p->{type} = GenericType::makeType($typeNode->{unql});
	$p->{name} = $typeNode->{name};
	return($p);
    }

    my $pointerDepth = 0;
    while(exists($typeNode->{'ptd'})) { 
	$pointerDepth++;
	$typeNode = $typeNode->{'ptd'};
    }

#    print "Pointer depth $pointerDepth\n";

    $p =  PointerType->create($node);
    $p->{depth} = $pointerDepth;

    $p->{type} = GenericType::makeType($typeNode, $nodes);
    return($p);
}


=head2
   Convert the PointerType to a string.

=cut 
 
sub asString {
    my ($obj) = @_;

    my $txt, my $suffix="", my $ctr = 0;
       # create the ***.. for the given depth/level of indirection of the pointer.
    while($ctr < $obj->{'depth'}) {
	$suffix .= "*";
	$ctr++;
    }

    return($obj->{'type'} . " " . $suffix);
#    return($obj->{'type'} . " " . $obj->{'depth'});
}

use overload q("") => \&asString;


package EnumeralType;

our @ISA = qw(GenericType);

=head1 EnumeralType

  This type represents the resolved enumeration.
  We keep both a hash of name-values, and the ordered
  array of names so that we can do both efficient 
  lookups of names to values, and also reconstruct the
  enumeration in order.

  If this is a typedef, it has a name.
  We have to be careful about duplicates for enumerations when there is a typedef.

=cut

# Called with names array and values array
# A Hashtable would change the order.
sub new {
    my ($class, $names, $values) = @_;

    my $obj = { names => $names,
		values => $values
	      };

    bless $obj, $class;

    return($obj);  
}


=head1 

 This is the routine that is called to process a particular
 node of type enumeral_type and turn it into a EnumeralType
 object.

=cut

sub makeEnumeralType {
    my ($class, $node, $nodes) = @_;
    
    my $tmp;
    my $value, my $id, my $name;

      # Get the name for this enum, if available.
    if(defined($node->{'name'})) {
	$tmp = $node->{'name'};
	if($tmp->isa("GCC::Node::type_decl")) {
	    $tmp = $tmp->{'name'};
	}
	$name = $tmp->{'string'};
    } else {
	$name = "";
    }
     
    if(CTypes->verbose()) {
	print "Enumeration range: name = ", $name, " ", $node->{'min'}->low, " to ", $node->{'max'}->low, "\n";
    }

    my @ids, my %values = ();

    
    $tmp = $node->values(); #  {'values'};
    while($tmp) {

	$value = $tmp->value->{'low'};
	$id = $tmp->purpose->{'string'};

         # Push these onto the list.
	push @ids, $id;
	$values{$id} = $value;

	$tmp = $tmp->chain;
    }

#    print "[EnumeralType::makeEnumeralType] ", join(', ', keys(%values)), "\n";

      # Don't want to pass references here
    return(EnumeralType->new(\@ids, \%values));
}

=head2 

  Method to convert an EnumeralType into a string,
  for use in printing. This creates a string
  giving the name=value pairs, separated by a 
  comma (,).  

=cut

sub asString {
    my $foo = shift;

    my $txt ="";
    my $tb = $foo->{values};

#    print "Names: ", join(', ' , @{$foo->{names}}), "\n";
#    print "Table names: ",  join(', ' , keys(%{$tb})), "\n";

    foreach my $f (@{$foo->{names}}) {
	$txt .= "$f = " . ${%{$tb}}{$f} . ", ";
    }

    return($txt);
}

         # Use the asString method for printing, etc.
use overload q("") => \&asString;

# Not used anymore.
sub reorder {
    my (@values, @ids) = @_;

    my %table;
    my $n = $#values;
    my $ctr;

    while($ctr < $n) {
	$table{$ids[$ctr]} = $values[$ctr];
	$ctr++;
    }
    return(%table);
}


####################################################################################################

package FunctionDecl;

our @ISA = qw(GenericType);

sub makeFunctionType {
    my ($class, $node, $nodes) = @_;  

    my $name, my @args, my $returnValue;

    $name = $node->{'name'}->{'string'};

    if(CTypes->verbose()) {
	print "FunctionDecl ", $name, " ", $node->{'INDEX'}, "\n";
    }
    
    my ($tmp, $usingPrmsField);
    if(exists($node->{'args'})) {
	$tmp = $node->{'args'};
	$usingPrmsField = 0;
    } else {
	$tmp = $node->{'type'}->{'prms'};
	$usingPrmsField = 1;
	if(CTypes->verbose()) {
	    print "Using prms field ", $usingPrmsField, "\n";
	}
    }

# Put these into the new object.
    my @argNames = (), my $argName, my $type;

    @args = ();

    my $ctr = 0;
    while($tmp) {
	$argName = "";

	if($tmp->isa("GCC::Node::parm_decl")) {
	    $argName = $tmp->{'name'}->{'string'};

	    push @argNames, $argName;
	    $type = $tmp->{'type'};
	} else {
	    $type = $tmp->{'valu'};
	}

	if($usingPrmsField == 1 && $type->isa("GCC::Node::void_type") && !defined($type->{'chan'})) {
	    last;
	}

	if(CTypes->verbose()) {
	    print "Getting parameter $argName\n";
	    print "\tkeys in parameter node: ", join(', ', keys(%$tmp)), "\n";
	}

	my $p = GenericType::makeType($type, $nodes);
	push @args, $p;
	
	$tmp = $tmp->chain;
	$ctr++;
    }

    if(CTypes->verbose()) {
	print "Arguments: (",  $ctr, " = ", $#args, ") ", join(', ', @args), "\n";

	print "Getting return value ", ref($node), "\n";
    }

    my $returnTypeNode;
    if($node->isa("GCC::Node::function_type")) {
	$returnTypeNode = $node->{'retn'};
    } else  {
	$returnTypeNode = $node->{'type'}->{'retn'};
    }
    $returnValue = GenericType::makeType($returnTypeNode, $nodes);

    my $fun = FunctionDecl->new($name, $returnValue, \@argNames, @args);

    if(CTypes->verbose()) {
	print "FunctionDecl: ", $fun, "\n";
    }

    return($fun);
}


sub new {

    my ($class, $name, $returnValue, $argNames, @args) = @_;

    my $obj;
    $obj = {
	name => $name,
	args => \@args,
	argNames => $argNames,
	returnValue => $returnValue
    };

    bless $obj => $class;

    return($obj);
}

sub asString {

    my ($obj) = shift;

    my $txt;
    $txt = $obj->{'returnValue'} . " " . $obj->{'name'} . "(";
    
    my $ctr = 0;
    if(CTypes->verbose()) { 
	print "[arg names] ", join(', ', @{$obj->{'argNames'}}), "\n";
    }

    my @argNames = @{$obj->{'argNames'}};
    my @args = @{$obj->{'args'}};
    my $n = $#args;


    if(CTypes->verbose()) { 
	print "[check] $n = $#args\n";
	if($n != $#argNames) {
	    print "Number of parameter names = $#argNames, versus $#args elements\n";
	}
    }

    while($ctr <= $n) {
#	print $ctr, ") ", $argNames[$ctr], " ", $args[$ctr], "\n";
	$txt .=  $args[$ctr] . " " .   $argNames[$ctr];
	$txt .= ', ' unless $ctr == $n;
	$ctr++;
    }
    
    $txt .= ")";

    return($txt);
}

use overload q("") => \&asString;



=head2 
 
  Return argument names for a function declaration/type,
  making them up as arg1, arg2, ... if they are not available.
  
=cut

sub argNames {
    my ($func) = @_;

    my @argNames = @{$func->{'argNames'}};
    if(!defined(@argNames)) {
	my @args = @{$func->{'args'}};
	my $ctr = 0;
	while($ctr <= $#args) {
	    push @argNames, "arg" . ($ctr + 1);
	    $ctr++;
	}
	$func->{'argNames'} = \@argNames;
#	print "Creating replacement argument ($#args) names for ", $func->{'name'}, "   ", join(', ', @argNames), "\n";
    }

    return(@argNames);
}



package BuiltinType;

our @ISA = qw(GenericType);


sub new {
    my ($class, $node) = @_;

    # Just want to use the same object with a different print method
    # tie variables, dynamic multiple inheritance?
    my $obj = {
	node => $node,
	typeString => getTypeString($node)
    };

    bless $obj  => $class;
    return($obj);
}

our %mapName = (
    "integer_type", "int",
    "char_type", "char",
    "real_type", "double",
    "void_type", "void"
);

sub asString {
    my $obj =  shift;
    return($obj->{'typeString'});
}

sub getTypeString {
#    print join(', ', keys(%mapName)), "\n";
    my $obj = shift;

    if($obj->isa("GCC::Node::integer_type")
       && $obj->{'prec'} == 8) {
	return("char");
    }

    
    my $n;
    if(defined($obj->{'node'})) {
	$n = ref($obj->{'node'});
    } else {
	$n = ref($obj);
    }

    $n =~ s/GCC::Node:://;
   
    if(exists($mapName{$n})) {
	$v = $mapName{$n};
    } else {
	$v = "" . $obj;
	print "No type for $n, using $v\n";
    }
    return($v);
}

use overload qw("") => \&asString;


package TypeDef;

our @ISA = qw(GenericType);

sub makeTypeDef {
    my ($class, $node, $nodes, $dontFollowName, $type) = @_;

    my $name = $node->{'name'}->{'string'};

    if(CTypes->verbose()) { 
	print "TypeDef name for ", $node->{'INDEX'}, " ", $name, "\n";
	print "Typedef node type: ", $node->{'type'},  " (",  $node->{'type'}->{INDEX}, ")\n";
    }
    if(!defined($type)) {
	$type = $node->{'type'};
    }

    my $p = TypeDef->create($node, $name);

    print "<makeTypeDef> $node->{INDEX}\n";
    my $v = GenericType::makeType($type, $nodes, 1); # xxx was 1
    print "</makeTypeDef>\n";

    $p->{type} = $v;

    if(CTypes->verbose()) { 
	print "type ", $node->{'type'}->{'INDEX'}, " (", ref($node->{'type'}), ") -> ", $v, "\n";
    }

    return($p);
}

sub new {
    my ($class, $name, $type)  = @_;

    my $obj = {
	name => $name,
	type => $type
	};

    bless $obj => $class;

    return($obj);
}

sub asString {
    my $obj = shift;
    return($obj->{'name'} . " => " . $obj->{'type'});
}

use overload q("") => \&asString;


package Record;

our @ISA = qw(GenericType);

sub makeRecord {
    my ($class, $node, $nodes) = @_;

    my ($field, $name, $tmp, $type);

    $name = $node->{'name'}->{'string'};

    if(!defined($name)) {
	$name = $node->{unql}->{name}->{'string'};
    }

    my @fields = ();
    my @fieldNames = ();


     # Register that this is being worked on so that others don't 
     # end up in recursive calls.
    my $p = $class->create($node, $name);
    $resolvedNodes{$node->{INDEX}} = $p;

     # If there is an unql, register the same object for that too.
    if(defined($node->{unql}) && !exists($resolvedNodes{$node->{unql}->{INDEX}})) {
	$resolvedNodes{$node->{unql}->{INDEX}} = $p;
    }

    $tmp = $node->{'flds'};
    do {

	if(CTypes->verbose()) { 
	    print "Field: ", $tmp->{'name'}->{'string'}, "\n";
	}
	push @fieldNames, $tmp->{'name'}->{'string'};

#	$field = $class->newField($tmp);
	if(!defined($tmp->{'type'})) {
	    print "No type field defined in '", $name, "' (", ref($node), ").   Node ", $tmp->{'name'}, "  ", $tmp->{INDEX}, "\n";
	    print "\t", join(', ', keys(%{$tmp})), "\n" ;
	}
	if(CTypes->verbose()) {
	    print "[makeRecord] ", $tmp->{'type'}, "\n";
	}
	my $type = GenericType::makeType($tmp->{'type'}, $nodes);
	push @fields, $type;
	$tmp = $tmp->chain;
    } while(defined($tmp));

    if($node->{'name'}->isa("GCC::Node::type_decl")) {
	$type = $node->{'name'};
    } else {
	$type = undef;
    }

#    my $p = $class->new($name, \@fieldNames, \@fields, $type);
    $p->{fieldNames} = @fieldNames;
    $p->{fields} = @fields;
    $p->{typdef} = $type;
    return($p);
}

sub new {
    my ($class, $name, $fieldNames, $fields, $type) = @_;

    my $obj = {
	fields => $fields,
	fieldNames => $fieldNames,
	name => $name,
	typedef => $type
    };

    bless $obj => $class;

    return($obj);
}

sub declaration {
    my ($obj) = @_;
    return("struct $obj->{'name'}");
}


sub typeName {
    my ($obj) = @_;

    if(defined($obj->{typedef})) {
	print "typedef for record ", ref($obj->{typedef}), "\n";
	return($obj->{typedef}->{'name'}->{'string'}); 
    } else {
	return("struct " . $obj->{'name'}); 
    }
}

sub asString {
    my ($obj) = @_;
    return($obj->typeName())
}

# For printing the  definition of the record.
#  Needs fixing now.
#
sub defString {

    my ($obj) = @_;

    my $ctr = 0;
    my @fieldNames = @{$obj->{'fieldNames'}};
    my @fields = @{$obj->{'fields'}};

    my $txt;

    $txt   = $obj->typeName() . "{\n";


    while($ctr < $#fieldNames) {
	$txt .= "   $fields[$ctr] $fieldNames[$ctr];\n";
	$ctr++;
    }

    $txt .= "\n}";

    return($txt);
}

use overload q("") => \&asString;

#################################################################

#
# Issue here that we need the variable name with the type
# when "printing" this as we want, e.g. 
#     int x[3]
# rather than 
#     int [3]x
# which is more sensible from a type-variable perspective.


package ArrayType; 


our @ISA = qw(GenericType);

sub makeArrayType {
    my($class, $node, $nodes) = @_;

    my $type = $node->{'elts'};

    my $size = $node->{'size'}->{'low'};

# Too simple.
    my $elSize = $node->{'algn'};

    if(defined($type->{'size'})) {
	$elSize = $type->{'size'}->{'low'};
    }

    my $nel = $size/$elSize;

    if(CTypes->verbose()) { 
	print "Number of elements ", $nel, "\n";
	print join(', ', keys(%{$node})), "\n";
    }
    
    $type = GenericType::makeType($type, $nodes);

    my $obj = $class->new($type, $nel);

    if(CTypes->verbose()) { 
	print "[array_type] ", $obj, "\n";
    }
    return($obj);
}


sub new {
    my ($class, $type, $numElements) = @_;

    my $obj = {
	type => $type,
	numElements => $numElements
    };

    bless $obj => $class;
    return($obj);
}

sub asString {
    my ($obj) = @_;

    my $txt = $obj->{'type'} . " [" . $obj->{'numElements'} . "]";

    return($txt);
}

use overload q("") => \&asString;



###############################################################

package VarDecl; 


our @ISA = qw(GenericType);

sub makeVarDecl {
    my($class, $node, $nodes) = @_;

    my $name = $node->{'name'}->{'string'};
    my $type = GenericType::makeType($node->{'type'}, $nodes);

    my $obj = $class->new($name, $type);
    if(CTypes->verbose()) { 
	print "[var_decl] ", $obj, "\n";
    }
    return($obj);
}


sub new {
    my ($class, $name, $type) = @_;

    my $obj = {
	type => $type,
	name => $name
    };

    bless $obj => $class;
    return($obj);
}

sub asString {
    my ($obj) = @_;

    my $txt = $obj->{'type'} . " " . $obj->{'name'}; 

    return($txt);
}

use overload q("") => \&asString;


1;
