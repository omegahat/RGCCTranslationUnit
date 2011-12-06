setClass('Named', representation( 'x' = 'integer',
 'y' = 'numeric' ))

setClass('NamedRef',contains = 'RC++Reference', prototype = list(classes = 'Named'))


setMethod('$',  'NamedRef' , function(x, name  ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in Named. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = NamedRef_get_x,
		'y' = NamedRef_get_y )(x  )
	 
 })
setMethod('$<-',  'NamedRef' , function(x, name , value ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in Named. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = NamedRef_set_x,
		'y' = NamedRef_set_y )(x , value )
	 
 })
setMethod('names', 'NamedRef', 
	function(x) 
	c( 'x', 'y' ))


NamedRef_get_x  <- function(x  )
{
	.Call('R_NamedRef_get_x', x)
}
NamedRef_get_y  <- function(x  )
{
	.Call('R_NamedRef_get_y', x)
}
NamedRef_set_x  <- function(x , value )
{
	value = as( value , 'integer')
	.Call('R_NamedRef_set_x', x, value)
}
NamedRef_set_y  <- function(x , value )
{
	value = as( value , 'numeric')
	.Call('R_NamedRef_set_y', x, value)
}



setAs( "Named" ,  "NamedRef" , 
function(from)
.Call('R_coerce_Named_NamedRef', from )
)
setAs( "NamedRef" ,  "Named" , 
function(from)
.Call('R_coerce_NamedRef_Named', from)
) 
new_Named = 
function(...)
{
	ans = .Call('R_new_Named')
	args = list(...)
	for(i in names(args))
	  "$<-"(ans, i, args[[i]])
	ans
} 
setClass('struct Unnamed', representation( 'x' = 'integer',
 'y' = 'numeric' ))

setClass('struct UnnamedRef',contains = 'RC++Reference', prototype = list(classes = 'struct Unnamed'))


setMethod('$',  'struct UnnamedRef' , function(x, name  ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in struct Unnamed. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = struct UnnamedRef_get_x,
		'y' = struct UnnamedRef_get_y )(x  )
	 
 })
setMethod('$<-',  'struct UnnamedRef' , function(x, name , value ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in struct Unnamed. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = struct UnnamedRef_set_x,
		'y' = struct UnnamedRef_set_y )(x , value )
	 
 })
setMethod('names', 'UnnamedRef', 
	function(x) 
	c( 'x', 'y' ))


struct UnnamedRef_get_x  <- function(x  )
{
	.Call('R_struct UnnamedRef_get_x', x)
}
struct UnnamedRef_get_y  <- function(x  )
{
	.Call('R_struct UnnamedRef_get_y', x)
}
struct UnnamedRef_set_x  <- function(x , value )
{
	value = as( value , 'integer')
	.Call('R_struct UnnamedRef_set_x', x, value)
}
struct UnnamedRef_set_y  <- function(x , value )
{
	value = as( value , 'numeric')
	.Call('R_struct UnnamedRef_set_y', x, value)
}



setAs( "struct Unnamed" ,  "struct UnnamedRef" , 
function(from)
.Call('R_coerce_struct Unnamed_struct UnnamedRef', from )
)
setAs( "struct UnnamedRef" ,  "struct Unnamed" , 
function(from)
.Call('R_coerce_struct UnnamedRef_struct Unnamed', from)
) 
new_struct Unnamed = 
function(...)
{
	ans = .Call('R_new_struct Unnamed')
	args = list(...)
	for(i in names(args))
	  "$<-"(ans, i, args[[i]])
	ans
} 
setClass('Both', representation( 'x' = 'integer',
 'y' = 'numeric' ))

setClass('BothRef',contains = 'RC++Reference', prototype = list(classes = 'Both'))


setMethod('$',  'BothRef' , function(x, name  ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in Both. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = BothRef_get_x,
		'y' = BothRef_get_y )(x  )
	 
 })
setMethod('$<-',  'BothRef' , function(x, name , value ) { 
 	 .fieldNames = c( 'x',
		'y' )
	 idx = pmatch(name, .fieldNames)
	 if(is.na(idx))
	     stop("no such field ", name, " in Both. Should be one of ", paste(.fieldNames, collapse = ", "))
	 switch(name, 'x' = BothRef_set_x,
		'y' = BothRef_set_y )(x , value )
	 
 })
setMethod('names', 'BothRef', 
	function(x) 
	c( 'x', 'y' ))


BothRef_get_x  <- function(x  )
{
	.Call('R_BothRef_get_x', x)
}
BothRef_get_y  <- function(x  )
{
	.Call('R_BothRef_get_y', x)
}
BothRef_set_x  <- function(x , value )
{
	value = as( value , 'integer')
	.Call('R_BothRef_set_x', x, value)
}
BothRef_set_y  <- function(x , value )
{
	value = as( value , 'numeric')
	.Call('R_BothRef_set_y', x, value)
}



setAs( "Both" ,  "BothRef" , 
function(from)
.Call('R_coerce_Both_BothRef', from )
)
setAs( "BothRef" ,  "Both" , 
function(from)
.Call('R_coerce_BothRef_Both', from)
) 
new_Both = 
function(...)
{
	ans = .Call('R_new_Both')
	args = list(...)
	for(i in names(args))
	  "$<-"(ans, i, args[[i]])
	ans
} 
