
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {scalar_t__ first_sector; int size; } ;
typedef TYPE_1__ cdfs_file_t ;



int64_t cdfs_get_size(cdfs_file_t* file)
{
   if (!file || file->first_sector < 0)
      return 0;

   return file->size;
}
