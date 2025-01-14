
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {unsigned int e_flags; int e_blkno; int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct inode {int i_sb; int i_ino; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_blocks_to_clusters (int ,int ) ;
 int ocfs2_error (int ,char*,int ,unsigned long long,...) ;
 int ocfs2_find_leaf (int ,struct ocfs2_extent_list*,scalar_t__,struct buffer_head**) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ;
 int ocfs2_search_extent_list (struct ocfs2_extent_list*,scalar_t__) ;

int ocfs2_xattr_get_clusters(struct inode *inode, u32 v_cluster,
        u32 *p_cluster, u32 *num_clusters,
        struct ocfs2_extent_list *el,
        unsigned int *extent_flags)
{
 int ret = 0, i;
 struct buffer_head *eb_bh = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_rec *rec;
 u32 coff;

 if (el->l_tree_depth) {
  ret = ocfs2_find_leaf(INODE_CACHE(inode), el, v_cluster,
          &eb_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  eb = (struct ocfs2_extent_block *) eb_bh->b_data;
  el = &eb->h_list;

  if (el->l_tree_depth) {
   ocfs2_error(inode->i_sb,
        "Inode %lu has non zero tree depth in xattr leaf block %llu\n",
        inode->i_ino,
        (unsigned long long)eb_bh->b_blocknr);
   ret = -EROFS;
   goto out;
  }
 }

 i = ocfs2_search_extent_list(el, v_cluster);
 if (i == -1) {
  ret = -EROFS;
  mlog_errno(ret);
  goto out;
 } else {
  rec = &el->l_recs[i];
  BUG_ON(v_cluster < le32_to_cpu(rec->e_cpos));

  if (!rec->e_blkno) {
   ocfs2_error(inode->i_sb,
        "Inode %lu has bad extent record (%u, %u, 0) in xattr\n",
        inode->i_ino,
        le32_to_cpu(rec->e_cpos),
        ocfs2_rec_clusters(el, rec));
   ret = -EROFS;
   goto out;
  }
  coff = v_cluster - le32_to_cpu(rec->e_cpos);
  *p_cluster = ocfs2_blocks_to_clusters(inode->i_sb,
          le64_to_cpu(rec->e_blkno));
  *p_cluster = *p_cluster + coff;
  if (num_clusters)
   *num_clusters = ocfs2_rec_clusters(el, rec) - coff;

  if (extent_flags)
   *extent_flags = rec->e_flags;
 }
out:
 brelse(eb_bh);
 return ret;
}
