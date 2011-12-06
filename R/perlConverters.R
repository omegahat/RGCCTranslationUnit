if(USE_PERL_TU_PARSER)
RSPerl_initialization =
function() {
    # register a converer with the RSPerl package to handle GCC::Node::* nodes.
 RSPerl::addConverter(
                     function(obj, ...){
                        #length(grep("^GCC::Node", class(obj))) > 0
                       substring(class(obj)[1], 1, 9) == "GCC::Node"
                     },
                     function(x, ...) {
                        x
                     },
                     description = "Intercepts all GCC::Node objects and leaves as a reference")
}
