
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext2_block_alloc_info {int dummy; } ;
struct TYPE_2__ {struct ext2_block_alloc_info* i_block_alloc_info; } ;


 TYPE_1__* EXT2_I (struct inode*) ;
 int ext2_discard_reservation (struct inode*) ;
 int kfree (struct ext2_block_alloc_info*) ;
 scalar_t__ unlikely (struct ext2_block_alloc_info*) ;

__attribute__((used)) static void ext2_clear_inode(struct inode *inode)
{
 struct ext2_block_alloc_info *rsv = EXT2_I(inode)->i_block_alloc_info;
 ext2_discard_reservation(inode);
 EXT2_I(inode)->i_block_alloc_info = ((void*)0);
 if (unlikely(rsv))
  kfree(rsv);
}
