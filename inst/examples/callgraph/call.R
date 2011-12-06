library(RGCCTranslationUnit)
p = parseTU("msa.c.tu", language = "C")
routines = getRoutines(p, "msa.c")

calls = getCallGraph(p, routines$msa_new_from_file)
names(calls)
counts = table(names(calls))

#
# Should
#
#
correct = c(
die=3,
fgets = 2,
  fscanf = 2,
  isalpha = 1,
  isspace = 2,
  la_read_lav = 1,
  la_to_msa = 1,
msa_alph_has_lowercase = 1,
  msa_new = 1,
  msa_read_fasta = 1,
  smalloc = 4,
  ss_read = 1,
  strcpy = 2,
  str_free = 1,
  str_new = 1,
  str_readline = 1,
  str_trim = 1,
  toupper = 1
  )


all(counts[sort(names(counts))] == correct[sort(names(correct))])


library(RGCCTranslationUnit)
cc = parseTU("call.c.tu", language = "C")
cr = getRoutines(cc, "call.c")

calls = getCallGraph(cc, cr$foobar)
names(calls)
table(names(calls))

