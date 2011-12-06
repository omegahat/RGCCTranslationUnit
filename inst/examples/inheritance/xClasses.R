library(RAutoGenRunTime)
# Machine generated code. Do not edit directly. 

.MyClass.InterfaceInfo <- structure(list(name = "MyClass", baseClasses = character(0), 
    ancestorClasses = character(0), fields = structure(list(names = structure(c("field1", 
    "field2"), .Names = structure(c("MyClass", "MyClass"), .Names = c("field1", 
    "field2"))), access = structure(c("public", "public"), .Names = c("field1", 
    "field2")), nativeTypes = structure(c("int", "double"), .Names = c("field1", 
    "field2"))), .Names = c("names", "access", "nativeTypes")), 
    methods = structure(c("public", "public", "public", "public"
    ), .Names = c("draw", "Scale", "Scale", "p"))), .Names = c("name", 
"baseClasses", "ancestorClasses", "fields", "methods"), class = "InterfaceInfo")


if(!isClass("MyClass"))  setClass("MyClass", contains = c("RC++Reference"), prototype = list(classes = character())) 




MyClass <-
function(  )
{
	 
	     .Call('R_MyClass_new')
} 


# Overloaded methods for MyClass 
setMethod( 'draw' , c( 'MyClass', 'integer' ),  	 
function( this , x , ...  )
{
	 	# void  MyClass :: draw ( MyClass * this, int x )
	 	# this <-> this
	 	# x <-> x
	 
	      this = asReference( this ,  "MyClass" )
	      x = as( x , 'integer')
	 
	     invisible( .Call('R_MyClass_draw_p1MyClass_int', this, x) )
} )
 
setMethod( 'Scale' , c( 'MyClass' ),  	 
function( this , a , b , c , .inherited , ...  )
{
	 	# void  MyClass :: Scale ( MyClass * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "MyClass" )
	 
	     invisible( .Call('R_MyClass_Scale_p1MyClass', this) )
} )
 
setMethod( 'Scale' , c( 'MyClass', 'integer' ),  	 
function( this , a , b , c , .inherited , ...  )
{
	 	# void  MyClass :: Scale ( MyClass * this, int a, double b, const char * c )
	 	# this <-> this
	 	# a <-> a
	 	# b <-> b
	 	# c <-> c
	 
	      this = asReference( this ,  "MyClass" )
	      a = as( a , 'integer')
	      b = as( b , 'numeric')
	      c = as( c , 'character')
	 
	     invisible( .Call('R_MyClass_Scale_p1MyClass_int_double_p1char', this, a, b, c) )
} )
 
setMethod( 'p' , c( 'MyClass' ),  	 
function( this , x , y = 3, .inherited , ...  )
{
	 if(missing( y ))
	 y = 3
	 	# void  MyClass :: p ( MyClass * this, int x, int y = 3 )
	 	# this <-> this
	 	# x <-> x
	 	# y <-> y
	 
	      this = asReference( this ,  "MyClass" )
	      x = as( x , 'integer')
	      y = as( y , 'integer')
	 
	     invisible( .Call('R_MyClass_p_p1MyClass_int_int', this, x, y) )
} )
 


setAs('RC++Reference', 'MyClass',
  function(from) {
    .Call('R_MyClass_cast', from, as.integer(1))
  })




setMethod('[[',  'MyClass' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'field1' = `MyClass_get_field1`,
		'field2' = `MyClass_get_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in MyClass. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'MyClass' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'field1' = `MyClass_set_field1`,
		'field2' = `MyClass_set_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in MyClass. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'MyClass' ),  	 
function( x  )
{
	 c( 'MyClass' = 'field1', 'MyClass' = 'field2' )
} )
 


MyClass_get_field1 <-
function( x  )
{
	 	.Call('R_MyClass_get_field1', x)
} 
MyClass_get_field2 <-
function( x  )
{
	 	.Call('R_MyClass_get_field2', x)
} 
MyClass_set_field1 <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_MyClass_set_field1', x, value)
} 
MyClass_set_field2 <-
function( x , value  )
{
	 		value = as( value , 'numeric')
		.Call('R_MyClass_set_field2', x, value)
} 


# Machine generated code. Do not edit directly. 

.X.InterfaceInfo <- structure(list(name = "X", baseClasses = character(0), ancestorClasses = character(0), 
    fields = structure(list(names = structure(list(), .Names = character(0)), 
        access = list(), nativeTypes = list()), .Names = c("names", 
    "access", "nativeTypes")), methods = structure("public", .Names = "x")), .Names = c("name", 
"baseClasses", "ancestorClasses", "fields", "methods"), class = "InterfaceInfo")


