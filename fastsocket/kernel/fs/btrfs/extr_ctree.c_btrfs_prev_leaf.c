
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;
struct btrfs_path {int * nodes; } ;
struct btrfs_key {scalar_t__ offset; scalar_t__ type; scalar_t__ objectid; } ;
struct btrfs_disk_key {int dummy; } ;


 int btrfs_item_key (int ,struct btrfs_disk_key*,int ) ;
 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int comp_keys (struct btrfs_disk_key*,struct btrfs_key*) ;

int btrfs_prev_leaf(struct btrfs_root *root, struct btrfs_path *path)
{
 struct btrfs_key key;
 struct btrfs_disk_key found_key;
 int ret;

 btrfs_item_key_to_cpu(path->nodes[0], &key, 0);

 if (key.offset > 0)
  key.offset--;
 else if (key.type > 0)
  key.type--;
 else if (key.objectid > 0)
  key.objectid--;
 else
  return 1;

 btrfs_release_path(path);
 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  return ret;
 btrfs_item_key(path->nodes[0], &found_key, 0);
 ret = comp_keys(&found_key, &key);
 if (ret < 0)
  return 0;
 return 1;
}
