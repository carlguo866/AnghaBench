
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; } ;
struct buffer_head {int b_data; } ;


 int ARRAY_SIZE (struct buffer_head**) ;
 int EFSCORRUPTED ;
 int ENOMEM ;
 int GFP_NOFS ;
 int brelse (struct buffer_head*) ;
 int ext4_bread_batch (struct inode*,int ,int,int,struct buffer_head**) ;
 int kfree (struct buffer_head**) ;
 struct buffer_head** kmalloc_array (int,int,int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int ext4_xattr_inode_read(struct inode *ea_inode, void *buf, size_t size)
{
 int blocksize = 1 << ea_inode->i_blkbits;
 int bh_count = (size + blocksize - 1) >> ea_inode->i_blkbits;
 int tail_size = (size % blocksize) ?: blocksize;
 struct buffer_head *bhs_inline[8];
 struct buffer_head **bhs = bhs_inline;
 int i, ret;

 if (bh_count > ARRAY_SIZE(bhs_inline)) {
  bhs = kmalloc_array(bh_count, sizeof(*bhs), GFP_NOFS);
  if (!bhs)
   return -ENOMEM;
 }

 ret = ext4_bread_batch(ea_inode, 0 , bh_count,
          1 , bhs);
 if (ret)
  goto free_bhs;

 for (i = 0; i < bh_count; i++) {

  if (!bhs[i]) {
   ret = -EFSCORRUPTED;
   goto put_bhs;
  }
  memcpy((char *)buf + blocksize * i, bhs[i]->b_data,
         i < bh_count - 1 ? blocksize : tail_size);
 }
 ret = 0;
put_bhs:
 for (i = 0; i < bh_count; i++)
  brelse(bhs[i]);
free_bhs:
 if (bhs != bhs_inline)
  kfree(bhs);
 return ret;
}
