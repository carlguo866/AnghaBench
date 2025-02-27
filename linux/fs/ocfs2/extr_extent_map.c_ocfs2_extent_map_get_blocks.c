
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct inode {int i_sb; } ;


 int mlog_errno (int) ;
 int ocfs2_blocks_to_clusters (int ,int) ;
 void* ocfs2_clusters_to_blocks (int ,int) ;
 int ocfs2_get_clusters (struct inode*,int,int*,int*,unsigned int*) ;

int ocfs2_extent_map_get_blocks(struct inode *inode, u64 v_blkno, u64 *p_blkno,
    u64 *ret_count, unsigned int *extent_flags)
{
 int ret;
 int bpc = ocfs2_clusters_to_blocks(inode->i_sb, 1);
 u32 cpos, num_clusters, p_cluster;
 u64 boff = 0;

 cpos = ocfs2_blocks_to_clusters(inode->i_sb, v_blkno);

 ret = ocfs2_get_clusters(inode, cpos, &p_cluster, &num_clusters,
     extent_flags);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }




 if (p_cluster) {
  boff = ocfs2_clusters_to_blocks(inode->i_sb, p_cluster);
  boff += (v_blkno & (u64)(bpc - 1));
 }

 *p_blkno = boff;

 if (ret_count) {
  *ret_count = ocfs2_clusters_to_blocks(inode->i_sb, num_clusters);
  *ret_count -= v_blkno & (u64)(bpc - 1);
 }

out:
 return ret;
}
