submodule (pkg_unsigned_integer) imp_logical_xor

    ! contained <subroutine>s and <function>s are below
    contains


    module procedure logical_xor

        logical_xor = and_not( lhs , rhs ) .or. and_not( rhs , lhs )

    end procedure logical_xor


    pure elemental function and_not ( a , b )

        ! argument(s) for this <function>
        logical , intent(in) :: a , b

        ! return value of this <function>
        logical :: and_not

        and_not = a .and. (.not. b)

    end function and_not

end submodule imp_logical_xor
