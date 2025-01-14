
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_root {int node; } ;
struct btrfs_fs_info {int sb; scalar_t__ generation; struct btrfs_super_block* super_copy; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; } ;


 int BTRFS_TREE_LOG_OBJECTID ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __setup_root (struct btrfs_root*,struct btrfs_fs_info*,int ) ;
 struct btrfs_root* btrfs_alloc_root (struct btrfs_fs_info*,int ) ;
 int btrfs_commit_super (struct btrfs_fs_info*) ;
 int btrfs_err (struct btrfs_fs_info*,char*) ;
 int btrfs_handle_fs_error (struct btrfs_fs_info*,int,char*) ;
 int btrfs_recover_log_trees (struct btrfs_root*) ;
 int btrfs_super_log_root (struct btrfs_super_block*) ;
 int btrfs_super_log_root_level (struct btrfs_super_block*) ;
 int btrfs_warn (struct btrfs_fs_info*,char*) ;
 int extent_buffer_uptodate (int ) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int read_tree_block (struct btrfs_fs_info*,int ,scalar_t__,int,int *) ;
 scalar_t__ sb_rdonly (int ) ;

__attribute__((used)) static int btrfs_replay_log(struct btrfs_fs_info *fs_info,
       struct btrfs_fs_devices *fs_devices)
{
 int ret;
 struct btrfs_root *log_tree_root;
 struct btrfs_super_block *disk_super = fs_info->super_copy;
 u64 bytenr = btrfs_super_log_root(disk_super);
 int level = btrfs_super_log_root_level(disk_super);

 if (fs_devices->rw_devices == 0) {
  btrfs_warn(fs_info, "log replay required on RO media");
  return -EIO;
 }

 log_tree_root = btrfs_alloc_root(fs_info, GFP_KERNEL);
 if (!log_tree_root)
  return -ENOMEM;

 __setup_root(log_tree_root, fs_info, BTRFS_TREE_LOG_OBJECTID);

 log_tree_root->node = read_tree_block(fs_info, bytenr,
           fs_info->generation + 1,
           level, ((void*)0));
 if (IS_ERR(log_tree_root->node)) {
  btrfs_warn(fs_info, "failed to read log tree");
  ret = PTR_ERR(log_tree_root->node);
  kfree(log_tree_root);
  return ret;
 } else if (!extent_buffer_uptodate(log_tree_root->node)) {
  btrfs_err(fs_info, "failed to read log tree");
  free_extent_buffer(log_tree_root->node);
  kfree(log_tree_root);
  return -EIO;
 }

 ret = btrfs_recover_log_trees(log_tree_root);
 if (ret) {
  btrfs_handle_fs_error(fs_info, ret,
          "Failed to recover log tree");
  free_extent_buffer(log_tree_root->node);
  kfree(log_tree_root);
  return ret;
 }

 if (sb_rdonly(fs_info->sb)) {
  ret = btrfs_commit_super(fs_info);
  if (ret)
   return ret;
 }

 return 0;
}
