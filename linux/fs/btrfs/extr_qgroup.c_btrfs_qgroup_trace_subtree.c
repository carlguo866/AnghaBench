
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; scalar_t__* locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int nodesize; int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_MAX_LEVEL ;
 scalar_t__ BTRFS_READ_LOCK_BLOCKING ;
 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int PTR_ERR (struct extent_buffer*) ;
 int adjust_slots_upwards (struct btrfs_path*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_node_blockptr (struct extent_buffer*,int) ;
 int btrfs_node_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_node_ptr_generation (struct extent_buffer*,int) ;
 int btrfs_qgroup_trace_extent (struct btrfs_trans_handle*,int ,int ,int ) ;
 int btrfs_qgroup_trace_leaf_items (struct btrfs_trans_handle*,struct extent_buffer*) ;
 int btrfs_read_buffer (struct extent_buffer*,int ,int,int *) ;
 int btrfs_set_lock_blocking_read (struct extent_buffer*) ;
 int btrfs_tree_read_lock (struct extent_buffer*) ;
 int extent_buffer_get (struct extent_buffer*) ;
 int extent_buffer_uptodate (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 struct extent_buffer* read_tree_block (struct btrfs_fs_info*,int ,int ,int,struct btrfs_key*) ;
 int test_bit (int ,int *) ;

int btrfs_qgroup_trace_subtree(struct btrfs_trans_handle *trans,
          struct extent_buffer *root_eb,
          u64 root_gen, int root_level)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 int ret = 0;
 int level;
 struct extent_buffer *eb = root_eb;
 struct btrfs_path *path = ((void*)0);

 BUG_ON(root_level < 0 || root_level >= BTRFS_MAX_LEVEL);
 BUG_ON(root_eb == ((void*)0));

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
  return 0;

 if (!extent_buffer_uptodate(root_eb)) {
  ret = btrfs_read_buffer(root_eb, root_gen, root_level, ((void*)0));
  if (ret)
   goto out;
 }

 if (root_level == 0) {
  ret = btrfs_qgroup_trace_leaf_items(trans, root_eb);
  goto out;
 }

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 extent_buffer_get(root_eb);
 path->nodes[root_level] = root_eb;
 path->slots[root_level] = 0;
 path->locks[root_level] = 0;
walk_down:
 level = root_level;
 while (level >= 0) {
  if (path->nodes[level] == ((void*)0)) {
   struct btrfs_key first_key;
   int parent_slot;
   u64 child_gen;
   u64 child_bytenr;





   eb = path->nodes[level + 1];
   parent_slot = path->slots[level + 1];
   child_bytenr = btrfs_node_blockptr(eb, parent_slot);
   child_gen = btrfs_node_ptr_generation(eb, parent_slot);
   btrfs_node_key_to_cpu(eb, &first_key, parent_slot);

   eb = read_tree_block(fs_info, child_bytenr, child_gen,
          level, &first_key);
   if (IS_ERR(eb)) {
    ret = PTR_ERR(eb);
    goto out;
   } else if (!extent_buffer_uptodate(eb)) {
    free_extent_buffer(eb);
    ret = -EIO;
    goto out;
   }

   path->nodes[level] = eb;
   path->slots[level] = 0;

   btrfs_tree_read_lock(eb);
   btrfs_set_lock_blocking_read(eb);
   path->locks[level] = BTRFS_READ_LOCK_BLOCKING;

   ret = btrfs_qgroup_trace_extent(trans, child_bytenr,
       fs_info->nodesize,
       GFP_NOFS);
   if (ret)
    goto out;
  }

  if (level == 0) {
   ret = btrfs_qgroup_trace_leaf_items(trans,
           path->nodes[level]);
   if (ret)
    goto out;


   ret = adjust_slots_upwards(path, root_level);
   if (ret)
    break;


   goto walk_down;
  }

  level--;
 }

 ret = 0;
out:
 btrfs_free_path(path);

 return ret;
}
