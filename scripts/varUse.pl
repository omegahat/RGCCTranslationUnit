# The idea here is to follow the code in the function declarations to see which
# ones refer directly to which variables, including other functions.
# So we get the dependency list of the variables and also the call graph
# for within this 
use GCC::TranslationUnit; 

$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

print "Finished parsing the file $ARGV[0]\n";

# $tu is an array of nodes.

$filename = $ARGV[0];
$filename =~ s|.*/||;
$filename =~ s|\.tu$||;
# Have to do this since we included model.c and so the name we are looking to match is
# model.?
$filename =~ s/(cxx|cpp)$//;

$node = $tu->root;

$ctr = 0;

# Assumes dealing with a namespace_decl as the first node and this
# points to the list of declarations.
$node = $node->{'dcls'};

my (%funcIds, %varIds);

while ($node) {

#    print join(', ', keys(%$node)), "\n";
         # && $node->{'name'}->{'string'} eq "foo"
    if($node->{'source'} =~ m/$filename/) {
      my $name = $node->{'name'}->{'string'};
      if($node->isa("GCC::Node::function_decl")) {
	 $funcs{$name} = $node;
	 $funcIds{$node->{'INDEX'}} = $name;
      } elsif($node->isa("GCC::Node::var_decl")) {
	 $vars{$name} = $node;
	 $varIds{$node->{'INDEX'}} = $node;
      }
    }
    $node = $node->chain;
}


if( 1 ) {
while( ($name, $node)  = each(%funcs)) {
    my @vars = findVarReferences($node, $node);

    if($#vars gt -1) {
    my %v;
    foreach $f (@vars) {
	my $var = $varIds{$f};
	$v{$var->{'name'}->{'string'}} = $var;
    }
    print $name, ": ", join(', ', keys(%v)), "\n";
    $funcs{$name} = \%v;
    }
}
} else {
my $tmp = $funcs{"EncodeVars"};
print "Working with ", $tmp, "\n";

my @vars = findVarReferences($tmp, $tmp);

my %v;
foreach $f (@vars) {
    my $var = $varIds{$f};
    $v{$var->{'name'}->{'string'}} = $var;
}

print $tmp->{'name'}->{'string'}, " uses ", join(', ', keys(%v)), "\n";
}

