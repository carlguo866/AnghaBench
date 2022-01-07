
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_io_tree {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int btrfs_wait_marked_extents (struct btrfs_root*,struct extent_io_tree*,int) ;
 int btrfs_write_marked_extents (struct btrfs_root*,struct extent_io_tree*,int) ;

int btrfs_write_and_wait_marked_extents(struct btrfs_root *root,
    struct extent_io_tree *dirty_pages, int mark)
{
 int ret;
 int ret2;

 ret = btrfs_write_marked_extents(root, dirty_pages, mark);
 ret2 = btrfs_wait_marked_extents(root, dirty_pages, mark);

 if (ret)
  return ret;
 if (ret2)
  return ret2;
 return 0;
}
