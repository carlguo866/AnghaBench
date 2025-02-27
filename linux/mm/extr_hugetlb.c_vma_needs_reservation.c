
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct hstate {int dummy; } ;


 int VMA_NEEDS_RESV ;
 long __vma_reservation_common (struct hstate*,struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static long vma_needs_reservation(struct hstate *h,
   struct vm_area_struct *vma, unsigned long addr)
{
 return __vma_reservation_common(h, vma, addr, VMA_NEEDS_RESV);
}
