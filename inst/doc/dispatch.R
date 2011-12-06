# Machine generated code. Do not edit directly. 

if(!isClass("APtr"))  setClass("APtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
staticMethod <-
function(  )  
{

    invisible( .Call('R_A_staticMethod') )
}
other <-
function( this )  
{
     this = asReference( this ,  "APtr" )

    invisible( .Call('R_A_other', this) )
}
A <-
function(  )  
{

    .Call('R_A_new')
}


if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'APtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'integer')
		
		    .Call('R_A_foo_p1A_int', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'APtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_A_foo_p1A_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'APtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'integer')
		
		    .Call('R_A_foo_p1A_int', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'APtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_A_foo_p1A_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("bar"))
  setGeneric("bar", function( this, f, g, h, .inherited )
     standardGeneric('bar')) 

setMethod('bar', 
	c( 'APtr', 'integer', 'missing', 'missing' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> x
	..m =  function( this, x = 1 )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'integer')
		
		    invisible( .Call('R_A_bar_p1A_int', this, x) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f ,  .inherited = .inherited)
	else
		 ..m( this, f )
	}
) 

setMethod('bar', 
	c( 'APtr', 'integer', 'numeric', 'missing' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> a
	# g  <-> b
	..m =  function( this, a, b )  
		{
		     this = asReference( this ,  "APtr" )
		     a = as( a , 'integer')
		     b = as( b , 'numeric')
		
		    invisible( .Call('R_A_bar_p1A_int_double', this, a, b) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f, g ,  .inherited = .inherited)
	else
		 ..m( this, f, g )
	}
) 

if(!isGeneric("bar"))
  setGeneric("bar", function( this, f, g, h, .inherited )
     standardGeneric('bar')) 

setMethod('bar', 
	c( 'APtr', 'integer', 'missing', 'missing' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> x
	..m =  function( this, x = 1 )  
		{
		     this = asReference( this ,  "APtr" )
		     x = as( x , 'integer')
		
		    invisible( .Call('R_A_bar_p1A_int', this, x) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f ,  .inherited = .inherited)
	else
		 ..m( this, f )
	}
) 

setMethod('bar', 
	c( 'APtr', 'integer', 'numeric', 'missing' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> a
	# g  <-> b
	..m =  function( this, a, b )  
		{
		     this = asReference( this ,  "APtr" )
		     a = as( a , 'integer')
		     b = as( b , 'numeric')
		
		    invisible( .Call('R_A_bar_p1A_int_double', this, a, b) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f, g ,  .inherited = .inherited)
	else
		 ..m( this, f, g )
	}
) 

if(!isGeneric("multi"))
  setGeneric("multi", function( this, a, b, .inherited )
     standardGeneric('multi')) 

setMethod('multi', 
	c( 'APtr', 'integer', 'numeric' ) ,
	function( this, a, b, .inherited )
	{
	# this  <-> this
	# a  <-> a
	# b  <-> b
	..m =  function( this, a, b )  
		{
		     this = asReference( this ,  "APtr" )
		     a = as( a , 'integer')
		     b = as( b , 'numeric')
		
		    invisible( .Call('R_A_multi_p1A_int_double', this, a, b) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, a, b ,  .inherited = .inherited)
	else
		 ..m( this, a, b )
	}
) 



setAs('RC++Reference', 'APtr',
  function(from) {
    .Call('R_A_cast', from, as.integer(1))
  })


# Machine generated code. Do not edit directly. 

if(!isClass("APtr"))  setClass("APtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("BPtr"))  setClass("BPtr", contains = c("APtr"), prototype = list(classes = c( "APtr" ))) 
B <-
function(  )  
{

    .Call('R_B_new')
}


if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'numeric', 'integer' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	# y  <-> y
	# z  <-> z
	..m =  function( this, x, y, z = 0 )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     y = as( y , 'numeric')
		     z = as( z , 'integer')
		
		    .Call('R_B_foo_p1B_int_double_int', this, x, y, z)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x, y, z ,  .inherited = .inherited)
	else
		 ..m( this, x, y, z )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x, .inherited = logical() )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A' )))
		            stop(".inherited must be TRUE or 'A'")
		     }
		
		    .Call('R_B_foo_p1B_int', this, x, .inherited)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_B_foo_p1B_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'character', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> u1822
	..m =  function( this, u1822 )  
		{
		     this = asReference( this ,  "BPtr" )
		
		
		    .Call('R_B_foo_p1B_p1char', this, u1822)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'numeric', 'integer' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	# y  <-> y
	# z  <-> z
	..m =  function( this, x, y, z = 0 )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     y = as( y , 'numeric')
		     z = as( z , 'integer')
		
		    .Call('R_B_foo_p1B_int_double_int', this, x, y, z)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x, y, z ,  .inherited = .inherited)
	else
		 ..m( this, x, y, z )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x, .inherited = logical() )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A' )))
		            stop(".inherited must be TRUE or 'A'")
		     }
		
		    .Call('R_B_foo_p1B_int', this, x, .inherited)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_B_foo_p1B_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'character', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> u1822
	..m =  function( this, u1822 )  
		{
		     this = asReference( this ,  "BPtr" )
		
		
		    .Call('R_B_foo_p1B_p1char', this, u1822)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'numeric', 'integer' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	# y  <-> y
	# z  <-> z
	..m =  function( this, x, y, z = 0 )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     y = as( y , 'numeric')
		     z = as( z , 'integer')
		
		    .Call('R_B_foo_p1B_int_double_int', this, x, y, z)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x, y, z ,  .inherited = .inherited)
	else
		 ..m( this, x, y, z )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x, .inherited = logical() )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A' )))
		            stop(".inherited must be TRUE or 'A'")
		     }
		
		    .Call('R_B_foo_p1B_int', this, x, .inherited)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_B_foo_p1B_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'character', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> u1822
	..m =  function( this, u1822 )  
		{
		     this = asReference( this ,  "BPtr" )
		
		
		    .Call('R_B_foo_p1B_p1char', this, u1822)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'numeric', 'integer' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	# y  <-> y
	# z  <-> z
	..m =  function( this, x, y, z = 0 )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     y = as( y , 'numeric')
		     z = as( z , 'integer')
		
		    .Call('R_B_foo_p1B_int_double_int', this, x, y, z)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x, y, z ,  .inherited = .inherited)
	else
		 ..m( this, x, y, z )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x, .inherited = logical() )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A' )))
		            stop(".inherited must be TRUE or 'A'")
		     }
		
		    .Call('R_B_foo_p1B_int', this, x, .inherited)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_B_foo_p1B_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'BPtr', 'character', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> u1822
	..m =  function( this, u1822 )  
		{
		     this = asReference( this ,  "BPtr" )
		
		
		    .Call('R_B_foo_p1B_p1char', this, u1822)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("bar"))
  setGeneric("bar", function( this, f, g, h, .inherited )
     standardGeneric('bar')) 

