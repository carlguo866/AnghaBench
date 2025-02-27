
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_dirt; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int i_flags; scalar_t__ i_ino; scalar_t__ i_generation; int i_ctime; int i_atime; int i_mtime; scalar_t__ i_blocks; int i_gid; int i_uid; struct super_block* i_sb; } ;
struct ext2_super_block {int s_inodes_count; } ;
struct ext2_sb_info {int s_groups_count; int* s_debts; int s_next_gen_lock; int s_next_generation; int s_dirs_counter; int s_freeinodes_counter; struct ext2_super_block* s_es; } ;
struct ext2_inode_info {int i_flags; int i_block_group; int i_state; scalar_t__ i_dir_start_lookup; int * i_block_alloc_info; scalar_t__ i_dtime; scalar_t__ i_dir_acl; scalar_t__ i_file_acl; scalar_t__ i_frag_size; scalar_t__ i_frag_no; scalar_t__ i_faddr; int i_data; } ;
struct ext2_group_desc {int bg_used_dirs_count; int bg_free_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ ino_t ;


 int CURRENT_TIME_SEC ;
 int EDQUOT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ EXT2_FIRST_INO (struct super_block*) ;
 int EXT2_FL_INHERITED ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 int EXT2_INODES_PER_GROUP (struct super_block*) ;
 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int EXT2_STATE_NEW ;
 int GRPID ;
 int MS_SYNCHRONOUS ;
 int OLDALLOC ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int S_NOQUOTA ;
 int brelse (struct buffer_head*) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int ext2_debug (char*,scalar_t__) ;
 int ext2_error (struct super_block*,char*,char*,int,unsigned long) ;
 scalar_t__ ext2_find_next_zero_bit (unsigned long*,int,scalar_t__) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,struct buffer_head**) ;
 int ext2_init_acl (struct inode*,struct inode*) ;
 int ext2_init_security (struct inode*,struct inode*) ;
 int ext2_mask_flags (int,int) ;
 int ext2_preread_inode (struct inode*) ;
 scalar_t__ ext2_set_bit_atomic (int *,scalar_t__,scalar_t__) ;
 int ext2_set_inode_flags (struct inode*) ;
 int find_group_dir (struct super_block*,struct inode*) ;
 int find_group_orlov (struct super_block*,struct inode*) ;
 int find_group_other (struct super_block*,struct inode*) ;
 scalar_t__ insert_inode_locked (struct inode*) ;
 int iput (struct inode*) ;
 int le16_add_cpu (int *,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int make_bad_inode (struct inode*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int ,int ,int) ;
 struct inode* new_inode (struct super_block*) ;
 int percpu_counter_add (int *,int) ;
 int percpu_counter_inc (int *) ;
 struct buffer_head* read_inode_bitmap (struct super_block*,int) ;
 int * sb_bgl_lock (struct ext2_sb_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 scalar_t__ test_opt (struct super_block*,int ) ;
 int unlock_new_inode (struct inode*) ;
 scalar_t__ vfs_dq_alloc_inode (struct inode*) ;
 int vfs_dq_drop (struct inode*) ;
 int vfs_dq_free_inode (struct inode*) ;

struct inode *ext2_new_inode(struct inode *dir, int mode)
{
 struct super_block *sb;
 struct buffer_head *bitmap_bh = ((void*)0);
 struct buffer_head *bh2;
 int group, i;
 ino_t ino = 0;
 struct inode * inode;
 struct ext2_group_desc *gdp;
 struct ext2_super_block *es;
 struct ext2_inode_info *ei;
 struct ext2_sb_info *sbi;
 int err;

 sb = dir->i_sb;
 inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 ei = EXT2_I(inode);
 sbi = EXT2_SB(sb);
 es = sbi->s_es;
 if (S_ISDIR(mode)) {
  if (test_opt(sb, OLDALLOC))
   group = find_group_dir(sb, dir);
  else
   group = find_group_orlov(sb, dir);
 } else
  group = find_group_other(sb, dir);

 if (group == -1) {
  err = -ENOSPC;
  goto fail;
 }

 for (i = 0; i < sbi->s_groups_count; i++) {
  gdp = ext2_get_group_desc(sb, group, &bh2);
  brelse(bitmap_bh);
  bitmap_bh = read_inode_bitmap(sb, group);
  if (!bitmap_bh) {
   err = -EIO;
   goto fail;
  }
  ino = 0;

repeat_in_this_group:
  ino = ext2_find_next_zero_bit((unsigned long *)bitmap_bh->b_data,
           EXT2_INODES_PER_GROUP(sb), ino);
  if (ino >= EXT2_INODES_PER_GROUP(sb)) {
   if (++group == sbi->s_groups_count)
    group = 0;
   continue;
  }
  if (ext2_set_bit_atomic(sb_bgl_lock(sbi, group),
      ino, bitmap_bh->b_data)) {

   if (++ino >= EXT2_INODES_PER_GROUP(sb)) {

    if (++group == sbi->s_groups_count)
     group = 0;
    continue;
   }

   goto repeat_in_this_group;
  }
  goto got;
 }




 err = -ENOSPC;
 goto fail;
got:
 mark_buffer_dirty(bitmap_bh);
 if (sb->s_flags & MS_SYNCHRONOUS)
  sync_dirty_buffer(bitmap_bh);
 brelse(bitmap_bh);

 ino += group * EXT2_INODES_PER_GROUP(sb) + 1;
 if (ino < EXT2_FIRST_INO(sb) || ino > le32_to_cpu(es->s_inodes_count)) {
  ext2_error (sb, "ext2_new_inode",
       "reserved inode or inode > inodes count - "
       "block_group = %d,inode=%lu", group,
       (unsigned long) ino);
  err = -EIO;
  goto fail;
 }

 percpu_counter_add(&sbi->s_freeinodes_counter, -1);
 if (S_ISDIR(mode))
  percpu_counter_inc(&sbi->s_dirs_counter);

 spin_lock(sb_bgl_lock(sbi, group));
 le16_add_cpu(&gdp->bg_free_inodes_count, -1);
 if (S_ISDIR(mode)) {
  if (sbi->s_debts[group] < 255)
   sbi->s_debts[group]++;
  le16_add_cpu(&gdp->bg_used_dirs_count, 1);
 } else {
  if (sbi->s_debts[group])
   sbi->s_debts[group]--;
 }
 spin_unlock(sb_bgl_lock(sbi, group));

 sb->s_dirt = 1;
 mark_buffer_dirty(bh2);
 inode->i_uid = current_fsuid();
 if (test_opt (sb, GRPID))
  inode->i_gid = dir->i_gid;
 else if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  if (S_ISDIR(mode))
   mode |= S_ISGID;
 } else
  inode->i_gid = current_fsgid();
 inode->i_mode = mode;

 inode->i_ino = ino;
 inode->i_blocks = 0;
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
 memset(ei->i_data, 0, sizeof(ei->i_data));
 ei->i_flags =
  ext2_mask_flags(mode, EXT2_I(dir)->i_flags & EXT2_FL_INHERITED);
 ei->i_faddr = 0;
 ei->i_frag_no = 0;
 ei->i_frag_size = 0;
 ei->i_file_acl = 0;
 ei->i_dir_acl = 0;
 ei->i_dtime = 0;
 ei->i_block_alloc_info = ((void*)0);
 ei->i_block_group = group;
 ei->i_dir_start_lookup = 0;
 ei->i_state = EXT2_STATE_NEW;
 ext2_set_inode_flags(inode);
 spin_lock(&sbi->s_next_gen_lock);
 inode->i_generation = sbi->s_next_generation++;
 spin_unlock(&sbi->s_next_gen_lock);
 if (insert_inode_locked(inode) < 0) {
  err = -EINVAL;
  goto fail_drop;
 }

 if (vfs_dq_alloc_inode(inode)) {
  err = -EDQUOT;
  goto fail_drop;
 }

 err = ext2_init_acl(inode, dir);
 if (err)
  goto fail_free_drop;

 err = ext2_init_security(inode,dir);
 if (err)
  goto fail_free_drop;

 mark_inode_dirty(inode);
 ext2_debug("allocating inode %lu\n", inode->i_ino);
 ext2_preread_inode(inode);
 return inode;

fail_free_drop:
 vfs_dq_free_inode(inode);

fail_drop:
 vfs_dq_drop(inode);
 inode->i_flags |= S_NOQUOTA;
 inode->i_nlink = 0;
 unlock_new_inode(inode);
 iput(inode);
 return ERR_PTR(err);

fail:
 make_bad_inode(inode);
 iput(inode);
 return ERR_PTR(err);
}
