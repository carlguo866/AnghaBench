
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
struct bmap_rb_extent {int dummy; } ;


 int ext2fs_free_mem (struct bmap_rb_extent**) ;
 int ext2fs_rb_erase (struct rb_node*,struct rb_root*) ;
 struct rb_node* ext2fs_rb_first (struct rb_root*) ;
 struct rb_node* ext2fs_rb_next (struct rb_node*) ;
 struct bmap_rb_extent* node_to_extent (struct rb_node*) ;

__attribute__((used)) static void rb_free_tree(struct rb_root *root)
{
 struct bmap_rb_extent *ext;
 struct rb_node *node, *next;

 for (node = ext2fs_rb_first(root); node; node = next) {
  next = ext2fs_rb_next(node);
  ext = node_to_extent(node);
  ext2fs_rb_erase(node, root);
  ext2fs_free_mem(&ext);
 }
}
