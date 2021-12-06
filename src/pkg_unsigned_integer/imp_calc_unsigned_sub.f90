submodule (pkg_unsigned_integer) imp_calc_unsigned_sub

    ! <interface>s for this <submodule>

    interface update_unsigned_sub

        module pure elemental function update_unsigned_sub_int8 ( unsigned_sub , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT8) , intent(in) :: unsigned_sub
            integer       , intent(in) :: pos

            ! return value of this <function>
            integer(INT8) :: updated

        end function update_unsigned_sub_int8


        module pure elemental function update_unsigned_sub_int16 ( unsigned_sub , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT16) , intent(in) :: unsigned_sub
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT16) :: updated

        end function update_unsigned_sub_int16


        module pure elemental function update_unsigned_sub_int32 ( unsigned_sub , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT32) , intent(in) :: unsigned_sub
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT32) :: updated

        end function update_unsigned_sub_int32


        module pure elemental function update_unsigned_sub_int64 ( unsigned_sub , pos ) result(updated)

            ! argument(s) for this <function>
            integer(INT64) , intent(in) :: unsigned_sub
            integer        , intent(in) :: pos

            ! return value of this <function>
            integer(INT64) :: updated

        end function update_unsigned_sub_int64

    end interface update_unsigned_sub

    interface

        module pure elemental function sub_bin_with_carry ( lower , upper , carry ) result(sub)

            ! argument(s) for this <function>
            logical , intent(in) :: lower , upper , carry

            ! return value of this <function>
            type(typ_set2) :: sub

        end function sub_bin_with_carry

    end interface


    ! contained <subroutine>s and <function>s are below
    contains


    module procedure unsigned_sub_int8

        ! variable(s) for this <function>
        integer (INT8)     :: lhs_copy , rhs_copy
        logical            :: lhs_b , rhs_b
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        lhs_copy     = lhs
        rhs_copy     = rhs
        unsigned_sub = 0_INT8
        tmp%upper    = .false.

        do itr = 0 , 7 , 1
            include './inc_calc_unsigned_sub.f90'
        end do

    end procedure unsigned_sub_int8


    module procedure unsigned_sub_int16

        ! variable(s) for this <function>
        integer (INT16)    :: lhs_copy , rhs_copy
        logical            :: lhs_b , rhs_b
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        lhs_copy     = lhs
        rhs_copy     = rhs
        unsigned_sub = 0_INT16
        tmp%upper    = .false.

        do itr = 0 , 15 , 1
            include './inc_calc_unsigned_sub.f90'
        end do

    end procedure unsigned_sub_int16


    module procedure unsigned_sub_int32

        ! variable(s) for this <function>
        integer (INT32)    :: lhs_copy , rhs_copy
        logical            :: lhs_b , rhs_b
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        lhs_copy     = lhs
        rhs_copy     = rhs
        unsigned_sub = 0_INT32
        tmp%upper    = .false.

        do itr = 0 , 31 , 1
            include './inc_calc_unsigned_sub.f90'
        end do

    end procedure unsigned_sub_int32


    module procedure unsigned_sub_int64

        ! variable(s) for this <function>
        integer (INT64)    :: lhs_copy , rhs_copy
        logical            :: lhs_b , rhs_b
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        lhs_copy     = lhs
        rhs_copy     = rhs
        unsigned_sub = 0_INT64
        tmp%upper    = .false.

        do itr = 0 , 63 , 1
            include './inc_calc_unsigned_sub.f90'
        end do

    end procedure unsigned_sub_int64

end submodule imp_calc_unsigned_sub
