
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct ext4_group_desc {void* bg_block_bitmap_hi; void* bg_block_bitmap; } ;
typedef int ext4_fsblk_t ;


 scalar_t__ EXT4_DESC_SIZE (struct super_block*) ;
 scalar_t__ EXT4_MIN_DESC_SIZE_64BIT ;
 void* cpu_to_le32 (int) ;

void ext4_block_bitmap_set(struct super_block *sb,
                           struct ext4_group_desc *bg, ext4_fsblk_t blk)
{
    bg->bg_block_bitmap = cpu_to_le32((u32)blk);
    if (EXT4_DESC_SIZE(sb) >= EXT4_MIN_DESC_SIZE_64BIT)
        bg->bg_block_bitmap_hi = cpu_to_le32(blk >> 32);
}
