
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_write_ctxt {int w_num_pages; int ** w_pages; int w_dealloc; int w_handle; int w_di_bh; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
struct TYPE_5__ {scalar_t__ ip_blkno; } ;
struct TYPE_4__ {int s_blocksize_bits; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int INODE_CACHE (struct inode*) ;
 int ML_ERROR ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (TYPE_1__*) ;
 int mlog (int ,char*,unsigned long long,int) ;
 int mlog_bug_on_msg (int,char*,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_add_inode_data (int ,struct inode*,int*,int,int,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int *) ;
 void* ocfs2_clusters_to_blocks (TYPE_1__*,int) ;
 int ocfs2_get_clusters (struct inode*,int,int*,int *,int *) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,int ) ;
 int ocfs2_mark_extent_written (struct inode*,struct ocfs2_extent_tree*,int ,int,int,int,struct ocfs2_alloc_context*,int *) ;
 int ocfs2_prepare_page_for_write (struct inode*,int*,struct ocfs2_write_ctxt*,int *,int,int,unsigned int,unsigned int) ;
 int ocfs2_write_failure (struct inode*,struct ocfs2_write_ctxt*,int,unsigned int) ;

__attribute__((used)) static int ocfs2_write_cluster(struct address_space *mapping,
          u32 *phys, unsigned int new,
          unsigned int clear_unwritten,
          unsigned int should_zero,
          struct ocfs2_alloc_context *data_ac,
          struct ocfs2_alloc_context *meta_ac,
          struct ocfs2_write_ctxt *wc, u32 cpos,
          loff_t user_pos, unsigned user_len)
{
 int ret, i;
 u64 p_blkno;
 struct inode *inode = mapping->host;
 struct ocfs2_extent_tree et;
 int bpc = ocfs2_clusters_to_blocks(inode->i_sb, 1);

 if (new) {
  u32 tmp_pos;





  tmp_pos = cpos;
  ret = ocfs2_add_inode_data(OCFS2_SB(inode->i_sb), inode,
        &tmp_pos, 1, !clear_unwritten,
        wc->w_di_bh, wc->w_handle,
        data_ac, meta_ac, ((void*)0));
  mlog_bug_on_msg(ret == -EAGAIN,
    "Inode %llu: EAGAIN return during allocation.\n",
    (unsigned long long)OCFS2_I(inode)->ip_blkno);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 } else if (clear_unwritten) {
  ocfs2_init_dinode_extent_tree(&et, INODE_CACHE(inode),
           wc->w_di_bh);
  ret = ocfs2_mark_extent_written(inode, &et,
      wc->w_handle, cpos, 1, *phys,
      meta_ac, &wc->w_dealloc);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }





 ret = ocfs2_get_clusters(inode, cpos, phys, ((void*)0), ((void*)0));
 if (ret < 0) {
  mlog(ML_ERROR, "Get physical blkno failed for inode %llu, "
       "at logical cluster %u",
       (unsigned long long)OCFS2_I(inode)->ip_blkno, cpos);
  goto out;
 }

 BUG_ON(*phys == 0);

 p_blkno = ocfs2_clusters_to_blocks(inode->i_sb, *phys);
 if (!should_zero)
  p_blkno += (user_pos >> inode->i_sb->s_blocksize_bits) & (u64)(bpc - 1);

 for(i = 0; i < wc->w_num_pages; i++) {
  int tmpret;


  if (wc->w_pages[i] == ((void*)0)) {
   p_blkno++;
   continue;
  }

  tmpret = ocfs2_prepare_page_for_write(inode, &p_blkno, wc,
            wc->w_pages[i], cpos,
            user_pos, user_len,
            should_zero);
  if (tmpret) {
   mlog_errno(tmpret);
   if (ret == 0)
    ret = tmpret;
  }
 }




 if (ret && new)
  ocfs2_write_failure(inode, wc, user_pos, user_len);

out:

 return ret;
}
