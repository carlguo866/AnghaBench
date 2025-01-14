
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_idx {int ei_leaf_hi; int ei_leaf_lo; } ;
typedef int ext4_fsblk_t ;


 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline ext4_fsblk_t ext4_idx_pblock(struct ext4_extent_idx *ix)
{
 ext4_fsblk_t block;

 block = le32_to_cpu(ix->ei_leaf_lo);
 block |= ((ext4_fsblk_t) le16_to_cpu(ix->ei_leaf_hi) << 31) << 1;
 return block;
}
