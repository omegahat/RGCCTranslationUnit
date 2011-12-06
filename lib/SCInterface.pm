package SCInterface;
# use strict;
=head1
  
  This is the class that is used as the base class for generating S functions
  from a C routine.
  The idea is that one creates an instance of this class or a base class and 
  calls the generateSFunction() method (or others).
  This allows us to use different derived classes to control how the code is generated,
  e.g. accessing the routines different, converting/marshaling the arguments from S
  to R and the return value back, etc.

=cut

use CTypes;


=head2

  Controls whether diagnostic information is written to the 
  console as the processing is performed.

=cut

our $_verbose = 0;
sub verbose {

    my $class = shift;
    return($_verbose);

}


=head2
 
  Create a new object that is used to create code for one or more routines
  and data structures.

=cut

sub new {
    my ($class) = @_;
    my $obj = {
                CRoutineNames => (),
		CCode => ()
	      };
    bless $obj => $class;
    $obj->clear();
    return($obj);
}

=head2
  Create an S function provides access to the specified C routine.

=cut

sub generateSFunction {

    my ($obj, $func, $name) = @_;

    if(!defined($name)) {
	$name = $func->{'name'};
    } else  {
	$name = "";
    }

    my @argNames = $func->argNames();
    my @args = @{$func->{'args'}};
    my $ctr = 0;

    my $argList = join(', ', @argNames);
    my $txt = $name . " <- \nfunction(" . $argList . ")\n{\n";

    $ctr = 0;
    while($ctr <= $#args)  {
	my $p = $args[$ctr];
	my $argName = $argNames[$ctr];
	$txt .= "\t" . $obj->ScoerceToType($argNames[$ctr], $p) . "\n";
        $ctr++;
    }

    my $prefix;
    if($ctr > 0) {
	$prefix = ", ";
    } else {
	$prefix = " ";
    }

    $txt .= "\n\n\tans = .Call('R_$name'" . $prefix . $argList . ")\n\treturn(ans)\n";
# Do we do coercion of the return value here or in the C code.

    $txt .= "\n}\n";

    $obj->addSFunction($name, $txt);

    return($txt);
}

=head2 

  Return an S expression that converts the specified argument
  to the appropriate S type for the call to the associated C code.
  This is called with the name of the S object and the object 
  describing the type of the associated parameter in the underlying,
  original C code.

=cut

sub ScoerceToType {

    my ($obj, $var, $type, $targetVar, $name)  = @_;
    my $v;

    if(!defined($targetVar)) {
	$targetVar = $var;
    }

    if($type->isa("TypeDef") || $type->isa("ArrayType")) {
	$v = $obj->ScoerceToType($var, $type->{'type'}, $targetVar, $type->{'name'});
	if($type->isa("ArrayType")) {
	    print "Adding stop\n";
	    $v .= "\n    if(length($targetVar) != " . $type->{'numElements'} . ")  stop('vector must have length " . $type->{'numElements'} . "')";
	}
	return($v);
    } elsif($type->isa("PointerType")) {
	return($obj->ScoerceToType($var, $type->{'type'}, $targetVar));
    } elsif($type->isa("BuiltinType")) {
	my $n = ref($type->{'node'});
	$n =~ s/GCC::Node:://;
	if($n eq "integer_type") {
	    $v = "as.integer($var)";
        } elsif($n eq "real_type") {
	    $v = "as.numeric($var)";
        }
    } elsif($type->isa("FunctionDecl")) {
         # Convert this to either a function or a native address.
	$v = "asCallable($var)";
    } elsif($type->isa("EnumeralType")) {
	my $className = $obj->defineEnumClass($type, $name);
	$v = "as($var, \"$className\")";

	if(0) {
	    my $def = $obj->defineSEnumerationVector($type);

	   # Now, see if we have defined a class for this one. If so, use that name
           # for the obj argument. Otherwise, pass NULL.
	    my $tmp = join('_', @{$type->{'names'}}) . "_enum";
	    my $className = $obj->{'EnumerationClasses'}{$tmp};

	    if(defined($className)) {
		$tmp = "new(\"$className\")";
	    } else {
		$obj->defineEnumClass($type, $name);
		$tmp = "NULL";
	    }
	    $v = "asEnumeratedValue($var, def = $def, obj = $tmp)";
        }
    } elsif($type->isa("Record")) {
	$v = "as($var, '$type->{'name'}')";
	if(!exists($obj->{'S4Classes'}{$type->{'name'}})) {
	    if(SCInterface->verbose()) {
		print "Create S4-constructor for $type->{'name'}\n";
	    }
	    $obj->createS4Classes($type);
	}
    } else {
	print "[ScoerceToType] ", "Can't handle ", $type, " ", ref($type), "\n";
    }

    return("$targetVar <- $v");
}

