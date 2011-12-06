//using namespace std;


class Shape {

public:
   Shape(int newx, int newy);
#if 1
   virtual ~Shape() {}
#endif
   int getX();
   int getY();
   void setX(int newx);
   void setY(int newy);
   void moveTo(int newx, int newy);
   void rMoveTo(int deltax, int deltay);

   virtual void draw();

   virtual int dummy();

protected:
   int x;
   int y;
};



class Rectangle: public Shape {

public:
   Rectangle(int newx, int newy, int newwidth, int newheight);
   int getWidth();
   int getHeight();
   void setWidth(int newwidth);
   void setHeight(int newheight);
   void draw();

private:
   int width;
   int height;
};


const double PI = 3.141593;

class Circle: public Shape {

public:
   explicit Circle(int newx, int newy, int newradius);
   int getRadius();
   void setRadius(int newradius);
   void draw();

   virtual double area() {  return(PI * radius * radius);};

   virtual void scale(int x) { radius *= x;}
   virtual void scale(int x, int y) { scale(x);}

protected:
   int myProtectedMethod();

protected:
   int radius;
};


class Ellipse : public Circle {

public:
explicit Ellipse(int newx, int newy, int major, int minor) :
    Circle(newx, newy, major), minorRadius(minor) {}

    void draw();
    double area();

    virtual void scale(int x, int y) { Circle::scale(x); 
                                       minorRadius *= y;}
protected:
    int minorRadius;
};


class MyClass {
  public:
    void draw(int x);
    void scale(void);
    void scale(int a, double b, const char *c);

    int field1;
    double field2;
};


#if 0
double scale(const char *a, int b, double c);
double scale(Circle *circ);
#endif
