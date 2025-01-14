
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct selinux_fs_info* s_fs_info; } ;
struct selinux_fs_info {int last_class_ino; } ;
struct inode {int i_ino; int * i_fop; } ;
struct dentry {struct super_block* d_sb; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFREG ;
 int S_IRUGO ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int dput (struct dentry*) ;
 int sel_class_ops ;
 int sel_class_to_ino (int) ;
 struct dentry* sel_make_dir (struct dentry*,char*,int *) ;
 struct inode* sel_make_inode (struct super_block*,int) ;
 int sel_make_perm_files (char*,int,struct dentry*) ;

__attribute__((used)) static int sel_make_class_dir_entries(char *classname, int index,
     struct dentry *dir)
{
 struct super_block *sb = dir->d_sb;
 struct selinux_fs_info *fsi = sb->s_fs_info;
 struct dentry *dentry = ((void*)0);
 struct inode *inode = ((void*)0);
 int rc;

 dentry = d_alloc_name(dir, "index");
 if (!dentry)
  return -ENOMEM;

 inode = sel_make_inode(dir->d_sb, S_IFREG|S_IRUGO);
 if (!inode) {
  dput(dentry);
  return -ENOMEM;
 }

 inode->i_fop = &sel_class_ops;
 inode->i_ino = sel_class_to_ino(index);
 d_add(dentry, inode);

 dentry = sel_make_dir(dir, "perms", &fsi->last_class_ino);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 rc = sel_make_perm_files(classname, index, dentry);

 return rc;
}
