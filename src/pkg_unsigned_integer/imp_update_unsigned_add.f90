submodule (pkg_unsigned_integer) imp_update_unsigned_add

    ! contained <subroutine>s and <function>s are below
    contains


    module procedure update_unsigned_add_int8

        updated = ior( i= unsigned_add , j= shiftl( i= 1_INT8 , shift= pos ) )

    end procedure update_unsigned_add_int8


    module procedure update_unsigned_add_int16

        updated = ior( i= unsigned_add , j= shiftl( i= 1_INT16 , shift= pos ) )

    end procedure update_unsigned_add_int16


    module procedure update_unsigned_add_int32

        updated = ior( i= unsigned_add , j= shiftl( i= 1_INT32 , shift= pos ) )

    end procedure update_unsigned_add_int32


    module procedure update_unsigned_add_int64

        updated = ior( i= unsigned_add , j= shiftl( i= 1_INT64 , shift= pos ) )

    end procedure update_unsigned_add_int64

end submodule imp_update_unsigned_add
