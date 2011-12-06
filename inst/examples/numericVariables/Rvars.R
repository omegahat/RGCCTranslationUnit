library(RAutoGenRunTime)
setClass( 'unsignedIntArray' , contains = 'ExternalPrimitiveTypeArrayWithLength' )
setClass('APtr', contains = 'RC++StructReference', prototype = list(classes = 'APtr'))
setClass('A', representation(
   'i' = 'integer',
  'uarray' = 'numeric' ), contains = 'CStruct')
setClass( 'ElementPtr' , contains = 'RC++Reference')
setClass( 'intPtr' , contains = 'RC++Reference')
setClass( 'intArray' , contains = 'ExternalPrimitiveTypeArrayWithLength' )
setClass('L5Ptr', contains = 'RC++StructReference', prototype = list(classes = 'L5Ptr'))
setClass('L5', representation(
   'i' = 'integer',
  'd' = 'numeric',
  'a5' = 'integer' ), contains = 'CStruct')
setClass('L4Ptr', contains = 'RC++StructReference', prototype = list(classes = 'L4Ptr'))
setClass('L4', representation(
   'l5' = 'L5',
  'x4' = 'integer',
  'a4' = 'integer' ), contains = 'CStruct')
setClass('L3Ptr', contains = 'RC++StructReference', prototype = list(classes = 'L3Ptr'))
setClass('L3', representation(
   'l4' = 'L4',
  'x3' = 'integer',
  'a3' = 'integer' ), contains = 'CStruct')
setClass('L2Ptr', contains = 'RC++StructReference', prototype = list(classes = 'L2Ptr'))
setClass('L2', representation(
   'l3' = 'L3',
  'x2' = 'integer',
  'a2' = 'integer' ), contains = 'CStruct')
setClass('L1Ptr', contains = 'RC++StructReference', prototype = list(classes = 'L1Ptr'))
setClass('L1', representation(
   'l2' = 'L2',
  'x1' = 'integer' ), contains = 'CStruct')
setClass('DPtr', contains = 'RC++StructReference', prototype = list(classes = 'DPtr'))
setClass('D', representation(
   'val' = 'integer' ), contains = 'CStruct')
setClass('EPtr', contains = 'RC++StructReference', prototype = list(classes = 'EPtr'))
setClass('E', representation(
   'ad' = 'D' ), contains = 'CStruct')
setClass('FPtr', contains = 'RC++StructReference', prototype = list(classes = 'FPtr'))
setClass('F', representation(
   'ae' = 'EPtr',
  'ad' = 'DPtr' ), contains = 'CStruct')
setClass('GPtr', contains = 'RC++StructReference', prototype = list(classes = 'GPtr'))
setClass('G', representation(
   'ae' = 'E',
  'ad' = 'D',
  'af' = 'F' ), contains = 'CStruct')
setClass( 'shortUnsignedIntArray' , contains = 'ExternalPrimitiveTypeArrayWithLength' )
setClass( 'charPtr' , contains = 'RC++Reference')
setClass( 'charPtrArray' , contains = 'ExternalArrayWithLength' )
setClass( 'floatPtr' , contains = 'RC++Reference')
setClass( 'floatPtrPtr' , contains = 'RC++Reference')
setClass( 'floatPtrPtrPtr' , contains = 'RC++Reference')
setClass('XPtr', contains = 'RC++StructReference', prototype = list(classes = 'XPtr'))
setClass('X', representation(
   'a' = 'integer',
  'b' = 'numeric' ), contains = 'CStruct')
setClass( 'XArray' , contains = 'ExternalArrayWithLength' )
setClass( 'intArrayArray' , contains = 'ExternalTwoDimensionalArray' )
setClass( 'intArrayArrayArray' , contains = 'ExternalMultiDimensionalArray' )
setClass( 'intArrayArrayArrayArray' , contains = 'ExternalMultiDimensionalArray' )
setClass( 'XArrayArray' , contains = 'ExternalTwoDimensionalArray' )
setClass( 'doublePtr' , contains = 'RC++Reference')
setClass( 'doubleArray' , contains = 'ExternalPrimitiveTypeArrayWithLength' )
setClass( 'doubleArrayArray' , contains = 'ExternalTwoDimensionalArray' )
getUnsignedIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertUnsignedIntArrayToR' , array, as.integer(from), as.integer(to))
} 

#### <Start of definition>



setMethod( 'names' , c( 'APtr' ),       
function( x  )
{
    c(
         'i',
     'uarray'
    )
} )
 
