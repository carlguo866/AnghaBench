
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walk_control {int* refs; int level; int shared_level; int keep_locks; int for_reloc; int reada_count; scalar_t__ update_ref; int stage; int * flags; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;
struct btrfs_path {int * locks; scalar_t__* slots; struct extent_buffer** nodes; } ;


 int BTRFS_BLOCK_FLAG_FULL_BACKREF ;
 int BTRFS_NODEPTRS_PER_BLOCK (struct btrfs_root*) ;
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ;
 int BTRFS_WRITE_LOCK_BLOCKING ;
 int BUG_ON (int) ;
 int DROP_REFERENCE ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 scalar_t__ btrfs_header_nritems (struct extent_buffer*) ;
 int extent_buffer_get (struct extent_buffer*) ;
 int kfree (struct walk_control*) ;
 struct walk_control* kzalloc (int,int ) ;
 int walk_down_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*) ;
 int walk_up_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*,int) ;

int btrfs_drop_subtree(struct btrfs_trans_handle *trans,
   struct btrfs_root *root,
   struct extent_buffer *node,
   struct extent_buffer *parent)
{
 struct btrfs_path *path;
 struct walk_control *wc;
 int level;
 int parent_level;
 int ret = 0;
 int wret;

 BUG_ON(root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID);

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 wc = kzalloc(sizeof(*wc), GFP_NOFS);
 if (!wc) {
  btrfs_free_path(path);
  return -ENOMEM;
 }

 btrfs_assert_tree_locked(parent);
 parent_level = btrfs_header_level(parent);
 extent_buffer_get(parent);
 path->nodes[parent_level] = parent;
 path->slots[parent_level] = btrfs_header_nritems(parent);

 btrfs_assert_tree_locked(node);
 level = btrfs_header_level(node);
 path->nodes[level] = node;
 path->slots[level] = 0;
 path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;

 wc->refs[parent_level] = 1;
 wc->flags[parent_level] = BTRFS_BLOCK_FLAG_FULL_BACKREF;
 wc->level = level;
 wc->shared_level = -1;
 wc->stage = DROP_REFERENCE;
 wc->update_ref = 0;
 wc->keep_locks = 1;
 wc->for_reloc = 1;
 wc->reada_count = BTRFS_NODEPTRS_PER_BLOCK(root);

 while (1) {
  wret = walk_down_tree(trans, root, path, wc);
  if (wret < 0) {
   ret = wret;
   break;
  }

  wret = walk_up_tree(trans, root, path, wc, parent_level);
  if (wret < 0)
   ret = wret;
  if (wret != 0)
   break;
 }

 kfree(wc);
 btrfs_free_path(path);
 return ret;
}
