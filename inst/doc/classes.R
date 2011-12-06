# Machine generated code. Do not edit directly. 

if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
A_multi <-
function( this, a, b )  
{
     this = asReference( this ,  "ARef" )
     a = as( a , 'integer')
     b = as( b , 'numeric')

    invisible( .Call('R_A_multi', this, a, b) )
}
A_staticMethod <-
function(  )  
{

    invisible( .Call('R_A_staticMethod') )
}
A_other <-
function( this )  
{
     this = asReference( this ,  "ARef" )

    invisible( .Call('R_A_other', this) )
}
A <-
function(  )  
{

    .Call('R_A_new')
}


if(!isGeneric("A_bar"))
  setGeneric("A_bar", function( this, a, b )
     standardGeneric('A_bar')) 

setMethod('A_bar', 
	c( 'A', 'integer', 'missing' ) ,
	function( this, a, b )
	{
	..m =  function( this, x = 1 )  
{
     this = asReference( this ,  "ARef" )
     x = as( x , 'integer')

    invisible( .Call('R_A_bar_p1A_int', this, x) )
}

	..m( this, a )
	}
) 

setMethod('A_bar', 
	c( 'A', 'integer', 'numeric' ) ,
	function( this, a, b )
	{
	..m =  function( this, a, b )  
{
     this = asReference( this ,  "ARef" )
     a = as( a , 'integer')
     b = as( b , 'numeric')

    invisible( .Call('R_A_bar_p1A_int_double', this, a, b) )
}

	..m( this, a, b )
	}
) 

if(!isGeneric("A_foo"))
  setGeneric("A_foo", function( this, x )
     standardGeneric('A_foo')) 

setMethod('A_foo', 
	c( 'A', 'integer' ) ,
	function( this, x )
	{
	..m =  function( this, x )  
{
     this = asReference( this ,  "ARef" )
     x = as( x , 'integer')

    .Call('R_A_foo_p1A_int', this, x)
}

	..m( this, x )
	}
) 

setMethod('A_foo', 
	c( 'A', 'numeric' ) ,
	function( this, x )
	{
	..m =  function( this, x )  
{
     this = asReference( this ,  "ARef" )
     x = as( x , 'numeric')

    .Call('R_A_foo_p1A_double', this, x)
}

	..m( this, x )
	}
) 



setAs('C++ExternalPtr', 'A',
  function(from) {
    .Call('R_A_cast', from)
  })

# Machine generated code. Do not edit directly. 

if(!isClass("C"))  setClass("C", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("W"))  setClass("W", contains = c("A", "C"), prototype = list(classes = c( "A", "C" ))) 
W <-
function(  )  
{

    .Call('R_W_new')
}




setAs('C++ExternalPtr', 'W',
  function(from) {
    .Call('R_W_cast', from)
  })

# Machine generated code. Do not edit directly. 

if(!isClass("C"))  setClass("C", contains = c("RC++Reference"), prototype = list(classes = character())) 
C_bar <-
function( this, f, g, h = 1 )  
{
     this = asReference( this ,  "CPtrRef" )
     f = as( f , 'numeric')
     g = as( g , 'integer')
     h = as( h , 'integer')

    .Call('R_C_bar', this, f, g, h)
}
C_multi <-
function( this, a, b )  
{
     this = asReference( this ,  "CPtrRef" )
     a = as( a , 'integer')
     b = as( b , 'numeric')

    invisible( .Call('R_C_multi', this, a, b) )
}
C <-
function(  )  
{

    .Call('R_C_new')
}


if(!isGeneric("C_foo"))
  setGeneric("C_foo", function( this, x )
     standardGeneric('C_foo')) 

setMethod('C_foo', 
	c( 'C', 'integer' ) ,
	function( this, x )
	{
	..m =  function( this, x )  
{
     this = asReference( this ,  "CPtrRef" )
     x = as( x , 'integer')

    .Call('R_C_foo_p1C_int', this, x)
}

	..m( this, x )
	}
) 

setMethod('C_foo', 
	c( 'C', 'numeric' ) ,
	function( this, x )
	{
	..m =  function( this, x )  
{
     this = asReference( this ,  "CPtrRef" )
     x = as( x , 'numeric')

    .Call('R_C_foo_p1C_double', this, x)
}

	..m( this, x )
	}
) 



setAs('C++ExternalPtr', 'C',
  function(from) {
    .Call('R_C_cast', from)
  })

# Machine generated code. Do not edit directly. 

if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("B"))  setClass("B", contains = c("A"), prototype = list(classes = c( "A" ))) 
B <-
function(  )  
{

    .Call('R_B_new')
}


if(!isGeneric("B_foo"))
  setGeneric("B_foo", function( this, x, y, z )
     standardGeneric('B_foo')) 

setMethod('B_foo', 
	c( 'B', 'integer', 'numeric', 'integer' ) ,
	function( this, x, y, z )
	{
	..m =  function( this, x, y, z = 0 )  
{
     this = asReference( this ,  "BRef" )
     x = as( x , 'integer')
     y = as( y , 'numeric')
     z = as( z , 'integer')

    .Call('R_B_foo_p1B_int_double_int', this, x, y, z)
}

	..m( this, x, y, z )
	}
) 

setMethod('B_foo', 
	c( 'B', 'integer', 'missing', 'missing' ) ,
	function( this, x, y, z )
	{
	..m =  function( this, x, .inherited = logical() )  
{
     this = asReference( this ,  "BRef" )
     x = as( x , 'integer')
     if(!is.logical(.inherited)) {
          .inherited = as.character(.inherited)
          if(!(.inherited %in% c( 'A' )))
            stop(".inherited must be TRUE or 'A'")
     }

    .Call('R_B_foo_p1B_int', this, x, .inherited)
}

	..m( this, x )
	}
) 

setMethod('B_foo', 
	c( 'B', 'numeric', 'missing', 'missing' ) ,
	function( this, x, y, z )
	{
	..m =  function( this, x )  
{
     this = asReference( this ,  "BRef" )
     x = as( x , 'numeric')

    .Call('R_B_foo_p1B_double', this, x)
}

	..m( this, x )
	}
) 

setMethod('B_foo', 
	c( 'B', 'character', 'missing', 'missing' ) ,
	function( this, x, y, z )
	{
	..m =  function( this, u1181 )  
{
     this = asReference( this ,  "BRef" )


    .Call('R_B_foo_p1B_p1char', this, u1181)
}

	..m( this, x )
	}
) 



setAs('C++ExternalPtr', 'B',
  function(from) {
    .Call('R_B_cast', from)
  })

# Machine generated code. Do not edit directly. 

if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("B"))  setClass("B", contains = c("A"), prototype = list(classes = c( "A" ))) 
if(!isClass("D"))  setClass("D", contains = c("B"), prototype = list(classes = c( "B", "A" ))) 
D <-
function(  )  
{

    .Call('R_D_new')
}




setAs('C++ExternalPtr', 'D',
  function(from) {
    .Call('R_D_cast', from)
  })

