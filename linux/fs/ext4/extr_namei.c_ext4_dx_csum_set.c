
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_dir_entry {int dummy; } ;
struct dx_tail {int dt_checksum; } ;
struct dx_entry {int dummy; } ;
struct dx_countlimit {int count; int limit; } ;


 int EXT4_BLOCK_SIZE (int ) ;
 int EXT4_ERROR_INODE (struct inode*,char*) ;
 int ext4_dx_csum (struct inode*,struct ext4_dir_entry*,int,int,struct dx_tail*) ;
 int ext4_has_metadata_csum (int ) ;
 struct dx_countlimit* get_dx_countlimit (struct inode*,struct ext4_dir_entry*,int*) ;
 int le16_to_cpu (int ) ;
 int warn_no_space_for_csum (struct inode*) ;

__attribute__((used)) static void ext4_dx_csum_set(struct inode *inode, struct ext4_dir_entry *dirent)
{
 struct dx_countlimit *c;
 struct dx_tail *t;
 int count_offset, limit, count;

 if (!ext4_has_metadata_csum(inode->i_sb))
  return;

 c = get_dx_countlimit(inode, dirent, &count_offset);
 if (!c) {
  EXT4_ERROR_INODE(inode, "dir seems corrupt?  Run e2fsck -D.");
  return;
 }
 limit = le16_to_cpu(c->limit);
 count = le16_to_cpu(c->count);
 if (count_offset + (limit * sizeof(struct dx_entry)) >
     EXT4_BLOCK_SIZE(inode->i_sb) - sizeof(struct dx_tail)) {
  warn_no_space_for_csum(inode);
  return;
 }
 t = (struct dx_tail *)(((struct dx_entry *)c) + limit);

 t->dt_checksum = ext4_dx_csum(inode, dirent, count_offset, count, t);
}