=head2 

  Define S4 classes for a structure/record for a reference and a copy.

=cut

sub createS4Classes {
    my ($obj, $type) = @_;
    
    $obj->createS4StructClass($type);
    $obj->defineS4RefClass($type);

    return($txt);
}


=head2

  Define a class representing a C record (struct or union) by field (rather than by reference).

=cut

sub createS4StructClass {

    my ($obj, $type) = @_;
    my $name = $type->{'name'};

    my $code = "setClass(\"$name\", ";

    $code .= $obj->getS4Representation($type) . ")";


    my @fields = @{$type->{'fields'}};
    my @fieldNames = @{$type->{'fieldNames'}};
    
    $code .= "\nnew$name <- function(" .  join(', ', @fieldNames) . ", .obj = new(\"$name\"))\n{\n";
    
    my $ctr = 0;
    foreach $f (@fieldNames) {
	my $tmp = ".obj@" . $f;
	$code .= "   " . $obj->ScoerceToType($f, $fields[$ctr], $tmp) . "\n";
	$ctr++;
    }

    $code .= "\n    .obj\n}";

    $obj->addSFunction("new$name", $code);

    return($code);
}


sub getS4Representation {

    my ($obj, $type) = @_;
    my $rep;

    if($type->isa("Record")) {
	$rep = $obj->getS4RecordRepresentation($type);
    } elsif($type->isa("EnumeralType")) {
	$rep = $obj->getS4EnumRepresentation($type);
    }
    
    return($rep);
}

sub getS4RecordRepresentation {
    my ($obj, $type) = @_;
    my $txt;

    my @fields = @{$type->{'fields'}};
    my @fieldNames = @{$type->{'fieldNames'}};
    my $ctr = 0;

    $txt .= "representation=list(\n";

### Must work recursively to define classes we haven't yet seen here, e.g. enumerations, other structs.
###  and must get the order of loading correct. mapToSType() does this.
### Get the names of the type correct, e.g. int is integer. And handle arrays.

    while($ctr <= $#fields) {
	my $stype = $obj->mapToSType($fields[$ctr]);
	$txt .= "\t\t\t $fieldNames[$ctr] = '$stype'";
	$txt .= ",\n" if $ctr < $#fields;
	$ctr++;
    }
    $txt .= ")";

    return($txt);
}

our %SBuiltinTypeMap = ("int", "integer", "double", "numeric", "float", "numeric", "long", "numeric");

sub mapToSType {
    my ($obj, $type, $name) = @_;
    my $v;

    if($type->isa("BuiltinType")) {
	$v = $type->{'typeString'};
	$v = $SBuiltinTypeMap{$v};
    } elsif($type->isa("PointerType") && $type->{'type'}->isa("BuiltinType")) {
	$v = $type->{'type'}->{'typeString'};
    } elsif($type->isa("EnumeralType")) {
	$v = $obj->defineEnumClass($type, $name);
    } elsif($type->isa("TypeDef")) {
	my $name = $type->{'name'};
	if($type->{'type'}->isa("Record")) {
	    if(!exists(${$obj->{'S4Classes'}}{$name})) {
		$obj->createS4Class($type);
	    }
	    $v = $type->{'name'};
	} else {
	    $v = $obj->mapToSType($type->{'type'}, $name);
	}
    }

    return($v);
}


=head2

  Define an S class representing an enumeration. 

=cut

