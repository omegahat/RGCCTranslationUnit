package GCC::TranslationUnit;

# use strict;

our $VERSION = "1.00";

use GCC::Tree;



package GCC::TranslationUnit::LineStream;

sub LineStream {
   my $class = shift;
   my $val =  { content => @_,
                pos => 0
  	      };
   return(bless $val, $class);
}

sub getline {
    my $val = shift;

    my $ans = @{$val->{content}}[$val->{pos}];
    $val->{pos} ++;

    return($ans);
}

package GCC::TranslationUnit::Parser;


# XXX use Storable;

our %AccessMap = ("priv", "private", 
		  "pub", "public",
		  "prot", "protected"
		  );

our %CompleteNameMap = (
			"virt", "virtual"
			);
sub save {
  my ($me, $filename) = @_;
#  require Storable;

  store $me, $filename;
}

sub parseTU {
    my ($class, $filename) = @_;

    my $p = GCC::TranslationUnit::Parser->parsefile($filename);

    return($p);
}

sub parseTUString {
    my $stream = GCC::TranslationUnit::LineStream->LineStream(\@_);
    my $p = GCC::TranslationUnit::Parser->parseContent($stream);

    return($p);
}

# This one returns the root node.
sub readTU {
    my ($class, $filename) = @_;

    my $p = GCC::TranslationUnit::Parser->parsefile($filename);
    my $root = $p->root;

    if($root->isa("GCC::Node::namespace_decl")) {
	$root = $root->{dcls};
    }

    return($root);
}


