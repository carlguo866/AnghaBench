
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;


 int EAGAIN ;
 int EIO ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int btrfs_readpage (int *,struct page*) ;
 int lock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int prepare_uptodate_page(struct inode *inode,
     struct page *page, u64 pos,
     bool force_uptodate)
{
 int ret = 0;

 if (((pos & (PAGE_SIZE - 1)) || force_uptodate) &&
     !PageUptodate(page)) {
  ret = btrfs_readpage(((void*)0), page);
  if (ret)
   return ret;
  lock_page(page);
  if (!PageUptodate(page)) {
   unlock_page(page);
   return -EIO;
  }
  if (page->mapping != inode->i_mapping) {
   unlock_page(page);
   return -EAGAIN;
  }
 }
 return 0;
}
