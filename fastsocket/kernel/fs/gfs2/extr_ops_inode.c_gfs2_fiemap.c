
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct inode {int i_blkbits; int i_mutex; } ;
struct gfs2_inode {int i_no_addr; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;


 int FIEMAP_EXTENT_DATA_INLINE ;
 int FIEMAP_EXTENT_LAST ;
 int FIEMAP_EXTENT_NOT_ALIGNED ;
 int FIEMAP_FLAG_SYNC ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_ST_SHARED ;
 int __generic_block_fiemap (struct inode*,struct fiemap_extent_info*,int,int,int ) ;
 int fiemap_check_flags (struct fiemap_extent_info*,int ) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,int,int,int,int) ;
 int gfs2_block_map ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int i_size_read (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gfs2_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
         u64 start, u64 len)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int ret;

 ret = fiemap_check_flags(fieinfo, FIEMAP_FLAG_SYNC);
 if (ret)
  return ret;

 mutex_lock(&inode->i_mutex);

 ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, 0, &gh);
 if (ret)
  goto out;

 if (gfs2_is_stuffed(ip)) {
  u64 phys = ip->i_no_addr << inode->i_blkbits;
  u64 size = i_size_read(inode);
  u32 flags = FIEMAP_EXTENT_LAST|FIEMAP_EXTENT_NOT_ALIGNED|
       FIEMAP_EXTENT_DATA_INLINE;
  phys += sizeof(struct gfs2_dinode);
  phys += start;
  if (start + len > size)
   len = size - start;
  if (start < size)
   ret = fiemap_fill_next_extent(fieinfo, start, phys,
            len, flags);
  if (ret == 1)
   ret = 0;
 } else {
  ret = __generic_block_fiemap(inode, fieinfo, start, len,
          gfs2_block_map);
 }

 gfs2_glock_dq_uninit(&gh);
out:
 mutex_unlock(&inode->i_mutex);
 return ret;
}
