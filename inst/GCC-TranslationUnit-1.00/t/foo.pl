use GCC::TranslationUnit;
use Storable;

my $node = GCC::TranslationUnit::Parser->parsefile($ARGV[0]);

store $node, "parser.out";
my $r = $node->root;
print $r->source(),"\n";
$node = 1;
$r = 1;

my $dup = retrieve "parser.out";
$r = $dup->root;
print $r->source(), "\n";


