
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; int i_ctime; int i_mapping; int i_mode; } ;
struct ext4_inode_info {unsigned int i_flags; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;


 int CAP_SYS_RESOURCE ;
 int DAX ;
 int EBUSY ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int EOPNOTSUPP ;
 int EPERM ;
 unsigned int EXT4_CASEFOLD_FL ;
 unsigned int EXT4_EOFBLOCKS_FL ;
 unsigned int EXT4_EXTENTS_FL ;
 unsigned int EXT4_FL_USER_MODIFIABLE ;
 int EXT4_HT_INODE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 unsigned int EXT4_IMMUTABLE_FL ;
 unsigned int EXT4_JOURNAL_DATA_FL ;
 scalar_t__ IS_ERR (int *) ;
 int IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int PTR_ERR (int *) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int capable (int ) ;
 int current_time (struct inode*) ;
 int ext4_change_inode_journal_flag (struct inode*,unsigned int) ;
 int ext4_clear_inode_flag (struct inode*,unsigned int) ;
 int ext4_empty_dir (struct inode*) ;
 int ext4_ext_migrate (struct inode*) ;
 int ext4_handle_sync (int *) ;
 int ext4_has_feature_casefold (struct super_block*) ;
 int ext4_ind_migrate (struct inode*) ;
 scalar_t__ ext4_is_quota_file (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_set_inode_flag (struct inode*,unsigned int) ;
 int ext4_set_inode_flags (struct inode*) ;
 int ext4_truncate (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int inode_dio_wait (struct inode*) ;
 scalar_t__ test_opt (struct super_block*,int ) ;
 int vfs_ioc_setflags_prepare (struct inode*,unsigned int,unsigned int) ;

__attribute__((used)) static int ext4_ioctl_setflags(struct inode *inode,
          unsigned int flags)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 handle_t *handle = ((void*)0);
 int err = -EPERM, migrate = 0;
 struct ext4_iloc iloc;
 unsigned int oldflags, mask, i;
 unsigned int jflag;
 struct super_block *sb = inode->i_sb;


 if (ext4_is_quota_file(inode))
  goto flags_out;

 oldflags = ei->i_flags;


 jflag = flags & EXT4_JOURNAL_DATA_FL;

 err = vfs_ioc_setflags_prepare(inode, oldflags, flags);
 if (err)
  goto flags_out;





 if ((jflag ^ oldflags) & (EXT4_JOURNAL_DATA_FL)) {
  if (!capable(CAP_SYS_RESOURCE))
   goto flags_out;
 }
 if ((flags ^ oldflags) & EXT4_EXTENTS_FL)
  migrate = 1;

 if (flags & EXT4_EOFBLOCKS_FL) {

  if (!(oldflags & EXT4_EOFBLOCKS_FL)) {
   err = -EOPNOTSUPP;
   goto flags_out;
  }
 } else if (oldflags & EXT4_EOFBLOCKS_FL) {
  err = ext4_truncate(inode);
  if (err)
   goto flags_out;
 }

 if ((flags ^ oldflags) & EXT4_CASEFOLD_FL) {
  if (!ext4_has_feature_casefold(sb)) {
   err = -EOPNOTSUPP;
   goto flags_out;
  }

  if (!S_ISDIR(inode->i_mode)) {
   err = -ENOTDIR;
   goto flags_out;
  }

  if (!ext4_empty_dir(inode)) {
   err = -ENOTEMPTY;
   goto flags_out;
  }
 }







 if (S_ISREG(inode->i_mode) && !IS_IMMUTABLE(inode) &&
     (flags & EXT4_IMMUTABLE_FL)) {
  inode_dio_wait(inode);
  err = filemap_write_and_wait(inode->i_mapping);
  if (err)
   goto flags_out;
 }

 handle = ext4_journal_start(inode, EXT4_HT_INODE, 1);
 if (IS_ERR(handle)) {
  err = PTR_ERR(handle);
  goto flags_out;
 }
 if (IS_SYNC(inode))
  ext4_handle_sync(handle);
 err = ext4_reserve_inode_write(handle, inode, &iloc);
 if (err)
  goto flags_err;

 for (i = 0, mask = 1; i < 32; i++, mask <<= 1) {
  if (!(mask & EXT4_FL_USER_MODIFIABLE))
   continue;

  if (mask == EXT4_JOURNAL_DATA_FL || mask == EXT4_EXTENTS_FL)
   continue;
  if (mask & flags)
   ext4_set_inode_flag(inode, i);
  else
   ext4_clear_inode_flag(inode, i);
 }

 ext4_set_inode_flags(inode);
 inode->i_ctime = current_time(inode);

 err = ext4_mark_iloc_dirty(handle, inode, &iloc);
flags_err:
 ext4_journal_stop(handle);
 if (err)
  goto flags_out;

 if ((jflag ^ oldflags) & (EXT4_JOURNAL_DATA_FL)) {




  if (test_opt(inode->i_sb, DAX)) {
   err = -EBUSY;
   goto flags_out;
  }

  err = ext4_change_inode_journal_flag(inode, jflag);
  if (err)
   goto flags_out;
 }
 if (migrate) {
  if (flags & EXT4_EXTENTS_FL)
   err = ext4_ext_migrate(inode);
  else
   err = ext4_ind_migrate(inode);
 }

flags_out:
 return err;
}
