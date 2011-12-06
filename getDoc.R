# Goal is to create a more streamlined NAMESPACE file based on what
# we have already documented.
aliases = system("grep '^\\\\alias{' man/*.Rd", intern = TRUE)
tt = gsub(".*Rd:\\\\alias\\{", "", aliases)
tt = gsub("}", "", tt)

classes = grep("-class$", tt)
classNames = gsub("-class", "", tt[classes])

methods = grep("-method$", tt)
methodNames = unique(gsub(",.*", "", tt[methods]))

functions = tt[-c(methods, classes)]

# S3 methods.
ff = strsplit(functions, ".", fixed = TRUE)

len = sapply(ff, length)
functionNames = ff[ len == 1 ]

# Let's look at those functions with two . in the name
functions[len > 2]

# [1] "as.field.decl"                       
# [2] "as.record.type"                      
# [3] "as.parm.decl"                        
# [4] "as.type.decl"
# And these are not methods.

functions = functions[len == 2]
ff = ff[ len == 2 ]

tmp = sapply(ff, `[`, 1)
ids = names(table(tmp) > 1)
rem = ff[ !(tmp %in% ids) ]

   # That counts for them all.
length(rem) = 0


paste("exportClasses(", paste(sQuote(classNames), sep = ",\t", collapse = ",\n\t"), ")")
sapply(ff, function(id) paste("S3method(", sQuote(id[1]), ", ", sQuote(id[2]), ")", sep = ""))
paste("export(", sQuote(methodNames), ")")
paste("exportMethods(", sQuote(methodNames), ")")


#############################
  

