
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_map_address_t ;
typedef scalar_t__ pmap_paddr_t ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ pa; scalar_t__ va; } ;


 size_t PTOV_TABLE_SIZE ;
 scalar_t__ gPhysBase ;
 scalar_t__ gVirtBase ;
 TYPE_1__* ptov_table ;

vm_map_address_t
phystokv(pmap_paddr_t pa)
{
 for (size_t i = 0; (i < PTOV_TABLE_SIZE) && (ptov_table[i].len != 0); i++) {
  if ((pa >= ptov_table[i].pa) && (pa < (ptov_table[i].pa + ptov_table[i].len)))
   return (pa - ptov_table[i].pa + ptov_table[i].va);
 }
 return (pa - gPhysBase + gVirtBase);
}
