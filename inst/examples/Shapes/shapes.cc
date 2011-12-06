/* Taken from http://www.angelfire.com/tx4/cus/shapes/cpp.html 
   written by Chris Rathman.
*/

#include <iostream>
#include "shapes.h"

#ifndef STD_NS
//#define STD_NS(x) std::#x
#define STD_NS(x) std::x
#endif


// constructor
Shape::Shape(int newx, int newy) {
   moveTo(newx, newy);
}

// accessors for x & y
int Shape::getX() { return x; }
int Shape::getY() { return y; }
void Shape::setX(int newx) { x = newx; }
void Shape::setY(int newy) { y = newy; }

// move the shape position
void Shape::moveTo(int newx, int newy) {
   setX(newx);
   setY(newy);
}
void Shape::rMoveTo(int deltax, int deltay) {
   moveTo(getX() + deltax, getY() + deltay);
}


int Shape::dummy()
{
  return(0);
}

#if 1
// abstract draw method
void Shape::draw() {
}
#endif


// constructor
Rectangle::Rectangle(int newx, int newy, int newwidth, int newheight): Shape(newx, newy) {
   setWidth(newwidth);
   setHeight(newheight);
}

// accessors for width and height
int Rectangle::getWidth() { return width; }
int Rectangle::getHeight() { return height; }
void Rectangle::setWidth(int newwidth) { width = newwidth; }
void Rectangle::setHeight(int newheight) { height = newheight; }

// draw the rectangle
void Rectangle::draw() {
  STD_NS(cout) << "Drawing a Rectangle at:(" << getX() << "," << getY() <<
    "), width " << getWidth() << ", height " << getHeight() << STD_NS(endl);
}



// constructor
Circle::Circle(int newx, int newy, int newradius): Shape(newx, newy) {
   setRadius(newradius);
}

// accessors for the radius
int Circle::getRadius() { return radius; }
void Circle::setRadius(int newradius) { radius = newradius; }

// draw the circle
void Circle::draw() {
  STD_NS(cout) << "Drawing a Circle at:(" << getX() << "," << getY() <<
    "), radius " << getRadius() << STD_NS(endl);
}

int Circle::myProtectedMethod() {
  STD_NS(cout) << "Circle::myProtectedMethod: (" << x << "," << y <<
    "), radius " << getRadius() << STD_NS(endl);

  return(101);
}

double Ellipse::area() 
{ 
    return(PI * radius * minorRadius);
}

void Ellipse::draw() 
{ 
  STD_NS(cout) << "Drawing an Ellipse at:(" << getX() << "," << getY() <<
    "), radii " << getRadius() << minorRadius << STD_NS(endl);
}

void
MyClass::draw(int x)
{
  STD_NS(cout) << "MyClass::draw(int) " << x << STD_NS(endl); 
}

int main(void) {
   // set up array to the shapes
   Shape *scribble[3];
   scribble[0] = new Rectangle(10, 20, 5, 6);
   scribble[1] = new Circle(15, 25, 8);
#if 1
   scribble[2] = new Ellipse(15, 25, 8, 5);
#else
   Ellipse e(1,1,1,1); // this is enough to cause g++ to spit out the Ellispe class in the TU.
#endif

   // iterate through the array and handle shapes polymorphically
   for (unsigned int i = 0; i < sizeof(scribble)/sizeof(scribble[0]); i++) {
      scribble[i]->draw();
      scribble[i]->rMoveTo(100, 100);
      scribble[i]->draw();
   }

   // call a rectangle specific function
   Rectangle *arec = new Rectangle(0, 0, 15, 15);
   arec->setWidth(30);

   MyClass k;
   MyClass *my = new MyClass();
   k.draw(1);
   my->draw(1);

   return(0);
}

void
MyClass::scale(void)
{

}


void
MyClass::scale(int a, double b, const char *c)
{
  a + b;
}



Rectangle *r;
Circle *c;
Ellipse *e;
MyClass *myclass;

void
ref()
{
  Rectangle r(0, 0, 10, 10);
  Circle c(0, 0, 10);
  Ellipse e(0, 0, 10, 10);
}
