library(RAutoGenRunTime)
setClass( 'rusagePtr' , contains = 'RC++Reference')
setClass( 'rlimitPtr' , contains = 'RC++Reference')
setClass( 'charPtr' , contains = 'RC++Reference')
getCStringArray <-
function( array , from = 1, to = array@length )
{
.Call( 'R_convertCharPtrToR' , array, as.integer(from), as.integer(to))
} 
setpriority <-
function( r14 , r27 , r43  )
{
     r14 = as( r14 , 'integer')
     r27 = as( r27 , 'integer')
     r43 = as( r43 , 'integer')

    .Call('R_setpriority', r14, r27, r43)
} 
getpriority <-
function( r52 , r69  )
{
     r52 = as( r52 , 'integer')
     r69 = as( r69 , 'integer')

    .Call('R_getpriority', r52, r69)
} 
getrusage <-
function( r26 , r41 , .copy = TRUE )
{
     r26 = as( r26 , 'integer')
     r41 = asReference( r41 ,  "rusagePtr" )
    .copy = validateCopy(.copy, c('r41'))

    .Call('R_getrusage', r26, r41, .copy , as.integer(sum(!is.na(.copy)) + 1 ))
} 
setrlimit <-
function( r7 , r15 , .copy = TRUE )
{
     r7 = as( r7 , 'integer')
     r15 = asReference( r15 ,  "rlimitPtr" )
    .copy = validateCopy(.copy, c('r15'))

    .Call('R_setrlimit', r7, r15, .copy , as.integer(sum(!is.na(.copy)) + 1 ))
} 
getrlimit <-
function( r40 , r53 , .copy = TRUE )
{
     r40 = as( r40 , 'integer')
     r53 = asReference( r53 ,  "rlimitPtr" )
    .copy = validateCopy(.copy, c('r53'))

    .Call('R_getrlimit', r40, r53, .copy , as.integer(sum(!is.na(.copy)) + 1 ))
} 
get_daylight <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_daylight', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_daylight', value)
        value
    }
} 
get_getdate_err <-
function( value , copy = TRUE )
{
    if(missing(value))
       .Call('R_get_getdate_err', as.logical(copy))
    else {
        value = as( value , 'integer')
       .Call('R_set_getdate_err', value)
        value
    }
} 
get_tzname <-
function( value , from = 1, to = TRUE, copy  )
{
    if(missing(value))
       .Call('R_get_tzname', as.logical(copy), as.integer(from), as.integer(to))
    else {
        value = as.character( value ) 

 	if(length( value ) !=  ) {
 	     value = checkArrayLength( value ,   )
 	    length( value ) <-   
	}


       .Call('R_set_tzname', value)
        value
    }
} 
makeActiveBinding( 'daylight' , get_daylight , globalenv() ) 
makeActiveBinding( 'getdate_err' , get_getdate_err , globalenv() ) 
makeActiveBinding( 'tzname' , get_tzname , globalenv() ) 
