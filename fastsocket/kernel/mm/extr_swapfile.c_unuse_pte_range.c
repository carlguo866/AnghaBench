
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_same (int ,int ) ;
 int pte_unmap (int *) ;
 int swp_entry_to_pte (int ) ;
 scalar_t__ unlikely (int ) ;
 int unuse_pte (struct vm_area_struct*,int *,unsigned long,int ,struct page*) ;

__attribute__((used)) static int unuse_pte_range(struct vm_area_struct *vma, pmd_t *pmd,
    unsigned long addr, unsigned long end,
    swp_entry_t entry, struct page *page)
{
 pte_t swp_pte = swp_entry_to_pte(entry);
 pte_t *pte;
 int ret = 0;
 pte = pte_offset_map(pmd, addr);
 do {




  if (unlikely(pte_same(*pte, swp_pte))) {
   pte_unmap(pte);
   ret = unuse_pte(vma, pmd, addr, entry, page);
   if (ret)
    goto out;
   pte = pte_offset_map(pmd, addr);
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);
 pte_unmap(pte - 1);
out:
 return ret;
}
