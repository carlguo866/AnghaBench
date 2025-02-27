
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ext2_inode {int * i_block; } ;
typedef scalar_t__ ext2_ino_t ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
struct TYPE_8__ {int (* get_blocks ) (TYPE_2__*,scalar_t__,int *) ;TYPE_1__* super; } ;
struct TYPE_7__ {scalar_t__ s_inodes_count; } ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_ET_BAD_INODE_NUM ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 int EXT2_N_BLOCKS ;
 scalar_t__ ext2fs_read_inode (TYPE_2__*,scalar_t__,struct ext2_inode*) ;
 int stub1 (TYPE_2__*,scalar_t__,int *) ;

errcode_t ext2fs_get_blocks(ext2_filsys fs, ext2_ino_t ino, blk_t *blocks)
{
 struct ext2_inode inode;
 int i;
 errcode_t retval;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 if (ino > fs->super->s_inodes_count)
  return EXT2_ET_BAD_INODE_NUM;

 if (fs->get_blocks) {
  if (!(*fs->get_blocks)(fs, ino, blocks))
   return 0;
 }
 retval = ext2fs_read_inode(fs, ino, &inode);
 if (retval)
  return retval;
 for (i=0; i < EXT2_N_BLOCKS; i++)
  blocks[i] = inode.i_block[i];
 return 0;
}