sub findVarReferences {
    my ($node, $parent) = @_;
    my @ans;

#    print $node, " ", $node->{'INDEX'}, "\n";

    if(!defined($node)) {
	print "Null passed to findVarReferences from parent ", $parent, " ", $parent->{'INDEX'};
        print "\n";
        return undef;
    }

    if($node == $parent && $node->isa("GCC::Node::function_decl")) {
	push @ans, findVarReferences($node->{'body'});
    } elsif($node->isa("GCC::Node::compound_stmt")) {
      push @ans, findVarReferences($node->{'body'}, $node);   
      if(defined($node->{'next'})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::label_stmt")) {
      push @ans, findVarReferences($node->{'labl'}, $node);   
      if(defined($node->{'next'})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::scope_stmt") 
            ||  $node->isa("GCC::Node::label_stmt")
	    ||  $node->isa("GCC::Node::continue_stmt")
	    ||  $node->isa("GCC::Node::case_label")
           ) {
      if(defined($node->{"next"})) {
          push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::addr_expr") 
             || $node->isa("GCC::Node::nop_expr")
             || $node->isa("GCC::Node::non_lvalue_expr")
             || $node->isa("GCC::Node::indirect_ref")
             || $node->isa("GCC::Node::bit_not_expr")
             || $node->isa("GCC::Node::convert_expr")
             || $node->isa("GCC::Node::save_expr")
           ) {
      push @ans, findVarReferences($node->{'operand'}[0], $node);   
    } elsif($node->isa("GCC::Node::return_stmt")) {
      if(defined($node->{'expr'})) {
	  push @ans, findVarReferences($node->{'expr'}, $node);   
      }

      if(defined($node->{'next'})) {
	  push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::component_ref")) {
         # The other two components are not interesting to us here.
         # They are the field name, and if the third one (i.e. [2])
         # is present, it is the field offset. See gcc/gcc/tree.def.
      push @ans, findVarReferences($node->{'operand'}[0], $node);   
    } elsif($node->isa("GCC::Node::expr_stmt")) {
      push @ans, findVarReferences($node->{'expr'}, $node);   
      if(defined($node->{"next"})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::call_expr")) {
      push @ans, findVarReferences($node->{'fn'}, $node);   
      if(defined($node->{"args"})) {
         push @ans, findVarReferences($node->{'args'}, $node);   
      }
    } elsif($node->isa("GCC::Node::if_stmt")) {
      push @ans, findVarReferences($node->{'cond'}, $node);   
      if(defined($node->{"then"})) {
         push @ans, findVarReferences($node->{'then'}, $node);   
      }
      if(defined($node->{"next"})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::while_stmt") 
             || $node->isa("GCC::Node::switch_stmt")) {
      push @ans, findVarReferences($node->{'cond'}, $node);   
      if(defined($node->{"body"})) {
         push @ans, findVarReferences($node->{'body'}, $node);   
      }
      if(defined($node->{"next"})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::for_stmt")) {
      if(defined($node->{'init'})) {
	  push @ans, findVarReferences($node->{'init'}, $node);   
      }
      push @ans, findVarReferences($node->{'cond'}, $node);   
      if(defined($node->{'expr'})) {
	  push @ans, findVarReferences($node->{'expr'}, $node);   
      }
      if(defined($node->{"body"})) {
         push @ans, findVarReferences($node->{'body'}, $node);   
      }
      if(defined($node->{"next"})) {
         push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::tree_list")) {
      push @ans, findVarReferences($node->{'valu'}, $node);   
      if(defined($node->{"chain"})) {
         push @ans, findVarReferences($node->{'chain'}, $node);   
      }
    } elsif($node->isa("GCC::Node::modify_expr") || $node->isa("GCC::Node::init_expr") 
	     || $node->isa("GCC::Node::postincrement_expr")  
             || $node->isa("GCC::Node::postdecrement_expr") 
	     || $node->isa("GCC::Node::preincrement_expr")  
             || $node->isa("GCC::Node::predecrement_expr") 
             || $node->isa("GCC::Node::compound_expr") 
             || $node->isa("GCC::Node::plus_expr") 
             || $node->isa("GCC::Node::minus_expr") 
             || $node->isa("GCC::Node::mult_expr") 
             || $node->isa("GCC::Node::trunc_div_expr") 
             || $node->isa("GCC::Node::trunc_mod_expr") 

             || $node->isa("GCC::Node::bit_ior_expr") 
             || $node->isa("GCC::Node::bit_xor_expr") 
             || $node->isa("GCC::Node::bit_and_expr") 

             || $node->isa("GCC::Node::lshift_expr") 
             || $node->isa("GCC::Node::rshift_expr") 
             || $node->isa("GCC::Node::lrotate_expr") 
             || $node->isa("GCC::Node::rrotate_expr") 

             || $node->isa("GCC::Node::eq_expr") || $node->isa("GCC::Node::ne_expr")
             || $node->isa("GCC::Node::ge_expr")  || $node->isa("GCC::Node::le_expr")
             || $node->isa("GCC::Node::lt_expr")  || $node->isa("GCC::Node::gt_expr")
             || $node->isa("GCC::Node::truth_orif_expr")  || $node->isa("GCC::Node::truth_andif_expr")
             || $node->isa("GCC::Node::bit_field_ref")
             || $node->isa("GCC::Node::cond_expr")
          ) {

	if($node->isa("GCC::Node::bit_field_ref") && $#node->{'operand'} lt 0) {
	    return(@ans);
	}

      push @ans, findVarReferences($node->{'operand'}[0], $node);   
      push @ans, findVarReferences($node->{'operand'}[1], $node);   
      if($#{node->{'operand'}} gt 1 && $node->isa("GCC::Node::bit_field_ref") || $node->isa("GCC::Node::cond_expr") ) {
	  push @ans, findVarReferences($node->{'operand'}[2], $node);   
      }
    } elsif($node->isa("GCC::Node::decl_stmt")) {
      push @ans, findVarReferences($node->{'decl'}, $node);   
      if(defined($node->{'next'})) {
	  push @ans, findVarReferences($node->{'next'}, $node);   
      }
    } elsif($node->isa("GCC::Node::function_decl")) {
	if($funcIds{$node->{'INDEX'}}) {
	    return $node->{'INDEX'};
	}
    } elsif($node->isa("GCC::Node::var_decl")) {
# Also check the initialization code for local variables.
#	print "checking ", $node->{'INDEX'}, " in ", join(', ', keys(%varIds)), "\n";
	if($varIds{$node->{'INDEX'}}) {
#	    print "Found a variable ", $node->{'name'}->{'string'}, "\n";
	    return $node->{'INDEX'};
	}
    } elsif($node->isa("GCC::Node::result_decl") 
             || $node->isa("GCC::Node::parm_decl")
             || $node->isa("GCC::Node::goto_stmt")
             || $node->isa("GCC::Node::break_stmt")
             || $node->isa("GCC::Node::integer_cst")
             || $node->isa("GCC::Node::real_cst")
             || $node->isa("GCC::Node::string_cst")
             || $node->isa("GCC::Node::label_decl") # The name field must be constant!
           ) {
       # IGNORE.
    }else {
	print "[findVarReferences] ", $node, "  " , join(', ', keys(%$node)), "\n";
    }

    if(0 && $#ans gt -1) {
	print "Got result\n";
	print $ans[0], "\n";
	print $node, " => ", join(', ', @ans), "\n";
	print "\n";
    }
    return(@ans);
}


#print join(', ', keys(%funcs)), "\n";
#print "Variables ", join(', ', keys(%vars)), "\n";


