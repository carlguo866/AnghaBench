
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 struct inode* d_inode (struct dentry*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_rsqa_alloc (struct gfs2_inode*) ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;
 int gfs2_setattr_size (struct inode*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_chown (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

__attribute__((used)) static int gfs2_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder i_gh;
 int error;

 error = gfs2_rsqa_alloc(ip);
 if (error)
  return error;

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
 if (error)
  return error;

 error = -EPERM;
 if (IS_IMMUTABLE(inode) || IS_APPEND(inode))
  goto out;

 error = setattr_prepare(dentry, attr);
 if (error)
  goto out;

 if (attr->ia_valid & ATTR_SIZE)
  error = gfs2_setattr_size(inode, attr->ia_size);
 else if (attr->ia_valid & (ATTR_UID | ATTR_GID))
  error = setattr_chown(inode, attr);
 else {
  error = gfs2_setattr_simple(inode, attr);
  if (!error && attr->ia_valid & ATTR_MODE)
   error = posix_acl_chmod(inode, inode->i_mode);
 }

out:
 if (!error)
  mark_inode_dirty(inode);
 gfs2_glock_dq_uninit(&i_gh);
 return error;
}
