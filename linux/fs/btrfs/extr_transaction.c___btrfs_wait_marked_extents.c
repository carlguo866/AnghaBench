
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* btree_inode; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int ENOMEM ;
 int EXTENT_NEED_WAIT ;
 int clear_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__,int ,int ,int ,struct extent_state**) ;
 int cond_resched () ;
 int filemap_fdatawait_range (struct address_space*,scalar_t__,scalar_t__) ;
 int find_first_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int ,struct extent_state**) ;
 int free_extent_state (struct extent_state*) ;

__attribute__((used)) static int __btrfs_wait_marked_extents(struct btrfs_fs_info *fs_info,
           struct extent_io_tree *dirty_pages)
{
 int err = 0;
 int werr = 0;
 struct address_space *mapping = fs_info->btree_inode->i_mapping;
 struct extent_state *cached_state = ((void*)0);
 u64 start = 0;
 u64 end;

 while (!find_first_extent_bit(dirty_pages, start, &start, &end,
          EXTENT_NEED_WAIT, &cached_state)) {
  err = clear_extent_bit(dirty_pages, start, end,
           EXTENT_NEED_WAIT, 0, 0, &cached_state);
  if (err == -ENOMEM)
   err = 0;
  if (!err)
   err = filemap_fdatawait_range(mapping, start, end);
  if (err)
   werr = err;
  free_extent_state(cached_state);
  cached_state = ((void*)0);
  cond_resched();
  start = end + 1;
 }
 if (err)
  werr = err;
 return werr;
}
