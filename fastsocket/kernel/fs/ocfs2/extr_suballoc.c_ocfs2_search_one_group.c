
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef unsigned int u16 ;
struct ocfs2_group_desc {int bg_free_bits_count; int bg_chain; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int (* ac_group_search ) (struct inode*,struct buffer_head*,int ,int ,int ,unsigned int*,unsigned int*) ;TYPE_1__* ac_bh; int ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int ENOSPC ;
 int brelse (struct buffer_head*) ;
 unsigned int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_alloc_dinode_update_counts (struct inode*,int *,TYPE_1__*,unsigned int,unsigned int) ;
 int ocfs2_block_group_set_bits (int *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,unsigned int,unsigned int) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,int ,struct buffer_head**) ;
 int stub1 (struct inode*,struct buffer_head*,int ,int ,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int ocfs2_search_one_group(struct ocfs2_alloc_context *ac,
      handle_t *handle,
      u32 bits_wanted,
      u32 min_bits,
      u16 *bit_off,
      unsigned int *num_bits,
      u64 gd_blkno,
      u16 *bits_left)
{
 int ret;
 u16 found;
 struct buffer_head *group_bh = ((void*)0);
 struct ocfs2_group_desc *gd;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)ac->ac_bh->b_data;
 struct inode *alloc_inode = ac->ac_inode;

 ret = ocfs2_read_group_descriptor(alloc_inode, di, gd_blkno,
       &group_bh);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 gd = (struct ocfs2_group_desc *) group_bh->b_data;
 ret = ac->ac_group_search(alloc_inode, group_bh, bits_wanted, min_bits,
      ac->ac_max_block, bit_off, &found);
 if (ret < 0) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out;
 }

 *num_bits = found;

 ret = ocfs2_alloc_dinode_update_counts(alloc_inode, handle, ac->ac_bh,
            *num_bits,
            le16_to_cpu(gd->bg_chain));
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_block_group_set_bits(handle, alloc_inode, gd, group_bh,
      *bit_off, *num_bits);
 if (ret < 0)
  mlog_errno(ret);

 *bits_left = le16_to_cpu(gd->bg_free_bits_count);

out:
 brelse(group_bh);

 return ret;
}
