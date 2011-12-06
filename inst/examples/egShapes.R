# These are examples of using shapes from within R.

source("~/Projects/org/omegahat/R/RAutoGenRunTime/R/runTime.R")
dyn.load("Rshapes.so")
source("Rshapes.R")


circ = Circle( 10L, 20L, 3L)
r = Rectangle(3, 7, 17, 21)
ell = Ellipse(10, 21, 5, 7)

circ$getX()
circ$getY()
circ$moveTo(100L, 111L)

all(c(circ$getX(), circ$getY()) == c(100, 111))

cur = c(circ$getX(), circ$getY())
circ$rMoveTo(10, 10)

all(c(circ$getX(), circ$getY()) == cur + 10)


circ$area()
ell$area()


circ$draw()
ell$draw()
r$draw()

circ$getRadius()
circ$setRadius(10)
circ$getRadius()

ell$getRadius()

r$getX()
r$getWidth()
r$getHeight()



r$moveTo(200, 200)


m = MyClass()
m$draw(10L)



