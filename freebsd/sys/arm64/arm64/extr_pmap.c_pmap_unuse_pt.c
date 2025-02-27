
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int ATTR_MASK ;
 int KASSERT (int,char*) ;
 int PHYS_TO_VM_PAGE (int) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int pmap_unwire_l3 (int ,scalar_t__,int ,struct spglist*) ;

__attribute__((used)) static int
pmap_unuse_pt(pmap_t pmap, vm_offset_t va, pd_entry_t ptepde,
    struct spglist *free)
{
 vm_page_t mpte;

 if (va >= VM_MAXUSER_ADDRESS)
  return (0);
 KASSERT(ptepde != 0, ("pmap_unuse_pt: ptepde != 0"));
 mpte = PHYS_TO_VM_PAGE(ptepde & ~ATTR_MASK);
 return (pmap_unwire_l3(pmap, va, mpte, free));
}
