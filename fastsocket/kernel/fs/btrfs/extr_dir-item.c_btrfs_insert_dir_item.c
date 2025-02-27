
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int leave_spinning; struct extent_buffer** nodes; } ;
struct btrfs_key {int offset; int objectid; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* tree_root; } ;


 int BTRFS_DIR_ITEM_KEY ;
 int EEXIST ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_cpu_key_to_disk (struct btrfs_disk_key*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_ino (struct inode*) ;
 int btrfs_insert_delayed_dir_index (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,struct inode*,struct btrfs_disk_key*,int ,int ) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_name_hash (char const*,int) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_set_dir_data_len (struct extent_buffer*,struct btrfs_dir_item*,int ) ;
 int btrfs_set_dir_item_key (struct extent_buffer*,struct btrfs_dir_item*,struct btrfs_disk_key*) ;
 int btrfs_set_dir_name_len (struct extent_buffer*,struct btrfs_dir_item*,int) ;
 int btrfs_set_dir_transid (struct extent_buffer*,struct btrfs_dir_item*,int ) ;
 int btrfs_set_dir_type (struct extent_buffer*,struct btrfs_dir_item*,int ) ;
 int btrfs_set_key_type (struct btrfs_key*,int ) ;
 struct btrfs_dir_item* insert_with_overflow (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,char const*,int) ;
 int write_extent_buffer (struct extent_buffer*,char const*,unsigned long,int) ;

int btrfs_insert_dir_item(struct btrfs_trans_handle *trans, struct btrfs_root
     *root, const char *name, int name_len,
     struct inode *dir, struct btrfs_key *location,
     u8 type, u64 index)
{
 int ret = 0;
 int ret2 = 0;
 struct btrfs_path *path;
 struct btrfs_dir_item *dir_item;
 struct extent_buffer *leaf;
 unsigned long name_ptr;
 struct btrfs_key key;
 struct btrfs_disk_key disk_key;
 u32 data_size;

 key.objectid = btrfs_ino(dir);
 btrfs_set_key_type(&key, BTRFS_DIR_ITEM_KEY);
 key.offset = btrfs_name_hash(name, name_len);

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 path->leave_spinning = 1;

 btrfs_cpu_key_to_disk(&disk_key, location);

 data_size = sizeof(*dir_item) + name_len;
 dir_item = insert_with_overflow(trans, root, path, &key, data_size,
     name, name_len);
 if (IS_ERR(dir_item)) {
  ret = PTR_ERR(dir_item);
  if (ret == -EEXIST)
   goto second_insert;
  goto out_free;
 }

 leaf = path->nodes[0];
 btrfs_set_dir_item_key(leaf, dir_item, &disk_key);
 btrfs_set_dir_type(leaf, dir_item, type);
 btrfs_set_dir_data_len(leaf, dir_item, 0);
 btrfs_set_dir_name_len(leaf, dir_item, name_len);
 btrfs_set_dir_transid(leaf, dir_item, trans->transid);
 name_ptr = (unsigned long)(dir_item + 1);

 write_extent_buffer(leaf, name, name_ptr, name_len);
 btrfs_mark_buffer_dirty(leaf);

second_insert:

 if (root == root->fs_info->tree_root) {
  ret = 0;
  goto out_free;
 }
 btrfs_release_path(path);

 ret2 = btrfs_insert_delayed_dir_index(trans, root, name, name_len, dir,
           &disk_key, type, index);
out_free:
 btrfs_free_path(path);
 if (ret)
  return ret;
 if (ret2)
  return ret2;
 return 0;
}
