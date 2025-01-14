
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {struct address_space* mapping; } ;
struct address_space {scalar_t__ nrpages; scalar_t__ nrexceptional; } ;
typedef scalar_t__ pgoff_t ;


 int BUG_ON (scalar_t__) ;
 int EBUSY ;
 int PAGEVEC_SIZE ;
 int WARN_ON (int) ;
 int cleancache_invalidate_inode (struct address_space*) ;
 int cond_resched () ;
 scalar_t__ dax_mapping (struct address_space*) ;
 int do_launder_page (struct address_space*,struct page*) ;
 int invalidate_complete_page2 (struct address_space*,struct page*) ;
 int invalidate_exceptional_entry2 (struct address_space*,scalar_t__,struct page*) ;
 int lock_page (struct page*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ page_mapped (struct page*) ;
 scalar_t__ page_to_index (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_lookup_entries (struct pagevec*,struct address_space*,scalar_t__,scalar_t__,scalar_t__*) ;
 int pagevec_release (struct pagevec*) ;
 int pagevec_remove_exceptionals (struct pagevec*) ;
 int unlock_page (struct page*) ;
 int unmap_mapping_pages (struct address_space*,scalar_t__,scalar_t__,int) ;
 int wait_on_page_writeback (struct page*) ;
 scalar_t__ xa_is_value (struct page*) ;

int invalidate_inode_pages2_range(struct address_space *mapping,
      pgoff_t start, pgoff_t end)
{
 pgoff_t indices[PAGEVEC_SIZE];
 struct pagevec pvec;
 pgoff_t index;
 int i;
 int ret = 0;
 int ret2 = 0;
 int did_range_unmap = 0;

 if (mapping->nrpages == 0 && mapping->nrexceptional == 0)
  goto out;

 pagevec_init(&pvec);
 index = start;
 while (index <= end && pagevec_lookup_entries(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1,
   indices)) {
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = indices[i];
   if (index > end)
    break;

   if (xa_is_value(page)) {
    if (!invalidate_exceptional_entry2(mapping,
           index, page))
     ret = -EBUSY;
    continue;
   }

   lock_page(page);
   WARN_ON(page_to_index(page) != index);
   if (page->mapping != mapping) {
    unlock_page(page);
    continue;
   }
   wait_on_page_writeback(page);
   if (page_mapped(page)) {
    if (!did_range_unmap) {



     unmap_mapping_pages(mapping, index,
      (1 + end - index), 0);
     did_range_unmap = 1;
    } else {



     unmap_mapping_pages(mapping, index,
        1, 0);
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
  pagevec_remove_exceptionals(&pvec);
  pagevec_release(&pvec);
  cond_resched();
  index++;
 }







 if (dax_mapping(mapping)) {
  unmap_mapping_pages(mapping, start, end - start + 1, 0);
 }
out:
 cleancache_invalidate_inode(mapping);
 return ret;
}
