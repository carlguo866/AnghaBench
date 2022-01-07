
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct ocfs2_write_ctxt {unsigned int w_clen; scalar_t__ w_target_locked; struct page* w_target_page; int w_cpos; TYPE_3__* w_di_bh; int * w_handle; TYPE_2__* w_desc; } ;
struct ocfs2_super {int sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct TYPE_6__ {int i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; int i_clusters; } ;
struct ocfs2_alloc_context {int * ac_resv; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int ocfs2_write_type_t ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_9__ {int ip_la_data_resv; scalar_t__ ip_blkno; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_7__ {scalar_t__ c_needs_zero; } ;


 int BUG_ON (struct page*) ;
 int EAGAIN ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_WRITE_DIRECT ;
 int PTR_ERR (int *) ;
 int UINT_MAX ;
 int dquot_alloc_space_nodirty (struct inode*,int ) ;
 int dquot_free_space (struct inode*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_alloc_write_ctxt (struct ocfs2_write_ctxt**,struct ocfs2_super*,int ,unsigned int,int ,struct buffer_head*) ;
 int ocfs2_calc_extend_credits (int ,int *) ;
 int ocfs2_check_range_for_refcount (struct inode*,int ,unsigned int) ;
 int ocfs2_clusters_to_bytes (int ,unsigned int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_expand_nonsparse_inode (struct inode*,struct buffer_head*,int ,unsigned int,struct ocfs2_write_ctxt*) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_free_write_ctxt (struct inode*,struct ocfs2_write_ctxt*) ;
 int ocfs2_grab_pages_for_write (struct address_space*,struct ocfs2_write_ctxt*,int ,int ,unsigned int,int,struct page*) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,TYPE_3__*) ;
 int ocfs2_journal_access_di (int *,int ,TYPE_3__*,int ) ;
 int ocfs2_lock_allocators (struct inode*,struct ocfs2_extent_tree*,unsigned int,unsigned int,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ;
 int ocfs2_populate_write_desc (struct inode*,struct ocfs2_write_ctxt*,unsigned int*,unsigned int*) ;
 int ocfs2_refcount_cow (struct inode*,struct buffer_head*,int ,unsigned int,int ) ;
 int ocfs2_set_target_boundaries (struct ocfs2_super*,struct ocfs2_write_ctxt*,int ,unsigned int,int) ;
 scalar_t__ ocfs2_sparse_alloc (struct ocfs2_super*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 scalar_t__ ocfs2_supports_inline_data (struct ocfs2_super*) ;
 int ocfs2_try_to_free_truncate_log (struct ocfs2_super*,unsigned int) ;
 int ocfs2_try_to_write_inline_data (struct address_space*,struct inode*,int ,unsigned int,struct page*,struct ocfs2_write_ctxt*) ;
 int ocfs2_write_cluster_by_desc (struct address_space*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_write_ctxt*,int ,unsigned int) ;
 int ocfs2_zero_tail (struct inode*,struct buffer_head*,int ) ;
 int trace_ocfs2_write_begin_nolock (unsigned long long,long long,int ,int ,unsigned int,int ,struct page*,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

int ocfs2_write_begin_nolock(struct address_space *mapping,
        loff_t pos, unsigned len, ocfs2_write_type_t type,
        struct page **pagep, void **fsdata,
        struct buffer_head *di_bh, struct page *mmap_page)
{
 int ret, cluster_of_pages, credits = OCFS2_INODE_UPDATE_CREDITS;
 unsigned int clusters_to_alloc, extents_to_split, clusters_need = 0;
 struct ocfs2_write_ctxt *wc;
 struct inode *inode = mapping->host;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di;
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 handle_t *handle;
 struct ocfs2_extent_tree et;
 int try_free = 1, ret1;

try_again:
 ret = ocfs2_alloc_write_ctxt(&wc, osb, pos, len, type, di_bh);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 if (ocfs2_supports_inline_data(osb)) {
  ret = ocfs2_try_to_write_inline_data(mapping, inode, pos, len,
           mmap_page, wc);
  if (ret == 1) {
   ret = 0;
   goto success;
  }
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }


 if (type != OCFS2_WRITE_DIRECT) {
  if (ocfs2_sparse_alloc(osb))
   ret = ocfs2_zero_tail(inode, di_bh, pos);
  else
   ret = ocfs2_expand_nonsparse_inode(inode, di_bh, pos,
          len, wc);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_check_range_for_refcount(inode, pos, len);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 } else if (ret == 1) {
  clusters_need = wc->w_clen;
  ret = ocfs2_refcount_cow(inode, di_bh,
      wc->w_cpos, wc->w_clen, UINT_MAX);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_populate_write_desc(inode, wc, &clusters_to_alloc,
     &extents_to_split);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 clusters_need += clusters_to_alloc;

 di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;

 trace_ocfs2_write_begin_nolock(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   (long long)i_size_read(inode),
   le32_to_cpu(di->i_clusters),
   pos, len, type, mmap_page,
   clusters_to_alloc, extents_to_split);







 if (clusters_to_alloc || extents_to_split) {





  ocfs2_init_dinode_extent_tree(&et, INODE_CACHE(inode),
           wc->w_di_bh);
  ret = ocfs2_lock_allocators(inode, &et,
         clusters_to_alloc, extents_to_split,
         &data_ac, &meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  if (data_ac)
   data_ac->ac_resv = &OCFS2_I(inode)->ip_la_data_resv;

  credits = ocfs2_calc_extend_credits(inode->i_sb,
          &di->id2.i_list);
 } else if (type == OCFS2_WRITE_DIRECT)

  goto success;






 if (wc->w_clen && (wc->w_desc[0].c_needs_zero ||
      wc->w_desc[wc->w_clen - 1].c_needs_zero))
  cluster_of_pages = 1;
 else
  cluster_of_pages = 0;

 ocfs2_set_target_boundaries(osb, wc, pos, len, cluster_of_pages);

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 wc->w_handle = handle;

 if (clusters_to_alloc) {
  ret = dquot_alloc_space_nodirty(inode,
   ocfs2_clusters_to_bytes(osb->sb, clusters_to_alloc));
  if (ret)
   goto out_commit;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), wc->w_di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_quota;
 }






 ret = ocfs2_grab_pages_for_write(mapping, wc, wc->w_cpos, pos, len,
      cluster_of_pages, mmap_page);
 if (ret && ret != -EAGAIN) {
  mlog_errno(ret);
  goto out_quota;
 }







 if (ret == -EAGAIN) {
  BUG_ON(wc->w_target_page);
  ret = 0;
  goto out_quota;
 }

 ret = ocfs2_write_cluster_by_desc(mapping, data_ac, meta_ac, wc, pos,
       len);
 if (ret) {
  mlog_errno(ret);
  goto out_quota;
 }

 if (data_ac)
  ocfs2_free_alloc_context(data_ac);
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);

success:
 if (pagep)
  *pagep = wc->w_target_page;
 *fsdata = wc;
 return 0;
out_quota:
 if (clusters_to_alloc)
  dquot_free_space(inode,
     ocfs2_clusters_to_bytes(osb->sb, clusters_to_alloc));
out_commit:
 ocfs2_commit_trans(osb, handle);

out:







 if (wc->w_target_locked)
  unlock_page(mmap_page);

 ocfs2_free_write_ctxt(inode, wc);

 if (data_ac) {
  ocfs2_free_alloc_context(data_ac);
  data_ac = ((void*)0);
 }
 if (meta_ac) {
  ocfs2_free_alloc_context(meta_ac);
  meta_ac = ((void*)0);
 }

 if (ret == -ENOSPC && try_free) {




  try_free = 0;

  ret1 = ocfs2_try_to_free_truncate_log(osb, clusters_need);
  if (ret1 == 1)
   goto try_again;

  if (ret1 < 0)
   mlog_errno(ret1);
 }

 return ret;
}