setMethod('bar', 
	c( 'BPtr', 'integer', 'missing', 'missing' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> x
	..m =  function( this, x = 1, .inherited = logical() )  
		{
		     this = asReference( this ,  "BPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A' )))
		            stop(".inherited must be TRUE or 'A'")
		     }
		
		    invisible( .Call('R_B_bar_p1B_int', this, x, .inherited) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f ,  .inherited = .inherited)
	else
		 ..m( this, f )
	}
) 



setAs('RC++Reference', 'BPtr',
  function(from) {
    .Call('R_B_cast', from, as.integer(1))
  }) 
 
setAs('BPtr', 'APtr', function(from) .Call('R_A_cast', from, as.integer(1)))


# Machine generated code. Do not edit directly. 

if(!isClass("CPtr"))  setClass("CPtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
C <-
function(  )  
{

    .Call('R_C_new')
}


if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'CPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "CPtr" )
		     x = as( x , 'integer')
		
		    .Call('R_C_foo_p1C_int', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'CPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "CPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_C_foo_p1C_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'CPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "CPtr" )
		     x = as( x , 'integer')
		
		    .Call('R_C_foo_p1C_int', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

setMethod('foo', 
	c( 'CPtr', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x )  
		{
		     this = asReference( this ,  "CPtr" )
		     x = as( x , 'numeric')
		
		    .Call('R_C_foo_p1C_double', this, x)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 

if(!isGeneric("bar"))
  setGeneric("bar", function( this, f, g, h, .inherited )
     standardGeneric('bar')) 

setMethod('bar', 
	c( 'CPtr', 'numeric', 'integer', 'integer' ) ,
	function( this, f, g, h, .inherited )
	{
	# this  <-> this
	# f  <-> f
	# g  <-> g
	# h  <-> h
	..m =  function( this, f, g, h = 1 )  
		{
		     this = asReference( this ,  "CPtr" )
		     f = as( f , 'numeric')
		     g = as( g , 'integer')
		     h = as( h , 'integer')
		
		    .Call('R_C_bar_p1C_double_int_int', this, f, g, h)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, f, g, h ,  .inherited = .inherited)
	else
		 ..m( this, f, g, h )
	}
) 

if(!isGeneric("multi"))
  setGeneric("multi", function( this, a, b, .inherited )
     standardGeneric('multi')) 

setMethod('multi', 
	c( 'CPtr', 'integer', 'numeric' ) ,
	function( this, a, b, .inherited )
	{
	# this  <-> this
	# a  <-> a
	# b  <-> b
	..m =  function( this, a, b )  
		{
		     this = asReference( this ,  "CPtr" )
		     a = as( a , 'integer')
		     b = as( b , 'numeric')
		
		    invisible( .Call('R_C_multi_p1C_int_double', this, a, b) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, a, b ,  .inherited = .inherited)
	else
		 ..m( this, a, b )
	}
) 



setAs('RC++Reference', 'CPtr',
  function(from) {
    .Call('R_C_cast', from, as.integer(1))
  })


# Machine generated code. Do not edit directly. 

if(!isClass("APtr"))  setClass("APtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("BPtr"))  setClass("BPtr", contains = c("APtr"), prototype = list(classes = c( "APtr" ))) 
if(!isClass("DPtr"))  setClass("DPtr", contains = c("BPtr"), prototype = list(classes = c( "BPtr", "APtr" ))) 
D <-
function(  )  
{

    .Call('R_D_new')
}


if(!isGeneric("foo"))
  setGeneric("foo", function( this, x, y, z, .inherited )
     standardGeneric('foo')) 

setMethod('foo', 
	c( 'DPtr', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z, .inherited )
	{
	# this  <-> this
	# x  <-> x
	..m =  function( this, x, .inherited = logical() )  
		{
		     this = asReference( this ,  "DPtr" )
		     x = as( x , 'integer')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'B', 'A' )))
		            stop(".inherited must be one of 'B', 'A'")
		     }
		
		    .Call('R_D_foo_p1D_int', this, x, .inherited)
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, x ,  .inherited = .inherited)
	else
		 ..m( this, x )
	}
) 



setAs('RC++Reference', 'DPtr',
  function(from) {
    .Call('R_D_cast', from, as.integer(1))
  }) 
 
setAs('DPtr', 'BPtr', function(from) .Call('R_B_cast', from, as.integer(1)))
 
setAs('DPtr', 'APtr', function(from) .Call('R_A_cast', from, as.integer(1)))


# Machine generated code. Do not edit directly. 

if(!isClass("CPtr"))  setClass("CPtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("APtr"))  setClass("APtr", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("WPtr"))  setClass("WPtr", contains = c("APtr", "CPtr"), prototype = list(classes = c( "APtr", "CPtr" ))) 
W <-
function(  )  
{

    .Call('R_W_new')
}


if(!isGeneric("multi"))
  setGeneric("multi", function( this, a, b, .inherited )
     standardGeneric('multi')) 

setMethod('multi', 
	c( 'WPtr', 'integer', 'numeric' ) ,
	function( this, a, b, .inherited )
	{
	# this  <-> this
	# a  <-> x
	# b  <-> y
	..m =  function( this, x, y, .inherited = logical() )  
		{
		     this = asReference( this ,  "WPtr" )
		     x = as( x , 'integer')
		     y = as( y , 'numeric')
		     if(!is.logical(.inherited)) {
		          .inherited = as.character(.inherited)
		          if(!(.inherited %in% c( 'A', 'C' )))
		            stop(".inherited must be one of 'A', 'C'")
		     }
		
		    invisible( .Call('R_W_multi_p1W_int_double', this, x, y, .inherited) )
		}
		
	if(!missing(.inherited)  && '.inherited' %in% names(formals(..m)))
		 ..m( this, a, b ,  .inherited = .inherited)
	else
		 ..m( this, a, b )
	}
) 



setAs('RC++Reference', 'WPtr',
  function(from) {
    .Call('R_W_cast', from, as.integer(1))
  }) 
 
setAs('WPtr', 'APtr', function(from) .Call('R_A_cast', from, as.integer(1)))
 
setAs('WPtr', 'CPtr', function(from) .Call('R_C_cast', from, as.integer(1)))


