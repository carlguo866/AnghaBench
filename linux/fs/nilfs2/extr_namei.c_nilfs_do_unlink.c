
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_dir_entry {int inode; } ;
struct inode {scalar_t__ i_ino; int i_ctime; int i_nlink; int i_sb; } ;
struct dentry {int d_name; } ;


 int EIO ;
 int ENOENT ;
 int KERN_WARNING ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_delete_entry (struct nilfs_dir_entry*,struct page*) ;
 struct nilfs_dir_entry* nilfs_find_entry (struct inode*,int *,struct page**) ;
 int nilfs_msg (int ,int ,char*,scalar_t__,int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int nilfs_do_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode;
 struct nilfs_dir_entry *de;
 struct page *page;
 int err;

 err = -ENOENT;
 de = nilfs_find_entry(dir, &dentry->d_name, &page);
 if (!de)
  goto out;

 inode = d_inode(dentry);
 err = -EIO;
 if (le64_to_cpu(de->inode) != inode->i_ino)
  goto out;

 if (!inode->i_nlink) {
  nilfs_msg(inode->i_sb, KERN_WARNING,
     "deleting nonexistent file (ino=%lu), %d",
     inode->i_ino, inode->i_nlink);
  set_nlink(inode, 1);
 }
 err = nilfs_delete_entry(de, page);
 if (err)
  goto out;

 inode->i_ctime = dir->i_ctime;
 drop_nlink(inode);
 err = 0;
out:
 return err;
}