sub getEnumerations {
    my ($obj) = @_;
    shift;
    my (@files) = @_;

    my @ans;
    my ($n, $i, $len);
    my @els = @{$obj};

    my $ok;
    $ok = ($#files == -1);

    # Take care of "" being a convenient way of getting across the RSPerl interface
    # when we'd like a character(0)

       # Just using foreach $n (@{$obj}) causes grief in the first element.
       # It is not a blessed object, but a simple HASH.
    $len = $#els;
    for($i = 1; $i <  $len; $i++) {
	$n = $els[$i];
	if($n->isa('GCC::Node::enumeral_type')) {
            if($ok || matchFile($n->{'name'}->{'source'}, @files)) {
	      push @ans, $n->{'INDEX'};
   	    }
	}
    }
    return(@ans);
}


sub matchFile {
# There should be a good way to do this with grep.
# Don't want to resort to an associative array and keys
# as we are doing a grep on the names.

    my ($src, @files) = @_;
    $src =~ s/:.*$//;  # trim away the line number info.

# print "source: ", $src, " in ", join(', ', @files), "\n"; 
    foreach my $f (@files) {
	if($src eq $f) {
	    return(1);
	}
    }
    return(0);
}


# See getByType. This version only handles
# a single type value.
sub getNext {
    my ($top, $ctr, $type) = @_;
    my @nodes = @{$top};

    $ctr = 1 if ! defined($ctr);

    while($ctr <= $#nodes) {
	my $tmp = $nodes[$ctr];

	if($tmp->isa($type)) {
	    return($tmp);
	}
	$ctr++;
    }

    return(undef);
}

sub getByType {
    my ($top, $ctr) = @_;
    shift; shift;
    my @types  = @_;
    my @nodes = @{$top};

    $ctr = 1 if ! defined($ctr);

    while($ctr <= $#nodes) {
	my $tmp = $nodes[$ctr];

	foreach my $k (@types) {
	if($tmp->isa($k)) {

	    return($tmp);
	}
        }
	$ctr++;
    }

    return(undef);
}





# This class parses the GCC translation unit, as dumped by the
# -fdump-translation-unit flag in gcc-3.2.2, and sticks it into a Perl
# datastructure intended to somewhat mirror the tree structure
# documented in gcc/doc/c-tree.texi, from that same version of gcc.

# C++ overloaded operator names, as per cp/dump.c in gcc-3.2.2
our %ops = (
    'new' => "new",
    vecnew => "new[]",
    'delete' => "delete",
    vecdelete => "delete[]",
    'pos' => "+",
    neg => "-",
    addr => "&",
    deref => "*",
    'not' => "~",
    lnot => "!",
    preinc => "++",
    predec => "--",
    plus => "+",
    plusassign => "+=",
    minus => "-",
    minusassign => "-=",
    mult => "*",
    multassign => "*=",
    div => "/",
    divassign => "/=",
    mod => "%",
    modassign => "%=",
    'and' => "&",
    andassign => "&=",
    'or' => "|",
    orassign => "|=",
    'xor' => "^",
    xorassign => "^=",
    lshift => "<<",
    lshiftassign => "<<=",
    rshift => ">>",
    rshiftassign => ">>=",
    'eq' => "==",
    'ne' => "!=",
    'lt' => "<",
    'gt' => ">",
    'le' => "<=",
    'ge' => ">=",
    land => "&&",
    lor => "||",
    compound => ",",
    memref => "->*",
    'ref' => "->",
    subs => "[]",
    postinc => "++",
    postdec => "--",
    call => "()",
    assign => "="
);

# op names for use in regex
my $opnames = join '|', keys(%ops);

# I'm using the standard -fdump-translation-unit format. Anyone is welcome
# to provide an XML parser for the various XML format patches to GCC.

use IO::File;
use warnings ;


# My initial parser was regarded as 'unreadable' and 'uncommented' by
# some people. That was unfortunate. Here, have a comment:

# Usage: $tu = GCC::TranslationUnit::Parser->parsefile("file.c.tu")
#
# Better yet, save yourself some memory and do:
# $node = GCC::TranslationUnit::Parser->parsefile("file.c.tu")->root;
#
# Remember, $tu is an N-element array, where N is the number of nodes GCC
# dumped. Only keep the array if you plan to iterate through every element
# in the GCC tree; otherwise, free the memory used by the array, and let
# the Perl reference counter free the node branches if you delete them.
sub parsefile {
    my $class = shift;
    my $file = shift;

    my $gz;
    my $fh;

   if($file =~ m/\.gz$/) {
        # Want this to be a dynamic inclusion, not a compile time requirement.
        # So use require, not use.  And this prohibits us using the error handling.
        require  IO::Uncompress::AnyUncompress; # qw(anyuncompress $AnyUncompressError) ;
	$fh = new IO::Uncompress::AnyUncompress $file
	    or die "Cannot get the uncompressed version";
    } else {
	$fh = new IO::File $file;
    }

    return undef unless defined $fh; # Not my problem if I can't open your file

    return(GCC::TranslationUnit::Parser->parseContent($fh));
}

sub parseContent {

    my $class = shift;
    my $fh = shift;

    my $self = bless [], $class;
    my $dump = "";   # the text of a single dumped node
    my $index = 0;   # numerical index of the "current" node

    push @{$self}, {'recordNodes' => [],
                    'version' => 'NA'
                    };

    my $line;
    while($line = $fh->getline) {
	if($line =~ /^\@(\d+)/) {
	    # The first line of a node should look like:
	    # "@123            some_node   ..."
	    # Every other line is requried to be indented
	    #
	    # When we find that "first" line, or EOF, parse the previous node
	    $self->parsenode($dump, $self->node($index));
	    $self->node($index)->{position} = $index;
	    $dump = $line;
	    $index = $1;
	} else {
	    $dump .= $line;
	}
    }
    $self->parsenode($dump, $self->node($index));

    return $self;
}

# Returns the root node, from GCC's perspective.
# Usage: $tu->root
sub root { shift->[1] }

# Take the complete dumped text in $dump from a single GCC node and
# stuff it into $node.
#
# Usage: $tu->parsenode($dump, $tu->node($index));
sub parsenode {
    my($self, $dump, $node) = @_;
    return unless $dump;

    # Note that this regex leaves a space before the first key.
    #
    # That's because the key matching rule is /\s\w.{3}:\s/
    unless($dump =~ s/^\@(\d+)\s+(\w+)(?=\s)//) {
	warn "Unknown node format:\n$dump";
	return;
    }

    my $index = $1;
    my $type = $2;


    bless $node, "GCC::Node::$type";
    $node->{INDEX} = $index;
    $node->{TU} = \$self;  # must be a reference or will blow the C stack.

    # First, some examples as to what's possible as a node element
    #
    # dump_index() writes:
    # node: @123
    #
    # dump_pointer() writes:
    # node: 2468ace0
    #
    # dump_int() writes:
    # node: 1234567
    #
    # dump_string() writes:
    # string
    #
    # dump_string_field() writes:
    # node: string


    # The string nodes can seriously disrupt us, since they aren't quoted.
    # They are VERY inconvenient, so we must eliminate them first.
    #
    # Anything that looks like an identifier_node string must be squashed ASAP
    if($dump =~ s/\s+strg:\s(.*)\slngt:\s(\d+)//s) {
	# identifier_node and string_cst come here, at least
	my($string, $length) = ($1, $2);
	
	# string_cst's lngt includes the NUL character, which fprintf()
	# doesn't print, obviously. Make sure to factor that in...
	$length-- if $type eq 'string_cst';

	$node->{'string'} = substr($string, 0, $length);
	$node->{'length'} = $length;
#	print "string: '$node->{string}'\n";
    }

    # The srcp key is BAD. It contains a colon as part of the value, which
    # could ruin the key parser regex. It's gotta go. Not to mention filenames
    # with spaces...
    #
    # Example:
    # srcp: file.c:123
    $node->{'source'} = $1 if $dump =~ s/\ssrcp:\s(.*?:\d+)(?=\s)//;


    # operators have the name after them in the form  
    #    note: operator opName
    # so we look for note: operator [a-zA-Z]+
    $node->{'operator'} = $1 if $dump =~ s/\snote: operator\s+([a-zA-Z]+)\s+//;
    
    # The remaining nodes are pretty regular and easy to parse.
    # However, the flags which crop up everywhere disrupt my ability
    # to determine the end of a value corresponding to a key. for instance:
    #
    # key : value     protected
    #
    # Depending on what the key represents, the protected flag may or
    # may not be a part of the value. In order to remove the ambiguity,
    # we have to manually parse out any keys whose values aren't captured
    # with a trivial /\s(\w.{3}):\s(\S)\s/ match.

    # First violator:
    # "qual: %c%c%c     "
    if($dump =~ s/\squal:\s(.{3})\s//) {
	my $qual = $1;
	$node->{'const'}    = 1 if $qual =~ /c/;
	$node->{'volatile'} = 1 if $qual =~ /v/;
	$node->{'restrict'} = 1 if $qual =~ /r/;
    }

    if($dump =~ s/bases: (\d+)\s+//) {
	$node->{'bases'} = $1;
    }


    while($dump =~ s/spec: (\w+)//) {
          # pick up spec: virt  spec: pure
	my $val = $1;
	$val = $CompleteNameMap{$val} if defined $CompleteNameMap{$1};
	push @{ $node->{'spec'} }, $val;
    }




    # next violator:
    #                   base: @1234    virtual        public
    #                   <repeat for every base class>
    while($dump =~ s/\sbase:\s\@(\d+)\s+(.*?)\s*(public|private|protected)//) {
	# base is the only key which can appear multiple times in the same
	# node, since it's spit out from an array. We need to put it back.
	#
	# The other vector nodes have a conveniently unique number, like 'op 0'
	my $classid = $1;
	my $virtual = $2 ? 1 : 0;   # yes, yes, !!$2. vim don't like it, though
	my $access = $3;
	my $base = {
	    class => $self->node($classid),
	    virtual => $virtual,
	    access => $access
	};
#	print "base: $virtual $access $classid\n";
	push @{ $node->{'base'} }, $base;
    }

    while($dump =~ s/\sbase:\s\@(\d+)\s+accs: (pub|priv|prot)//) {
	# base is the only key which can appear multiple times in the same
	# node, since it's spit out from an array. We need to put it back.
	#
	# The other vector nodes have a conveniently unique number, like 'op 0'
	my $classid = $1;
	my $virtual = 0;#XXX  # $2 ? 1 : 0;   # yes, yes, !!$2. vim don't like it, though
	my $access = $2;
	my $base = {
	    class => $self->node($classid),
	    virtual => $virtual,
	    access => $AccessMap{$access}
	};
#	print "base: $virtual $access $classid\n";
	push @{ $node->{'base'} }, $base;
    }

 # For binfo in the 4.1.* tu format.
    while($dump =~ s/accs: (pub|priv|prot)\s+\sbinf:\s\@(\d+)//) {
	# base is the only key which can appear multiple times in the same
	# node, since it's spit out from an array. We need to put it back.
	#
        # Actually, constructor can have multiple idx and val elements
        #

	# The other vector nodes have a conveniently unique number, like 'op 0'
	my $classid = $2;
	my $virtual = 0; # ? 1 : 0;   # yes, yes, !!$2. vim don't like it, though
	my $access = $1;
	my $base = {
	    class => $self->node($classid),
	    virtual => $virtual,
	    access => $AccessMap{$access}
	};
#	print "base: $virtual $access $classid\n";
	push @{ $node->{'base'} }, $base;
    }


    # Some GCC developer forgot to read the -fdump spec before dipping his
    # fingers into gcc/cp/dump.c.
    #
    # Remember: 4 character max per key!
    $node->{raises} = $self->node($1) if $dump =~ s/\sraises: \@(\d+)//;
    

    # At this point, we assume all the remaining key/value pairs match
    # the following regex.
    while($dump =~ s/\s(\w.{0,3}?)\s*:\s(\S+)//) {
	my($key, $value) = ($1, $2);
	#if($type eq "binfo") { print "X ", $key, ": ", $value, "\n";}
	$value = $self->node($1) if $value =~ /^\@(\d+)/;
	

	# If the key looks like it came out of a tree_vec or operand list,
	# stick it back into an array, to save us the trouble of doing
	# bounds-checking hash fetching voodoo.
	#
	# Although, those tree_vec nodes skip elements when indexed in decimal.
	if($key =~ /^\d+$/) {
	    $node->{vector}[$key] = $value;
	} elsif($key =~ /^op (\d+)$/) {
	    $node->{operand}[$1] = $value;
	} elsif($key eq "accs") {
	    @{$self}[0]->{'version'} = '4.1';
	    $value = $AccessMap{$value} if defined $AccessMap{$value};
	    $node->{access} = $node->{$key} = $value;
	} elsif($key eq "note") {
	    $node->{$value} = 1;
	    push @{$node->{'note'}}, $value;
	} elsif($key eq "idx" || $key eq "val") {
	    push @{$node->{$key}}, $value;          
        } else {
	    $node->{$key} = $value;
	}
    }

    # Before we can consider the rest of the data as a sequence of flags,
    # I need to remove a few special-case flags which can be thought of as
    # being "intentionally sequential" for whatever reason.
    
    # operator is fun. The next flag is GCC's operator "name", for which there
    # is a mapping to the C operator, above, in the declaration of %ops.
    if($dump =~ s/\soperator\s+($opnames)\b//o) {
	$node->{operator} = $1;
    }

    # Some flags have spaces in them! Parse it as one string.
    while($dump =~ s/\s(global init|global fini|pseudo tmpl)(?=\s)//) {
	# Honestly, I'd rather s/foo bar/foo_bar/g instead
	$node->{$1} = 1;
    }
    
    # For sanity's sake, lets save the access
    $node->{access} = $1 if $dump =~ /\b(public|private|protected)\b/;

    # All that should remain is flags
    while($dump =~ s/(\w+)//) {
	$node->{$1} = 1;
    }

    # For debugging purposes, check for extra characters.
    # If this warning occurs, it's a bug in the parser. Let me know about it.
    # First, make sure you didn't run out of diskspace when writing the
    # -fdump file. That would truncate the file and cause this warning, and
    # that's not my fault.
    # 
    # Please include details with any error reports: the version of GCC you
    # used, your operating system (both kernel and distribution), and the
    # source of the file which generated the error, if possible.
    if($dump =~ /\S/) {
	$dump =~ s/\s+/ /g;
	if(!($dump eq ' : ')) { 
	    print "<warning><keys>", join(', ', keys(%{${node}})), "</keys>\n";
	    print "<nodeInfo><INDEX>", $node->{'INDEX'}, "</INDEX>", $node->{'type'}, "</nodeInfo>\n";
	    warn "<unparsed>$dump</unparsed>\n<orig>$_[1]</orig></warning>";
	}
    }

    # If we have a type_decl, then add it to a list of potential class nodes.
    # This will speed up looking for classes in getClassNodes().
    if($node->isa("GCC::Node::record_type")) {
	push @{ $self->[0]->{'recordNodes'} }, $node;
    }

    return $node;
}

sub getRecordNodes {
    my ($self) = @_;
    my @x = @{$self->[0]->{'recordNodes'}};
    return(@x);
}

# Since the dump format includes forward references, we need to pre-initialize
# nodes we haven't parsed yet before we assign them to the nodes which
# reference them. Therefore, you must ALWAYS get a node using this function
# until the parsefile() routine returns a complete translation unit!
#
# Usage: $tu->node($id)
sub node {
    my($self, $id) = @_;
    unless($self->[$id]) {
	# Don't un-block this unless; I like adding debug stuff here
	$self->[$id] = {};
    }
    return $self->[$id];
}


# vim:set shiftwidth=4 softtabstop=4:
1;
__END__

=head1 NAME

GCC::TranslationUnit - Parse the output of gcc -fdump-translation-unit

=head1 SYNPOSIS

  use GCC::TranslationUnit;

  # echo '#include <stdio.h>' > stdio.c
  # gcc -fdump-translation-unit -c stdio.c
  $node = GCC::TranslationUnit::Parser->parsefile('stdio.c.tu')->root;

  # list every function/variable name
  while($node) {
    if($node->isa('GCC::Node::function_decl') or
       $node->isa('GCC::Node::var_decl')) {
      printf "%s declared in %s\n",
        $node->name->identifier, $node->source;
    }
  } continue {
    $node = $node->chain;
  }

=head1 ABSTRACT

Provides a module for reading in the -fdump-translation-unit file from GCC
and access methods for the data available from within GCC.

=head1 DESCRIPTION

Once you read in the file using the Parser, you can traverse the entire
structure of the parse tree using methods defined in the GCC::Node::*
modules. Look there for information. Each node is blessed into a
GCC::Node::* class with that name.

=head1 SEE ALSO

See the source for the GCC::Node modules, and the source to GCC itself

=head1 AUTHOR

Ashley Winters <awinters@users.sourceforge.net>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Ashley Winters

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
