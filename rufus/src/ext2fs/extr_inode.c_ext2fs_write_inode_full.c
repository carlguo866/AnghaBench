
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int errcode_t ;


 int ext2fs_write_inode2 (int ,int ,struct ext2_inode*,int,int ) ;

errcode_t ext2fs_write_inode_full(ext2_filsys fs, ext2_ino_t ino,
      struct ext2_inode * inode, int bufsize)
{
 return ext2fs_write_inode2(fs, ino, inode, bufsize, 0);
}
