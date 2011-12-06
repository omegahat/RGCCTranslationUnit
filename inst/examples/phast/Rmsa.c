#include <msa.h> 
#include <sufficient_stats.h> 
#include "RConverters.h" 
SEXP R_copyStruct_MSA ( MSA   *value) 
{
	 SEXP r_ans = R_NilValue, klass;
	 klass = MAKE_CLASS("MSA");
	 if(klass == R_NilValue) {
	    PROBLEM "Cannot find R class MSA "
	     ERROR;
	 }
	 

	 PROTECT(klass);
	 PROTECT(r_ans = NEW(klass));

	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("nseqs"), ScalarInteger ( value -> nseqs ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("length"), ScalarReal ( value -> length ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("alphabet"), mkString( value -> alphabet  ?  value -> alphabet : "") ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("inv_alphabet"), copy_int_array_to_R ( value -> inv_alphabet ,  256 ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("missing"), mkString( value -> missing  ?  value -> missing : "") ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("is_missing"), copy_int_array_to_R ( value -> is_missing ,  256 ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("Names"), R_MAKE_REF_TYPE( (void *)  value -> names ,  charRef ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("seqs"), R_MAKE_REF_TYPE( (void *)  value -> seqs ,  charRef ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("categories"), R_MAKE_REF_TYPE( (void *)  value -> categories ,  intRef ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ss"), R_MAKE_REF_TYPE( (void *)  value -> ss ,  msa_ss_structRef ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ncats"), ScalarInteger ( value -> ncats ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("alloc_len"), ScalarInteger ( value -> alloc_len ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("idx_offset"), ScalarInteger ( value -> idx_offset ) ));
	 PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("is_informative"), R_MAKE_REF_TYPE( (void *)  value -> is_informative ,  intRef ) ));
	 UNPROTECT( 16 );
	 
	 return(r_ans);
}
SEXP
R_MSARef_get_nseqs (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( ScalarInteger ( obj -> nseqs ) );
}
SEXP
R_MSARef_get_length (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( ScalarReal ( obj -> length ) );
}
SEXP
R_MSARef_get_alphabet (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( mkString( obj -> alphabet  ?  obj -> alphabet : "") );
}
SEXP
R_MSARef_get_inv_alphabet (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( copy_int_array_to_R ( obj -> inv_alphabet ,  256 ) );
}
SEXP
R_MSARef_get_missing (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( mkString( obj -> missing  ?  obj -> missing : "") );
}
SEXP
R_MSARef_get_is_missing (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( copy_int_array_to_R ( obj -> is_missing ,  256 ) );
}
SEXP
R_MSARef_get_names (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( R_MAKE_REF_TYPE( (void *)  obj -> names ,  charRef ) );
}
SEXP
R_MSARef_get_seqs (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( R_MAKE_REF_TYPE( (void *)  obj -> seqs ,  charRef ) );
}
SEXP
R_MSARef_get_categories (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( R_MAKE_REF_TYPE( (void *)  obj -> categories ,  intRef ) );
}
SEXP
R_MSARef_get_ss (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( R_MAKE_REF_TYPE( (void *)  obj -> ss ,  msa_ss_structRef ) );
}
SEXP
R_MSARef_get_ncats (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( ScalarInteger ( obj -> ncats ) );
}
SEXP
R_MSARef_get_alloc_len (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( ScalarInteger ( obj -> alloc_len ) );
}
SEXP
R_MSARef_get_idx_offset (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( ScalarInteger ( obj -> idx_offset ) );
}
SEXP
R_MSARef_get_is_informative (SEXP r_obj  )
{
	 MSA *obj ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 return( R_MAKE_REF_TYPE( (void *)  obj -> is_informative ,  intRef ) );
}
SEXP
R_MSARef_set_nseqs (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj -> nseqs = value ;
	 return(r_obj);
}
SEXP
R_MSARef_set_length (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 unsigned int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj -> length = value ;
	 return(r_obj);
}
SEXP
R_MSARef_set_alphabet (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 char * value ;
	 value =  GET_LENGTH( r_value ) > 0 ? CHAR(STRING_ELT( r_value , 0)) :  NULL ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->alphabet = GET_LENGTH( r_value ) > 0 ? CHAR(STRING_ELT( r_value , 0)) :  NULL ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_inv_alphabet (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int * value ;
	 value =  IS_S4_OBJECT( r_value ) ?  DEREF_REF_PTR( r_value ,  int ) : INTEGER ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 memcpy( obj ,  r_value , sizeof( obj [0]) *  256 );
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_missing (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 char * value ;
	 value =  GET_LENGTH( r_value ) > 0 ? CHAR(STRING_ELT( r_value , 0)) :  NULL ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->missing = GET_LENGTH( r_value ) > 0 ? CHAR(STRING_ELT( r_value , 0)) :  NULL ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_is_missing (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int * value ;
	 value =  IS_S4_OBJECT( r_value ) ?  DEREF_REF_PTR( r_value ,  int ) : INTEGER ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 memcpy( obj ,  r_value , sizeof( obj [0]) *  256 );
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_names (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 char ** value ;
	 value =  getRStringArray ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->names = getRStringArray ( r_value ) ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_seqs (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 char ** value ;
	 value =  getRStringArray ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->seqs = getRStringArray ( r_value ) ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_categories (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int * value ;
	 value =  INTEGER ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->categories = INTEGER ( r_value ) ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_ss (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 struct msa_ss_struct * value ;
	 value =  (struct msa_ss_struct *) R_getNativeReference(r_value, "msa_ss_struct", "msa_ss_struct") ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->ss = (struct msa_ss_struct *) R_getNativeReference(r_value, "msa_ss_struct", "msa_ss_struct") ;
	 return(r_obj);/**/
}
SEXP
R_MSARef_set_ncats (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj -> ncats = value ;
	 return(r_obj);
}
SEXP
R_MSARef_set_alloc_len (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj -> alloc_len = value ;
	 return(r_obj);
}
SEXP
R_MSARef_set_idx_offset (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int value ;
	 value =  INTEGER( r_value )[0] ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj -> idx_offset = value ;
	 return(r_obj);
}
SEXP
R_MSARef_set_is_informative (SEXP r_obj , SEXP r_value )
{
	 MSA *obj ;
	 int * value ;
	 value =  INTEGER ( r_value ) ;
	 obj = ( MSA * ) R_getNativeReference(r_obj,  "MSA" , "MSA" );
	 obj->is_informative = INTEGER ( r_value ) ;
	 return(r_obj);/**/
}


SEXP
R_coerce_MSA_MSARef ( SEXP r_from )
{
	MSA * ans ;
	
	SEXP tmp;
	
	ans = ( MSA  *) malloc( sizeof( MSA ));
	tmp = GET_SLOT(r_from, Rf_install("nseqs"));
	ans->nseqs = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("length"));
	ans->length = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("alphabet"));
	ans->alphabet = GET_LENGTH( tmp ) > 0 ? CHAR(STRING_ELT( tmp , 0)) :  NULL ;
	tmp = GET_SLOT(r_from, Rf_install("inv_alphabet"));
	memcpy( ans ,  tmp , sizeof( ans [0]) *  256 );
	tmp = GET_SLOT(r_from, Rf_install("missing"));
	ans->missing = GET_LENGTH( tmp ) > 0 ? CHAR(STRING_ELT( tmp , 0)) :  NULL ;
	tmp = GET_SLOT(r_from, Rf_install("is_missing"));
	memcpy( ans ,  tmp , sizeof( ans [0]) *  256 );
	tmp = GET_SLOT(r_from, Rf_install("names"));
	ans->names = getRStringArray ( tmp ) ;
	tmp = GET_SLOT(r_from, Rf_install("seqs"));
	ans->seqs = getRStringArray ( tmp ) ;
	tmp = GET_SLOT(r_from, Rf_install("categories"));
	ans->categories = INTEGER ( tmp ) ;
	tmp = GET_SLOT(r_from, Rf_install("ss"));
	ans->ss = (struct msa_ss_struct *) R_getNativeReference(tmp, "msa_ss_struct", "msa_ss_struct") ;
	tmp = GET_SLOT(r_from, Rf_install("ncats"));
	ans->ncats = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("alloc_len"));
	ans->alloc_len = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("idx_offset"));
	ans->idx_offset = INTEGER( tmp )[0] ;
	tmp = GET_SLOT(r_from, Rf_install("is_informative"));
	ans->is_informative = INTEGER ( tmp ) ;
	
	return ( R_MAKE_REF_TYPE(ans,  MSA ) );
}
 
SEXP
R_coerce_MSARef_MSA ( SEXP from )
{
	MSA * ans ;
	ans = R_GET_REF_TYPE(from, MSA  );
	return( R_copyStruct_MSA ( ans ) );
} 
SEXP
R_new_MSA ()
{
	SEXP r_ans = R_NilValue;
	MSA   * ans;
	
	ans =  calloc (1, sizeof( MSA   ));
	 r_ans = R_MAKE_REF_TYPE( ans,  MSARef );
	return(r_ans);
} 