sub defineEnumClass {
    my ($obj, $type, $name) = @_;
    my $rawName = join('_', @{$type->{'names'}}) . "_enum";

    if(defined($obj->{'EnumerationClasses'}{$rawName})) {
	print "Enumeration for $rawName already defined\n";
	return($obj->{'EnumerationClasses'}{$rawName});
    }

    if(!defined($name)) {
	$name =  $rawName;
    }

    my $v = $obj->defineSEnumerationVector($type);
    push @{$obj->{'EnumerationDefs'}}, "." . $name . " = " . $v;

    $obj->{'EnumerationClasses'}{$rawName} = $name;

    my $txt = "setClass(\"$name\", contains = \"Enumeration\",\n\t\tvalidity = function(object)\n\t\t\tvalidateEnumerationValue(object, def = $v)\n\t\t)\n";

    $txt .= "\nsetAs(\"integer\", \"$name\",\n\tfunction(from)\n\t\t asEnumeratedValue(from, def = $v, obj = new(\"$name\")))\n";
    $txt .= "\nsetAs(\"numeric\", \"$name\",\n\tfunction(from)\n\t\t asEnumeratedValue(from, def = $v, obj = new(\"$name\")))\n";
    $txt .= "\nsetAs(\"character\", \"$name\",\n\tfunction(from)\n\t\t asEnumeratedValue(from, def = $v, obj = new(\"$name\")))\n";

    $obj->addSClass($name, $txt);

    return($name);
}


sub defineSEnumerationVector {
    my ($obj, $type) = @_;

    my %values = %{$type->{'values'}};
    my @names = @{$type->{'names'}};
    my $ctr = 0;


    my $txt = "c(";
    while($ctr <= $#names) {
	$txt .= "'$names[$ctr]' = $values{$names[$ctr]}";
	$txt .= ", " if $ctr < $#names;
	$ctr++;
    }
    $txt .= ")";
    return($txt);
}


=head2
  Create a C routine that acts as an interface from R to the specified
  C routine. The generated routine marshals the arguments from R to
  the C routine, invokes that routine and converts the result to an 
  R object.

=cut

sub generateCRoutine {

    my ($obj, $fun) = @_;

    my $rname = "R_" . $fun->{'name'};
    my $txt = "SEXP\n$rname(";

    my @argNames = $fun->argNames();  # @{$fun->{'argNames'}};

    print "[generateCRoutine] param names: ", join(', ', @argNames), "\n";
    print ref($fun), "  ", join(', ', @{$fun->{'argNames'}}), "\n";

    my $ctr = 0;
    my $declarations = "\t  /* Return values for call to routine and for R. */\n\tSEXP ans = R_NilValue;\n";
    my @args = @{$fun->{'args'}};
    my $returnType = $fun->{'returnValue'};
    my $hasReturnValue = ($returnType->isa("BuiltinType") && $returnType->{'typeString'} eq "void");

    if(!$hasReturnValue) {
	$declarations .=  "\t" . $returnType->declaration() . "  rvalue;\n";
    }
    $declarations .= "\n";


    $declarations .= "\n\n\t  /* Declarations for local variables */\n";
    my $assignments = "";

    foreach my $arg (@args) {
	$txt .= "\tSEXP s_$argNames[$ctr]";
	$txt .= ", " if $ctr < $#args;
	$txt .= "\n";

	my $p = $args[$ctr];
#	my $w = ucfirst lc $p;
	my $decl = $p->declaration();
	$declarations .= "\t$decl $argNames[$ctr];\n";
	$assignments .=  "\t" . $obj->getConversionFromR($p, "$argNames[$ctr]", "s_$argNames[$ctr]", \@args) . ";\n";
	$ctr++;
    }

    $txt .= "\t)\n{\n\n";
    $txt .= "$declarations\n$assignments\n\n";

    $txt .= "\t  /* call the actual routine. */\n";
    my $call = "$fun->{'name'}(" .     join(', ', @argNames) . ");";

    if($hasReturnValue) {
	$txt .= "\t$call\n";
    } else {
	my $cvt = $obj->getConversionToR($returnType, "rvalue", \@args, \@argNames);
	$txt .= "\trvalue = $call\n";
	$txt .= "\n\tans = $cvt;\n";
    }

    $txt .= "\n\treturn(ans);\n}\n\n";

    $obj->addCRoutine($rname, $txt);
    return($txt);
}

=head2

  Returns a string that is a C expression for converting the 
  specified C value to an R object (SEXP).

=cut 

