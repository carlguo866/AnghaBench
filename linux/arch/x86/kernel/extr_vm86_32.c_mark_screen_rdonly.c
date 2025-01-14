
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int down_write (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,int) ;
 int flush_tlb_mm_range (struct mm_struct*,int,int,int ,int) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,int) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (struct mm_struct*,int) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,int) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,int,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_wrprotect (int ) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,int) ;
 int set_pte (int *,int ) ;
 int split_huge_pmd (struct vm_area_struct*,int *,int) ;
 int up_write (int *) ;

__attribute__((used)) static void mark_screen_rdonly(struct mm_struct *mm)
{
 struct vm_area_struct *vma;
 spinlock_t *ptl;
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 int i;

 down_write(&mm->mmap_sem);
 pgd = pgd_offset(mm, 0xA0000);
 if (pgd_none_or_clear_bad(pgd))
  goto out;
 p4d = p4d_offset(pgd, 0xA0000);
 if (p4d_none_or_clear_bad(p4d))
  goto out;
 pud = pud_offset(p4d, 0xA0000);
 if (pud_none_or_clear_bad(pud))
  goto out;
 pmd = pmd_offset(pud, 0xA0000);

 if (pmd_trans_huge(*pmd)) {
  vma = find_vma(mm, 0xA0000);
  split_huge_pmd(vma, pmd, 0xA0000);
 }
 if (pmd_none_or_clear_bad(pmd))
  goto out;
 pte = pte_offset_map_lock(mm, pmd, 0xA0000, &ptl);
 for (i = 0; i < 32; i++) {
  if (pte_present(*pte))
   set_pte(pte, pte_wrprotect(*pte));
  pte++;
 }
 pte_unmap_unlock(pte, ptl);
out:
 up_write(&mm->mmap_sem);
 flush_tlb_mm_range(mm, 0xA0000, 0xA0000 + 32*PAGE_SIZE, PAGE_SHIFT, 0);
}
