#include "config.h"
#include "system.h"
#include "cpplib.h"

#include "internal.h"
#include "localedir.h"

/* See makedepend.c in libcpp/ directory of gcc. */

const char *progname = "Rdefs";

int
initCPP(cpp_reader *reader)
{
  cpp_options *options;

  options = cpp_get_options (reader);
  options->inhibit_warnings = 1;
  options->inhibit_errors = 1;
  options->deps.style = DEPS_USER;

  /* Further initialization.  */
  cpp_post_options (reader);
  cpp_init_iconv (reader);
/*
  cpp_set_include_chains (reader, cmd_line_searchpath, cmd_line_searchpath,
			  false);
*/

  return(0);
}


static cpp_hashnode *
alloc_node (hash_table *table)
{
  cpp_hashnode *node;

  node = XOBNEW (&table->pfile->hash_ob, cpp_hashnode);
  memset (node, 0, sizeof (cpp_hashnode));
  return node;
}

struct ht *
createHashTable()
{
    struct ht *h;

    h = ht_create(10);
    h->alloc_node = (hashnode (*) (hash_table *)) alloc_node;

#if 0
    _obstack_begin (&reader->hash_ob, 0, 0,
		      (void *(*) (long)) xmalloc,
		    (void (*) (void *)) free);
#endif

    return(h);
}


int
main(int argc, char *argv[])
{
    struct ht *h;
    struct line_maps lines;
    cpp_reader *reader;
    const char *files;
    cpp_hashnode *node;

    linemap_init(&lines);
    h = createHashTable();

    reader = cpp_create_reader(CLK_GNUC99, NULL, &lines);
    _cpp_init_hashtable(reader, NULL);
    
    initCPP(reader);

    files = cpp_read_main_file(reader, argv[1]);
    if(!files) {
	exit(2);
    }

    cpp_init_builtins(reader, true);
    cpp_scan_nooutput(reader);

    node = cpp_lookup(reader, "STR", 3);
    node = cpp_lookup(reader, "COMB", 4);

    node = cpp_lookup(reader, "X", 1);
    node = cpp_lookup(reader, "Y", 1);
/*  
 *node.ident.str
 *node.is_directive
 *node.type == NT_MACRO
 node.value.macro->exp.tokens.val.str.text

For COMB

  print *node.value.macro.exp.tokens             -> 
  print *node.value.macro.exp.tokens[1].val.node -> STR


For Y

 print *node.value.macro.exp.tokens.val.node   -> X
 print node.value.macro.exp.tokens[1]          -> CPP_PLUS
 print node.value.macro.exp.tokens[2]          -> 2

*/

    cpp_destroy(reader);

    linemap_free(&lines);

    return(0);
}
