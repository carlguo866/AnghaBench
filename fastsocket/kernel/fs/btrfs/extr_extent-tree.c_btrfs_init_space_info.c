
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_space_info {int dummy; } ;
struct btrfs_fs_info {struct btrfs_super_block* super_copy; } ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS ;
 int btrfs_super_incompat_flags (struct btrfs_super_block*) ;
 int btrfs_super_root (struct btrfs_super_block*) ;
 int update_space_info (struct btrfs_fs_info*,int,int ,int ,struct btrfs_space_info**) ;

int btrfs_init_space_info(struct btrfs_fs_info *fs_info)
{
 struct btrfs_space_info *space_info;
 struct btrfs_super_block *disk_super;
 u64 features;
 u64 flags;
 int mixed = 0;
 int ret;

 disk_super = fs_info->super_copy;
 if (!btrfs_super_root(disk_super))
  return 1;

 features = btrfs_super_incompat_flags(disk_super);
 if (features & BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS)
  mixed = 1;

 flags = BTRFS_BLOCK_GROUP_SYSTEM;
 ret = update_space_info(fs_info, flags, 0, 0, &space_info);
 if (ret)
  goto out;

 if (mixed) {
  flags = BTRFS_BLOCK_GROUP_METADATA | BTRFS_BLOCK_GROUP_DATA;
  ret = update_space_info(fs_info, flags, 0, 0, &space_info);
 } else {
  flags = BTRFS_BLOCK_GROUP_METADATA;
  ret = update_space_info(fs_info, flags, 0, 0, &space_info);
  if (ret)
   goto out;

  flags = BTRFS_BLOCK_GROUP_DATA;
  ret = update_space_info(fs_info, flags, 0, 0, &space_info);
 }
out:
 return ret;
}
