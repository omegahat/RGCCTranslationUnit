setClass('intRef', contains = 'RC++Reference') 
setClass('ARefRef', contains = 'RC++Reference') 
setClass('ARef', contains = 'RC++Reference') 
initGlobalVars = 
function()
{
	assign('i', .Call( 'R_get_i'), globalenv())
	assign('aref', .Call( 'R_get_aref'), globalenv())
	assign('a', .Call( 'R_get_a'), globalenv())
} 
useInt <-
function( x ) { 
     x = as( x , 'integer')
    .Call('R_useInt', x)
}
useA <-
function( val ) { 
     val = asReference( val ,  "A" )
    .Call('R_useA', val)
}
useAref <-
function( val ) { 
     val = asReference( val ,  "A" )
    .Call('R_useAref', val)
}
update_aref <-
function(  ) { 
    .Call('R_update_aref')
}
update_a <-
function(  ) { 
    .Call('R_update_a')
}
update_i <-
function(  ) { 
    .Call('R_update_i')
}
setClass('A', representation( 'x' = 'integer',
 'y' = 'numeric' ))

setClass('ARef',contains = 'RC++Reference', prototype = list(classes = 'A'))


setMethod('$',  'ARef' , function(x, name  ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in A. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = ARef_get_x,
		'y' = ARef_get_y )(x  )
	 
 })
setMethod('$<-',  'ARef' , function(x, name , value ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in A. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = ARef_set_x,
		'y' = ARef_set_y )(x , value )
	 
 })
setMethod('names', 'ARef', 
	function(x) 
	c( 'x', 'y' ))


ARef_get_x  <- function(x  )
{
	.Call('R_ARef_get_x', x)
}
ARef_get_y  <- function(x  )
{
	.Call('R_ARef_get_y', x)
}
ARef_set_x  <- function(x , value )
{
	value = as( value , 'integer')
	.Call('R_ARef_set_x', x, value)
}
ARef_set_y  <- function(x , value )
{
	value = as( value , 'numeric')
	.Call('R_ARef_set_y', x, value)
}



setAs( "A" ,  "ARef" , 
function(from)
.Call('R_coerce_A_ARef', from )
)
setAs( "ARef" ,  "A" , 
function(from)
.Call('R_coerce_ARef_A', from)
) 
new_A = 
function(...)
{
	ans = .Call('R_new_A')
	args = list(...)
	for(i in names(args))
	  "$<-"(ans, i, args[[i]])
	ans
} 
