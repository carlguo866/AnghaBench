
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ (* mz_zip_locate_entry_cb ) (void*,void*,int *) ;
struct TYPE_2__ {int file_info; } ;
typedef TYPE_1__ mz_zip ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ mz_zip_goto_first_entry (void*) ;
 scalar_t__ mz_zip_locate_next_entry (void*,void*,scalar_t__ (*) (void*,void*,int *)) ;

int32_t mz_zip_locate_first_entry(void *handle, void *userdata, mz_zip_locate_entry_cb cb)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;
    int32_t result = 0;


    err = mz_zip_goto_first_entry(handle);
    if (err != MZ_OK)
        return err;

    result = cb(handle, userdata, &zip->file_info);
    if (result == 0)
        return MZ_OK;

    return mz_zip_locate_next_entry(handle, userdata, cb);
}
