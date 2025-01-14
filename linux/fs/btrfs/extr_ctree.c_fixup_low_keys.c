
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_disk_key {int dummy; } ;


 int BTRFS_MAX_LEVEL ;
 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int MOD_LOG_KEY_REPLACE ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_set_node_key (struct extent_buffer*,struct btrfs_disk_key*,int) ;
 int tree_mod_log_insert_key (struct extent_buffer*,int,int ,int ) ;

__attribute__((used)) static void fixup_low_keys(struct btrfs_path *path,
      struct btrfs_disk_key *key, int level)
{
 int i;
 struct extent_buffer *t;
 int ret;

 for (i = level; i < BTRFS_MAX_LEVEL; i++) {
  int tslot = path->slots[i];

  if (!path->nodes[i])
   break;
  t = path->nodes[i];
  ret = tree_mod_log_insert_key(t, tslot, MOD_LOG_KEY_REPLACE,
    GFP_ATOMIC);
  BUG_ON(ret < 0);
  btrfs_set_node_key(t, key, tslot);
  btrfs_mark_buffer_dirty(path->nodes[i]);
  if (tslot != 0)
   break;
 }
}
