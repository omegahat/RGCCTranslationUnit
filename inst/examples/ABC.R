library(RGCCTranslationUnit) # For RC++Reference


source("inst/examples/RABC.R")
dyn.load("inst/examples/RmyClassB.so")

b = B(10) # Fails. S4 and R oddity that 10 is not an integer
          # and needs explicit coercion.

b = B(as.integer(10)) 

square(b) # 100

shift(b, 10, 3) # 40

bob(b, 3)  # 9
bob(b, as.integer(3)) # 3

R_B_bob_p1B_long_int(b, 50) # 150


# Use inherited methods.

getX(b)


a = A(as.integer(20), 3.45)
