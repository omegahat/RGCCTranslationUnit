SEXP
R_convertIntArrayToR (SEXP r_array, SEXP start, SEXP end, SEXP r_dim1 )
{
    size_t dim1 = INTEGER(r_dim1)[0];
    int (*array)[dim1] ;
    array = (int (*)[dim1]) R_getNativeReference(r_array,  "intPtr" ,  "intPtr" );
    return( convertIntArrayToR (dim1, *array, 4  , INTEGER(start)[0] - 1, INTEGER(end)[0] - 1));
} 


To avoid the warnings about the types of the global variables that are multi-dimensional
arrays, use (?)!

 ans =  convertXArrayArrayToR ( 3, 5 ,  *(const X (*)[3][5]) &xarray2D ,  3 , INTEGER(copy)[0] , from - 1, to - 1 ) ;
