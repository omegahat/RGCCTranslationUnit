#  Class definition for derived class RMyClass 

setClass('RMyClass', contains = c('MyClass', 'RDerivedClass'), prototype = list(classes = c('MyClass', 'RDerivedClass'))) 
#  constructors for derived class RMyClass 

RMyClass <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RMyClass" )
	 
	     .Call('R_RMyClass_new', methods)
} 
#  inherited methods for derived class RMyClass 

setMethod('getDerivedClassMethods',  "RMyClass" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RMyClass_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RMyClass 


#  protected methods for derived class RMyClass 

#  Class definition for derived class RX 

setClass('RX', contains = c('X', 'RDerivedClass'), prototype = list(classes = c('X', 'RDerivedClass'))) 
#  constructors for derived class RX 

RX <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RX" )
	 
	     .Call('R_RX_new', methods)
} 
#  inherited methods for derived class RX 

setMethod('getDerivedClassMethods',  "RX" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RX_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RX 


#  protected methods for derived class RX 

#  Class definition for derived class RA 

setClass('RA', contains = c('A', 'RDerivedClass'), prototype = list(classes = c('A', 'RDerivedClass'))) 
#  constructors for derived class RA 

RA <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RA" )
	 
	     .Call('R_RA_new', methods)
} 
#  inherited methods for derived class RA 

setMethod('getDerivedClassMethods',  "RA" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RA_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RA 


#  protected methods for derived class RA 

setMethod( 'p' , c( 'RA' ),  	 
function( this , x , y , .inherited , ...  )
{
	 	# double  A :: p ( RA * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "RA" )
	 
	     .Call('R_RA_p_p1RA', this)
} )
 
#  Class definition for derived class RY 

setClass('RY', contains = c('Y', 'RDerivedClass'), prototype = list(classes = c('Y', 'RDerivedClass'))) 
#  constructors for derived class RY 

RY <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RY" )
	 
	     .Call('R_RY_new', methods)
} 
#  inherited methods for derived class RY 

setMethod('getDerivedClassMethods',  "RY" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RY_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RY 


#  protected methods for derived class RY 

#  Class definition for derived class RB 

setClass('RB', contains = c('B', 'RDerivedClass'), prototype = list(classes = c('B', 'RDerivedClass'))) 
#  constructors for derived class RB 

RB <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RB" )
	 
	     .Call('R_RB_new', methods)
} 
#  inherited methods for derived class RB 

setMethod('getDerivedClassMethods',  "RB" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RB_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RB 

setMethod( '[[' , c( 'RB' ),  	 
function( x , i , j , ... , exact = TRUE )
{
	 	if(.Call('R_isProtectedNativeObject', x))
	   c( "b", "a", "p_i" )
	else
	   c( "b", "a" )
} )
 
setMethod( '[[' , c( 'RB' ),  	 
function( x , i , j , ...  )
{
	 	nativeSymbols <-  c( 'p_i' = 'R__RB___R_p_i_get' )
	if(!(i %in% names(nativeSymbols)))
	  stop('no such field ', i, ' in  RB ')
	
	  .Call(nativeSymbols[[i]], x)
} )
 
#  protected methods for derived class RB 

setMethod( 'b_m' , c( 'RB' ),  	 
function( this , ...  )
{
	 	# void  B :: b_m ( RB * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "RB" )
	 
	     invisible( .Call('R_RB_b_m_p1RB', this) )
} )
 
setMethod( 'p' , c( 'RB' ),  	 
function( this , x , y , .inherited , ...  )
{
	 	# double  A :: p ( RB * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "RB" )
	 
	     .Call('R_RB_p_p1RB', this)
} )
 
#  Class definition for derived class RMyOtherClass 

setClass('RMyOtherClass', contains = c('MyOtherClass', 'RDerivedClass'), prototype = list(classes = c('MyOtherClass', 'RDerivedClass'))) 
#  constructors for derived class RMyOtherClass 

RMyOtherClass <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RMyOtherClass" )
	 
	     .Call('R_RMyOtherClass_new', methods)
} 
#  inherited methods for derived class RMyOtherClass 

setMethod('getDerivedClassMethods',  "RMyOtherClass" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RMyOtherClass_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RMyOtherClass 


#  protected methods for derived class RMyOtherClass 

#  Class definition for derived class RZ 

setClass('RZ', contains = c('Z', 'RDerivedClass'), prototype = list(classes = c('Z', 'RDerivedClass'))) 
#  constructors for derived class RZ 

RZ <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RZ" )
	 
	     .Call('R_RZ_new', methods)
} 
#  inherited methods for derived class RZ 

setMethod('getDerivedClassMethods',  "RZ" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RZ_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RZ 


#  protected methods for derived class RZ 

#  Class definition for derived class RC 

setClass('RC', contains = c('C', 'RDerivedClass'), prototype = list(classes = c('C', 'RDerivedClass'))) 
#  constructors for derived class RC 

RC <-
function( methods = NULL )
{
	      methods = RAutoGenRunTime:::makeDerivedMethodsList( methods , "RC" )
	 
	     .Call('R_RC_new', methods)
} 
#  inherited methods for derived class RC 

setMethod('getDerivedClassMethods',  "RC" ,
          function(obj, mergeClassMethods = TRUE, simplify = FALSE)
                  .Call('R_RC_getMethods', obj, as.logical(mergeClassMethods))) 

#  names and field accessors for derived class RC 

setMethod( '[[' , c( 'RC' ),  	 
function( x , i , j , ... , exact = TRUE )
{
	 	if(.Call('R_isProtectedNativeObject', x))
	   c( "b", "b", "a", "otherField1", "field1", "field2", "p_i" )
	else
	   c( "b", "b", "a", "otherField1", "field1", "field2" )
} )
 
setMethod( '[[' , c( 'RC' ),  	 
function( x , i , j , ...  )
{
	 	nativeSymbols <-  c( 'p_i' = 'R__RC___R_p_i_get' )
	if(!(i %in% names(nativeSymbols)))
	  stop('no such field ', i, ' in  RC ')
	
	  .Call(nativeSymbols[[i]], x)
} )
 
#  protected methods for derived class RC 

setMethod( 'b_m' , c( 'RC' ),  	 
function( this , ...  )
{
	 	# void  B :: b_m ( RC * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "RC" )
	 
	     invisible( .Call('R_RC_b_m_p1RC', this) )
} )
 
setMethod( 'p' , c( 'RC' ),  	 
function( this , x , y , .inherited , ...  )
{
	 	# double  A :: p ( RC * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "RC" )
	 
	     .Call('R_RC_p_p1RC', this)
} )
 
