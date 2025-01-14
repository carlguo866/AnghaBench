
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;


 int PAGE_SHIFT ;
 int PTE_FLAGS_MASK ;
 int PTE_PFN_MASK ;
 int _PAGE_PRESENT ;
 scalar_t__ mfn_to_pfn (unsigned long) ;

__attribute__((used)) static pteval_t pte_mfn_to_pfn(pteval_t val)
{
 if (val & _PAGE_PRESENT) {
  unsigned long mfn = (val & PTE_PFN_MASK) >> PAGE_SHIFT;
  pteval_t flags = val & PTE_FLAGS_MASK;
  val = ((pteval_t)mfn_to_pfn(mfn) << PAGE_SHIFT) | flags;
 }

 return val;
}
