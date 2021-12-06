submodule (pkg_unsigned_integer : imp_calc_unsigned_sub) imp_sub_binary

    ! contained <subroutine>s and <function>s are below
    contains

    module procedure sub_bin_with_carry

        ! variable(s) for this <function>
        type(typ_set2) :: tmp

        tmp       = sub_bin_unit( lower=     lower , upper= upper )
        sub       = sub_bin_unit( lower= tmp%lower , upper= carry )
        sub%upper = ( sub%upper .or. tmp%upper )

    end procedure sub_bin_with_carry


    pure elemental function sub_bin_unit ( lower , upper ) result(sub)

        ! argument(s) for this <function>
        logical , intent(in) :: lower , upper

        ! return value of this <function>
        type(typ_set2) :: sub

        sub%lower = logical_xor( lower , upper )
        sub%upper = ( (.not. lower) .and. upper )

    end function sub_bin_unit

end submodule imp_sub_binary