if(!isClass("X"))  setClass("X", contains = c("RC++Reference"), prototype = list(classes = character())) 

X <-
function(  )
{
	 
	     .Call('R_X_new')
} 


# Overloaded methods for X 
setMethod( 'x' , c( 'X' ),  	 
function( this , ...  )
{
	 	# int  X :: x ( X * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "X" )
	 
	     .Call('R_X_x_p1X', this)
} )
 


setAs('RC++Reference', 'X',
  function(from) {
    .Call('R_X_cast', from, as.integer(1))
  })




# Machine generated code. Do not edit directly. 

.A.InterfaceInfo <- structure(list(name = "A", baseClasses = character(0), ancestorClasses = character(0), 
    fields = structure(list(names = structure("a", .Names = structure("A", .Names = "a")), 
        access = structure("public", .Names = "a"), nativeTypes = structure("int", .Names = "a")), .Names = c("names", 
    "access", "nativeTypes")), methods = structure(c("public", 
    "public", "public", "public", "public", "protected"), .Names = c("foo", 
    "mine", "yours", "bar", "p", "p"))), .Names = c("name", "baseClasses", 
"ancestorClasses", "fields", "methods"), class = "InterfaceInfo")


if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 





A <-
function(  )
{
	 
	     .Call('R_A_new')
} 


# Overloaded methods for A 
setMethod( 'foo' , c( 'A' ),  	 
function( this , .inherited , ...  )
{
	 	# int  A :: foo ( A * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "A" )
	 
	     .Call('R_A_foo_p1A', this)
} )
 
setMethod( 'mine' , c( 'A' ),  	 
function( this , .inherited , ...  )
{
	 	# int  A :: mine ( A * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "A" )
	 
	     .Call('R_A_mine_p1A', this)
} )
 
setMethod( 'yours' , c( 'A' ),  	 
function( this , .inherited , ...  )
{
	 	# int  A :: yours ( A * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "A" )
	 
	     .Call('R_A_yours_p1A', this)
} )
 
setMethod( 'bar' , c( 'A' ),  	 
function( this , ...  )
{
	 	# void  A :: bar ( A * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "A" )
	 
	     invisible( .Call('R_A_bar_p1A', this) )
} )
 
setMethod( 'p' , c( 'A', 'character' ),  	 
function( this , x , y , .inherited , ...  )
{
	 	# double  A :: p ( A * this, const char * name )
	 	# this <-> this
	 	# name <-> x
	 
	      this = asReference( this ,  "A" )
	      x = as( x , 'character')
	 
	     .Call('R_A_p_p1A_p1char', this, x)
} )
 


setAs('RC++Reference', 'A',
  function(from) {
    .Call('R_A_cast', from, as.integer(1))
  })




setMethod('[[',  'A' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'a' = `A_get_a` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'A::a'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in A. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'A' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'a' = `A_set_a` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'A::a'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in A. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'A' ),  	 
function( x  )
{
	 c( 'A' = 'a' )
} )
 


A_get_a <-
function( x  )
{
	 	.Call('R_A_get_a', x)
} 
A_set_a <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_A_set_a', x, value)
} 


# Machine generated code. Do not edit directly. 

.Y.InterfaceInfo <- structure(list(name = "Y", baseClasses = "X", ancestorClasses = "X", 
    fields = structure(list(names = structure(c("y_field", "field1"
    ), .Names = structure(c("Y", "Y"), .Names = c("y_field", 
    "field1"))), access = structure(c("public", "public"), .Names = c("y_field", 
    "field1")), nativeTypes = structure(c("int", "int"), .Names = c("y_field", 
    "field1"))), .Names = c("names", "access", "nativeTypes")), 
    methods = structure("public", .Names = structure("x", .Names = "X.x"))), .Names = c("name", 
"baseClasses", "ancestorClasses", "fields", "methods"), class = "InterfaceInfo")


if(!isClass("X"))  setClass("X", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("Y"))  setClass("Y", contains = c("X"), prototype = list(classes = c( "X" ))) 
Y <-
function(  )
{
	 
	     .Call('R_Y_new')
} 


# Overloaded methods for Y 


setAs('RC++Reference', 'Y',
  function(from) {
    .Call('R_Y_cast', from, as.integer(1))
  })



setAs('Y', 'X', function(from) .Call('R_X_cast', from, as.integer(1)))



setMethod('[[',  'Y' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'y_field' = `Y_get_y_field`,
		'field1' = `Y_get_field1` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'Y::y_field', 'Y::field1'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in Y. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'Y' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'y_field' = `Y_set_y_field`,
		'field1' = `Y_set_field1` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'Y::y_field', 'Y::field1'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in Y. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'Y' ),  	 
