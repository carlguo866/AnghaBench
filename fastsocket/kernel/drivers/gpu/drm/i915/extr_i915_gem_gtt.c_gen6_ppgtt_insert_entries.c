
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {unsigned int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct i915_hw_ppgtt {int dev; int * pt_pages; } ;
typedef int gtt_pte_t ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
typedef scalar_t__ dma_addr_t ;


 unsigned int I915_PPGTT_PT_ENTRIES ;
 int KM_USER0 ;
 unsigned int PAGE_SHIFT ;
 int gen6_pte_encode (int ,scalar_t__,int) ;
 int * kmap_atomic (int ,int ) ;
 int kunmap_atomic (int *,int ) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static void gen6_ppgtt_insert_entries(struct i915_hw_ppgtt *ppgtt,
          struct sg_table *pages,
          unsigned first_entry,
          enum i915_cache_level cache_level)
{
 gtt_pte_t *pt_vaddr;
 unsigned act_pd = first_entry / I915_PPGTT_PT_ENTRIES;
 unsigned first_pte = first_entry % I915_PPGTT_PT_ENTRIES;
 unsigned i, j, m, segment_len;
 dma_addr_t page_addr;
 struct scatterlist *sg;


 sg = pages->sgl;
 i = 0;
 segment_len = sg_dma_len(sg) >> PAGE_SHIFT;
 m = 0;

 while (i < pages->nents) {
  pt_vaddr = kmap_atomic(ppgtt->pt_pages[act_pd], KM_USER0);

  for (j = first_pte; j < I915_PPGTT_PT_ENTRIES; j++) {
   page_addr = sg_dma_address(sg) + (m << PAGE_SHIFT);
   pt_vaddr[j] = gen6_pte_encode(ppgtt->dev, page_addr,
            cache_level);


   if (++m == segment_len) {
    if (++i == pages->nents)
     break;

    sg = sg_next(sg);
    segment_len = sg_dma_len(sg) >> PAGE_SHIFT;
    m = 0;
   }
  }

  kunmap_atomic(pt_vaddr, KM_USER0);

  first_pte = 0;
  act_pd++;
 }
}
