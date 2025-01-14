
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_super_block {int * s_backup_bgs; } ;
typedef scalar_t__ ext4_group_t ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_has_feature_sparse_super (struct super_block*) ;
 scalar_t__ ext4_has_feature_sparse_super2 (struct super_block*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ test_root (scalar_t__,int) ;

int ext4_bg_has_super(struct super_block *sb, ext4_group_t group)
{
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;

 if (group == 0)
  return 1;
 if (ext4_has_feature_sparse_super2(sb)) {
  if (group == le32_to_cpu(es->s_backup_bgs[0]) ||
      group == le32_to_cpu(es->s_backup_bgs[1]))
   return 1;
  return 0;
 }
 if ((group <= 1) || !ext4_has_feature_sparse_super(sb))
  return 1;
 if (!(group & 1))
  return 0;
 if (test_root(group, 3) || (test_root(group, 5)) ||
     test_root(group, 7))
  return 1;

 return 0;
}
