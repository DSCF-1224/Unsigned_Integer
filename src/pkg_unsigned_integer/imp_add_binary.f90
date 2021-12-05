submodule (pkg_unsigned_integer : imp_calc_unsigned_add) imp_add_binary

    ! contained <subroutine>s and <function>s are below
    contains

    module procedure add_bin_with_carry

        ! variable(s) for this <function>
        type(typ_set2) :: tmp

        tmp       = add_bin_unit( lower=     lower , upper= upper )
        add       = add_bin_unit( lower= tmp%lower , upper= carry )
        add%upper = ( add%upper .or. tmp%upper )

    end procedure add_bin_with_carry


    pure elemental function add_bin_unit ( lower , upper ) result(add)

        ! argument(s) for this <function>
        logical , intent(in) :: lower , upper

        ! return value of this <function>
        type(typ_set2) :: add

        add%lower = logical_xor( lower , upper )
        add%upper = ( lower .and. upper )

    end function add_bin_unit

end submodule imp_add_binary
