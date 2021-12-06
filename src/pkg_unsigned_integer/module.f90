module pkg_unsigned_integer

    ! <module>s to import
    use , intrinsic :: iso_fortran_env


    ! require all variables to be explicitly declared
    implicit none


    ! accessibility of the <subroutine>s and <function>s in this <module>

    ! default setting
    private

    ! kind: interface
    public :: unsigned_add
    public :: unsigned_sub


    ! <type>s for this <module>
    type typ_set2
        logical :: lower , upper
    end type typ_set2


    ! <interface>s for this <module>

    interface unsigned_add

        module pure elemental function unsigned_add_int8 ( i , j ) result(unsigned_add)

            ! argument(s) for this <function>
            integer(INT8) , intent(in) :: i , j

            ! return value of this <function>
            integer(INT8) :: unsigned_add

        end function unsigned_add_int8


        module pure elemental function unsigned_add_int16 ( i , j ) result(unsigned_add)

            ! argument(s) for this <function>
            integer(INT16) , intent(in) :: i , j

            ! return value of this <function>
            integer(INT16) :: unsigned_add

        end function unsigned_add_int16


        module pure elemental function unsigned_add_int32 ( i , j ) result(unsigned_add)

            ! argument(s) for this <function>
            integer(INT32) , intent(in) :: i , j

            ! return value of this <function>
            integer(INT32) :: unsigned_add

        end function unsigned_add_int32


        module pure elemental function unsigned_add_int64 ( i , j ) result(unsigned_add)

            ! argument(s) for this <function>
            integer(INT64) , intent(in) :: i , j

            ! return value of this <function>
            integer(INT64) :: unsigned_add

        end function unsigned_add_int64

    end interface unsigned_add


    interface unsigned_sub

        module pure elemental function unsigned_sub_int8 ( lhs , rhs ) result(unsigned_sub)

            ! argument(s) for this <function>
            integer(INT8) , intent(in) :: lhs , rhs

            ! return value of this <function>
            integer(INT8) :: unsigned_sub

        end function unsigned_sub_int8


        module pure elemental function unsigned_sub_int16 ( lhs , rhs ) result(unsigned_sub)

            ! argument(s) for this <function>
            integer(INT16) , intent(in) :: lhs , rhs

            ! return value of this <function>
            integer(INT16) :: unsigned_sub

        end function unsigned_sub_int16


        module pure elemental function unsigned_sub_int32 ( lhs , rhs ) result(unsigned_sub)

            ! argument(s) for this <function>
            integer(INT32) , intent(in) :: lhs , rhs

            ! return value of this <function>
            integer(INT32) :: unsigned_sub

        end function unsigned_sub_int32


        module pure elemental function unsigned_sub_int64 ( lhs , rhs ) result(unsigned_sub)

            ! argument(s) for this <function>
            integer(INT64) , intent(in) :: lhs , rhs

            ! return value of this <function>
            integer(INT64) :: unsigned_sub

        end function unsigned_sub_int64

    end interface unsigned_sub


    interface update_unsigned_add

        module pure elemental function update_unsigned_add_int8 ( unsigned_add , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT8) , intent(in) :: unsigned_add
            integer       , intent(in) :: pos

            ! return value of this <function>
            integer(INT8) :: updated

        end function update_unsigned_add_int8


        module pure elemental function update_unsigned_add_int16 ( unsigned_add , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT16) , intent(in) :: unsigned_add
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT16) :: updated

        end function update_unsigned_add_int16


        module pure elemental function update_unsigned_add_int32 ( unsigned_add , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT32) , intent(in) :: unsigned_add
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT32) :: updated

        end function update_unsigned_add_int32


        module pure elemental function update_unsigned_add_int64 ( unsigned_add , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT64) , intent(in) :: unsigned_add
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT64) :: updated

        end function update_unsigned_add_int64

    end interface update_unsigned_add


    interface

        module pure elemental function logical_xor( lhs , rhs )

            ! argument(s) for this <function>
            logical , intent(in) :: lhs , rhs
    
            ! return value of this <function>
            logical :: logical_xor

        end function logical_xor

    end interface

end module pkg_unsigned_integer
