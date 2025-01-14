
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mtime; int i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; int version; } ;
struct autofs_info {int count; } ;


 int AUTOFS_SBI_CATATONIC ;
 int BUG_ON (int) ;
 int EACCES ;
 int ENOMEM ;
 int IS_ROOT (struct dentry*) ;
 int S_IFDIR ;
 int atomic_inc (int *) ;
 int autofs_clean_ino (struct autofs_info*) ;
 int autofs_del_active (struct dentry*) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct inode* autofs_get_inode (int ,int) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int autofs_set_leaf_automount_flags (struct dentry*) ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int pr_debug (char*,struct dentry*,struct dentry*) ;

__attribute__((used)) static int autofs_dir_mkdir(struct inode *dir,
       struct dentry *dentry, umode_t mode)
{
 struct autofs_sb_info *sbi = autofs_sbi(dir->i_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 struct autofs_info *p_ino;
 struct inode *inode;

 if (!autofs_oz_mode(sbi))
  return -EACCES;





 if (sbi->flags & AUTOFS_SBI_CATATONIC)
  return -EACCES;

 pr_debug("dentry %p, creating %pd\n", dentry, dentry);

 BUG_ON(!ino);

 autofs_clean_ino(ino);

 autofs_del_active(dentry);

 inode = autofs_get_inode(dir->i_sb, S_IFDIR | mode);
 if (!inode)
  return -ENOMEM;
 d_add(dentry, inode);

 if (sbi->version < 5)
  autofs_set_leaf_automount_flags(dentry);

 dget(dentry);
 atomic_inc(&ino->count);
 p_ino = autofs_dentry_ino(dentry->d_parent);
 if (p_ino && !IS_ROOT(dentry))
  atomic_inc(&p_ino->count);
 inc_nlink(dir);
 dir->i_mtime = current_time(dir);

 return 0;
}
