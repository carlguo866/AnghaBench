
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_dir_item {int dummy; } ;


 scalar_t__ BTRFS_DIR_INDEX_KEY ;
 struct btrfs_dir_item* ERR_PTR (int) ;
 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,scalar_t__) ;
 struct btrfs_dir_item* btrfs_match_dir_item_name (struct btrfs_root*,struct btrfs_path*,char const*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

struct btrfs_dir_item *
btrfs_search_dir_index_item(struct btrfs_root *root,
       struct btrfs_path *path, u64 dirid,
       const char *name, int name_len)
{
 struct extent_buffer *leaf;
 struct btrfs_dir_item *di;
 struct btrfs_key key;
 u32 nritems;
 int ret;

 key.objectid = dirid;
 key.type = BTRFS_DIR_INDEX_KEY;
 key.offset = 0;

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  return ERR_PTR(ret);

 leaf = path->nodes[0];
 nritems = btrfs_header_nritems(leaf);

 while (1) {
  if (path->slots[0] >= nritems) {
   ret = btrfs_next_leaf(root, path);
   if (ret < 0)
    return ERR_PTR(ret);
   if (ret > 0)
    break;
   leaf = path->nodes[0];
   nritems = btrfs_header_nritems(leaf);
   continue;
  }

  btrfs_item_key_to_cpu(leaf, &key, path->slots[0]);
  if (key.objectid != dirid || key.type != BTRFS_DIR_INDEX_KEY)
   break;

  di = btrfs_match_dir_item_name(root, path, name, name_len);
  if (di)
   return di;

  path->slots[0]++;
 }
 return ((void*)0);
}
