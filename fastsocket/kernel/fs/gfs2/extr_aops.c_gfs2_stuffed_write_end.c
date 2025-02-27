
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct page {int dummy; } ;
struct inode {unsigned int i_size; } ;
struct gfs2_sbd {struct inode* sd_rindex; scalar_t__ sd_rindex_uptodate; struct inode* sd_statfs_inode; } ;
struct gfs2_inode {int i_gh; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {unsigned char* b_data; int b_size; } ;
typedef unsigned int loff_t ;


 int BUG_ON (int) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int KM_USER0 ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int adjust_fs_space (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int flush_dcache_page (struct page*) ;
 int gfs2_glock_dq (int *) ;
 int gfs2_holder_uninit (int *) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int i_size_write (struct inode*,unsigned int) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (unsigned char*,void*,unsigned int) ;
 int memset (void*,int ,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int gfs2_stuffed_write_end(struct inode *inode, struct buffer_head *dibh,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 u64 to = pos + copied;
 void *kaddr;
 unsigned char *buf = dibh->b_data + sizeof(struct gfs2_dinode);

 BUG_ON((pos + len) > (dibh->b_size - sizeof(struct gfs2_dinode)));
 kaddr = kmap_atomic(page, KM_USER0);
 memcpy(buf + pos, kaddr + pos, copied);
 memset(kaddr + pos + copied, 0, len - copied);
 flush_dcache_page(page);
 kunmap_atomic(kaddr, KM_USER0);

 if (!PageUptodate(page))
  SetPageUptodate(page);
 unlock_page(page);
 page_cache_release(page);

 if (copied) {
  if (inode->i_size < to)
   i_size_write(inode, to);
  mark_inode_dirty(inode);
 }

 if (inode == sdp->sd_rindex) {
  adjust_fs_space(inode);
  sdp->sd_rindex_uptodate = 0;
 }

 brelse(dibh);
 gfs2_trans_end(sdp);
 if (inode == sdp->sd_rindex) {
  gfs2_glock_dq(&m_ip->i_gh);
  gfs2_holder_uninit(&m_ip->i_gh);
 }
 gfs2_glock_dq(&ip->i_gh);
 gfs2_holder_uninit(&ip->i_gh);
 return copied;
}
