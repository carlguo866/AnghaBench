
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {char* b_data; struct page* b_page; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 char* page_address (struct page*) ;

void set_bh_page(struct buffer_head *bh,
  struct page *page, unsigned long offset)
{
 bh->b_page = page;
 BUG_ON(offset >= PAGE_SIZE);
 if (PageHighMem(page))



  bh->b_data = (char *)(0 + offset);
 else
  bh->b_data = page_address(page) + offset;
}
