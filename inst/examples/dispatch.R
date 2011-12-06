disp.tu = parseTU("~/Projects/org/omegahat/SLanguage/InterfaceGenerators/Gcc/Perl/inst/examples/dispatch.cc.001t.tu")
r = getRoutines(disp.tu, "dispatch")
rr = resolveType(r, disp.tu)

bindings = lapply(rr, createMethodBinding,  isPolymorphic = TRUE, nodes = disp.tu)
tmp = createOverloadedDispatchCode("foo", bindings, rr)
src = "/tmp/dispatchCode.R"
writeCode(tmp,"r", file = src)

sapply(c("A", "B", "C", "X"), setClass, representation = representation(value = "integer"))
objs = sapply(c("A", "B", "C", "X"), function(id) assign(tolower(id), new(id), globalenv()))

source(src)


foo(x) # should get 1 below
foo(x, 1) # 1 also
foo(x, 1L) # 1 also

foo(x, b) # 3

foo(a, b, x)[[1]]
foo(a, b, c)[[1]]
foo(a,  c)[[1]]
foo(a,  b)[[1]]
foo(a)
foo()
foo(c)


                   [,1] [,2]      [,3]
( X x, int b = 1 ) "X"  "integer" NA  
( X x, B b )       "X"  "B"       NA  
( A a, B b, X x )  "A"  "B"       "X" 
( A a, B b, C c )  "A"  "B"       "C" 
( A a, C c )       "A"  "C"       NA  
( A a, B b )       "A"  "B"       NA  
( A a )            "A"  NA        NA  
(  )               NA   NA        NA  
( C c )            "C"  NA        NA  




Step i = 1.

   8 is eliminated because only 1
   9 is eliminated because only 1

   A's grouped and X's grouped
      A = c(3, 4, 5, 6, 7)
      B = c(1, 2)

Step i = 2
  Deal with group A and B separately.

    A: group c(3, 4, 6)
       eliminate 5
    X: eliminate both as different, only 1 of each type
    


