
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_maxbytes; } ;
struct inode {scalar_t__ i_size; int i_ctime; int i_mtime; int i_mapping; struct super_block* i_sb; int i_mode; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef int loff_t ;
typedef struct ext4_ext_path handle_t ;
typedef unsigned int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int i_mmap_sem; int i_data_sem; } ;


 int EFBIG ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 int EXT4_CLUSTER_SIZE (struct super_block*) ;
 int EXT4_EXT_MARK_UNWRIT1 ;
 int EXT4_EXT_MARK_UNWRIT2 ;
 int EXT4_EX_NOCACHE ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_GET_BLOCKS_PRE_IO ;
 int EXT4_HT_TRUNCATE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int LLONG_MAX ;
 int PAGE_SIZE ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int SHIFT_RIGHT ;
 int S_ISREG (int ) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 int ext4_break_layouts (struct inode*) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_es_remove_extent (struct inode*,unsigned int,scalar_t__) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_shift_extents (struct inode*,struct ext4_ext_path*,unsigned int,unsigned int,int ) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,unsigned int,int *,int ) ;
 int ext4_force_commit (struct super_block*) ;
 int ext4_handle_sync (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_journal_start (struct inode*,int ,unsigned int) ;
 int ext4_journal_stop (struct ext4_ext_path*) ;
 int ext4_mark_inode_dirty (struct ext4_ext_path*,struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int ext4_split_extent_at (struct ext4_ext_path*,struct inode*,struct ext4_ext_path**,unsigned int,int,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_update_inode_fsync_trans (struct ext4_ext_path*,struct inode*,int) ;
 unsigned int ext4_writepage_trans_blocks (struct inode*) ;
 int ext_depth (struct inode*) ;
 int filemap_write_and_wait_range (int ,int,int ) ;
 int i_size_read (struct inode*) ;
 int inode_dio_wait (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;
 unsigned int le32_to_cpu (int ) ;
 int round_down (int,int ) ;
 int trace_ext4_insert_range (struct inode*,int,int) ;
 int truncate_pagecache (struct inode*,int) ;
 int up_write (int *) ;

int ext4_insert_range(struct inode *inode, loff_t offset, loff_t len)
{
 struct super_block *sb = inode->i_sb;
 handle_t *handle;
 struct ext4_ext_path *path;
 struct ext4_extent *extent;
 ext4_lblk_t offset_lblk, len_lblk, ee_start_lblk = 0;
 unsigned int credits, ee_len;
 int ret = 0, depth, split_flag = 0;
 loff_t ioffset;






 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))
  return -EOPNOTSUPP;


 if (offset & (EXT4_CLUSTER_SIZE(sb) - 1) ||
   len & (EXT4_CLUSTER_SIZE(sb) - 1))
  return -EINVAL;

 if (!S_ISREG(inode->i_mode))
  return -EOPNOTSUPP;

 trace_ext4_insert_range(inode, offset, len);

 offset_lblk = offset >> EXT4_BLOCK_SIZE_BITS(sb);
 len_lblk = len >> EXT4_BLOCK_SIZE_BITS(sb);


 if (ext4_should_journal_data(inode)) {
  ret = ext4_force_commit(inode->i_sb);
  if (ret)
   return ret;
 }

 inode_lock(inode);

 if (!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  ret = -EOPNOTSUPP;
  goto out_mutex;
 }


 if (inode->i_size + len > inode->i_sb->s_maxbytes) {
  ret = -EFBIG;
  goto out_mutex;
 }


 if (offset >= i_size_read(inode)) {
  ret = -EINVAL;
  goto out_mutex;
 }


 inode_dio_wait(inode);





 down_write(&EXT4_I(inode)->i_mmap_sem);

 ret = ext4_break_layouts(inode);
 if (ret)
  goto out_mmap;





 ioffset = round_down(offset, PAGE_SIZE);

 ret = filemap_write_and_wait_range(inode->i_mapping, ioffset,
   LLONG_MAX);
 if (ret)
  goto out_mmap;
 truncate_pagecache(inode, ioffset);

 credits = ext4_writepage_trans_blocks(inode);
 handle = ext4_journal_start(inode, EXT4_HT_TRUNCATE, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out_mmap;
 }


 inode->i_size += len;
 EXT4_I(inode)->i_disksize += len;
 inode->i_mtime = inode->i_ctime = current_time(inode);
 ret = ext4_mark_inode_dirty(handle, inode);
 if (ret)
  goto out_stop;

 down_write(&EXT4_I(inode)->i_data_sem);
 ext4_discard_preallocations(inode);

 path = ext4_find_extent(inode, offset_lblk, ((void*)0), 0);
 if (IS_ERR(path)) {
  up_write(&EXT4_I(inode)->i_data_sem);
  goto out_stop;
 }

 depth = ext_depth(inode);
 extent = path[depth].p_ext;
 if (extent) {
  ee_start_lblk = le32_to_cpu(extent->ee_block);
  ee_len = ext4_ext_get_actual_len(extent);





  if ((offset_lblk > ee_start_lblk) &&
    (offset_lblk < (ee_start_lblk + ee_len))) {
   if (ext4_ext_is_unwritten(extent))
    split_flag = EXT4_EXT_MARK_UNWRIT1 |
     EXT4_EXT_MARK_UNWRIT2;
   ret = ext4_split_extent_at(handle, inode, &path,
     offset_lblk, split_flag,
     EXT4_EX_NOCACHE |
     EXT4_GET_BLOCKS_PRE_IO |
     EXT4_GET_BLOCKS_METADATA_NOFAIL);
  }

  ext4_ext_drop_refs(path);
  kfree(path);
  if (ret < 0) {
   up_write(&EXT4_I(inode)->i_data_sem);
   goto out_stop;
  }
 } else {
  ext4_ext_drop_refs(path);
  kfree(path);
 }

 ret = ext4_es_remove_extent(inode, offset_lblk,
   EXT_MAX_BLOCKS - offset_lblk);
 if (ret) {
  up_write(&EXT4_I(inode)->i_data_sem);
  goto out_stop;
 }





 ret = ext4_ext_shift_extents(inode, handle,
  ee_start_lblk > offset_lblk ? ee_start_lblk : offset_lblk,
  len_lblk, SHIFT_RIGHT);

 up_write(&EXT4_I(inode)->i_data_sem);
 if (IS_SYNC(inode))
  ext4_handle_sync(handle);
 if (ret >= 0)
  ext4_update_inode_fsync_trans(handle, inode, 1);

out_stop:
 ext4_journal_stop(handle);
out_mmap:
 up_write(&EXT4_I(inode)->i_mmap_sem);
out_mutex:
 inode_unlock(inode);
 return ret;
}
