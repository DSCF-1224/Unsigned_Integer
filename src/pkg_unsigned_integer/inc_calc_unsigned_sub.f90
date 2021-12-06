lhs_b  = btest( i= lhs_copy , pos= 0 )
rhs_b  = btest( i= rhs_copy , pos= 0 )
tmp = sub_bin_with_carry( lower= lhs_b , upper= rhs_b , carry= tmp%upper )

if ( tmp%lower ) unsigned_sub = update_unsigned_add( unsigned_sub , pos= itr )

lhs_copy = shiftr( i= lhs_copy , shift= 1 )
rhs_copy = shiftr( i= rhs_copy , shift= 1 )
