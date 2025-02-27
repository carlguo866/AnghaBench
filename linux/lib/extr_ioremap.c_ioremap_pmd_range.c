
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 int init_mm ;
 scalar_t__ ioremap_pte_range (int *,unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ ioremap_try_huge_pmd (int *,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;

__attribute__((used)) static inline int ioremap_pmd_range(pud_t *pud, unsigned long addr,
  unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_alloc(&init_mm, pud, addr);
 if (!pmd)
  return -ENOMEM;
 do {
  next = pmd_addr_end(addr, end);

  if (ioremap_try_huge_pmd(pmd, addr, next, phys_addr, prot))
   continue;

  if (ioremap_pte_range(pmd, addr, next, phys_addr, prot))
   return -ENOMEM;
 } while (pmd++, phys_addr += (next - addr), addr = next, addr != end);
 return 0;
}
