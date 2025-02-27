
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int bg_inode_bitmap_hi; int bg_inode_bitmap_lo; } ;
typedef int ext4_fsblk_t ;


 scalar_t__ EXT4_DESC_SIZE (struct super_block*) ;
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ;
 int le32_to_cpu (int ) ;

ext4_fsblk_t ext4_inode_bitmap(struct super_block *sb,
          struct ext4_group_desc *bg)
{
 return le32_to_cpu(bg->bg_inode_bitmap_lo) |
  (EXT4_DESC_SIZE(sb) >= EXT4_MIN_DESC_SIZE_64BIT ?
   (ext4_fsblk_t)le32_to_cpu(bg->bg_inode_bitmap_hi) << 32 : 0);
}