sub getConversionToR {
    my ($obj, $type, $var, $els, $elNames, $name) = @_;

    my $convertToRFun;

    if($type->isa("BuiltinType")) {
	$convertToRFun = "convert" . (ucfirst lc $type) . "ToR($var)";
    } elsif ($type->isa("PointerType") && $type->{'pointerDepth'} == 1) {
	if($type->{'type'}->isa("BuiltinType")) {
	    if($type->{'type'}->{'typeString'} eq "char") {
		$convertToRFun = convertStringToR($var);
	    }
	} else {
	    $convertToRFun = "convert" . (ucfirst lc $type) . "ArrayToR($var, -1)";
	}
    } elsif($type->isa("TypeDef")) {
	if(verbose()) { print "Following typedef getConversionToR for $type->{'name'}\n"; }
	$convertToRFun = $obj->getConversionToR($type->{'type'}, $var, $els, $elNames, $type->{'name'});
    } elsif($type->isa("ArrayType")) {
	print "Array type\n";
	my $name = $obj->createCArrayConverter($type, $els, $name);
	$convertToRFun = "$name(" . $var . ", " .  "$type->{'numElements'})";
    } elsif($type->isa("EnumeralType")) {
	if(!defined($name)) {
	    $name = join('_', @{$type->{'names'}});
	} 
	my $rname = "convert" . $name . "ToR";
	if(!$obj->isCRoutineDefined($rname)) {
	    if(verbose()) {  print "Defining enum converter for $name, $rname\n"; }
	    $rname = $obj->createEnumToRConverterRoutine($type, $name);
	}
	$convertToRFun = "$rname($var)";
    } elsif($type->isa("Record")) {
	if(!defined($name)) {
	    $name = "Struct" . $type->{'name'};
	}
	my $rname = "convert" . $name . "ToR";
	if(!$obj->isCRoutineDefined($rname)) {
	    $obj->genCToRStructConverter($type);
	}
	$convertToRFun = "$rname(&$var)";
    } elsif($type->isa("PointerType")) {

	print "Pointer type return ", join(', ', @{$elNames}), "\n";
    } else {
	print "Default getConversionToR for ", ref($type), "\n";
	if (!defined($name)) {
	    $name = $type;
	}
	$convertToRFun = "R_MakeExternalPtr($var, Rf_install(\"$name\"), R_NilValue)";
    }

    return($convertToRFun);
}


our %SEXPTypes = ('int',    "INTSXP", 
                  'double', "REALSXP", 
		  'char',   "STRSXP");

sub getRArraySEXPType {
    my ($obj, $elType, $arr) = @_;

    if($elType->isa("BuiltinType")) {
	my $t = $elType->{'typeString'};
	return($SEXPTypes{$t});
    }
}


our %SEXPAccessors = ('int',    "INTEGER_ELT", 
		      'double', "REAL_ELT", 
		      'char',   "STRING_ELT",
	             );

our %SEXPSetAccessors = ('int',    "SET_INTEGER_ELT", 
			 'double', "SET_REAL_ELT", 
			 'char',   "SET_STRING_ELT",
			);

sub convertCArrayElementToR {
    my ($obj, $elType, $targetVar, $index, $sourceVar, $type) = @_;

    if($elType->isa("BuiltinType")) {
	my $t = $elType->{'typeString'};
	return("$SEXPSetAccessors{$t}($targetVar, $index, $sourceVar\[$index\]);");
    } else {

	my $v = "SET_VECTOR_ELT($targetVar, $index, " .  $obj->getConversionToR($elType, $sourceVar) . ")";
	return($v);
    }
    return("<error>");
}

sub createCArrayConverter {

    my ($obj, $type, $els, $name)  = @_;

    my $elType = $type->{'type'};

    if(!defined($name)) {
	my $tmp = $elType->declaration();
	$tmp =~ s/ //g;
	$name = "convert" . (ucfirst lc $tmp) . "ArrayToR"
    }

    my $code = "SEXP\n$name(" . $elType->declaration() . " *ptr, int length)\n{\n\n    int i;\n    SEXP ans;\n";
    $code .= "    PROTECT(ans = allocVector(" . $obj->getRArraySEXPType($elType, $type) .  ", length));\n";
    $code .= "    for(i = 0; i < length; i++) {\n        ";
    $code .= "    " . $obj->convertCArrayElementToR($elType, "ans", "i", "ptr", $type);
    $code .= "\n    }\n";
    $code .= "    UNPROTECT(1);\n    return(ans);\n}";
    $obj->addCRoutine($name, $code);
    return($name);
}

sub convertRToCArrayConverter {
    my ($obj, $elType, $targetVar, $index, $sourceVar, $type) = @_;

    if($elType->isa("BuiltinType")) {
	my $t = $elType->{'typeString'};
	return("$targetVar\[$index\] = $SEXPAccessors{$t}($sourceVar, $index);");
    }
    return("<error>");
}




=head2
 Create C code to convert a value from an enumeration into an R object.

