
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ ext2_fsblk_t ;


 int ext2_free_blocks (struct inode*,scalar_t__,int) ;
 scalar_t__ ext2_new_blocks (struct inode*,scalar_t__,unsigned long*,int*) ;

__attribute__((used)) static int ext2_alloc_blocks(struct inode *inode,
   ext2_fsblk_t goal, int indirect_blks, int blks,
   ext2_fsblk_t new_blocks[4], int *err)
{
 int target, i;
 unsigned long count = 0;
 int index = 0;
 ext2_fsblk_t current_block = 0;
 int ret = 0;
 target = blks + indirect_blks;

 while (1) {
  count = target;

  current_block = ext2_new_blocks(inode,goal,&count,err);
  if (*err)
   goto failed_out;

  target -= count;

  while (index < indirect_blks && count) {
   new_blocks[index++] = current_block++;
   count--;
  }

  if (count > 0)
   break;
 }


 new_blocks[index] = current_block;


 ret = count;
 *err = 0;
 return ret;
failed_out:
 for (i = 0; i <index; i++)
  ext2_free_blocks(inode, new_blocks[i], 1);
 return ret;
}
