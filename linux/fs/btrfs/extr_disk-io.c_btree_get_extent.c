
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct page {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {int bdev; scalar_t__ block_start; void* block_len; void* len; scalar_t__ start; } ;
struct btrfs_inode {struct extent_map_tree extent_tree; TYPE_1__* root; } ;
struct btrfs_fs_info {TYPE_2__* fs_devices; } ;
struct TYPE_4__ {int latest_bdev; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 int EEXIST ;
 int EIO ;
 int ENOMEM ;
 struct extent_map* ERR_PTR (int) ;
 int add_extent_mapping (struct extent_map_tree*,struct extent_map*,int ) ;
 struct extent_map* alloc_extent_map () ;
 int free_extent_map (struct extent_map*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,void*,void*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct extent_map *btree_get_extent(struct btrfs_inode *inode,
  struct page *page, size_t pg_offset, u64 start, u64 len,
  int create)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 struct extent_map_tree *em_tree = &inode->extent_tree;
 struct extent_map *em;
 int ret;

 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, start, len);
 if (em) {
  em->bdev = fs_info->fs_devices->latest_bdev;
  read_unlock(&em_tree->lock);
  goto out;
 }
 read_unlock(&em_tree->lock);

 em = alloc_extent_map();
 if (!em) {
  em = ERR_PTR(-ENOMEM);
  goto out;
 }
 em->start = 0;
 em->len = (u64)-1;
 em->block_len = (u64)-1;
 em->block_start = 0;
 em->bdev = fs_info->fs_devices->latest_bdev;

 write_lock(&em_tree->lock);
 ret = add_extent_mapping(em_tree, em, 0);
 if (ret == -EEXIST) {
  free_extent_map(em);
  em = lookup_extent_mapping(em_tree, start, len);
  if (!em)
   em = ERR_PTR(-EIO);
 } else if (ret) {
  free_extent_map(em);
  em = ERR_PTR(ret);
 }
 write_unlock(&em_tree->lock);

out:
 return em;
}
