
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_ctime; } ;
struct ext2_dir_entry_2 {int dummy; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int ENOENT ;
 int ext2_delete_entry (struct ext2_dir_entry_2*,struct page*) ;
 struct ext2_dir_entry_2* ext2_find_entry (struct inode*,int *,struct page**) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static int ext2_unlink(struct inode * dir, struct dentry *dentry)
{
 struct inode * inode = dentry->d_inode;
 struct ext2_dir_entry_2 * de;
 struct page * page;
 int err = -ENOENT;

 de = ext2_find_entry (dir, &dentry->d_name, &page);
 if (!de)
  goto out;

 err = ext2_delete_entry (de, page);
 if (err)
  goto out;

 inode->i_ctime = dir->i_ctime;
 inode_dec_link_count(inode);
 err = 0;
out:
 return err;
}
