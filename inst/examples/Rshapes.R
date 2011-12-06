setClass('R_RectanglePtr', contains = c('RectanglePtr'), prototype = list("RectanglePtr")) 
setMethod("setRMethods", "R_RectanglePtr",
	 function(this,  getWidth = NA, getHeight = NA, setWidth = NA, setHeight = NA, draw = NA )
	 {
	 	if(typeof( getWidth ) != 'closure')
	 		 getWidth  = as.character(NA)
	 	else
	 		 getWidth  = as.function( getWidth )
	 	if(typeof( getHeight ) != 'closure')
	 		 getHeight  = as.character(NA)
	 	else
	 		 getHeight  = as.function( getHeight )
	 	if(typeof( setWidth ) != 'closure')
	 		 setWidth  = as.character(NA)
	 	else
	 		 setWidth  = as.function( setWidth )
	 	if(typeof( setHeight ) != 'closure')
	 		 setHeight  = as.character(NA)
	 	else
	 		 setHeight  = as.function( setHeight )
	 	if(typeof( draw ) != 'closure')
	 		 draw  = as.character(NA)
	 	else
	 		 draw  = as.function( draw )
	 	
	 	
	 	.parameterInfo <-  c( "getWidth" = 1, "getHeight" = 1, "setWidth" = 2, "setHeight" = 2, "draw" = 1 )
	 	if(RAutoGenRunTime:::checkMethodsNumArgs(.parameterInfo, "getWidth" = getWidth, "getHeight" = getHeight, "setWidth" = setWidth, "setHeight" = setHeight, "draw" = draw ))
	 		 .Call( "R_Rectangle_setRMethods" , this,  getWidth, getHeight, setWidth, setHeight, draw )
	 }
) 
setMethod("getRMethods", "R_RectanglePtr",
	 function(this)
	 {
	 	this = asReference(this, 'R_RectanglePtr')
	 	.Call('R_Rectangle_getRMethods', this)
	 }
) 
R_Rectangle <-
function( newx, newy, newwidth, newheight )  
{
     newx = as( newx , 'integer')
     newy = as( newy , 'integer')
     newwidth = as( newwidth , 'integer')
     newheight = as( newheight , 'integer')

    .Call('R_R_Rectangle_new', newx, newy, newwidth, newheight)
}
