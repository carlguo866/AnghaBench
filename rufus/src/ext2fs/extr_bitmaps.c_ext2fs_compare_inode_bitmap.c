
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_inode_bitmap ;
typedef int errcode_t ;


 int EXT2_ET_NEQ_INODE_BITMAP ;
 int ext2fs_compare_generic_bmap (int ,int ,int ) ;

errcode_t ext2fs_compare_inode_bitmap(ext2fs_inode_bitmap bm1,
          ext2fs_inode_bitmap bm2)
{
 return (ext2fs_compare_generic_bmap(EXT2_ET_NEQ_INODE_BITMAP,
         bm1, bm2));
}
