
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int s_flags; } ;
struct stat_data {int dummy; } ;
struct reiserfs_transaction_handle {int displace_new_blocks; scalar_t__ t_trans_id; } ;
struct reiserfs_security_handle {scalar_t__ name; } ;
struct reiserfs_iget_args {void* objectid; void* dirid; } ;
struct TYPE_9__ {scalar_t__ k_objectid; scalar_t__ k_dir_id; } ;
struct item_head {TYPE_3__ ih_key; } ;
struct inode {int i_flags; struct super_block* i_sb; int i_size; scalar_t__ i_bytes; scalar_t__ i_blocks; int i_ctime; int i_atime; int i_mtime; void* i_generation; void* i_ino; int i_nlink; } ;
struct dentry {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef int loff_t ;
struct TYPE_11__ {int i_first_direct_byte; int i_attrs; scalar_t__ new_packing_locality; int * i_jl; scalar_t__ i_trans_id; scalar_t__ i_prealloc_count; scalar_t__ i_prealloc_block; scalar_t__ i_flags; int i_prealloc_list; } ;
struct TYPE_10__ {TYPE_1__* s_rs; } ;
struct TYPE_8__ {scalar_t__ k_objectid; } ;
struct TYPE_7__ {scalar_t__ s_inode_generation; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int INITIALIZE_PATH (int ) ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* INODE_PKEY (struct inode*) ;
 int IO_ERROR ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 int ITEM_FOUND ;
 int KEY_FORMAT_3_5 ;
 int KEY_FORMAT_3_6 ;
 int KEY_SIZE ;
 int MAX_US_INT ;
 TYPE_5__* REISERFS_I (struct inode*) ;
 int REISERFS_INHERIT_MASK ;
 TYPE_4__* REISERFS_SB (struct super_block*) ;
 int ROUND_UP (int ) ;
 int SB_POSIXACL ;
 int SD_OFFSET ;
 int SD_SIZE ;
 int SD_V1_SIZE ;
 int STAT_DATA_V1 ;
 int STAT_DATA_V2 ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int S_NOQUOTA ;
 int S_PRIVATE ;
 int TYPE_STAT_DATA ;
 int U32_MAX ;
 int _make_cpu_key (struct cpu_key*,int ,void*,void*,int ,int ,int) ;
 int clear_nlink (struct inode*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int current_time (struct inode*) ;
 int dquot_alloc_inode (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 void* event ;
 int i_gid_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int inode2sd (struct stat_data*,struct inode*,int ) ;
 int inode2sd_v1 (struct stat_data*,struct inode*,int ) ;
 int insert_inode_locked4 (struct inode*,void*,int ,struct reiserfs_iget_args*) ;
 int iput (struct inode*) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 void* le32_to_cpu (scalar_t__) ;
 int make_bad_inode (struct inode*) ;
 int make_le_item_head (struct item_head*,int *,int ,int ,int ,int ,int ) ;
 int memcpy (TYPE_2__*,TYPE_3__*,int ) ;
 scalar_t__ old_format_only (struct super_block*) ;
 int path_to_key ;
 int pathrelse (int *) ;
 int reiserfs_check_path (int *) ;
 scalar_t__ reiserfs_choose_packing (struct inode*) ;
 int reiserfs_find_actor ;
 int reiserfs_get_unused_objectid (struct reiserfs_transaction_handle*) ;
 int reiserfs_inherit_default_acl (struct reiserfs_transaction_handle*,struct inode*,struct dentry*,struct inode*) ;
 int reiserfs_init_xattr_rwsem (struct inode*) ;
 int reiserfs_insert_item (struct reiserfs_transaction_handle*,int *,struct cpu_key*,struct item_head*,struct inode*,char*) ;
 int reiserfs_new_directory (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int *,struct inode*) ;
 int reiserfs_new_symlink (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int *,char const*,int ) ;
 scalar_t__ reiserfs_posixacl (struct super_block*) ;
 int reiserfs_security_write (struct reiserfs_transaction_handle*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock (struct super_block*) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 int sd_attrs_to_i_attrs (int,struct inode*) ;
 int search_item (struct super_block*,struct cpu_key*,int *) ;
 int set_inode_item_key_version (struct inode*,int ) ;
 int set_inode_sd_version (struct inode*,int ) ;
 int set_nlink (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

int reiserfs_new_inode(struct reiserfs_transaction_handle *th,
         struct inode *dir, umode_t mode, const char *symname,


         loff_t i_size, struct dentry *dentry,
         struct inode *inode,
         struct reiserfs_security_handle *security)
{
 struct super_block *sb = dir->i_sb;
 struct reiserfs_iget_args args;
 INITIALIZE_PATH(path_to_key);
 struct cpu_key key;
 struct item_head ih;
 struct stat_data sd;
 int retval;
 int err;
 int depth;

 BUG_ON(!th->t_trans_id);

 depth = reiserfs_write_unlock_nested(sb);
 err = dquot_alloc_inode(inode);
 reiserfs_write_lock_nested(sb, depth);
 if (err)
  goto out_end_trans;
 if (!dir->i_nlink) {
  err = -EPERM;
  goto out_bad_inode;
 }


 ih.ih_key.k_dir_id = reiserfs_choose_packing(dir);
 ih.ih_key.k_objectid = cpu_to_le32(reiserfs_get_unused_objectid(th));
 if (!ih.ih_key.k_objectid) {
  err = -ENOMEM;
  goto out_bad_inode;
 }
 args.objectid = inode->i_ino = le32_to_cpu(ih.ih_key.k_objectid);
 if (old_format_only(sb))
  make_le_item_head(&ih, ((void*)0), KEY_FORMAT_3_5, SD_OFFSET,
      TYPE_STAT_DATA, SD_V1_SIZE, MAX_US_INT);
 else
  make_le_item_head(&ih, ((void*)0), KEY_FORMAT_3_6, SD_OFFSET,
      TYPE_STAT_DATA, SD_SIZE, MAX_US_INT);
 memcpy(INODE_PKEY(inode), &ih.ih_key, KEY_SIZE);
 args.dirid = le32_to_cpu(ih.ih_key.k_dir_id);

 depth = reiserfs_write_unlock_nested(inode->i_sb);
 err = insert_inode_locked4(inode, args.objectid,
        reiserfs_find_actor, &args);
 reiserfs_write_lock_nested(inode->i_sb, depth);
 if (err) {
  err = -EINVAL;
  goto out_bad_inode;
 }

 if (old_format_only(sb))






  inode->i_generation = le32_to_cpu(INODE_PKEY(dir)->k_objectid);
 else




  inode->i_generation = ++event;



 set_nlink(inode, (S_ISDIR(mode) ? 2 : 1));



 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_size = i_size;
 inode->i_blocks = 0;
 inode->i_bytes = 0;
 REISERFS_I(inode)->i_first_direct_byte = S_ISLNK(mode) ? 1 :
     U32_MAX ;

 INIT_LIST_HEAD(&REISERFS_I(inode)->i_prealloc_list);
 REISERFS_I(inode)->i_flags = 0;
 REISERFS_I(inode)->i_prealloc_block = 0;
 REISERFS_I(inode)->i_prealloc_count = 0;
 REISERFS_I(inode)->i_trans_id = 0;
 REISERFS_I(inode)->i_jl = ((void*)0);
 REISERFS_I(inode)->i_attrs =
     REISERFS_I(dir)->i_attrs & REISERFS_INHERIT_MASK;
 sd_attrs_to_i_attrs(REISERFS_I(inode)->i_attrs, inode);
 reiserfs_init_xattr_rwsem(inode);


 _make_cpu_key(&key, KEY_FORMAT_3_6, le32_to_cpu(ih.ih_key.k_dir_id),
        le32_to_cpu(ih.ih_key.k_objectid), SD_OFFSET,
        TYPE_STAT_DATA, 3 );


 retval = search_item(sb, &key, &path_to_key);
 if (retval == IO_ERROR) {
  err = -EIO;
  goto out_bad_inode;
 }
 if (retval == ITEM_FOUND) {
  pathrelse(&path_to_key);
  err = -EEXIST;
  goto out_bad_inode;
 }
 if (old_format_only(sb)) {

  if (i_uid_read(inode) & ~0xffff || i_gid_read(inode) & ~0xffff) {
   pathrelse(&path_to_key);
   err = -EINVAL;
   goto out_bad_inode;
  }
  inode2sd_v1(&sd, inode, inode->i_size);
 } else {
  inode2sd(&sd, inode, inode->i_size);
 }





 if (old_format_only(sb) || S_ISDIR(mode) || S_ISLNK(mode))
  set_inode_item_key_version(inode, KEY_FORMAT_3_5);
 else
  set_inode_item_key_version(inode, KEY_FORMAT_3_6);
 if (old_format_only(sb))
  set_inode_sd_version(inode, STAT_DATA_V1);
 else
  set_inode_sd_version(inode, STAT_DATA_V2);






 retval =
     reiserfs_insert_item(th, &path_to_key, &key, &ih, inode,
     (char *)(&sd));
 if (retval) {
  err = retval;
  reiserfs_check_path(&path_to_key);
  goto out_bad_inode;
 }




 if (S_ISDIR(mode)) {

  retval =
      reiserfs_new_directory(th, inode, &ih, &path_to_key, dir);
 }

 if (S_ISLNK(mode)) {

  if (!old_format_only(sb))
   i_size = ROUND_UP(i_size);
  retval =
      reiserfs_new_symlink(th, inode, &ih, &path_to_key, symname,
      i_size);
 }
 if (retval) {
  err = retval;
  reiserfs_check_path(&path_to_key);
  journal_end(th);
  goto out_inserted_sd;
 }

 if (reiserfs_posixacl(inode->i_sb)) {
  reiserfs_write_unlock(inode->i_sb);
  retval = reiserfs_inherit_default_acl(th, dir, dentry, inode);
  reiserfs_write_lock(inode->i_sb);
  if (retval) {
   err = retval;
   reiserfs_check_path(&path_to_key);
   journal_end(th);
   goto out_inserted_sd;
  }
 } else if (inode->i_sb->s_flags & SB_POSIXACL) {
  reiserfs_warning(inode->i_sb, "jdm-13090",
     "ACLs aren't enabled in the fs, "
     "but vfs thinks they are!");
 } else if (IS_PRIVATE(dir))
  inode->i_flags |= S_PRIVATE;

 if (security->name) {
  reiserfs_write_unlock(inode->i_sb);
  retval = reiserfs_security_write(th, inode, security);
  reiserfs_write_lock(inode->i_sb);
  if (retval) {
   err = retval;
   reiserfs_check_path(&path_to_key);
   retval = journal_end(th);
   if (retval)
    err = retval;
   goto out_inserted_sd;
  }
 }

 reiserfs_update_sd(th, inode);
 reiserfs_check_path(&path_to_key);

 return 0;

out_bad_inode:

 INODE_PKEY(inode)->k_objectid = 0;


 depth = reiserfs_write_unlock_nested(inode->i_sb);
 dquot_free_inode(inode);
 reiserfs_write_lock_nested(inode->i_sb, depth);

out_end_trans:
 journal_end(th);




 depth = reiserfs_write_unlock_nested(inode->i_sb);
 dquot_drop(inode);
 reiserfs_write_lock_nested(inode->i_sb, depth);
 inode->i_flags |= S_NOQUOTA;
 make_bad_inode(inode);

out_inserted_sd:
 clear_nlink(inode);
 th->t_trans_id = 0;
 unlock_new_inode(inode);
 iput(inode);
 return err;
}