function( x  )
{
	 c( 'Y' = 'y_field', 'Y' = 'field1' )
} )
 


Y_get_y_field <-
function( x  )
{
	 	.Call('R_Y_get_y_field', x)
} 
Y_get_field1 <-
function( x  )
{
	 	.Call('R_Y_get_field1', x)
} 
Y_set_y_field <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_Y_set_y_field', x, value)
} 
Y_set_field1 <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_Y_set_field1', x, value)
} 


# Machine generated code. Do not edit directly. 

.B.InterfaceInfo <- structure(list(name = "B", baseClasses = "A", ancestorClasses = "A", 
    fields = structure(list(names = structure(c("b", "p_i", "a"
    ), .Names = structure(c("B", "B", "A"), .Names = c("b", "p_i", 
    "a"))), access = structure(c("public", "protected", "public"
    ), .Names = c("b", "p_i", "a")), nativeTypes = structure(c("int", 
    "int", "int"), .Names = c("b", "p_i", "a"))), .Names = c("names", 
    "access", "nativeTypes")), methods = structure(c("protected", 
    "public", "public", "public", "public", "public", "protected"
    ), .Names = c("b_m", "foo", "mine", "yours", "bar", "p", 
    "p"))), .Names = c("name", "baseClasses", "ancestorClasses", 
"fields", "methods"), class = "InterfaceInfo")


if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("B"))  setClass("B", contains = c("A"), prototype = list(classes = c( "A" ))) 
B <-
function(  )
{
	 
	     .Call('R_B_new')
} 


# Overloaded methods for B 


setAs('RC++Reference', 'B',
  function(from) {
    .Call('R_B_cast', from, as.integer(1))
  })



setAs('B', 'A', function(from) .Call('R_A_cast', from, as.integer(1)))



setMethod('[[',  'B' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'b' = `B_get_b`,
		'a' = `A_get_a` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'B::b', 'A::a'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in B. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'B' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'b' = `B_set_b`,
		'a' = `A_set_a` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'B::b', 'A::a'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in B. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'B' ),  	 
function( x  )
{
	 c( 'B' = 'b', 'A' = 'a' )
} )
 


B_get_b <-
function( x  )
{
	 	.Call('R_B_get_b', x)
} 
B_set_b <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_B_set_b', x, value)
} 


# Machine generated code. Do not edit directly. 

.MyOtherClass.InterfaceInfo <- structure(list(name = "MyOtherClass", baseClasses = "MyClass", 
    ancestorClasses = "MyClass", fields = structure(list(names = structure(c("otherField1", 
    "field1", "field2"), .Names = structure(c("MyOtherClass", 
    "MyClass", "MyClass"), .Names = c("otherField1", "field1", 
    "field2"))), access = structure(c("public", "public", "public"
    ), .Names = c("otherField1", "field1", "field2")), nativeTypes = structure(c("int", 
    "int", "double"), .Names = c("otherField1", "field1", "field2"
    ))), .Names = c("names", "access", "nativeTypes")), methods = structure(c("public", 
    "public", "public", "public", "public"), .Names = c("p", 
    "draw", "Scale", "Scale", "p"))), .Names = c("name", "baseClasses", 
"ancestorClasses", "fields", "methods"), class = "InterfaceInfo")


if(!isClass("MyClass"))  setClass("MyClass", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("MyOtherClass"))  setClass("MyOtherClass", contains = c("MyClass"), prototype = list(classes = c( "MyClass" ))) 

MyOtherClass <-
function(  )
{
	 
	     .Call('R_MyOtherClass_new')
} 


# Overloaded methods for MyOtherClass 
setMethod( 'p' , c( 'MyOtherClass' ),  	 
function( this , x , y , .inherited , ...  )
{
	 	# void  MyOtherClass :: p ( MyOtherClass * this, bool b )
	 	# this <-> this
	 	# b <-> x
	 
	      this = asReference( this ,  "MyOtherClass" )
	      x = as( x , 'logical')
	 
	     invisible( .Call('R_MyOtherClass_p_p1MyOtherClass_bool', this, x) )
} )
 


setAs('RC++Reference', 'MyOtherClass',
  function(from) {
    .Call('R_MyOtherClass_cast', from, as.integer(1))
  })



setAs('MyOtherClass', 'MyClass', function(from) .Call('R_MyClass_cast', from, as.integer(1)))



