#include "Rtypemap.h" 

SEXP
R_getLine(SEXP r_f)
{

    SEXP r_ans = R_NilValue;
   FILE * f ;
     char * ans ;

        f  =  R_openFile ( r_f ) ;

    ans =   getLine ( f ) ;
    r_ans =  mkString( ans  ?  ans : "") ;

    return(r_ans);
}
