
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_key_ptr {int dummy; } ;


 int BTRFS_NODEPTRS_PER_BLOCK (struct btrfs_root*) ;
 int WARN_ON (int) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_node_key_ptr_offset (int) ;
 int btrfs_set_header_nritems (struct extent_buffer*,int) ;
 int copy_extent_buffer (struct extent_buffer*,struct extent_buffer*,int ,int ,int) ;
 int memmove_extent_buffer (struct extent_buffer*,int ,int ,int) ;
 int min (int,int) ;
 int tree_mod_log_eb_copy (int ,struct extent_buffer*,struct extent_buffer*,int,int ,int) ;
 int tree_mod_log_eb_move (int ,struct extent_buffer*,int ,int,int) ;

__attribute__((used)) static int push_node_left(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, struct extent_buffer *dst,
     struct extent_buffer *src, int empty)
{
 int push_items = 0;
 int src_nritems;
 int dst_nritems;
 int ret = 0;

 src_nritems = btrfs_header_nritems(src);
 dst_nritems = btrfs_header_nritems(dst);
 push_items = BTRFS_NODEPTRS_PER_BLOCK(root) - dst_nritems;
 WARN_ON(btrfs_header_generation(src) != trans->transid);
 WARN_ON(btrfs_header_generation(dst) != trans->transid);

 if (!empty && src_nritems <= 8)
  return 1;

 if (push_items <= 0)
  return 1;

 if (empty) {
  push_items = min(src_nritems, push_items);
  if (push_items < src_nritems) {



   if (src_nritems - push_items < 8) {
    if (push_items <= 8)
     return 1;
    push_items -= 8;
   }
  }
 } else
  push_items = min(src_nritems - 8, push_items);

 tree_mod_log_eb_copy(root->fs_info, dst, src, dst_nritems, 0,
        push_items);
 copy_extent_buffer(dst, src,
      btrfs_node_key_ptr_offset(dst_nritems),
      btrfs_node_key_ptr_offset(0),
      push_items * sizeof(struct btrfs_key_ptr));

 if (push_items < src_nritems) {
  tree_mod_log_eb_move(root->fs_info, src, 0, push_items,
         src_nritems - push_items);
  memmove_extent_buffer(src, btrfs_node_key_ptr_offset(0),
          btrfs_node_key_ptr_offset(push_items),
          (src_nritems - push_items) *
          sizeof(struct btrfs_key_ptr));
 }
 btrfs_set_header_nritems(src, src_nritems - push_items);
 btrfs_set_header_nritems(dst, dst_nritems + push_items);
 btrfs_mark_buffer_dirty(src);
 btrfs_mark_buffer_dirty(dst);

 return ret;
}
