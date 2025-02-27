
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct page {int private; int lru; } ;
struct blk_mq_tags {struct request** static_rqs; int page_list; } ;
struct blk_mq_tag_set {int numa_node; scalar_t__ cmd_size; int * map; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 size_t HCTX_TYPE_DEFAULT ;
 int INIT_LIST_HEAD (int *) ;
 int NUMA_NO_NODE ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 struct page* alloc_pages_node (int,int,int) ;
 int blk_mq_free_rqs (struct blk_mq_tag_set*,struct blk_mq_tags*,unsigned int) ;
 int blk_mq_hw_queue_to_node (int *,unsigned int) ;
 scalar_t__ blk_mq_init_request (struct blk_mq_tag_set*,struct request*,unsigned int,int) ;
 int cache_line_size () ;
 int kmemleak_alloc (void*,size_t,int,int) ;
 int list_add_tail (int *,int *) ;
 int min (unsigned int,unsigned int) ;
 size_t order_to_size (int) ;
 void* page_address (struct page*) ;
 size_t round_up (scalar_t__,int ) ;

int blk_mq_alloc_rqs(struct blk_mq_tag_set *set, struct blk_mq_tags *tags,
       unsigned int hctx_idx, unsigned int depth)
{
 unsigned int i, j, entries_per_page, max_order = 4;
 size_t rq_size, left;
 int node;

 node = blk_mq_hw_queue_to_node(&set->map[HCTX_TYPE_DEFAULT], hctx_idx);
 if (node == NUMA_NO_NODE)
  node = set->numa_node;

 INIT_LIST_HEAD(&tags->page_list);





 rq_size = round_up(sizeof(struct request) + set->cmd_size,
    cache_line_size());
 left = rq_size * depth;

 for (i = 0; i < depth; ) {
  int this_order = max_order;
  struct page *page;
  int to_do;
  void *p;

  while (this_order && left < order_to_size(this_order - 1))
   this_order--;

  do {
   page = alloc_pages_node(node,
    GFP_NOIO | __GFP_NOWARN | __GFP_NORETRY | __GFP_ZERO,
    this_order);
   if (page)
    break;
   if (!this_order--)
    break;
   if (order_to_size(this_order) < rq_size)
    break;
  } while (1);

  if (!page)
   goto fail;

  page->private = this_order;
  list_add_tail(&page->lru, &tags->page_list);

  p = page_address(page);




  kmemleak_alloc(p, order_to_size(this_order), 1, GFP_NOIO);
  entries_per_page = order_to_size(this_order) / rq_size;
  to_do = min(entries_per_page, depth - i);
  left -= to_do * rq_size;
  for (j = 0; j < to_do; j++) {
   struct request *rq = p;

   tags->static_rqs[i] = rq;
   if (blk_mq_init_request(set, rq, hctx_idx, node)) {
    tags->static_rqs[i] = ((void*)0);
    goto fail;
   }

   p += rq_size;
   i++;
  }
 }
 return 0;

fail:
 blk_mq_free_rqs(set, tags, hctx_idx);
 return -ENOMEM;
}
