
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {unsigned long i_blkbits; int i_mapping; } ;
struct buffer_head {int dummy; } ;
typedef unsigned long pgoff_t ;


 int EBUSY ;
 int ENOENT ;
 unsigned long PAGE_CACHE_SHIFT ;
 int PageDirty (struct page*) ;
 struct page* find_lock_page (int ,unsigned long) ;
 scalar_t__ invalidate_inode_pages2_range (int ,unsigned long,unsigned long) ;
 int nilfs_forget_buffer (struct buffer_head*) ;
 struct buffer_head* nilfs_page_get_nth_block (struct page*,unsigned long) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

int nilfs_mdt_forget_block(struct inode *inode, unsigned long block)
{
 pgoff_t index = (pgoff_t)block >>
  (PAGE_CACHE_SHIFT - inode->i_blkbits);
 struct page *page;
 unsigned long first_block;
 int ret = 0;
 int still_dirty;

 page = find_lock_page(inode->i_mapping, index);
 if (!page)
  return -ENOENT;

 wait_on_page_writeback(page);

 first_block = (unsigned long)index <<
  (PAGE_CACHE_SHIFT - inode->i_blkbits);
 if (page_has_buffers(page)) {
  struct buffer_head *bh;

  bh = nilfs_page_get_nth_block(page, block - first_block);
  nilfs_forget_buffer(bh);
 }
 still_dirty = PageDirty(page);
 unlock_page(page);
 page_cache_release(page);

 if (still_dirty ||
     invalidate_inode_pages2_range(inode->i_mapping, index, index) != 0)
  ret = -EBUSY;
 return ret;
}
