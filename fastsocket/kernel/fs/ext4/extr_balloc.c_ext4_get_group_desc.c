
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {struct buffer_head** s_group_desc; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext4_group_t ;
typedef int __u8 ;


 int EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;
 unsigned int EXT4_DESC_SIZE (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int ext4_error (struct super_block*,char*,int,unsigned int,...) ;
 int ext4_get_groups_count (struct super_block*) ;

struct ext4_group_desc * ext4_get_group_desc(struct super_block *sb,
          ext4_group_t block_group,
          struct buffer_head **bh)
{
 unsigned int group_desc;
 unsigned int offset;
 ext4_group_t ngroups = ext4_get_groups_count(sb);
 struct ext4_group_desc *desc;
 struct ext4_sb_info *sbi = EXT4_SB(sb);

 if (block_group >= ngroups) {
  ext4_error(sb, "block_group >= groups_count - block_group = %u,"
      " groups_count = %u", block_group, ngroups);

  return ((void*)0);
 }

 group_desc = block_group >> EXT4_DESC_PER_BLOCK_BITS(sb);
 offset = block_group & (EXT4_DESC_PER_BLOCK(sb) - 1);
 if (!sbi->s_group_desc[group_desc]) {
  ext4_error(sb, "Group descriptor not loaded - "
      "block_group = %u, group_desc = %u, desc = %u",
      block_group, group_desc, offset);
  return ((void*)0);
 }

 desc = (struct ext4_group_desc *)(
  (__u8 *)sbi->s_group_desc[group_desc]->b_data +
  offset * EXT4_DESC_SIZE(sb));
 if (bh)
  *bh = sbi->s_group_desc[group_desc];
 return desc;
}
