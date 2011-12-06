use GCC::TranslationUnit;

$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

print $tu, "\n";

print "Number of nodes: ", $#{@{$tu}}, "\n";

@x = @{$tu};

print $x[1], "\n";

print join(', ', keys(%{$x[1]})), "\n";

print $x[1]->{'INDEX'}, "\n";
