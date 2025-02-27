
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu_slb {int vsid; unsigned long esid; } ;
struct TYPE_2__ {int sllp; } ;


 unsigned long ESID_MASK ;
 scalar_t__ KERNEL_REGION_ID ;
 int MMU_SEGSIZE_256M ;
 scalar_t__ REGION_ID (unsigned long) ;
 unsigned long SLB_ESID_V ;
 int SLB_VSID_KERNEL ;
 int SLB_VSID_SHIFT ;
 int get_kernel_vsid (unsigned long,int ) ;
 size_t mmu_linear_psize ;
 TYPE_1__* mmu_psize_defs ;
 size_t mmu_virtual_psize ;

__attribute__((used)) static void __spu_kernel_slb(void *addr, struct spu_slb *slb)
{
 unsigned long ea = (unsigned long)addr;
 u64 llp;

 if (REGION_ID(ea) == KERNEL_REGION_ID)
  llp = mmu_psize_defs[mmu_linear_psize].sllp;
 else
  llp = mmu_psize_defs[mmu_virtual_psize].sllp;

 slb->vsid = (get_kernel_vsid(ea, MMU_SEGSIZE_256M) << SLB_VSID_SHIFT) |
  SLB_VSID_KERNEL | llp;
 slb->esid = (ea & ESID_MASK) | SLB_ESID_V;
}
