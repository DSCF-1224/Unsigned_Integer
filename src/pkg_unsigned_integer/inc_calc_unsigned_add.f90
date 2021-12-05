bi  = btest( i= i_copy , pos= 0 )
bj  = btest( i= j_copy , pos= 0 )
tmp = add_bin_with_carry( lower= bi , upper= bj , carry= tmp%upper )

if ( tmp%lower ) unsigned_add = update_unsigned_add( unsigned_add , pos= itr )

i_copy = shiftr( i= i_copy , shift= 1 )
j_copy = shiftr( i= j_copy , shift= 1 )
