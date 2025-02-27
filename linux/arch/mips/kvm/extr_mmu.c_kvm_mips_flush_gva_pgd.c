
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int PTRS_PER_PGD ;
 scalar_t__ kvm_mips_flush_gva_pud (int *,unsigned long,unsigned long) ;
 int pgd_clear (int *) ;
 int pgd_index (unsigned long) ;
 int pgd_present (int ) ;
 int pud_free (int *,int *) ;
 int * pud_offset (int *,int ) ;

__attribute__((used)) static bool kvm_mips_flush_gva_pgd(pgd_t *pgd, unsigned long start_gva,
       unsigned long end_gva)
{
 pud_t *pud;
 unsigned long end = ~0ul;
 int i_min = pgd_index(start_gva);
 int i_max = pgd_index(end_gva);
 bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PGD - 1);
 int i;

 for (i = i_min; i <= i_max; ++i, start_gva = 0) {
  if (!pgd_present(pgd[i]))
   continue;

  pud = pud_offset(pgd + i, 0);
  if (i == i_max)
   end = end_gva;

  if (kvm_mips_flush_gva_pud(pud, start_gva, end)) {
   pgd_clear(pgd + i);
   pud_free(((void*)0), pud);
  } else {
   safe_to_remove = 0;
  }
 }
 return safe_to_remove;
}
