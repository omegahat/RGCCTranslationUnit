use GCC::TranslationUnit; 

use CTypes;  # Our own code.


$tu = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

$fileName = $ARGV[0];
$fileName =~ s|(.*/)?(.*)\.tu$|$2|;

print "Filename: $fileName\n";

$nodes = $tu->root;
$node = ${@{$nodes}}[25];

print $node, "\n";

$x = GenericType::makeType($node, \$nodes);
print $x, "\n";