setMethod( '$' , c( 'APtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'i' = `APtr_get_i`,
		'uarray' = `APtr_get_uarray` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in A. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'APtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'i' = `APtr_set_i`,
		'uarray' = `APtr_set_uarray` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in A. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'APtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'i' = `APtr_get_i`,
		'uarray' = `APtr_get_uarray` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'APtr::i', 'APtr::uarray' ))
       if(is.na(idx))
        stop("no such field ", i, " in A. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
APtr_get_i <-
function( x , copy = TRUE )
{
	.Call('R_APtr_get_i', x, as.integer(copy))
} 
APtr_get_uarray <-
function( x , copy = TRUE )
{
	.Call('R_APtr_get_uarray', x, as.integer(copy))
} 
APtr_set_i <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_APtr_set_i', x, value)
} 
APtr_set_uarray <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric') 

 	if(length( value ) != 3 ) {
 	     value = checkArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_APtr_set_uarray', x, value)
} 

setAs( "A" ,  "APtr" , 
function(from)
.Call('R_coerce_A_APtr', from )
)
setAs( "APtr" ,  "A" , 
function(from)
.Call('R_coerce_APtr_A', from)
) 
new_A <-
function( `i` , `uarray` , .finalizer = FALSE )
{
    ans = .Call('R_new_A')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_APtr_finalizer')
    
    if(!missing(`i`)) ans$`i` = `i`
    if(!missing(`uarray`)) ans$`uarray` = `uarray`
    na = pmatch(names(args), names(getSlots('A')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'APtr' ),       
function( x , ... , .finalizer = 'R_free_APtr_finalizer' )
{
.Call( 'R_duplicate_A' , x, NULL, .finalizer)
} )
 

#### </End of definition>
getIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertIntArrayToR' , array, as.integer(from), as.integer(to))
} 

#### <Start of definition>



setMethod( 'names' , c( 'L5Ptr' ),       
function( x  )
{
    c(
         'i',
     'd',
     'a5'
    )
} )
 
setMethod( '$' , c( 'L5Ptr' ),       
function( x , name  )
{
    .fieldFuns = c( 'i' = `L5Ptr_get_i`,
		'd' = `L5Ptr_get_d`,
		'a5' = `L5Ptr_get_a5` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L5. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( FALSE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'L5Ptr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'i' = `L5Ptr_set_i`,
		'd' = `L5Ptr_set_d`,
		'a5' = `L5Ptr_set_a5` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L5. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'L5Ptr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'i' = `L5Ptr_get_i`,
		'd' = `L5Ptr_get_d`,
		'a5' = `L5Ptr_get_a5` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'L5Ptr::i', 'L5Ptr::d', 'L5Ptr::a5' ))
       if(is.na(idx))
        stop("no such field ", i, " in L5. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( FALSE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
L5Ptr_get_i <-
function( x , copy = TRUE )
{
	.Call('R_L5Ptr_get_i', x, as.integer(copy))
} 
L5Ptr_get_d <-
function( x , copy = TRUE )
{
	.Call('R_L5Ptr_get_d', x, as.integer(copy))
} 
L5Ptr_get_a5 <-
function( x , copy = TRUE )
{
	.Call('R_L5Ptr_get_a5', x, as.integer(copy))
} 
L5Ptr_set_i <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_L5Ptr_set_i', x, value)
} 
L5Ptr_set_d <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_L5Ptr_set_d', x, value)
} 
L5Ptr_set_a5 <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 5 ) {
 	     value = checkArrayLength( value ,  5 )
 	    length( value ) <-  5 
	}


    	.Call('R_L5Ptr_set_a5', x, value)
} 

