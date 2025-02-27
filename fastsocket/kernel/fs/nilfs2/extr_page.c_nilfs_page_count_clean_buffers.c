
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 int buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;

unsigned nilfs_page_count_clean_buffers(struct page *page,
     unsigned from, unsigned to)
{
 unsigned block_start, block_end;
 struct buffer_head *bh, *head;
 unsigned nc = 0;

 for (bh = head = page_buffers(page), block_start = 0;
      bh != head || !block_start;
      block_start = block_end, bh = bh->b_this_page) {
  block_end = block_start + bh->b_size;
  if (block_end > from && block_start < to && !buffer_dirty(bh))
   nc++;
 }
 return nc;
}
