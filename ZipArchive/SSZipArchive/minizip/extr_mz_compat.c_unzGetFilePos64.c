
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_4__ {int num_of_file; scalar_t__ pos_in_zip_directory; } ;
typedef TYPE_1__ unz64_file_pos ;
struct TYPE_5__ {int entry_index; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int64_t ;


 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ unzGetOffset64 (scalar_t__) ;

int unzGetFilePos64(unzFile file, unz64_file_pos *file_pos)
{
    mz_compat *compat = (mz_compat *)file;
    int64_t offset = 0;

    if (compat == ((void*)0) || file_pos == ((void*)0))
        return UNZ_PARAMERROR;

    offset = unzGetOffset64(file);
    if (offset < 0)
        return (int)offset;

    file_pos->pos_in_zip_directory = offset;
    file_pos->num_of_file = compat->entry_index;
    return UNZ_OK;
}
