double foo(int a = 3112, double x = 2.195) {
	return(x + 1.);
}

/*
 Next extends Top.
 Virtual Overloaded/polymorphic methods for i()
 

*/
class Top {

  protected:
    int _i;
    char *str;

  public:
    static Top *all;

  public:

     virtual int  i(int val) { int old = this->_i;  this->_i = val; return(old);};
     virtual int  i() { return(this->_i);};

     int ambiguity() { return(0); };
     int ambiguity(int x = 1) { return((int) x+1);};
     int ambiguity(double x = 21.9567) { return((int) x + 1); };

     Top(int val, const char *str) {
         i(val);
	 this->str =  (char *)str;
     };

     static void classMethod(){ };
};


class Next : public Top {

   protected:
    double istar;
    bool _upToDate;

   public:
    int i(int val);
    bool  upToDate() { return(_upToDate);};

    Next(int i, const char *str) : Top(i, str) {};
};
