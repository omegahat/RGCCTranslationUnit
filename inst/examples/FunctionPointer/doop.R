library(RAutoGenRunTime)
do_op <-
function( a , b , op  )
{
	      a = as( a , 'integer')
	      b = as( b , 'integer')
	      op = asFunctionPointer( op ,  2 ,  c( 'integer', 'integer' ) )
	 
	     .Call('R_do_op', a, b, op)
} 
do_op1 <-
function( a , b , op , data  )
{
	      a = as( a , 'integer')
	      b = as( b , 'integer')
	      op = if(is.function( op )) { data = asFunctionPointer( op ,  2 ,  c( 'integer', 'integer' ) ) ; getNativeSymbolInfo( 'R_do_op1_proxy_callback' )$address } else asFunctionPointer( op ,  3 ,  c( 'integer', 'integer', 'raw' ) )
	 
	     .Call('R_do_op1', a, b, op, data)
} 
