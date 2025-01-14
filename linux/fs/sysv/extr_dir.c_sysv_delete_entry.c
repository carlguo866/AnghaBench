
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysv_dir_entry {scalar_t__ inode; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_mtime; int i_ctime; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int SYSV_DIRSIZE ;
 int current_time (struct inode*) ;
 int dir_commit_chunk (struct page*,int,int ) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;
 int sysv_prepare_chunk (struct page*,int,int ) ;

int sysv_delete_entry(struct sysv_dir_entry *de, struct page *page)
{
 struct inode *inode = page->mapping->host;
 char *kaddr = (char*)page_address(page);
 loff_t pos = page_offset(page) + (char *)de - kaddr;
 int err;

 lock_page(page);
 err = sysv_prepare_chunk(page, pos, SYSV_DIRSIZE);
 BUG_ON(err);
 de->inode = 0;
 err = dir_commit_chunk(page, pos, SYSV_DIRSIZE);
 dir_put_page(page);
 inode->i_ctime = inode->i_mtime = current_time(inode);
 mark_inode_dirty(inode);
 return err;
}
