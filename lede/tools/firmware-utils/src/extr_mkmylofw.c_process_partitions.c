
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mylo_partition {scalar_t__ addr; scalar_t__ size; } ;
struct TYPE_2__ {struct mylo_partition mylo; } ;


 int errmsg (int ,char*,scalar_t__) ;
 scalar_t__ flash_size ;
 int fw_num_partitions ;
 TYPE_1__* fw_parts ;

int
process_partitions(void)
{
 struct mylo_partition *part;
 int i;

 for (i = 0; i < fw_num_partitions; i++) {
  part = &fw_parts[i].mylo;

  if (part->addr > flash_size) {
   errmsg(0, "invalid partition at 0x%08X", part->addr);
   return -1;
  }

  if ((part->addr + part->size) > flash_size) {
   errmsg(0, "partition at 0x%08X is too big", part->addr);
   return -1;
  }
 }

 return 0;
}
