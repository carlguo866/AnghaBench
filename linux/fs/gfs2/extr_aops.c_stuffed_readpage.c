
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int index; } ;
struct gfs2_inode {int i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int brelse (struct buffer_head*) ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ gfs2_max_stuffed_size (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 scalar_t__ i_size_read (int *) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int memset (void*,int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int zero_user (struct page*,int ,scalar_t__) ;

__attribute__((used)) static int stuffed_readpage(struct gfs2_inode *ip, struct page *page)
{
 struct buffer_head *dibh;
 u64 dsize = i_size_read(&ip->i_inode);
 void *kaddr;
 int error;






 if (unlikely(page->index)) {
  zero_user(page, 0, PAGE_SIZE);
  SetPageUptodate(page);
  return 0;
 }

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;

 kaddr = kmap_atomic(page);
 if (dsize > gfs2_max_stuffed_size(ip))
  dsize = gfs2_max_stuffed_size(ip);
 memcpy(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
 memset(kaddr + dsize, 0, PAGE_SIZE - dsize);
 kunmap_atomic(kaddr);
 flush_dcache_page(page);
 brelse(dibh);
 SetPageUptodate(page);

 return 0;
}
