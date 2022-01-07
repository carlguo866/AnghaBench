
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int d_name; } ;


 int EIO ;
 int ENOENT ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_acquire_orphan_inode (struct f2fs_sb_info*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_delete_entry (struct f2fs_dir_entry*,struct page*,struct inode*,struct inode*) ;
 struct f2fs_dir_entry* f2fs_find_entry (struct inode*,int *,struct page**) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_sync_fs (int ,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int trace_f2fs_unlink_enter (struct inode*,struct dentry*) ;
 int trace_f2fs_unlink_exit (struct inode*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dir);
 struct inode *inode = d_inode(dentry);
 struct f2fs_dir_entry *de;
 struct page *page;
 int err = -ENOENT;

 trace_f2fs_unlink_enter(dir, dentry);

 if (unlikely(f2fs_cp_error(sbi)))
  return -EIO;

 err = dquot_initialize(dir);
 if (err)
  return err;
 err = dquot_initialize(inode);
 if (err)
  return err;

 de = f2fs_find_entry(dir, &dentry->d_name, &page);
 if (!de) {
  if (IS_ERR(page))
   err = PTR_ERR(page);
  goto fail;
 }

 f2fs_balance_fs(sbi, 1);

 f2fs_lock_op(sbi);
 err = f2fs_acquire_orphan_inode(sbi);
 if (err) {
  f2fs_unlock_op(sbi);
  f2fs_put_page(page, 0);
  goto fail;
 }
 f2fs_delete_entry(de, page, dir, inode);
 f2fs_unlock_op(sbi);

 if (IS_DIRSYNC(dir))
  f2fs_sync_fs(sbi->sb, 1);
fail:
 trace_f2fs_unlink_exit(inode, err);
 return err;
}
