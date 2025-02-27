
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int pageblock_nr_pages ;
 int pageblock_order ;
 int set_pageblock_migratetype (struct page*,int) ;

__attribute__((used)) static void change_pageblock_range(struct page *pageblock_page,
     int start_order, int migratetype)
{
 int nr_pageblocks = 1 << (start_order - pageblock_order);

 while (nr_pageblocks--) {
  set_pageblock_migratetype(pageblock_page, migratetype);
  pageblock_page += pageblock_nr_pages;
 }
}