setMethod('[[',  'MyOtherClass' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'otherField1' = `MyOtherClass_get_otherField1`,
		'field1' = `MyClass_get_field1`,
		'field2' = `MyClass_get_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'MyOtherClass::otherField1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in MyOtherClass. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'MyOtherClass' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'otherField1' = `MyOtherClass_set_otherField1`,
		'field1' = `MyClass_set_field1`,
		'field2' = `MyClass_set_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'MyOtherClass::otherField1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in MyOtherClass. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'MyOtherClass' ),  	 
function( x  )
{
	 c( 'MyOtherClass' = 'otherField1', 'MyClass' = 'field1', 'MyClass' = 'field2' )
} )
 


MyOtherClass_get_otherField1 <-
function( x  )
{
	 	.Call('R_MyOtherClass_get_otherField1', x)
} 
MyOtherClass_set_otherField1 <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_MyOtherClass_set_otherField1', x, value)
} 


# Machine generated code. Do not edit directly. 

.Z.InterfaceInfo <- structure(list(name = "Z", baseClasses = c("Y", "MyClass"), ancestorClasses = c("Y", 
"X", "MyClass"), fields = structure(list(names = structure(c("y_field", 
"field1", "field1", "field2"), .Names = structure(c("Y", "Y", 
"MyClass", "MyClass"), .Names = c("y_field", "field1", "field1", 
"field2"))), access = structure(c("public", "public", "public", 
"public"), .Names = c("y_field", "field1", "field1", "field2"
)), nativeTypes = structure(c("int", "int", "int", "double"), .Names = c("y_field", 
"field1", "field1", "field2"))), .Names = c("names", "access", 
"nativeTypes")), methods = structure(c("public", "public", "public", 
"public", "public", "public", "public", "public"), .Names = c("Z", 
"getField1_y", "getField1_myclass", "x", "draw", "Scale", "Scale", 
"p"))), .Names = c("name", "baseClasses", "ancestorClasses", 
"fields", "methods"), class = "InterfaceInfo")


if(!isClass("MyClass"))  setClass("MyClass", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("X"))  setClass("X", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("Y"))  setClass("Y", contains = c("X"), prototype = list(classes = c( "X" ))) 
if(!isClass("Z"))  setClass("Z", contains = c("Y", "MyClass"), prototype = list(classes = c( "Y", "X", "MyClass" ))) 





# Overloaded methods for Z 
setMethod( 'Z' , c( 'missing' ),  	 
function( this , ...  )
{
	 	# void  Z :: Z (  )
	 	#  <-> this
	 
	 
	     .Call('R_Z_Z_void')
} )
 
setMethod( 'getField1_y' , c( 'Z' ),  	 
function( this , ...  )
{
	 	# int  Z :: getField1_y ( Z * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "Z" )
	 
	     .Call('R_Z_getField1_y_p1Z', this)
} )
 
setMethod( 'getField1_myclass' , c( 'Z' ),  	 
function( this , ...  )
{
	 	# int  Z :: getField1_myclass ( Z * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "Z" )
	 
	     .Call('R_Z_getField1_myclass_p1Z', this)
} )
 


setAs('RC++Reference', 'Z',
  function(from) {
    .Call('R_Z_cast', from, as.integer(1))
  })



#setAs('Z', 'Y', function(from) .Call('R_Y_cast', from, as.integer(1)))


setAs('Z', 'MyClass', function(from) .Call('R_MyClass_cast', from, as.integer(1)))


setAs('Z', 'X', function(from) .Call('R_X_cast', from, as.integer(1)))



setMethod('[[',  'Z' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'y_field' = `Y_get_y_field`,
		'field1' = `Y_get_field1`,
		'field1' = `MyClass_get_field1`,
		'field2' = `MyClass_get_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'Y::y_field', 'Y::field1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in Z. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'Z' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'y_field' = `Y_set_y_field`,
		'field1' = `Y_set_field1`,
		'field1' = `MyClass_set_field1`,
		'field2' = `MyClass_set_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'Y::y_field', 'Y::field1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in Z. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'Z' ),  	 
function( x  )
{
	 c( 'Y' = 'y_field', 'Y' = 'field1', 'MyClass' = 'field1', 'MyClass' = 'field2' )
} )
 




# Machine generated code. Do not edit directly. 

