getLine <-
function( f ) { 
     f = asFILE( f , 'r')
    .Call('R_getLine', f)
}
