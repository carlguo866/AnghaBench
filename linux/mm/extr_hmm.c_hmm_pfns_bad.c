
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mm_walk {struct hmm_vma_walk* private; } ;
struct hmm_vma_walk {struct hmm_range* range; } ;
struct hmm_range {unsigned long start; int * values; int * pfns; } ;


 size_t HMM_PFN_ERROR ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static int hmm_pfns_bad(unsigned long addr,
   unsigned long end,
   struct mm_walk *walk)
{
 struct hmm_vma_walk *hmm_vma_walk = walk->private;
 struct hmm_range *range = hmm_vma_walk->range;
 uint64_t *pfns = range->pfns;
 unsigned long i;

 i = (addr - range->start) >> PAGE_SHIFT;
 for (; addr < end; addr += PAGE_SIZE, i++)
  pfns[i] = range->values[HMM_PFN_ERROR];

 return 0;
}
