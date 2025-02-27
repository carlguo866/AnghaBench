
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int objectid; } ;
struct btrfs_root_item {int drop_level; int drop_progress; } ;
struct walk_control {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; int for_reloc; TYPE_4__* fs_info; int commit_root; int node; scalar_t__ in_radix; TYPE_1__ root_key; int reada_count; scalar_t__ keep_locks; int * flags; int update_progress; struct btrfs_root_item root_item; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; int for_reloc; TYPE_4__* fs_info; int commit_root; int node; scalar_t__ in_radix; TYPE_1__ root_key; int reada_count; scalar_t__ keep_locks; int * flags; int update_progress; struct btrfs_root_item root_item; } ;
struct btrfs_path {int lowest_level; scalar_t__* slots; TYPE_2__** nodes; int * locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_12__ {struct walk_control* tree_root; } ;
struct TYPE_11__ {int len; int start; } ;


 int BTRFS_MAX_LEVEL ;
 int BTRFS_NODEPTRS_PER_BLOCK (struct walk_control*) ;
 int BTRFS_TREE_RELOC_OBJECTID ;
 int BTRFS_WRITE_LOCK_BLOCKING ;
 int BUG_ON (int) ;
 scalar_t__ DROP_REFERENCE ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int WARN_ON (int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,struct walk_control*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_orphan_item (struct btrfs_trans_handle*,struct walk_control*,int ) ;
 int btrfs_del_root (struct btrfs_trans_handle*,struct walk_control*,TYPE_1__*) ;
 scalar_t__ btrfs_disk_key_objectid (int *) ;
 int btrfs_disk_key_to_cpu (struct btrfs_key*,int *) ;
 int btrfs_end_transaction_throttle (struct btrfs_trans_handle*,struct walk_control*) ;
 int btrfs_find_last_root (struct walk_control*,int ,int *,int *) ;
 int btrfs_free_fs_root (TYPE_4__*,struct walk_control*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_level (int ) ;
 TYPE_2__* btrfs_lock_root_node (struct walk_control*) ;
 int btrfs_lookup_extent_info (struct btrfs_trans_handle*,struct walk_control*,int ,int ,int*,int *) ;
 int btrfs_node_key (TYPE_2__*,int *,scalar_t__) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct walk_control*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int btrfs_set_lock_blocking (TYPE_2__*) ;
 scalar_t__ btrfs_should_end_transaction (struct btrfs_trans_handle*,struct walk_control*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct walk_control*,int ) ;
 int btrfs_std_error (TYPE_4__*,int) ;
 int btrfs_tree_lock (TYPE_2__*) ;
 int btrfs_tree_unlock (TYPE_2__*) ;
 int btrfs_unlock_up_safe (struct btrfs_path*,int ) ;
 int btrfs_update_root (struct btrfs_trans_handle*,struct walk_control*,TYPE_1__*,struct btrfs_root_item*) ;
 int free_extent_buffer (int ) ;
 int kfree (struct walk_control*) ;
 struct walk_control* kzalloc (int,int ) ;
 int memcpy (int *,struct btrfs_key*,int) ;
 int memset (int *,int ,int) ;
 int walk_down_tree (struct btrfs_trans_handle*,struct walk_control*,struct btrfs_path*,struct walk_control*) ;
 int walk_up_tree (struct btrfs_trans_handle*,struct walk_control*,struct btrfs_path*,struct walk_control*,int ) ;

int btrfs_drop_snapshot(struct btrfs_root *root,
    struct btrfs_block_rsv *block_rsv, int update_ref,
    int for_reloc)
{
 struct btrfs_path *path;
 struct btrfs_trans_handle *trans;
 struct btrfs_root *tree_root = root->fs_info->tree_root;
 struct btrfs_root_item *root_item = &root->root_item;
 struct walk_control *wc;
 struct btrfs_key key;
 int err = 0;
 int ret;
 int level;

 path = btrfs_alloc_path();
 if (!path) {
  err = -ENOMEM;
  goto out;
 }

 wc = kzalloc(sizeof(*wc), GFP_NOFS);
 if (!wc) {
  btrfs_free_path(path);
  err = -ENOMEM;
  goto out;
 }

 trans = btrfs_start_transaction(tree_root, 0);
 if (IS_ERR(trans)) {
  err = PTR_ERR(trans);
  goto out_free;
 }

 if (block_rsv)
  trans->block_rsv = block_rsv;

 if (btrfs_disk_key_objectid(&root_item->drop_progress) == 0) {
  level = btrfs_header_level(root->node);
  path->nodes[level] = btrfs_lock_root_node(root);
  btrfs_set_lock_blocking(path->nodes[level]);
  path->slots[level] = 0;
  path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;
  memset(&wc->update_progress, 0,
         sizeof(wc->update_progress));
 } else {
  btrfs_disk_key_to_cpu(&key, &root_item->drop_progress);
  memcpy(&wc->update_progress, &key,
         sizeof(wc->update_progress));

  level = root_item->drop_level;
  BUG_ON(level == 0);
  path->lowest_level = level;
  ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
  path->lowest_level = 0;
  if (ret < 0) {
   err = ret;
   goto out_end_trans;
  }
  WARN_ON(ret > 0);





  btrfs_unlock_up_safe(path, 0);

  level = btrfs_header_level(root->node);
  while (1) {
   btrfs_tree_lock(path->nodes[level]);
   btrfs_set_lock_blocking(path->nodes[level]);

   ret = btrfs_lookup_extent_info(trans, root,
      path->nodes[level]->start,
      path->nodes[level]->len,
      &wc->refs[level],
      &wc->flags[level]);
   if (ret < 0) {
    err = ret;
    goto out_end_trans;
   }
   BUG_ON(wc->refs[level] == 0);

   if (level == root_item->drop_level)
    break;

   btrfs_tree_unlock(path->nodes[level]);
   WARN_ON(wc->refs[level] != 1);
   level--;
  }
 }

 wc->level = level;
 wc->shared_level = -1;
 wc->stage = DROP_REFERENCE;
 wc->update_ref = update_ref;
 wc->keep_locks = 0;
 wc->for_reloc = for_reloc;
 wc->reada_count = BTRFS_NODEPTRS_PER_BLOCK(root);

 while (1) {
  ret = walk_down_tree(trans, root, path, wc);
  if (ret < 0) {
   err = ret;
   break;
  }

  ret = walk_up_tree(trans, root, path, wc, BTRFS_MAX_LEVEL);
  if (ret < 0) {
   err = ret;
   break;
  }

  if (ret > 0) {
   BUG_ON(wc->stage != DROP_REFERENCE);
   break;
  }

  if (wc->stage == DROP_REFERENCE) {
   level = wc->level;
   btrfs_node_key(path->nodes[level],
           &root_item->drop_progress,
           path->slots[level]);
   root_item->drop_level = level;
  }

  BUG_ON(wc->level == 0);
  if (btrfs_should_end_transaction(trans, tree_root)) {
   ret = btrfs_update_root(trans, tree_root,
      &root->root_key,
      root_item);
   if (ret) {
    btrfs_abort_transaction(trans, tree_root, ret);
    err = ret;
    goto out_end_trans;
   }

   btrfs_end_transaction_throttle(trans, tree_root);
   trans = btrfs_start_transaction(tree_root, 0);
   if (IS_ERR(trans)) {
    err = PTR_ERR(trans);
    goto out_free;
   }
   if (block_rsv)
    trans->block_rsv = block_rsv;
  }
 }
 btrfs_release_path(path);
 if (err)
  goto out_end_trans;

 ret = btrfs_del_root(trans, tree_root, &root->root_key);
 if (ret) {
  btrfs_abort_transaction(trans, tree_root, ret);
  goto out_end_trans;
 }

 if (root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID) {
  ret = btrfs_find_last_root(tree_root, root->root_key.objectid,
        ((void*)0), ((void*)0));
  if (ret < 0) {
   btrfs_abort_transaction(trans, tree_root, ret);
   err = ret;
   goto out_end_trans;
  } else if (ret > 0) {





   btrfs_del_orphan_item(trans, tree_root,
           root->root_key.objectid);
  }
 }

 if (root->in_radix) {
  btrfs_free_fs_root(tree_root->fs_info, root);
 } else {
  free_extent_buffer(root->node);
  free_extent_buffer(root->commit_root);
  kfree(root);
 }
out_end_trans:
 btrfs_end_transaction_throttle(trans, tree_root);
out_free:
 kfree(wc);
 btrfs_free_path(path);
out:
 if (err)
  btrfs_std_error(root->fs_info, err);
 return err;
}
