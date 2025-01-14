
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {int ui_size; } ;
struct TYPE_4__ {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {TYPE_2__ bi; } ;
struct ubifs_budget_req {int mod_dent; int dirtied_ino; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int CALC_DENT_SIZE (int ) ;
 int ENOSPC ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dbg_gen (char*,struct dentry*,int ,int ) ;
 int drop_nlink (struct inode*) ;
 int fname_len (struct fscrypt_name*) ;
 int fscrypt_free_filename (struct fscrypt_name*) ;
 int fscrypt_setup_filename (struct inode*,int *,int,struct fscrypt_name*) ;
 int inc_nlink (struct inode*) ;
 int inode_is_locked (struct inode*) ;
 int lock_2_inodes (struct inode*,struct inode*) ;
 int set_nlink (struct inode*,int) ;
 int smp_wmb () ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_check_dir_empty (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,struct fscrypt_name*,struct inode*,int,int ) ;
 int ubifs_purge_xattrs (struct inode*) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int unlock_2_inodes (struct inode*,struct inode*) ;

__attribute__((used)) static int ubifs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 struct inode *inode = d_inode(dentry);
 int err, sz_change, budgeted = 1;
 struct ubifs_inode *dir_ui = ubifs_inode(dir);
 struct ubifs_budget_req req = { .mod_dent = 1, .dirtied_ino = 2 };
 struct fscrypt_name nm;







 dbg_gen("directory '%pd', ino %lu in dir ino %lu", dentry,
  inode->i_ino, dir->i_ino);
 ubifs_assert(c, inode_is_locked(dir));
 ubifs_assert(c, inode_is_locked(inode));
 err = ubifs_check_dir_empty(d_inode(dentry));
 if (err)
  return err;

 err = fscrypt_setup_filename(dir, &dentry->d_name, 1, &nm);
 if (err)
  return err;

 err = ubifs_purge_xattrs(inode);
 if (err)
  return err;

 sz_change = CALC_DENT_SIZE(fname_len(&nm));

 err = ubifs_budget_space(c, &req);
 if (err) {
  if (err != -ENOSPC)
   goto out_fname;
  budgeted = 0;
 }

 lock_2_inodes(dir, inode);
 inode->i_ctime = current_time(dir);
 clear_nlink(inode);
 drop_nlink(dir);
 dir->i_size -= sz_change;
 dir_ui->ui_size = dir->i_size;
 dir->i_mtime = dir->i_ctime = inode->i_ctime;
 err = ubifs_jnl_update(c, dir, &nm, inode, 1, 0);
 if (err)
  goto out_cancel;
 unlock_2_inodes(dir, inode);

 if (budgeted)
  ubifs_release_budget(c, &req);
 else {

  c->bi.nospace = c->bi.nospace_rp = 0;
  smp_wmb();
 }
 fscrypt_free_filename(&nm);
 return 0;

out_cancel:
 dir->i_size += sz_change;
 dir_ui->ui_size = dir->i_size;
 inc_nlink(dir);
 set_nlink(inode, 2);
 unlock_2_inodes(dir, inode);
 if (budgeted)
  ubifs_release_budget(c, &req);
out_fname:
 fscrypt_free_filename(&nm);
 return err;
}
