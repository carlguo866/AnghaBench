
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct mmu_notifier_range {scalar_t__ start; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int HPAGE_PMD_NR ;
 unsigned long HPAGE_PMD_SIZE ;
 int MMU_NOTIFY_PROTECTION_VMA ;
 int NUMA_HUGE_PTE_UPDATES ;
 int __split_huge_pmd (struct vm_area_struct*,int *,unsigned long,int,int *) ;
 int change_huge_pmd (struct vm_area_struct*,int *,unsigned long,int ,int) ;
 unsigned long change_pte_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,int,int) ;
 int cond_resched () ;
 int count_vm_numa_events (int ,unsigned long) ;
 scalar_t__ is_swap_pmd (int ) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,unsigned long) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_devmap (int ) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;

__attribute__((used)) static inline unsigned long change_pmd_range(struct vm_area_struct *vma,
  pud_t *pud, unsigned long addr, unsigned long end,
  pgprot_t newprot, int dirty_accountable, int prot_numa)
{
 pmd_t *pmd;
 unsigned long next;
 unsigned long pages = 0;
 unsigned long nr_huge_updates = 0;
 struct mmu_notifier_range range;

 range.start = 0;

 pmd = pmd_offset(pud, addr);
 do {
  unsigned long this_pages;

  next = pmd_addr_end(addr, end);
  if (!is_swap_pmd(*pmd) && !pmd_trans_huge(*pmd) && !pmd_devmap(*pmd)
    && pmd_none_or_clear_bad(pmd))
   goto next;


  if (!range.start) {
   mmu_notifier_range_init(&range,
    MMU_NOTIFY_PROTECTION_VMA, 0,
    vma, vma->vm_mm, addr, end);
   mmu_notifier_invalidate_range_start(&range);
  }

  if (is_swap_pmd(*pmd) || pmd_trans_huge(*pmd) || pmd_devmap(*pmd)) {
   if (next - addr != HPAGE_PMD_SIZE) {
    __split_huge_pmd(vma, pmd, addr, 0, ((void*)0));
   } else {
    int nr_ptes = change_huge_pmd(vma, pmd, addr,
      newprot, prot_numa);

    if (nr_ptes) {
     if (nr_ptes == HPAGE_PMD_NR) {
      pages += HPAGE_PMD_NR;
      nr_huge_updates++;
     }


     goto next;
    }
   }

  }
  this_pages = change_pte_range(vma, pmd, addr, next, newprot,
     dirty_accountable, prot_numa);
  pages += this_pages;
next:
  cond_resched();
 } while (pmd++, addr = next, addr != end);

 if (range.start)
  mmu_notifier_invalidate_range_end(&range);

 if (nr_huge_updates)
  count_vm_numa_events(NUMA_HUGE_PTE_UPDATES, nr_huge_updates);
 return pages;
}
