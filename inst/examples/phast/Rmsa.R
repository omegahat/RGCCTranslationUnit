library(RGCCTranslationUnit)
setClass('MSA', representation( 'nseqs' = 'integer',
 'length' = 'numeric',
 'alphabet' = 'character',
 'inv_alphabet' = 'integer',
 'missing' = 'character',
 'is_missing' = 'integer',
 'Names' = 'char',
 'seqs' = 'char',
 'categories' = 'integer',
 'ss' = 'struct msa_ss_struct',
 'ncats' = 'integer',
 'alloc_len' = 'integer',
 'idx_offset' = 'integer',
 'is_informative' = 'integer' ))

setClass('MSARef',contains = 'RC++Reference', prototype = list(classes = 'MSA'))


setMethod('$',  'MSARef' , function(x, name  ) { 
 	 .fieldNames = c( 'nseqs',
		'length',
		'alphabet',
		'inv_alphabet',
		'missing',
		'is_missing',
		'names',
		'seqs',
		'categories',
		'ss',
		'ncats',
		'alloc_len',
		'idx_offset',
		'is_informative' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in MSA. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'nseqs' = MSARef_get_nseqs,
		'length' = MSARef_get_length,
		'alphabet' = MSARef_get_alphabet,
		'inv_alphabet' = MSARef_get_inv_alphabet,
		'missing' = MSARef_get_missing,
		'is_missing' = MSARef_get_is_missing,
		'names' = MSARef_get_names,
		'seqs' = MSARef_get_seqs,
		'categories' = MSARef_get_categories,
		'ss' = MSARef_get_ss,
		'ncats' = MSARef_get_ncats,
		'alloc_len' = MSARef_get_alloc_len,
		'idx_offset' = MSARef_get_idx_offset,
		'is_informative' = MSARef_get_is_informative )(x  )
	 
 })
setMethod('$<-',  'MSARef' , function(x, name , value ) { 
 	 .fieldNames = c( 'nseqs',
		'length',
		'alphabet',
		'inv_alphabet',
		'missing',
		'is_missing',
		'names',
		'seqs',
		'categories',
		'ss',
		'ncats',
		'alloc_len',
		'idx_offset',
		'is_informative' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in MSA. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'nseqs' = MSARef_set_nseqs,
		'length' = MSARef_set_length,
		'alphabet' = MSARef_set_alphabet,
		'inv_alphabet' = MSARef_set_inv_alphabet,
		'missing' = MSARef_set_missing,
		'is_missing' = MSARef_set_is_missing,
		'names' = MSARef_set_names,
		'seqs' = MSARef_set_seqs,
		'categories' = MSARef_set_categories,
		'ss' = MSARef_set_ss,
		'ncats' = MSARef_set_ncats,
		'alloc_len' = MSARef_set_alloc_len,
		'idx_offset' = MSARef_set_idx_offset,
		'is_informative' = MSARef_set_is_informative )(x , value )
	 
 })
setMethod('names', 'MSARef', 
	function(x) 
	c( 'nseqs', 'length', 'alphabet', 'inv_alphabet', 'missing', 'is_missing', 'names', 'seqs', 'categories', 'ss', 'ncats', 'alloc_len', 'idx_offset', 'is_informative' ))


MSARef_get_nseqs  <- function(x  )
{
	.Call('R_MSARef_get_nseqs', x)
}
MSARef_get_length  <- function(x  )
{
	.Call('R_MSARef_get_length', x)
}
MSARef_get_alphabet  <- function(x  )
{
	.Call('R_MSARef_get_alphabet', x)
}
MSARef_get_inv_alphabet  <- function(x  )
{
	.Call('R_MSARef_get_inv_alphabet', x)
}
MSARef_get_missing  <- function(x  )
{
	.Call('R_MSARef_get_missing', x)
}
MSARef_get_is_missing  <- function(x  )
{
	.Call('R_MSARef_get_is_missing', x)
}
MSARef_get_names  <- function(x  )
{
	.Call('R_MSARef_get_names', x)
}
MSARef_get_seqs  <- function(x  )
{
	.Call('R_MSARef_get_seqs', x)
}
MSARef_get_categories  <- function(x  )
{
	.Call('R_MSARef_get_categories', x)
}
MSARef_get_ss  <- function(x  )
{
	.Call('R_MSARef_get_ss', x)
}
MSARef_get_ncats  <- function(x  )
{
	.Call('R_MSARef_get_ncats', x)
}
MSARef_get_alloc_len  <- function(x  )
{
	.Call('R_MSARef_get_alloc_len', x)
}
MSARef_get_idx_offset  <- function(x  )
{
	.Call('R_MSARef_get_idx_offset', x)
}
MSARef_get_is_informative  <- function(x  )
{
	.Call('R_MSARef_get_is_informative', x)
}
MSARef_set_nseqs  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_nseqs', x, value)
}
MSARef_set_length  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_length', x, value)
}
MSARef_set_alphabet  <- function(x , value )
{
	value = as.character( value )
	.Call('R_MSARef_set_alphabet', x, value)
}
MSARef_set_inv_alphabet  <- function(x , value )
{
	value = as.integer( value ) 

 	if(length( value ) != 256 ) {
 	    arrayLengthWarning( value ,  256 )
 	    length( value ) <-  256 
	}


	.Call('R_MSARef_set_inv_alphabet', x, value)
}
MSARef_set_missing  <- function(x , value )
{
	value = as.character( value )
	.Call('R_MSARef_set_missing', x, value)
}
MSARef_set_is_missing  <- function(x , value )
{
	value = as.integer( value ) 

 	if(length( value ) != 256 ) {
 	    arrayLengthWarning( value ,  256 )
 	    length( value ) <-  256 
	}


	.Call('R_MSARef_set_is_missing', x, value)
}
MSARef_set_names  <- function(x , value )
{
	value = as.character( value )
	.Call('R_MSARef_set_names', x, value)
}
MSARef_set_seqs  <- function(x , value )
{
	value = as.character( value )
	.Call('R_MSARef_set_seqs', x, value)
}
MSARef_set_categories  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_categories', x, value)
}
MSARef_set_ss  <- function(x , value )
{
	value = asReference( value ,  "struct msa_ss_struct" )
	.Call('R_MSARef_set_ss', x, value)
}
MSARef_set_ncats  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_ncats', x, value)
}
MSARef_set_alloc_len  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_alloc_len', x, value)
}
MSARef_set_idx_offset  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_idx_offset', x, value)
}
MSARef_set_is_informative  <- function(x , value )
{
	value = as.integer( value )
	.Call('R_MSARef_set_is_informative', x, value)
}



setAs( "MSA" ,  "MSARef" , 
function(from)
.Call('R_coerce_MSA_MSARef', from )
)
setAs( "MSARef" ,  "MSA" , 
function(from)
.Call('R_coerce_MSARef_MSA', from)
) 
new_MSA = 
function(...)
{
	ans = .Call('R_new_MSA')
	args = list(...)
	for(i in names(args))
	  "$<-"(ans, i, args[[i]])
	ans
} 
