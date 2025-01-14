
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;
struct btrfs_dir_item {int dummy; } ;


 int BTRFS_DIR_INDEX_KEY ;
 int ENOENT ;
 struct btrfs_dir_item* ERR_PTR (int) ;
 struct btrfs_dir_item* btrfs_match_dir_item_name (int ,struct btrfs_path*,char const*,int) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;

struct btrfs_dir_item *
btrfs_lookup_dir_index_item(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct btrfs_path *path, u64 dir,
       u64 objectid, const char *name, int name_len,
       int mod)
{
 int ret;
 struct btrfs_key key;
 int ins_len = mod < 0 ? -1 : 0;
 int cow = mod != 0;

 key.objectid = dir;
 key.type = BTRFS_DIR_INDEX_KEY;
 key.offset = objectid;

 ret = btrfs_search_slot(trans, root, &key, path, ins_len, cow);
 if (ret < 0)
  return ERR_PTR(ret);
 if (ret > 0)
  return ERR_PTR(-ENOENT);
 return btrfs_match_dir_item_name(root->fs_info, path, name, name_len);
}
