if(USE_PERL_TU_PARSER) {

 
setOldClass("PerlReference")
setOldClass(c("PerlHashReference", "PerlReference"))
  
setOldClass( c( "GCC::Node::type_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::compound_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::function_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::result_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::var_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::scope_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::expr_stmt", "PerlHashReference") )
setOldClass( c( "GCC::Node::call_expr", "PerlHashReference") )
setOldClass( c( "GCC::Node::cond_expr", "PerlHashReference") )
setOldClass( c( "GCC::Node::if_stmt", "PerlHashReference") )
setOldClass( c( "GCC::Node::modify_expr", "PerlHashReference") )
setOldClass( c( "GCC::Node::addr_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::lt_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::gt_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::ge_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::le_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::ne_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::eq_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::compound_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::truth_orif_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::truth_andif_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::plus_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::minus_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::mult_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::rdiv_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::trunc_div_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::ceil_div_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::floor_div_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::round_div_expr", "PerlHashReference"))

setOldClass( c( "GCC::Node::trunc_mod_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::ceil_mod_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::floor_mod_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::round_mod_expr", "PerlHashReference"))

setOldClass( c( "GCC::Node::nop_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::convert_expr", "PerlHashReference"))


setOldClass( c( "GCC::Node::save_expr", "PerlHashReference"))

setOldClass( c( "GCC::Node::component_ref", "PerlHashReference"))
setOldClass( c( "GCC::Node::indirect_ref", "PerlHashReference"))
setOldClass( c( "GCC::Node::array_ref", "PerlHashReference"))

setOldClass( c( "GCC::Node::non_lvalue_expr", "PerlHashReference"))

setOldClass( c( "GCC::Node::postincrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::init_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::postincrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::for_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::while_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::do_stmt", "PerlHashReference"))


setOldClass( c( "GCC::Node::decl_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::tree_list", "PerlHashReference"))
setOldClass( c( "GCC::Node::return_stmt", "PerlHashReference"))
setOldClass( c( "NativeRoutineDescription", "PerlHashReference"))

setOldClass( c( "GCC::Node::integer_cst", "PerlHashReference"))

setOldClass( c( "GCC::Node::field_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::parm_decl", "PerlHashReference"))

setOldClass( c( "GCC::Node::const_decl", "PerlHashReference"))


setOldClass( c( "GCC::Node::target_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::label_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::break_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::goto_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::case_label", "PerlHashReference"))
setOldClass( c( "GCC::Node::switch_stmt", "PerlHashReference"))
setOldClass( c( "GCC::Node::rshift_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::lshift_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::bit_ior_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::bit_and_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::preincrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::float_expr", "PerlHashReference"))


setOldClass( c( "GCC::Node::constructor", "PerlHashReference"))
setOldClass( c( "GCC::Node::negate_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::abs_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::fix_trunc_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::postdecrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::postincrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::predecrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::preincrement_expr", "PerlHashReference"))
setOldClass( c( "GCC::Node::string_cst", "PerlHashReference"))

setOldClass( c( "GCC::Node::template_decl", "PerlHashReference"))
setOldClass( c( "GCC::Node::namespace_decl", "PerlHashReference"))

setOldClass(c("GCC::TranslationUnit::Parser", "PerlTUParser"))


setOldClass( c( "GCC::Node::complex_type", "PerlHashReference"))
setOldClass( c( "GCC::Node::enumeral_type", "PerlHashReference"))

} # USE_PERL_TU_PARSER

