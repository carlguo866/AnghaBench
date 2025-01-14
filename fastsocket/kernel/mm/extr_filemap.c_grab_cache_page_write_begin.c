
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 unsigned int AOP_FLAG_NOFS ;
 int EEXIST ;
 int GFP_KERNEL ;
 int __GFP_FS ;
 struct page* __page_cache_alloc (int) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int) ;
 struct page* find_lock_page (struct address_space*,int ) ;
 scalar_t__ likely (struct page*) ;
 int mapping_gfp_mask (struct address_space*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;
 int wait_for_stable_page (struct page*) ;

struct page *grab_cache_page_write_begin(struct address_space *mapping,
     pgoff_t index, unsigned flags)
{
 int status;
 struct page *page;
 gfp_t gfp_notmask = 0;
 if (flags & AOP_FLAG_NOFS)
  gfp_notmask = __GFP_FS;
repeat:
 page = find_lock_page(mapping, index);
 if (likely(page))
  goto found;

 page = __page_cache_alloc(mapping_gfp_mask(mapping) & ~gfp_notmask);
 if (!page)
  return ((void*)0);
 status = add_to_page_cache_lru(page, mapping, index,
      GFP_KERNEL & ~gfp_notmask);
 if (unlikely(status)) {
  page_cache_release(page);
  if (status == -EEXIST)
   goto repeat;
  return ((void*)0);
 }
found:
 wait_for_stable_page(page);
 return page;
}
