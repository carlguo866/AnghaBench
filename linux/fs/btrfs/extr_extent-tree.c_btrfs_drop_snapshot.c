
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct walk_control {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; size_t drop_level; int drop_progress; int reada_count; scalar_t__ keep_locks; scalar_t__ restarted; int * flags; int update_progress; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root_item {int drop_level; int drop_progress; } ;
struct TYPE_9__ {int objectid; } ;
struct btrfs_root {int commit_root; int node; int state; TYPE_1__ root_key; struct btrfs_root_item root_item; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int lowest_level; scalar_t__* slots; TYPE_2__** nodes; void** locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_10__ {int start; } ;


 int BTRFS_MAX_LEVEL ;
 int BTRFS_NODEPTRS_PER_BLOCK (struct btrfs_fs_info*) ;
 int BTRFS_ROOT_DEAD_TREE ;
 int BTRFS_ROOT_DELETING ;
 int BTRFS_ROOT_IN_RADIX ;
 int BTRFS_TREE_RELOC_OBJECTID ;
 void* BTRFS_WRITE_LOCK_BLOCKING ;
 int BUG_ON (int) ;
 scalar_t__ DROP_REFERENCE ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int WARN_ON (int) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_add_dead_root (struct btrfs_root*) ;
 int btrfs_add_dropped_root (struct btrfs_trans_handle*,struct btrfs_root*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_cpu_key_to_disk (int *,int *) ;
 int btrfs_debug (struct btrfs_fs_info*,char*,...) ;
 int btrfs_del_orphan_item (struct btrfs_trans_handle*,struct btrfs_root*,int ) ;
 int btrfs_del_root (struct btrfs_trans_handle*,TYPE_1__*) ;
 scalar_t__ btrfs_disk_key_objectid (int *) ;
 int btrfs_disk_key_to_cpu (struct btrfs_key*,int *) ;
 int btrfs_end_transaction_throttle (struct btrfs_trans_handle*) ;
 int btrfs_find_root (struct btrfs_root*,TYPE_1__*,struct btrfs_path*,int *,int *) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_handle_fs_error (struct btrfs_fs_info*,int,int *) ;
 int btrfs_header_level (int ) ;
 TYPE_2__* btrfs_lock_root_node (struct btrfs_root*) ;
 int btrfs_lookup_extent_info (struct btrfs_trans_handle*,struct btrfs_fs_info*,int ,int,int,int*,int *) ;
 scalar_t__ btrfs_need_cleaner_sleep (struct btrfs_fs_info*) ;
 int btrfs_node_key_to_cpu (TYPE_2__*,int *,scalar_t__) ;
 int btrfs_put_fs_root (struct btrfs_root*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_run_delayed_items (struct btrfs_trans_handle*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int btrfs_set_lock_blocking_write (TYPE_2__*) ;
 scalar_t__ btrfs_should_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_tree_lock (TYPE_2__*) ;
 int btrfs_tree_unlock (TYPE_2__*) ;
 int btrfs_unlock_up_safe (struct btrfs_path*,int ) ;
 int btrfs_update_root (struct btrfs_trans_handle*,struct btrfs_root*,TYPE_1__*,struct btrfs_root_item*) ;
 int free_extent_buffer (int ) ;
 int kfree (struct walk_control*) ;
 struct walk_control* kzalloc (int,int ) ;
 int memcpy (int *,struct btrfs_key*,int) ;
 int memset (int *,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int walk_down_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*) ;
 int walk_up_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*,int ) ;

int btrfs_drop_snapshot(struct btrfs_root *root,
    struct btrfs_block_rsv *block_rsv, int update_ref,
    int for_reloc)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_path *path;
 struct btrfs_trans_handle *trans;
 struct btrfs_root *tree_root = fs_info->tree_root;
 struct btrfs_root_item *root_item = &root->root_item;
 struct walk_control *wc;
 struct btrfs_key key;
 int err = 0;
 int ret;
 int level;
 bool root_dropped = 0;

 btrfs_debug(fs_info, "Drop subvolume %llu", root->root_key.objectid);

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

 err = btrfs_run_delayed_items(trans);
 if (err)
  goto out_end_trans;

 if (block_rsv)
  trans->block_rsv = block_rsv;
 set_bit(BTRFS_ROOT_DELETING, &root->state);
 if (btrfs_disk_key_objectid(&root_item->drop_progress) == 0) {
  level = btrfs_header_level(root->node);
  path->nodes[level] = btrfs_lock_root_node(root);
  btrfs_set_lock_blocking_write(path->nodes[level]);
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
   btrfs_set_lock_blocking_write(path->nodes[level]);
   path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;

   ret = btrfs_lookup_extent_info(trans, fs_info,
      path->nodes[level]->start,
      level, 1, &wc->refs[level],
      &wc->flags[level]);
   if (ret < 0) {
    err = ret;
    goto out_end_trans;
   }
   BUG_ON(wc->refs[level] == 0);

   if (level == root_item->drop_level)
    break;

   btrfs_tree_unlock(path->nodes[level]);
   path->locks[level] = 0;
   WARN_ON(wc->refs[level] != 1);
   level--;
  }
 }

 wc->restarted = test_bit(BTRFS_ROOT_DEAD_TREE, &root->state);
 wc->level = level;
 wc->shared_level = -1;
 wc->stage = DROP_REFERENCE;
 wc->update_ref = update_ref;
 wc->keep_locks = 0;
 wc->reada_count = BTRFS_NODEPTRS_PER_BLOCK(fs_info);

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
   wc->drop_level = wc->level;
   btrfs_node_key_to_cpu(path->nodes[wc->drop_level],
           &wc->drop_progress,
           path->slots[wc->drop_level]);
  }
  btrfs_cpu_key_to_disk(&root_item->drop_progress,
          &wc->drop_progress);
  root_item->drop_level = wc->drop_level;

  BUG_ON(wc->level == 0);
  if (btrfs_should_end_transaction(trans) ||
      (!for_reloc && btrfs_need_cleaner_sleep(fs_info))) {
   ret = btrfs_update_root(trans, tree_root,
      &root->root_key,
      root_item);
   if (ret) {
    btrfs_abort_transaction(trans, ret);
    err = ret;
    goto out_end_trans;
   }

   btrfs_end_transaction_throttle(trans);
   if (!for_reloc && btrfs_need_cleaner_sleep(fs_info)) {
    btrfs_debug(fs_info,
         "drop snapshot early exit");
    err = -EAGAIN;
    goto out_free;
   }

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

 ret = btrfs_del_root(trans, &root->root_key);
 if (ret) {
  btrfs_abort_transaction(trans, ret);
  err = ret;
  goto out_end_trans;
 }

 if (root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID) {
  ret = btrfs_find_root(tree_root, &root->root_key, path,
          ((void*)0), ((void*)0));
  if (ret < 0) {
   btrfs_abort_transaction(trans, ret);
   err = ret;
   goto out_end_trans;
  } else if (ret > 0) {





   btrfs_del_orphan_item(trans, tree_root,
           root->root_key.objectid);
  }
 }

 if (test_bit(BTRFS_ROOT_IN_RADIX, &root->state)) {
  btrfs_add_dropped_root(trans, root);
 } else {
  free_extent_buffer(root->node);
  free_extent_buffer(root->commit_root);
  btrfs_put_fs_root(root);
 }
 root_dropped = 1;
out_end_trans:
 btrfs_end_transaction_throttle(trans);
out_free:
 kfree(wc);
 btrfs_free_path(path);
out:







 if (!for_reloc && !root_dropped)
  btrfs_add_dead_root(root);
 if (err && err != -EAGAIN)
  btrfs_handle_fs_error(fs_info, err, ((void*)0));
 return err;
}