.C.InterfaceInfo <- structure(list(name = "C", baseClasses = c("B", "MyOtherClass"
), ancestorClasses = c("B", "A", "MyOtherClass", "MyClass"), 
    fields = structure(list(names = structure(c("b", "b", "p_i", 
    "a", "otherField1", "field1", "field2"), .Names = structure(c("C", 
    "B", "B", "A", "MyOtherClass", "MyClass", "MyClass"), .Names = c("b", 
    "b", "p_i", "a", "otherField1", "field1", "field2"))), access = structure(c("public", 
    "public", "protected", "public", "public", "public", "public"
    ), .Names = c("b", "b", "p_i", "a", "otherField1", "field1", 
    "field2")), nativeTypes = structure(c("int", "int", "int", 
    "int", "int", "int", "double"), .Names = c("b", "b", "p_i", 
    "a", "otherField1", "field1", "field2"))), .Names = c("names", 
    "access", "nativeTypes")), methods = structure(c("public", 
    "public", "protected", "public", "public", "public", "public", 
    "public", "protected", "public", "public", "public", "public", 
    "public"), .Names = c("cmethod", "showFields", "b_m", "foo", 
    "mine", "yours", "bar", "p", "p", "p", "draw", "Scale", "Scale", 
    "p"))), .Names = c("name", "baseClasses", "ancestorClasses", 
"fields", "methods"), class = "InterfaceInfo")


if(!isClass("MyClass"))  setClass("MyClass", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("MyOtherClass"))  setClass("MyOtherClass", contains = c("MyClass"), prototype = list(classes = c( "MyClass" ))) 
if(!isClass("A"))  setClass("A", contains = c("RC++Reference"), prototype = list(classes = character())) 
if(!isClass("B"))  setClass("B", contains = c("A"), prototype = list(classes = c( "A" ))) 
if(!isClass("C"))  setClass("C", contains = c("B", "MyOtherClass"), prototype = list(classes = c( "B", "A", "MyOtherClass", "MyClass" ))) 


C <-
function(  )
{
	 
	     .Call('R_C_new')
} 


# Overloaded methods for C 
setMethod( 'cmethod' , c( 'C' ),  	 
function( this , .inherited , ...  )
{
	 	# int  C :: cmethod ( C * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "C" )
	 
	     .Call('R_C_cmethod_p1C', this)
} )
 
setMethod( 'showFields' , c( 'C' ),  	 
function( this , ...  )
{
	 	# int  C :: showFields ( C * this )
	 	# this <-> this
	 
	      this = asReference( this ,  "C" )
	 
	     .Call('R_C_showFields_p1C', this)
} )
 


setAs('RC++Reference', 'C',
  function(from) {
    .Call('R_C_cast', from, as.integer(1))
  })



setAs('C', 'B', function(from) .Call('R_B_cast', from, as.integer(1)))


setAs('C', 'MyOtherClass', function(from) .Call('R_MyOtherClass_cast', from, as.integer(1)))


setAs('C', 'A', function(from) .Call('R_A_cast', from, as.integer(1)))


setAs('C', 'MyClass', function(from) .Call('R_MyClass_cast', from, as.integer(1)))



setMethod('[[',  'C' , function(x, i, j, ... , exact = TRUE  ) { 
 	 .fieldFuns = c( 'b' = `C_get_b`,
		'b' = `B_get_b`,
		'a' = `A_get_a`,
		'otherField1' = `MyOtherClass_get_otherField1`,
		'field1' = `MyClass_get_field1`,
		'field2' = `MyClass_get_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'C::b', 'B::b', 'A::a', 'MyOtherClass::otherField1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in C. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x)
	 
 })
setMethod('[[<-',  'C' , function(x, i, j, ... , exact = TRUE , value ) { 
 	 .fieldFuns = c( 'b' = `C_set_b`,
		'b' = `B_set_b`,
		'a' = `A_set_a`,
		'otherField1' = `MyOtherClass_set_otherField1`,
		'field1' = `MyClass_set_field1`,
		'field2' = `MyClass_set_field2` )
	 idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
	 if(is.na(idx))
	    idx = (if(exact) match else pmatch)(i, c(
	 'C::b', 'B::b', 'A::a', 'MyOtherClass::otherField1', 'MyClass::field1', 'MyClass::field2'
	 ))
	    if(is.na(idx))
	     stop("no such field ", i, " in C. Should be one of ", paste(.fieldNames, collapse = ", "))
	 .fieldFuns[[idx]](x, value)
	 
 })
setMethod( 'names' , c( 'C' ),  	 
function( x  )
{
	 c( 'C' = 'b', 'B' = 'b', 'A' = 'a', 'MyOtherClass' = 'otherField1', 'MyClass' = 'field1', 'MyClass' = 'field2' )
} )
 


C_get_b <-
function( x  )
{
	 	.Call('R_C_get_b', x)
} 
C_set_b <-
function( x , value  )
{
	 		value = as( value , 'integer')
		.Call('R_C_set_b', x, value)
} 


