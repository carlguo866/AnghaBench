
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;
typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;


 int IS_ALIGNED (unsigned long,unsigned long) ;
 unsigned long PMD_SIZE ;
 int ioremap_pmd_enabled () ;
 int pmd_free_pte_page (int *,unsigned long) ;
 scalar_t__ pmd_present (int ) ;
 int pmd_set_huge (int *,unsigned long,int ) ;

__attribute__((used)) static int ioremap_try_huge_pmd(pmd_t *pmd, unsigned long addr,
    unsigned long end, phys_addr_t phys_addr,
    pgprot_t prot)
{
 if (!ioremap_pmd_enabled())
  return 0;

 if ((end - addr) != PMD_SIZE)
  return 0;

 if (!IS_ALIGNED(addr, PMD_SIZE))
  return 0;

 if (!IS_ALIGNED(phys_addr, PMD_SIZE))
  return 0;

 if (pmd_present(*pmd) && !pmd_free_pte_page(pmd, addr))
  return 0;

 return pmd_set_huge(pmd, phys_addr, prot);
}
