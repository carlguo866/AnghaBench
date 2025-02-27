
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 int _PAGE_NX ;
 int __flush_tlb_all () ;
 int __p4d (int) ;
 int __pmd (int) ;
 int __pte (int) ;
 int __pud (int) ;
 scalar_t__ __va (int ) ;
 int core_restore_code ;
 scalar_t__ get_safe_page (int ) ;
 int memcpy (void*,int ,int ) ;
 scalar_t__ p4d_large (int ) ;
 int * p4d_offset (int *,scalar_t__) ;
 int p4d_val (int ) ;
 int pgd_index (scalar_t__) ;
 scalar_t__ pmd_large (int ) ;
 int * pmd_offset (int *,scalar_t__) ;
 int pmd_val (int ) ;
 int * pte_offset_kernel (int *,scalar_t__) ;
 int pte_val (int ) ;
 scalar_t__ pud_large (int ) ;
 int * pud_offset (int *,scalar_t__) ;
 int pud_val (int ) ;
 int read_cr3_pa () ;
 scalar_t__ relocated_restore_code ;
 int set_p4d (int *,int ) ;
 int set_pmd (int *,int ) ;
 int set_pte (int *,int ) ;
 int set_pud (int *,int ) ;

int relocate_restore_code(void)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 relocated_restore_code = get_safe_page(GFP_ATOMIC);
 if (!relocated_restore_code)
  return -ENOMEM;

 memcpy((void *)relocated_restore_code, core_restore_code, PAGE_SIZE);


 pgd = (pgd_t *)__va(read_cr3_pa()) +
  pgd_index(relocated_restore_code);
 p4d = p4d_offset(pgd, relocated_restore_code);
 if (p4d_large(*p4d)) {
  set_p4d(p4d, __p4d(p4d_val(*p4d) & ~_PAGE_NX));
  goto out;
 }
 pud = pud_offset(p4d, relocated_restore_code);
 if (pud_large(*pud)) {
  set_pud(pud, __pud(pud_val(*pud) & ~_PAGE_NX));
  goto out;
 }
 pmd = pmd_offset(pud, relocated_restore_code);
 if (pmd_large(*pmd)) {
  set_pmd(pmd, __pmd(pmd_val(*pmd) & ~_PAGE_NX));
  goto out;
 }
 pte = pte_offset_kernel(pmd, relocated_restore_code);
 set_pte(pte, __pte(pte_val(*pte) & ~_PAGE_NX));
out:
 __flush_tlb_all();
 return 0;
}
