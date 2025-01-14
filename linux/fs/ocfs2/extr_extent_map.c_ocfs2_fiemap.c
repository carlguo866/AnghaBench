
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct ocfs2_super {unsigned int s_clustersize_bits; TYPE_1__* sb; } ;
struct ocfs2_extent_rec {unsigned long long e_blkno; int e_flags; int e_leaf_clusters; int e_cpos; } ;
struct inode {int i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int ip_dyn_features; int ip_alloc_sem; } ;
struct TYPE_3__ {unsigned int s_blocksize_bits; } ;


 unsigned int FIEMAP_EXTENT_LAST ;
 unsigned int FIEMAP_EXTENT_SHARED ;
 unsigned int FIEMAP_EXTENT_UNWRITTEN ;
 int OCFS2_EXT_REFCOUNTED ;
 int OCFS2_EXT_UNWRITTEN ;
 int OCFS2_FIEMAP_FLAGS ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 int fiemap_check_flags (struct fiemap_extent_info*,int ) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int le64_to_cpu (unsigned long long) ;
 int mlog_errno (int) ;
 unsigned int ocfs2_clusters_for_bytes (int ,unsigned int) ;
 int ocfs2_fiemap_inline (struct inode*,struct buffer_head*,struct fiemap_extent_info*,unsigned int) ;
 int ocfs2_get_clusters_nocache (struct inode*,struct buffer_head*,unsigned int,unsigned int*,struct ocfs2_extent_rec*,int*) ;
 scalar_t__ ocfs2_inode_is_fast_symlink (struct inode*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int up_read (int *) ;

int ocfs2_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
   u64 map_start, u64 map_len)
{
 int ret, is_last;
 u32 mapping_end, cpos;
 unsigned int hole_size;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 u64 len_bytes, phys_bytes, virt_bytes;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_extent_rec rec;

 ret = fiemap_check_flags(fieinfo, OCFS2_FIEMAP_FLAGS);
 if (ret)
  return ret;

 ret = ocfs2_inode_lock(inode, &di_bh, 0);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 down_read(&OCFS2_I(inode)->ip_alloc_sem);




 if ((OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) ||
     ocfs2_inode_is_fast_symlink(inode)) {
  ret = ocfs2_fiemap_inline(inode, di_bh, fieinfo, map_start);
  goto out_unlock;
 }

 cpos = map_start >> osb->s_clustersize_bits;
 mapping_end = ocfs2_clusters_for_bytes(inode->i_sb,
            map_start + map_len);
 is_last = 0;
 while (cpos < mapping_end && !is_last) {
  u32 fe_flags;

  ret = ocfs2_get_clusters_nocache(inode, di_bh, cpos,
       &hole_size, &rec, &is_last);
  if (ret) {
   mlog_errno(ret);
   goto out_unlock;
  }

  if (rec.e_blkno == 0ULL) {
   cpos += hole_size;
   continue;
  }

  fe_flags = 0;
  if (rec.e_flags & OCFS2_EXT_UNWRITTEN)
   fe_flags |= FIEMAP_EXTENT_UNWRITTEN;
  if (rec.e_flags & OCFS2_EXT_REFCOUNTED)
   fe_flags |= FIEMAP_EXTENT_SHARED;
  if (is_last)
   fe_flags |= FIEMAP_EXTENT_LAST;
  len_bytes = (u64)le16_to_cpu(rec.e_leaf_clusters) << osb->s_clustersize_bits;
  phys_bytes = le64_to_cpu(rec.e_blkno) << osb->sb->s_blocksize_bits;
  virt_bytes = (u64)le32_to_cpu(rec.e_cpos) << osb->s_clustersize_bits;

  ret = fiemap_fill_next_extent(fieinfo, virt_bytes, phys_bytes,
           len_bytes, fe_flags);
  if (ret)
   break;

  cpos = le32_to_cpu(rec.e_cpos)+ le16_to_cpu(rec.e_leaf_clusters);
 }

 if (ret > 0)
  ret = 0;

out_unlock:
 brelse(di_bh);

 up_read(&OCFS2_I(inode)->ip_alloc_sem);

 ocfs2_inode_unlock(inode, 0);
out:

 return ret;
}
