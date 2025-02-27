
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;


 int BUG_ON (scalar_t__) ;
 int EBUSY ;
 scalar_t__ PAGEVEC_SIZE ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int WARN_ON (int) ;
 int cond_resched () ;
 int do_launder_page (struct address_space*,struct page*) ;
 int invalidate_complete_page2 (struct address_space*,struct page*) ;
 int lock_page (struct page*) ;
 int mem_cgroup_uncharge_end () ;
 int mem_cgroup_uncharge_start () ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ page_mapped (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 scalar_t__ pagevec_lookup (struct pagevec*,struct address_space*,scalar_t__,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;
 int unlock_page (struct page*) ;
 int unmap_mapping_range (struct address_space*,int,int,int ) ;
 int wait_on_page_writeback (struct page*) ;

int invalidate_inode_pages2_range(struct address_space *mapping,
      pgoff_t start, pgoff_t end)
{
 struct pagevec pvec;
 pgoff_t index;
 int i;
 int ret = 0;
 int ret2 = 0;
 int did_range_unmap = 0;

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

   lock_page(page);
   WARN_ON(page->index != index);
   if (page->mapping != mapping) {
    unlock_page(page);
    continue;
   }
   wait_on_page_writeback(page);
   if (page_mapped(page)) {
    if (!did_range_unmap) {



     unmap_mapping_range(mapping,
        (loff_t)index << PAGE_CACHE_SHIFT,
        (loff_t)(1 + end - index)
        << PAGE_CACHE_SHIFT,
         0);
     did_range_unmap = 1;
    } else {



     unmap_mapping_range(mapping,
        (loff_t)index << PAGE_CACHE_SHIFT,
        PAGE_CACHE_SIZE, 0);
    }
   }
   BUG_ON(page_mapped(page));
   ret2 = do_launder_page(mapping, page);
   if (ret2 == 0) {
    if (!invalidate_complete_page2(mapping, page))
     ret2 = -EBUSY;
   }
   if (ret2 < 0)
    ret = ret2;
   unlock_page(page);
  }
  pagevec_release(&pvec);
  mem_cgroup_uncharge_end();
  cond_resched();
  index++;
 }
 return ret;
}
