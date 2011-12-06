dyn.load("examples.so")
source("../../R/alloc.S")
source("../../R/enum.S")

source("bob.S")

o = FooRef()

o$x
o$primary = 4
o$primary

o$primary = "YELLOW"



f = newFoo(2, 100.4, 2)
myFoo(f, 3)

Foo(f, 3, as("RED", "RGB"))

Foo(f, 3, "RED")




