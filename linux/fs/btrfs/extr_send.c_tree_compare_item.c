
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int * nodes; int * slots; } ;


 unsigned long btrfs_item_ptr_offset (int ,int ) ;
 int btrfs_item_size_nr (int ,int ) ;
 int memcmp_extent_buffer (int ,char*,unsigned long,int) ;
 int read_extent_buffer (int ,char*,unsigned long,int) ;

__attribute__((used)) static int tree_compare_item(struct btrfs_path *left_path,
        struct btrfs_path *right_path,
        char *tmp_buf)
{
 int cmp;
 int len1, len2;
 unsigned long off1, off2;

 len1 = btrfs_item_size_nr(left_path->nodes[0], left_path->slots[0]);
 len2 = btrfs_item_size_nr(right_path->nodes[0], right_path->slots[0]);
 if (len1 != len2)
  return 1;

 off1 = btrfs_item_ptr_offset(left_path->nodes[0], left_path->slots[0]);
 off2 = btrfs_item_ptr_offset(right_path->nodes[0],
    right_path->slots[0]);

 read_extent_buffer(left_path->nodes[0], tmp_buf, off1, len1);

 cmp = memcmp_extent_buffer(right_path->nodes[0], tmp_buf, off2, len1);
 if (cmp)
  return 1;
 return 0;
}
