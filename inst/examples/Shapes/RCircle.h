#include "shapes.h"

#include "Rdefines.h"
#include "RDerivedClass.h"

class RCircle : public Circle, 
                public RDerivedClass
{
 public:
	RCircle(int newx, int newy, int newradius, SEXP r_methods = NULL);
#if 0
	RCircle(SEXP r_methods);
#endif

	double area();
	double area(bool super);
	void scale(int x);
	void scale(int x, int y);


#if RTU_USE_FIELDS_FOR_R_METHODS
	void R_setMethods(SEXP newMethods) ;
	SEXP R_getMethods() ;

 protected:
	SEXP _R_new_m;
	SEXP _R_new_int_int_int_m;
	SEXP _R_area_m;
	SEXP _R_scale_int_m;
	SEXP _R_scale_int_int_m;
#endif
};