=cut

sub createEnumToRConverterRoutine 
{
    my ($obj, $enum, $name) = @_;

    my $rname = "convert" . $name . "ToR";
    my $c = "SEXP\n$rname(int val)\n{\n";
# Force the newline and tab directly in the first argument of join. 
    my $tmp = join(',
		',  map {"\"" . $_ . "\""}  @{$enum->{'names'}});
    $c .=  "    const char * const names[] = {\n\t\t" .  $tmp . "};\n";
    $c .=  "    const int values[] = {";

    my %tb = %{$enum->{'values'}};
    my @names = @{$enum->{'names'}};
    my $ctr = 0;
    foreach my $i (@names) {
	$c .= $tb{$i};
	$c .= ", " if $ctr < $#names;
	$ctr++;
    }
    $c .= "};\n\n    return(createREnumerationValue(val, names, values, $ctr, \"$name\"));\n\n}\n";


    $obj->addCRoutine($rname ,$c);
    return($rname);
}


=head2
 
  Add the specified S class definition code to the list of generated
  classes and store the name in the array of names so that the order
  can be preserved.

=cut
 
sub addSClass {
    my ($obj, $name, $def)  = @_;
    ${$obj->{'S4Classes'}}{$name} = $def;
    push @{$obj->{'S4ClassNames'}},  $name;
    return(1);
}

sub addSFunction {
    my ($obj, $name, $def)  = @_;
    if(!defined(${$obj->{'SFunctions'}}{$name})) {
	push @{$obj->{'SFunctionNames'}},  $name;
    }
    ${$obj->{'SFunctions'}}{$name} = $def;
    return(1);
}

=head2 
  Add regular S code to the collection to be written to the file.

=cut

sub addSCode {
    my ($obj, $def)  = @_;
    push @{$obj->{'SCode'}},  $def;
    return(1);
}



=head2

  This replaces the existing definition, if any, but ensures that the
  routine is only included in the code once.

=cut 

sub addCRoutine {
    my ($obj, $name, $def)  = @_;

    my %tb = %{$obj->{'CRoutineNames'}};

    if(!exists($tb{$name})) {
	push @{$obj->{'CCode'}},  $def;
    }
    $obj->{'CRoutineNames'}{$name} = $def;

    return(1);
}


sub isCRoutineDefined {
    my ($obj, $rname) = @_;
#    print $rname, " in ", join(keys(%{$obj->{'CRoutineNames'}})), " ", exists($obj->{'CRoutineNames'}{$rname}), "\n";
    return(exists($obj->{'CRoutineNames'}{$rname}));
}

=head2

    Define an S4-class for a reference to a C object.
    We use the External Pointer SEXP type to represent the reference
    and we provide methods for accessing the fields (getting and setting).

=cut

sub defineS4RefClass {

    my ($obj, $type) = @_;

    # i)   generate the S code defining the class and constructor function (done).
    # ii)  define the accessor function and routine   $ (function done).
    # iii) define the assignment function and routine $<-

    my $name = $type->{'name'} . "Ref";
 
#XXX Put this back when extending externalptrs works.
#    my $SclassDef = "setClass('$name', contains = list('externalptr'))";
#    $obj->addSClass($name, $SclassDef);


    $obj->addSRefConstructor($type, $name);

    # Now generate the C code for the accessors

    $obj->addCRefAllocRoutine($type, $name);

    $obj->genCToRStructConverter($type);

    $obj->addSRefAccessorMethods($type, $name);

     #
    $obj->addCRefAccessor($type);
    $obj->addCSetRefAccessor($type);

    return($name);
}


sub addSRefAccessorMethods {

    my ($obj, $type, $name) = @_;

    my @fields = @{$type->{'fieldNames'}};
    my @fieldTypes = @{$type->{'fields'}};

     #
    my $fieldNameList = join(', ',  map  { "\"" . $_ . "\"" }  @fields);

    my $ScheckFieldNames = "    .fieldNames = c($fieldNameList)\n    which = pmatch(name, .fieldNames)\n    if(is.na(which)) stop('no field ', name, ' in $name object')\n";

    my $Saccessor = "setMethod('\$', '$name', function(x, name) {\n";
    $Saccessor .= $ScheckFieldNames;
    $Saccessor .= "    .Call('R_" . $name . "Accessor', x, which)\n   })";
    $obj->addSFunction("$name\$", $Saccessor); # Should be addSMethod


     # Now for the set field accessor
    $Saccessor = "setMethod('\$<-', '$name', function(x, name, value) {\n$ScheckFieldNames";

    $Saccessor .= "    name = .fieldNames[which]\n";
    my $ctr = 0;
    foreach my $f (@fields) {
	$Saccessor .= "    " . ($ctr == 0 ? "if" : "else if") . "(name == '$f') { " .  $obj->ScoerceToType("value", $fieldTypes[$ctr]) . " }\n";
	$ctr++;
    }
    $Saccessor .= "    .Call('R_set" . $name . "Accessor', x, which, value)\n    x\n   })";
    $obj->addSFunction("$name\$<-", $Saccessor); # Should be addSMethod

}

sub addCRefAllocRoutine {

    my ($obj, $type, $name) = @_;

    #  And generate the C routine for the R_new$name routine.
    my $tp = $type->declaration();
    my $Cconstructor = "SEXP\nR_new$name()\n{\n    SEXP ans;\n    $tp *ptr = NULL;\n\n";
    $Cconstructor .= "    ptr = ($tp *) malloc(sizeof($tp));\n    if(!ptr) {\n    \tPROBLEM \"Cannot allocate space for $tp\"\n    \tERROR;\n    }\n    memset(ptr, 0, sizeof($tp));";
    $Cconstructor .= "    PROTECT(ans = R_MakeExternalPtr(ptr, Rf_install(\"$name\"), R_NilValue));\n";
    $Cconstructor .= "    R_RegisterCFinalizer(ans,  SimpleAllocFinalizer);\n\n";
    $Cconstructor .= "    UNPROTECT(1);\n    return(ans);\n}\n";

    $obj->addCRoutine("R_new$name", $Cconstructor);

    return($obj);
}

sub addSRefConstructor {
    my ($obj, $type, $name) = @_;

    # Accessor function.
    my @fieldTypes = @{$type->{'fields'}};
    my @fields = @{$type->{'fieldNames'}};
    my $argList = join(', ', @fields);
    my $Sconstructor = "$name <- function($argList, obj = .allocRef('$name', 'R_new$name'))\n{\n";

    foreach my $f (@fields) {
	$Sconstructor .= "   if(!missing($f)) obj\$$f = $f\n";
    }
    $Sconstructor .= "   return(obj)\n}" ;

    $obj->addSFunction($name, $Sconstructor);

    return($Sconstructor);
}


sub addCRefAccessor {
    my ($obj, $type) = @_;

    my $tp = $type->declaration();
    my @fields = @{$type->{'fieldNames'}};
    my @fieldTypes = @{$type->{'fields'}};

    my $name = $type->{'name'} . "Ref";

     #
    my $Caccessor = "SEXP\nR_" . $name . "Accessor(SEXP obj, SEXP which)\n{\n   SEXP ans = R_NilValue;\n   $tp *ptr;\n\n";
    $Caccessor .= "    ptr = ($tp *) R_ExternalPtrAddr(obj);\n    if(!ptr) {\n        PROBLEM \"Null value for $name external pointer\"\n        ERROR;\n    }\n";

    $Caccessor .= "\n    switch(INTEGER(which)[0]) {\n";
    
    my $ctr = 0;

    foreach my $f (@fields) {
	$Caccessor .= "        case " . ($ctr + 1) . ":\n         ans = " . $obj->getConversionToR($fieldTypes[$ctr], "ptr->$f", \@fieldTypes, \@fields) . ";\n         break;\n";
	$ctr ++;
    }
    $Caccessor .= "\n        default:\n         break;\n    }\n\n    return(ans);\n}";

    $obj->addCRoutine("R_" . $name . "Accessor", $Caccessor);  

    return($Caccessor);
}


sub addCSetRefAccessor {
    my ($obj, $type) = @_;

    my $tp = $type->declaration();
    my @fields = @{$type->{'fieldNames'}};
    my @fieldTypes = @{$type->{'fields'}};

    my $name = $type->{'name'} . "Ref";

     #
    my $Caccessor = "SEXP\nR_set" . $name . "Accessor(SEXP obj, SEXP which, SEXP value)\n{\n   SEXP ans = R_NilValue;\n   $tp *ptr;\n\n";
    $Caccessor .= "    ptr = ($tp *) R_ExternalPtrAddr(obj);\n    if(!ptr) {\n        PROBLEM \"Null value for $name external pointer\"\n        ERROR;\n    }\n";

    $Caccessor .= "\n    switch(INTEGER(which)[0]) {\n";
    my $ctr = 0;
    foreach my $f (@fields) {
	$Caccessor .= "        case " . ($ctr + 1) . ":\n";
	$Caccessor .= "             " . $obj->getConversionFromR($fieldTypes[$ctr], "ptr->$f", "value", \@fields) . ";\n         break;\n";
	$ctr ++;
    }
    $Caccessor .= "\n        default:\n         break;\n    }\n\nreturn(ans);\n}";

    $obj->addCRoutine("R_set" . $name . "Accessor", $Caccessor);  

    return($Caccessor);
}


sub getConversionFromR 
{
    my ($obj, $type, $targetExpr, $fromVar, $fields) = @_;
    
    my $expr;

    if($type->isa("BuiltinType")) {
	if($type->{'typeString'} eq "int") {
	    $expr = "$targetExpr = INTEGER($fromVar)[0];";
	} elsif($type->{'typeString'} eq "double") {
	    $expr = "$targetExpr = REAL($fromVar)[0];";
	} elsif($type->{'typeString'} eq "char") {
	    $expr = "$targetExpr = STRING_PTR($fromVar)[0];";
	}
    } elsif($type->isa("EnumeralType"))  {
	$expr = "$targetExpr = INTEGER($fromVar)[0];";
    } elsif($type->isa("TypeDef"))  {
	$expr = $obj->getConversioFromR($type->{'type'}, $targetExpr, $fromVar, $fields);
    } elsif($type->isa("Record")) {
	my $name = "Struct" . $type->{'name'};
	my $rname = "convert" . $name . "FromR";
	if(!$obj->isCRoutineDefined($rname)) {
	    $obj->genRToCRecordConverter($type, $rname);
	}
	$expr = "$rname($fromVar, &$targetExpr)";
    } elsif($type->isa("PointerType")) {
	my $el = $type->{'type'};
	if($el->isa("BuiltinType")) {
	    if($el->{'typeString'} eq "char")  {
		if($type->{'depth'} == 1) {
		    $expr = "$targetExpr = STRING_PTR($fromVar)[0];";		
		} elsif($type->{'depth'} == 2) {
		    $expr = "$targetExpr = STRING_PTR($fromVar);";		
		} else {
		    # error here.
		    print "Problems in getting R to C converter expression. Unhandled case. PointerType for ", $el, " ", $type->{'depth'}, "\n";
		}
	    }
	}
    }

#    $obj->addCRoutine($rname, $txt);

    return($expr);
}


=head2 
  Convert an R object of the appropriate class to the corresponding C 
  struct value.
  Essentially, this takes an S4-object and copies its slots to the fields
  in the C structure.
 
  We can provide other facilities 

=cut 

sub genRToCRecordConverter {
    my ($obj, $struct, $rname) = @_;
  
    my $decl = $struct->declaration();
    my $txt = "int\n$rname(SEXP input, $decl *output)\n{\n";

    my $ctr = 0;
    my @fields = @{$struct->{'fields'}};

    foreach my $f (@{$struct->{'fieldNames'}}) {
	$txt .= "    " . $obj->getConversionFromR($fields[$ctr], "output->$f", "GET_SLOT(input, Rf_install(\"$f\"))", \@fields) . "\n";
	$ctr++;
    }

    $txt .= "\n    return(1);\n}";
    $obj->addCRoutine($rname, $txt);
    return($txt);
}

=head2
 
 This generates a routine for converting a C-level structure into an R object.

 useS4Class controls whether we are using an S4 or an S3 class as the target object.
  

=cut

sub genCToRStructConverter {
    my ($obj, $type) = @_;

    my $useS4Class = 1;

    my $name = "Struct" . $type->{'name'};
    my $dec = $type->declaration();

    my @fieldNames = @{$type->{'fieldNames'}};
    my @fields = @{$type->{'fields'}};

    my $fname = "convert" . $name . "ToR";

    my $n = $#fieldNames + 1;
    my $txt =  "SEXP\n" . $fname . "($dec *ptr)\n{\n    SEXP ans;\n";
    if(!$useS4Class) {
	$txt .= "    SEXP names;\n\n    PROTECT(ans = allocVector(VECSXP, $n));\n    PROTECT(names = allocVector(STRSXP, $n));\n";
	$txt .= "    PROTECT(allocVector(VECSXP, $n));\n    PROTECT(names = allocVector(STRSXP, $n));\n";
    } else {
	$txt .= "    PROTECT(ans = NEW_OBJECT(R_do_MAKE_CLASS(\"$name\")));\n";
    }

    my $ctr = 0;
    foreach my $f (@fieldNames) {
	if(!$useS4Class) {
	    $txt .= "    SET_VECTOR_ELT(ans, $ctr, " .   $obj->getConversionToR($fields[$ctr], "ptr->$f", \@fields, \@fieldNames)  . ");\n";
	    $txt .= "    SET_STRING_ELT(names, $ctr, COPY_TO_USER_STRING(\"$f\"));\n";
	} else {
	    $txt .= "    PROTECT(ans = SET_SLOT(ans, Rf_install(\"$fieldNames[$ctr]\"), " .   $obj->getConversionToR($fields[$ctr], "ptr->$f", \@fields,\@fieldNames)  . "));\n";
	}
	$ctr++;
    }

    if(!$useS4Class) {
	$txt .= "\n    SET_NAMES(ans, names);\n    SET_CLASS(ans, mkString(\"$name\"));";
    }

    $txt .= "\n    UNPROTECT(" . ( ($useS4Class ? 1 : 2) + $n) . ");\n    return(ans);\n}\n";

    $obj->addCRoutine($fname, $txt);

    return($txt);
}


=head3

  Output the elements of the array to the given file.

=cut

sub writeCode {
 
    my ($obj, $handle, @els) = @_;

    foreach my $el (@els) {
	print $handle "\n", $el, "\n\n";
    }
    return(1);
}


=head2

  Write the S and C code generated within this object
  to the specified files.

=cut

sub outputCode {
    my $obj = shift;
    my  $fileName = shift;

    $obj->outputSCode($fileName . ".S");
    $obj->outputCCode($fileName . ".c", @_);

    return(1);
}

=head 2
  Output the current collection of S code created by this object
  to the specified file.

=cut

sub outputSCode {
    my ($obj, $fileName) = @_;

    open(my $handle, "> $fileName");

    print $handle "# Machine generated from SCInterface.pm.\n\n";


    $obj->writeCode($handle, @{$obj->{'EnumerationDefs'}});

    my %tb = %{$obj->{'S4Classes'}};
    foreach my $n (@{$obj->{'S4ClassNames'}}) {
	print $handle $tb{$n}, "\n\n";
    }

    %tb = %{$obj->{'SFunctions'}};
    foreach my $n (@{$obj->{'SFunctionNames'}}) {
	print $handle $tb{$n}, "\n\n";
    }

    
    $obj->writeCode($handle, @{$obj->{'SCode'}});

    close($handle);

    return(1);
}

=head2
  Write the C code to the specified file.

=cut

sub outputCCode {

    my ($obj, $fileName, $cheader) = @_;

    open(my $handle, "> $fileName");

    print $handle "/* Machine generated from SCInterface.pm. */\n\n";

    if(!defined($cheader)) {
	$cheader = $obj->{'CHeader'};
    }

    if(defined($cheader)) {
	print $handle $cheader, "\n";
    }


    $obj->writeCode($handle, @{$obj->{'CCode'}});

    close($handle);

    return(1);
}

=head2

  Reset the internal state of this object, purging the previously
 generated code. This might be useful, for example, to start
  on a different .c.tu file with the same object.

=cut

sub clear {
    my $obj = shift;

    $obj->{'CCode'} = ();
    $obj->{'EnumerationClasses'} = ();
    $obj->{'S4ClassNames'} = ();
    $obj->{'S4Classes'} = ();
    $obj->{'SFunctions'} = ();
    $obj->{'SFunctionNames'} = ();

    return(1);
}


sub createVariableAccessor {
    my ($obj, $var) = @_;

    my $cname = "R_get_" . $var->{'name'};
    my $rname = "get_" . $var->{'name'};
    my $scode = $rname . "<- function() {\n     .Call('$cname')\n}";

    $obj->addSFunction($rname, $scode);

    print "Variable type ", $var->{'type'}, " (", ref($var->{'type'}), ")\n";

    my $ccode = "SEXP\n$cname()\n{\n    SEXP ans;\n    ";
    $ccode .= "ans = " . $obj->getConversionToR($var->{'type'}, $var->{'name'}) . ";\n}";
    $obj->addCRoutine($cname, $ccode);

    return($rname);
}

1;