setAs( "L5" ,  "L5Ptr" , 
function(from)
.Call('R_coerce_L5_L5Ptr', from )
)
setAs( "L5Ptr" ,  "L5" , 
function(from)
.Call('R_coerce_L5Ptr_L5', from)
) 
new_L5 <-
function( `i` , `d` , `a5` , .finalizer = FALSE )
{
    ans = .Call('R_new_L5')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_L5Ptr_finalizer')
    
    if(!missing(`i`)) ans$`i` = `i`
    if(!missing(`d`)) ans$`d` = `d`
    if(!missing(`a5`)) ans$`a5` = `a5`
    na = pmatch(names(args), names(getSlots('L5')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'L5Ptr' ),       
function( x , ... , .finalizer = 'R_free_L5Ptr_finalizer' )
{
.Call( 'R_duplicate_L5' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'L4Ptr' ),       
function( x  )
{
    c(
         'l5',
     'x4',
     'a4'
    )
} )
 
setMethod( '$' , c( 'L4Ptr' ),       
function( x , name  )
{
    .fieldFuns = c( 'l5' = `L4Ptr_get_l5`,
		'x4' = `L4Ptr_get_x4`,
		'a4' = `L4Ptr_get_a4` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L4. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'L4Ptr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'l5' = `L4Ptr_set_l5`,
		'x4' = `L4Ptr_set_x4`,
		'a4' = `L4Ptr_set_a4` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L4. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'L4Ptr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'l5' = `L4Ptr_get_l5`,
		'x4' = `L4Ptr_get_x4`,
		'a4' = `L4Ptr_get_a4` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'L4Ptr::l5', 'L4Ptr::x4', 'L4Ptr::a4' ))
       if(is.na(idx))
        stop("no such field ", i, " in L4. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
L4Ptr_get_l5 <-
function( x , copy = TRUE )
{
	.Call('R_L4Ptr_get_l5', x, as.integer(copy))
} 
L4Ptr_get_x4 <-
function( x , copy = TRUE )
{
	.Call('R_L4Ptr_get_x4', x, as.integer(copy))
} 
L4Ptr_get_a4 <-
function( x , copy = TRUE )
{
	.Call('R_L4Ptr_get_a4', x, as.integer(copy))
} 
L4Ptr_set_l5 <-
function( x , value  )
{
    	value = as( value , 'L5Ptr' )
    	.Call('R_L4Ptr_set_l5', x, value)
} 
L4Ptr_set_x4 <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_L4Ptr_set_x4', x, value)
} 
L4Ptr_set_a4 <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 4 ) {
 	     value = checkArrayLength( value ,  4 )
 	    length( value ) <-  4 
	}


    	.Call('R_L4Ptr_set_a4', x, value)
} 

setAs( "L4" ,  "L4Ptr" , 
function(from)
.Call('R_coerce_L4_L4Ptr', from )
)
setAs( "L4Ptr" ,  "L4" , 
function(from)
.Call('R_coerce_L4Ptr_L4', from)
) 
new_L4 <-
function( `l5` , `x4` , `a4` , .finalizer = FALSE )
{
    ans = .Call('R_new_L4')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_L4Ptr_finalizer')
    
    if(!missing(`l5`)) ans$`l5` = `l5`
    if(!missing(`x4`)) ans$`x4` = `x4`
    if(!missing(`a4`)) ans$`a4` = `a4`
    na = pmatch(names(args), names(getSlots('L4')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'L4Ptr' ),       
function( x , ... , .finalizer = 'R_free_L4Ptr_finalizer' )
{
.Call( 'R_duplicate_L4' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'L3Ptr' ),       
function( x  )
{
    c(
         'l4',
     'x3',
     'a3'
    )
} )
 
setMethod( '$' , c( 'L3Ptr' ),       
function( x , name  )
{
    .fieldFuns = c( 'l4' = `L3Ptr_get_l4`,
		'x3' = `L3Ptr_get_x3`,
		'a3' = `L3Ptr_get_a3` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L3. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'L3Ptr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'l4' = `L3Ptr_set_l4`,
		'x3' = `L3Ptr_set_x3`,
		'a3' = `L3Ptr_set_a3` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L3. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'L3Ptr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'l4' = `L3Ptr_get_l4`,
		'x3' = `L3Ptr_get_x3`,
		'a3' = `L3Ptr_get_a3` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'L3Ptr::l4', 'L3Ptr::x3', 'L3Ptr::a3' ))
       if(is.na(idx))
        stop("no such field ", i, " in L3. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
L3Ptr_get_l4 <-
function( x , copy = TRUE )
{
	.Call('R_L3Ptr_get_l4', x, as.integer(copy))
} 
L3Ptr_get_x3 <-
function( x , copy = TRUE )
{
	.Call('R_L3Ptr_get_x3', x, as.integer(copy))
} 
L3Ptr_get_a3 <-
function( x , copy = TRUE )
{
	.Call('R_L3Ptr_get_a3', x, as.integer(copy))
} 
L3Ptr_set_l4 <-
function( x , value  )
{
    	value = as( value , 'L4Ptr' )
    	.Call('R_L3Ptr_set_l4', x, value)
} 
L3Ptr_set_x3 <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_L3Ptr_set_x3', x, value)
} 
L3Ptr_set_a3 <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = checkArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_L3Ptr_set_a3', x, value)
} 

setAs( "L3" ,  "L3Ptr" , 
function(from)
.Call('R_coerce_L3_L3Ptr', from )
)
setAs( "L3Ptr" ,  "L3" , 
function(from)
.Call('R_coerce_L3Ptr_L3', from)
) 
new_L3 <-
function( `l4` , `x3` , `a3` , .finalizer = FALSE )
{
    ans = .Call('R_new_L3')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_L3Ptr_finalizer')
    
    if(!missing(`l4`)) ans$`l4` = `l4`
    if(!missing(`x3`)) ans$`x3` = `x3`
    if(!missing(`a3`)) ans$`a3` = `a3`
    na = pmatch(names(args), names(getSlots('L3')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'L3Ptr' ),       
function( x , ... , .finalizer = 'R_free_L3Ptr_finalizer' )
{
.Call( 'R_duplicate_L3' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'L2Ptr' ),       
function( x  )
{
    c(
         'l3',
     'x2',
     'a2'
    )
} )
 
setMethod( '$' , c( 'L2Ptr' ),       
function( x , name  )
{
    .fieldFuns = c( 'l3' = `L2Ptr_get_l3`,
		'x2' = `L2Ptr_get_x2`,
		'a2' = `L2Ptr_get_a2` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L2. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'L2Ptr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'l3' = `L2Ptr_set_l3`,
		'x2' = `L2Ptr_set_x2`,
		'a2' = `L2Ptr_set_a2` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L2. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'L2Ptr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'l3' = `L2Ptr_get_l3`,
		'x2' = `L2Ptr_get_x2`,
		'a2' = `L2Ptr_get_a2` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'L2Ptr::l3', 'L2Ptr::x2', 'L2Ptr::a2' ))
       if(is.na(idx))
        stop("no such field ", i, " in L2. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
L2Ptr_get_l3 <-
function( x , copy = TRUE )
{
	.Call('R_L2Ptr_get_l3', x, as.integer(copy))
} 
L2Ptr_get_x2 <-
function( x , copy = TRUE )
{
	.Call('R_L2Ptr_get_x2', x, as.integer(copy))
} 
L2Ptr_get_a2 <-
function( x , copy = TRUE )
{
	.Call('R_L2Ptr_get_a2', x, as.integer(copy))
} 
L2Ptr_set_l3 <-
function( x , value  )
{
    	value = as( value , 'L3Ptr' )
    	.Call('R_L2Ptr_set_l3', x, value)
} 
L2Ptr_set_x2 <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_L2Ptr_set_x2', x, value)
} 
L2Ptr_set_a2 <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = checkArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_L2Ptr_set_a2', x, value)
} 

setAs( "L2" ,  "L2Ptr" , 
function(from)
.Call('R_coerce_L2_L2Ptr', from )
)
setAs( "L2Ptr" ,  "L2" , 
function(from)
.Call('R_coerce_L2Ptr_L2', from)
) 
new_L2 <-
function( `l3` , `x2` , `a2` , .finalizer = FALSE )
{
    ans = .Call('R_new_L2')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_L2Ptr_finalizer')
    
    if(!missing(`l3`)) ans$`l3` = `l3`
    if(!missing(`x2`)) ans$`x2` = `x2`
    if(!missing(`a2`)) ans$`a2` = `a2`
    na = pmatch(names(args), names(getSlots('L2')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'L2Ptr' ),       
function( x , ... , .finalizer = 'R_free_L2Ptr_finalizer' )
{
.Call( 'R_duplicate_L2' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'L1Ptr' ),       
function( x  )
{
    c(
         'l2',
     'x1'
    )
} )
 
setMethod( '$' , c( 'L1Ptr' ),       
function( x , name  )
{
    .fieldFuns = c( 'l2' = `L1Ptr_get_l2`,
		'x1' = `L1Ptr_get_x1` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L1. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'L1Ptr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'l2' = `L1Ptr_set_l2`,
		'x1' = `L1Ptr_set_x1` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in L1. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'L1Ptr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'l2' = `L1Ptr_get_l2`,
		'x1' = `L1Ptr_get_x1` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'L1Ptr::l2', 'L1Ptr::x1' ))
       if(is.na(idx))
        stop("no such field ", i, " in L1. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
L1Ptr_get_l2 <-
function( x , copy = TRUE )
{
	.Call('R_L1Ptr_get_l2', x, as.integer(copy))
} 
L1Ptr_get_x1 <-
function( x , copy = TRUE )
{
	.Call('R_L1Ptr_get_x1', x, as.integer(copy))
} 
L1Ptr_set_l2 <-
function( x , value  )
{
    	value = as( value , 'L2Ptr' )
    	.Call('R_L1Ptr_set_l2', x, value)
} 
L1Ptr_set_x1 <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_L1Ptr_set_x1', x, value)
} 

setAs( "L1" ,  "L1Ptr" , 
function(from)
.Call('R_coerce_L1_L1Ptr', from )
)
setAs( "L1Ptr" ,  "L1" , 
function(from)
.Call('R_coerce_L1Ptr_L1', from)
) 
new_L1 <-
function( `l2` , `x1` , .finalizer = FALSE )
{
    ans = .Call('R_new_L1')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_L1Ptr_finalizer')
    
    if(!missing(`l2`)) ans$`l2` = `l2`
    if(!missing(`x1`)) ans$`x1` = `x1`
    na = pmatch(names(args), names(getSlots('L1')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'L1Ptr' ),       
function( x , ... , .finalizer = 'R_free_L1Ptr_finalizer' )
{
.Call( 'R_duplicate_L1' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'DPtr' ),       
function( x  )
{
    c(
         'val'
    )
} )
 
setMethod( '$' , c( 'DPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'val' = `DPtr_get_val` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in D. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x)
} )
 
setMethod( '$<-' , c( 'DPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'val' = `DPtr_set_val` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in D. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'DPtr' ),       
function( x , i , j , ... , exact = TRUE )
{
    .fieldFuns = c( 'val' = `DPtr_get_val` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'DPtr::val' ))
       if(is.na(idx))
        stop("no such field ", i, " in D. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .fieldFuns[[idx]](x)
} )
 
DPtr_get_val <-
function( x  )
{
	.Call('R_DPtr_get_val', x)
} 
DPtr_set_val <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_DPtr_set_val', x, value)
} 

setAs( "D" ,  "DPtr" , 
function(from)
.Call('R_coerce_D_DPtr', from )
)
setAs( "DPtr" ,  "D" , 
function(from)
.Call('R_coerce_DPtr_D', from)
) 
new_D <-
function( `val` , .finalizer = FALSE )
{
    ans = .Call('R_new_D')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_DPtr_finalizer')
    
    if(!missing(`val`)) ans$`val` = `val`
    na = pmatch(names(args), names(getSlots('D')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'DPtr' ),       
function( x , ... , .finalizer = 'R_free_DPtr_finalizer' )
{
.Call( 'R_duplicate_D' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'EPtr' ),       
function( x  )
{
    c(
         'ad'
    )
} )
 
setMethod( '$' , c( 'EPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'ad' = `EPtr_get_ad` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in E. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'EPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'ad' = `EPtr_set_ad` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in E. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'EPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'ad' = `EPtr_get_ad` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'EPtr::ad' ))
       if(is.na(idx))
        stop("no such field ", i, " in E. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
EPtr_get_ad <-
function( x , copy = TRUE )
{
	.Call('R_EPtr_get_ad', x, as.integer(copy))
} 
EPtr_set_ad <-
function( x , value  )
{
    	value = as( value , 'DPtr' )
    	.Call('R_EPtr_set_ad', x, value)
} 

setAs( "E" ,  "EPtr" , 
function(from)
.Call('R_coerce_E_EPtr', from )
)
setAs( "EPtr" ,  "E" , 
function(from)
.Call('R_coerce_EPtr_E', from)
) 
new_E <-
function( `ad` , .finalizer = FALSE )
{
    ans = .Call('R_new_E')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_EPtr_finalizer')
    
    if(!missing(`ad`)) ans$`ad` = `ad`
    na = pmatch(names(args), names(getSlots('E')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'EPtr' ),       
function( x , ... , .finalizer = 'R_free_EPtr_finalizer' )
{
.Call( 'R_duplicate_E' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'FPtr' ),       
function( x  )
{
    c(
         'ae',
     'ad'
    )
} )
 
setMethod( '$' , c( 'FPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'ae' = `FPtr_get_ae`,
		'ad' = `FPtr_get_ad` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in F. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'FPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'ae' = `FPtr_set_ae`,
		'ad' = `FPtr_set_ad` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in F. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'FPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'ae' = `FPtr_get_ae`,
		'ad' = `FPtr_get_ad` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'FPtr::ae', 'FPtr::ad' ))
       if(is.na(idx))
        stop("no such field ", i, " in F. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
FPtr_get_ae <-
function( x , copy = TRUE )
{
	.Call('R_FPtr_get_ae', x, as.integer(copy))
} 
FPtr_get_ad <-
function( x , copy = TRUE )
{
	.Call('R_FPtr_get_ad', x, as.integer(copy))
} 
FPtr_set_ae <-
function( x , value  )
{
    	value = asReference( value ,  "EPtr" )
    	.Call('R_FPtr_set_ae', x, value)
} 
FPtr_set_ad <-
function( x , value  )
{
    	value = asReference( value ,  "DPtr" )
    	.Call('R_FPtr_set_ad', x, value)
} 

setAs( "F" ,  "FPtr" , 
function(from)
.Call('R_coerce_F_FPtr', from )
)
setAs( "FPtr" ,  "F" , 
function(from)
.Call('R_coerce_FPtr_F', from)
) 
new_F <-
function( `ae` , `ad` , .finalizer = FALSE )
{
    ans = .Call('R_new_F')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_FPtr_finalizer')
    
    if(!missing(`ae`)) ans$`ae` = `ae`
    if(!missing(`ad`)) ans$`ad` = `ad`
    na = pmatch(names(args), names(getSlots('F')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'FPtr' ),       
function( x , ... , .finalizer = 'R_free_FPtr_finalizer' )
{
.Call( 'R_duplicate_F' , x, NULL, .finalizer)
} )
 

#### </End of definition>

#### <Start of definition>



setMethod( 'names' , c( 'GPtr' ),       
function( x  )
{
    c(
         'ae',
     'ad',
     'af'
    )
} )
 
setMethod( '$' , c( 'GPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'ae' = `GPtr_get_ae`,
		'ad' = `GPtr_get_ad`,
		'af' = `GPtr_get_af` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in G. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'GPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'ae' = `GPtr_set_ae`,
		'ad' = `GPtr_set_ad`,
		'af' = `GPtr_set_af` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in G. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'GPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'ae' = `GPtr_get_ae`,
		'ad' = `GPtr_get_ad`,
		'af' = `GPtr_get_af` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'GPtr::ae', 'GPtr::ad', 'GPtr::af' ))
       if(is.na(idx))
        stop("no such field ", i, " in G. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
GPtr_get_ae <-
function( x , copy = TRUE )
{
	.Call('R_GPtr_get_ae', x, as.integer(copy))
} 
GPtr_get_ad <-
function( x , copy = TRUE )
{
	.Call('R_GPtr_get_ad', x, as.integer(copy))
} 
GPtr_get_af <-
function( x , copy = TRUE )
{
	.Call('R_GPtr_get_af', x, as.integer(copy))
} 
GPtr_set_ae <-
function( x , value  )
{
    	value = as( value , 'EPtr' )
    	.Call('R_GPtr_set_ae', x, value)
} 
GPtr_set_ad <-
function( x , value  )
{
    	value = as( value , 'DPtr' )
    	.Call('R_GPtr_set_ad', x, value)
} 
GPtr_set_af <-
function( x , value  )
{
    	value = as( value , 'FPtr' )
    	.Call('R_GPtr_set_af', x, value)
} 

setAs( "G" ,  "GPtr" , 
function(from)
.Call('R_coerce_G_GPtr', from )
)
setAs( "GPtr" ,  "G" , 
function(from)
.Call('R_coerce_GPtr_G', from)
) 
new_G <-
function( `ae` , `ad` , `af` , .finalizer = FALSE )
{
    ans = .Call('R_new_G')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_GPtr_finalizer')
    
    if(!missing(`ae`)) ans$`ae` = `ae`
    if(!missing(`ad`)) ans$`ad` = `ad`
    if(!missing(`af`)) ans$`af` = `af`
    na = pmatch(names(args), names(getSlots('G')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'GPtr' ),       
function( x , ... , .finalizer = 'R_free_GPtr_finalizer' )
{
.Call( 'R_duplicate_G' , x, NULL, .finalizer)
} )
 

#### </End of definition>
getShortUnsignedIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertShortUnsignedIntArrayToR' , array, as.integer(from), as.integer(to))
} 
getCStringArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertCharPtrArrayToR' , array, as.integer(from), as.integer(to))
} 

#### <Start of definition>



setMethod( 'names' , c( 'XPtr' ),       
function( x  )
{
    c(
         'a',
     'b'
    )
} )
 
setMethod( '$' , c( 'XPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'a' = `XPtr_get_a`,
		'b' = `XPtr_get_b` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in X. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x)
} )
 
setMethod( '$<-' , c( 'XPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'a' = `XPtr_set_a`,
		'b' = `XPtr_set_b` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in X. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'XPtr' ),       
function( x , i , j , ... , exact = TRUE )
{
    .fieldFuns = c( 'a' = `XPtr_get_a`,
		'b' = `XPtr_get_b` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'XPtr::a', 'XPtr::b' ))
       if(is.na(idx))
        stop("no such field ", i, " in X. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .fieldFuns[[idx]](x)
} )
 
XPtr_get_a <-
function( x  )
{
	.Call('R_XPtr_get_a', x)
} 
XPtr_get_b <-
function( x  )
{
	.Call('R_XPtr_get_b', x)
} 
XPtr_set_a <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_XPtr_set_a', x, value)
} 
XPtr_set_b <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_XPtr_set_b', x, value)
} 

setAs( "X" ,  "XPtr" , 
function(from)
.Call('R_coerce_X_XPtr', from )
)
setAs( "XPtr" ,  "X" , 
function(from)
.Call('R_coerce_XPtr_X', from)
) 
new_X <-
function( `a` , `b` , .finalizer = FALSE )
{
    ans = .Call('R_new_X')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_XPtr_finalizer')
    
    if(!missing(`a`)) ans$`a` = `a`
    if(!missing(`b`)) ans$`b` = `b`
    na = pmatch(names(args), names(getSlots('X')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'XPtr' ),       
function( x , ... , .finalizer = 'R_free_XPtr_finalizer' )
{
.Call( 'R_duplicate_X' , x, NULL, .finalizer)
} )
 

#### </End of definition>
getXArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertXArrayToR' , array, as.integer(from), as.integer(to))
} 
getIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertIntArrayArrayToR' , array, as.integer(from), as.integer(to))
} 
getIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertIntArrayArrayArrayToR' , array, as.integer(from), as.integer(to))
} 
getIntArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertIntArrayArrayArrayArrayToR' , array, as.integer(from), as.integer(to))
} 
getXArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertXArrayArrayToR' , array, as.integer(from), as.integer(to))
} 
getDoubleArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertDoubleArrayToR' , array, as.integer(from), as.integer(to))
} 
getDoubleArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertDoubleArrayArrayToR' , array, as.integer(from), as.integer(to))
} 
Aroutine <-
function( a  )
{
     a = as( a , 'APtr' )

    .Call('R_Aroutine', a)
} 
init <-
function(  )
{

    invisible( .Call('R_init') )
} 
makeList <-
function( n  )
{
     n = as( n , 'integer')

    .Call('R_makeList', n)
} 
init_FloatPtr <-
function( sizes , .copy = TRUE )
{
     sizes = if(is(sizes, 'intRef'))
   	    sizes
   	 else
   	    as.integer( sizes )
    .copy = validateCopy(.copy, c('sizes'))

    .Call('R_init_FloatPtr', sizes, .copy , as.integer(sum(!is.na(.copy))  ))
} 
init_iarray4D <-
function(  )
{

    .Call('R_init_iarray4D')
} 
get_l1 <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_l1', as.logical(copy))
    else {
        value = as( value , 'L1Ptr' )
       .Call('R_set_l1', value)
        value
    }
} 
get_g_struct <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_g_struct', as.logical(copy))
    else {
        value = as( value , 'GPtr' )
       .Call('R_set_g_struct', value)
        value
    }
} 
get_f_struct <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_f_struct', as.logical(copy))
    else {
        value = as( value , 'FPtr' )
       .Call('R_set_f_struct', value)
        value
    }
} 
get_pointerLen <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_pointerLen', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_pointerLen', value)
        value
    }
} 
get_e_struct <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_e_struct', as.logical(copy))
    else {
        value = as( value , 'EPtr' )
       .Call('R_set_e_struct', value)
        value
    }
} 
get_pointer <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_pointer', as.logical(copy))
    else {
        value = if(is(value, 'intRef'))
   	    value
   	 else
   	    as.integer( value )
       .Call('R_set_pointer', value)
        value
    }
} 
get_d_struct <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_d_struct', as.logical(copy))
    else {
        value = as( value , 'DPtr' )
       .Call('R_set_d_struct', value)
        value
    }
} 
get_usarray <-
function( value , from = 1, to = 3, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_usarray', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = checkArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


       .Call('R_set_usarray', value)
        value
    }
} 
get_uarray <-
function( value , from = 1, to = 8, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_uarray', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = asUnsigned( value , 'numeric') 

 	if(length( value ) != 8 ) {
 	     value = checkArrayLength( value ,  8 )
 	    length( value ) <-  8 
	}


       .Call('R_set_uarray', value)
        value
    }
} 
get_Strings <-
function( value , from = 1, to = 7, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_Strings', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.character( value ) 

 	if(length( value ) != 7 ) {
 	     value = checkArrayLength( value ,  7 )
 	    length( value ) <-  7 
	}


       .Call('R_set_Strings', value)
        value
    }
} 
get_array <-
function( value , from = 1, to = 10, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_array', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as( value , 'integer') 

 	if(length( value ) != 10 ) {
 	     value = checkArrayLength( value ,  10 )
 	    length( value ) <-  10 
	}


       .Call('R_set_array', value)
        value
    }
} 
get_us <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_us', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_us', value)
        value
    }
} 
get_FloatPtr <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_FloatPtr', as.logical(copy))
    else {
        value = if(is(value, 'floatRef'))
   	    value
   	 else
   	    as.numeric( value )
       .Call('R_set_FloatPtr', value)
        value
    }
} 
get_ll <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ll', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_ll', value)
        value
    }
} 
get_ul <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ul', as.logical(copy))
    else {
        value = as( value , 'numeric')
       .Call('R_set_ul', value)
        value
    }
} 
get_xarray <-
function( value , from = 1, to = 4, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_xarray', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.list( value ) 

 	if(length( value ) != 4 ) {
 	     value = checkArrayLength( value ,  4 )
 	    length( value ) <-  4 
	}


       .Call('R_set_xarray', value)
        value
    }
} 
get_iarray4D <-
function( value , from = 1, to = 2, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_iarray4D', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.list( value ) 

 	if(length( value ) != 2 ) {
 	     value = checkArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


       .Call('R_set_iarray4D', value)
        value
    }
} 
get_l <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_l', as.logical(copy))
    else {
        value = as( value , 'numeric')
       .Call('R_set_l', value)
        value
    }
} 
get_iarray <-
function( value , from = 1, to = 2, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_iarray', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.list( value ) 

 	if(length( value ) != 2 ) {
 	     value = checkArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


       .Call('R_set_iarray', value)
        value
    }
} 
get_s <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_s', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_s', value)
        value
    }
} 
get_xarray2D <-
function( value , from = 1, to = 3, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_xarray2D', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.list( value ) 

 	if(length( value ) != 3 ) {
 	     value = checkArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


       .Call('R_set_xarray2D', value)
        value
    }
} 
get_i <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_i', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_i', value)
        value
    }
} 
get_uc <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_uc', as.logical(copy))
    else {
        value = as( value , 'raw')
       .Call('R_set_uc', value)
        value
    }
} 
get_matrix_ptr <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_matrix_ptr', as.logical(copy))
    else {
        value = if(is(value, 'doubleRef'))
   	    value
   	 else
   	    as.numeric( value )
       .Call('R_set_matrix_ptr', value)
        value
    }
} 
get_d <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_d', as.logical(copy))
    else {
        value = as( value , 'numeric')
       .Call('R_set_d', value)
        value
    }
} 
get_ld <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ld', as.logical(copy))
    else {
        value = as( value , 'numeric')
       .Call('R_set_ld', value)
        value
    }
} 
get_matrix <-
function( value , from = 1, to = 3, copy = TRUE )
{
    if(missing(value))
       .Call('R_get_matrix', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.list( value ) 

 	if(length( value ) != 3 ) {
 	     value = checkArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


       .Call('R_set_matrix', value)
        value
    }
} 
get_ui <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ui', as.logical(copy))
    else {
        value = asUnsigned( value , 'numeric')
       .Call('R_set_ui', value)
        value
    }
} 
get_ulli <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ulli', as.logical(copy))
    else {
        value = as( value , 'numeric')
       .Call('R_set_ulli', value)
        value
    }
} 
get_ap <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_ap', as.logical(copy))
    else {
        value = asReference( value ,  "APtr" )
       .Call('R_set_ap', value)
        value
    }
} 
get_a <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_a', as.logical(copy))
    else {
        value = as( value , 'APtr' )
       .Call('R_set_a', value)
        value
    }
} 
makeActiveBinding( 'l1' , get_l1 , globalenv() ) 
makeActiveBinding( 'g_struct' , get_g_struct , globalenv() ) 
makeActiveBinding( 'f_struct' , get_f_struct , globalenv() ) 
makeActiveBinding( 'pointerLen' , get_pointerLen , globalenv() ) 
makeActiveBinding( 'e_struct' , get_e_struct , globalenv() ) 
makeActiveBinding( 'pointer' , get_pointer , globalenv() ) 
makeActiveBinding( 'd_struct' , get_d_struct , globalenv() ) 
makeActiveBinding( 'usarray' , get_usarray , globalenv() ) 
makeActiveBinding( 'uarray' , get_uarray , globalenv() ) 
makeActiveBinding( 'Strings' , get_Strings , globalenv() ) 
makeActiveBinding( 'array' , get_array , globalenv() ) 
makeActiveBinding( 'us' , get_us , globalenv() ) 
makeActiveBinding( 'FloatPtr' , get_FloatPtr , globalenv() ) 
makeActiveBinding( 'll' , get_ll , globalenv() ) 
makeActiveBinding( 'ul' , get_ul , globalenv() ) 
makeActiveBinding( 'xarray' , get_xarray , globalenv() ) 
makeActiveBinding( 'iarray4D' , get_iarray4D , globalenv() ) 
makeActiveBinding( 'l' , get_l , globalenv() ) 
makeActiveBinding( 'iarray' , get_iarray , globalenv() ) 
makeActiveBinding( 's' , get_s , globalenv() ) 
makeActiveBinding( 'xarray2D' , get_xarray2D , globalenv() ) 
makeActiveBinding( 'i' , get_i , globalenv() ) 
makeActiveBinding( 'uc' , get_uc , globalenv() ) 
makeActiveBinding( 'matrix_ptr' , get_matrix_ptr , globalenv() ) 
makeActiveBinding( 'd' , get_d , globalenv() ) 
makeActiveBinding( 'ld' , get_ld , globalenv() ) 
makeActiveBinding( 'matrix' , get_matrix , globalenv() ) 
makeActiveBinding( 'ui' , get_ui , globalenv() ) 
makeActiveBinding( 'ulli' , get_ulli , globalenv() ) 
makeActiveBinding( 'ap' , get_ap , globalenv() ) 
makeActiveBinding( 'a' , get_a , globalenv() ) 
