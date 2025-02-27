
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int EDQUOT ;
 int ext2_acl_chmod (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 scalar_t__ vfs_dq_transfer (struct inode*,struct iattr*) ;

int ext2_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = dentry->d_inode;
 int error;

 error = inode_change_ok(inode, iattr);
 if (error)
  return error;
 if ((iattr->ia_valid & ATTR_UID && iattr->ia_uid != inode->i_uid) ||
     (iattr->ia_valid & ATTR_GID && iattr->ia_gid != inode->i_gid)) {
  error = vfs_dq_transfer(inode, iattr) ? -EDQUOT : 0;
  if (error)
   return error;
 }
 error = inode_setattr(inode, iattr);
 if (!error && (iattr->ia_valid & ATTR_MODE))
  error = ext2_acl_chmod(inode);
 return error;
}
