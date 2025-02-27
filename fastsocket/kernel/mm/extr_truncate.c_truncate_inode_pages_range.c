
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int index; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 scalar_t__ PAGEVEC_SIZE ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageWriteback (struct page*) ;
 int WARN_ON (int) ;
 int cond_resched () ;
 struct page* find_lock_page (struct address_space*,int const) ;
 int lock_page (struct page*) ;
 int mem_cgroup_uncharge_end () ;
 int mem_cgroup_uncharge_start () ;
 scalar_t__ min (int,int) ;
 int page_cache_release (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 scalar_t__ pagevec_lookup (struct pagevec*,struct address_space*,int,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;
 int truncate_inode_page (struct address_space*,struct page*) ;
 int truncate_partial_page (struct page*,unsigned int const) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

void truncate_inode_pages_range(struct address_space *mapping,
    loff_t lstart, loff_t lend)
{
 const pgoff_t start = (lstart + PAGE_CACHE_SIZE-1) >> PAGE_CACHE_SHIFT;
 const unsigned partial = lstart & (PAGE_CACHE_SIZE - 1);
 struct pagevec pvec;
 pgoff_t index;
 pgoff_t end;
 int i;

 if (mapping->nrpages == 0)
  return;

 BUG_ON((lend & (PAGE_CACHE_SIZE - 1)) != (PAGE_CACHE_SIZE - 1));
 end = (lend >> PAGE_CACHE_SHIFT);

 pagevec_init(&pvec, 0);
 index = start;
 while (index <= end && pagevec_lookup(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
  mem_cgroup_uncharge_start();
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = page->index;
   if (index > end)
    break;

   if (!trylock_page(page))
    continue;
   WARN_ON(page->index != index);
   if (PageWriteback(page)) {
    unlock_page(page);
    continue;
   }
   truncate_inode_page(mapping, page);
   unlock_page(page);
  }
  pagevec_release(&pvec);
  mem_cgroup_uncharge_end();
  cond_resched();
  index++;
 }

 if (partial) {
  struct page *page = find_lock_page(mapping, start - 1);
  if (page) {
   wait_on_page_writeback(page);
   truncate_partial_page(page, partial);
   unlock_page(page);
   page_cache_release(page);
  }
 }

 index = start;
 for ( ; ; ) {
  cond_resched();
  if (!pagevec_lookup(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
   if (index == start)
    break;
   index = start;
   continue;
  }
  if (index == start && pvec.pages[0]->index > end) {
   pagevec_release(&pvec);
   break;
  }
  mem_cgroup_uncharge_start();
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = page->index;
   if (index > end)
    break;

   lock_page(page);
   WARN_ON(page->index != index);
   wait_on_page_writeback(page);
   truncate_inode_page(mapping, page);
   unlock_page(page);
  }
  pagevec_release(&pvec);
  mem_cgroup_uncharge_end();
  index++;
 }
}
