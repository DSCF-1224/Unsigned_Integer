submodule (pkg_unsigned_integer) imp_calc_unsigned_add

    ! <interface>s for this <submodule>

    interface

        module pure elemental function add_bin_with_carry ( lower , upper , carry ) result(add)

            ! argument(s) for this <function>
            logical , intent(in) :: lower , upper , carry

            ! return value of this <function>
            type(typ_set2) :: add

        end function add_bin_with_carry

    end interface


    ! contained <subroutine>s and <function>s are below
    contains


    module procedure unsigned_add_int8

        ! variable(s) for this <function>
        integer (INT8)     :: i_copy , j_copy
        logical            :: bi , bj
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        i_copy       = i
        j_copy       = j
        unsigned_add = 0_INT8
        tmp%upper    = .false.

        do itr = 0 , 7 , 1
            include './inc_calc_unsigned_add.f90'
        end do

    end procedure unsigned_add_int8


    module procedure unsigned_add_int16

        ! variable(s) for this <function>
        integer (INT16)    :: i_copy , j_copy
        logical            :: bi , bj
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        i_copy       = i
        j_copy       = j
        unsigned_add = 0_INT16
        tmp%upper    = .false.

        do itr = 0 , 15 , 1
            include './inc_calc_unsigned_add.f90'
        end do

    end procedure unsigned_add_int16


    module procedure unsigned_add_int32

        ! variable(s) for this <function>
        integer (INT32)    :: i_copy , j_copy
        logical            :: bi , bj
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        i_copy       = i
        j_copy       = j
        unsigned_add = 0_INT32
        tmp%upper    = .false.

        do itr = 0 , 31 , 1
            include './inc_calc_unsigned_add.f90'
        end do

    end procedure unsigned_add_int32


    module procedure unsigned_add_int64

        ! variable(s) for this <function>
        integer (INT64)    :: i_copy , j_copy
        logical            :: bi , bj
        type    (typ_set2) :: tmp

        ! support variable(s) for this <function>
        integer :: itr

        i_copy       = i
        j_copy       = j
        unsigned_add = 0_INT64
        tmp%upper    = .false.

        do itr = 0 , 63 , 1
            include './inc_calc_unsigned_add.f90'
        end do

    end procedure unsigned_add_int64

end submodule imp_calc_unsigned_add
