
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw_queue {int queue_length; int qe_size; int pagesize; int toggle_state; struct ehea_page** queue_pages; scalar_t__ current_q_offset; } ;
struct ehea_page {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int const PAGE_SIZE ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 struct ehea_page** kmalloc_array (int const,int,int ) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int hw_queue_ctor(struct hw_queue *queue, const u32 nr_of_pages,
     const u32 pagesize, const u32 qe_size)
{
 int pages_per_kpage = PAGE_SIZE / pagesize;
 int i, k;

 if ((pagesize > PAGE_SIZE) || (!pages_per_kpage)) {
  pr_err("pagesize conflict! kernel pagesize=%d, ehea pagesize=%d\n",
         (int)PAGE_SIZE, (int)pagesize);
  return -EINVAL;
 }

 queue->queue_length = nr_of_pages * pagesize;
 queue->queue_pages = kmalloc_array(nr_of_pages, sizeof(void *),
        GFP_KERNEL);
 if (!queue->queue_pages)
  return -ENOMEM;






 i = 0;
 while (i < nr_of_pages) {
  u8 *kpage = (u8 *)get_zeroed_page(GFP_KERNEL);
  if (!kpage)
   goto out_nomem;
  for (k = 0; k < pages_per_kpage && i < nr_of_pages; k++) {
   (queue->queue_pages)[i] = (struct ehea_page *)kpage;
   kpage += pagesize;
   i++;
  }
 }

 queue->current_q_offset = 0;
 queue->qe_size = qe_size;
 queue->pagesize = pagesize;
 queue->toggle_state = 1;

 return 0;
out_nomem:
 for (i = 0; i < nr_of_pages; i += pages_per_kpage) {
  if (!(queue->queue_pages)[i])
   break;
  free_page((unsigned long)(queue->queue_pages)[i]);
 }
 return -ENOMEM;
}
