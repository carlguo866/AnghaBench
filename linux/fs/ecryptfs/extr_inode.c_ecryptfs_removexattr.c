
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_opflags; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int IOP_XATTR ;
 int __vfs_removexattr (struct dentry*,char const*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 struct inode* ecryptfs_inode_to_lower (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int ecryptfs_removexattr(struct dentry *dentry, struct inode *inode,
    const char *name)
{
 int rc;
 struct dentry *lower_dentry;
 struct inode *lower_inode;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 lower_inode = ecryptfs_inode_to_lower(inode);
 if (!(lower_inode->i_opflags & IOP_XATTR)) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 inode_lock(lower_inode);
 rc = __vfs_removexattr(lower_dentry, name);
 inode_unlock(lower_inode);
out:
 return rc;
}
