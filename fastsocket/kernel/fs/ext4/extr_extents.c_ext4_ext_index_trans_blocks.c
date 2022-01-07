
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext_depth (struct inode*) ;

int ext4_ext_index_trans_blocks(struct inode *inode, int nrblocks, int chunk)
{
 int index;
 int depth = ext_depth(inode);

 if (chunk)
  index = depth * 2;
 else
  index = depth * 3;

 return index;
}
