use GCC::TranslationUnit; 
use CTypes;

my $tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

@x = @{$tu};

foreach $node (@x) {

    if(defined($node->{'INDEX'})) {
	if($node->isa("GCC::Node::function_decl")) {
	    push @els, $node->{'name'}->{'string'};

	    if($node->{'name'}->{'string'} =~ m/^gtk/) {
		print $node->{'name'}->{'string'}, "\n";

#		if($node->{'name'}->{'string'} eq "gtk_color_selection_get_color") {
#		    print GenericType::makeType($node, \@{$tu});
#		}
	    }
	}
    }
}




