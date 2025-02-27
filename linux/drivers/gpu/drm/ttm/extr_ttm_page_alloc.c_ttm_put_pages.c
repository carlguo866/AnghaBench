
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_page_pool {unsigned int npages; int lock; int list; } ;
struct page {int lru; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_3__ {unsigned int max_size; } ;
struct TYPE_4__ {TYPE_1__ options; } ;


 unsigned int HPAGE_PMD_NR ;
 unsigned int HPAGE_PMD_ORDER ;
 unsigned int NUM_PAGES_TO_ALLOC ;
 int TTM_PAGE_FLAG_DMA32 ;
 int __free_pages (struct page*,unsigned int) ;
 TYPE_2__* _manager ;
 int list_add_tail (int *,int *) ;
 int page_count (struct page*) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ttm_page_pool* ttm_get_pool (int,int,int) ;
 int ttm_page_pool_free (struct ttm_page_pool*,unsigned int,int) ;

__attribute__((used)) static void ttm_put_pages(struct page **pages, unsigned npages, int flags,
     enum ttm_caching_state cstate)
{
 struct ttm_page_pool *pool = ttm_get_pool(flags, 0, cstate);



 unsigned long irq_flags;
 unsigned i;

 if (pool == ((void*)0)) {

  i = 0;
  while (i < npages) {



   unsigned order = 0, j;

   if (!pages[i]) {
    ++i;
    continue;
   }
   if (page_count(pages[i]) != 1)
    pr_err("Erroneous page count. Leaking pages.\n");
   __free_pages(pages[i], order);

   j = 1 << order;
   while (j) {
    pages[i++] = ((void*)0);
    --j;
   }
  }
  return;
 }

 i = 0;
 spin_lock_irqsave(&pool->lock, irq_flags);
 while (i < npages) {
  if (pages[i]) {
   if (page_count(pages[i]) != 1)
    pr_err("Erroneous page count. Leaking pages.\n");
   list_add_tail(&pages[i]->lru, &pool->list);
   pages[i] = ((void*)0);
   pool->npages++;
  }
  ++i;
 }

 npages = 0;
 if (pool->npages > _manager->options.max_size) {
  npages = pool->npages - _manager->options.max_size;


  if (npages < NUM_PAGES_TO_ALLOC)
   npages = NUM_PAGES_TO_ALLOC;
 }
 spin_unlock_irqrestore(&pool->lock, irq_flags);
 if (npages)
  ttm_page_pool_free(pool, npages, 0);
}
