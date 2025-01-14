
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int (* get ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ;} ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ssize_t ;
typedef int gfp_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct xattr_handler const*) ;
 int MAY_READ ;
 int PTR_ERR (struct xattr_handler const*) ;
 char* krealloc (char*,int,int ) ;
 int memset (char*,int ,int) ;
 int stub1 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ;
 int stub2 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ;
 int xattr_permission (struct inode*,char const*,int ) ;
 struct xattr_handler* xattr_resolve_name (struct inode*,char const**) ;

ssize_t
vfs_getxattr_alloc(struct dentry *dentry, const char *name, char **xattr_value,
     size_t xattr_size, gfp_t flags)
{
 const struct xattr_handler *handler;
 struct inode *inode = dentry->d_inode;
 char *value = *xattr_value;
 int error;

 error = xattr_permission(inode, name, MAY_READ);
 if (error)
  return error;

 handler = xattr_resolve_name(inode, &name);
 if (IS_ERR(handler))
  return PTR_ERR(handler);
 if (!handler->get)
  return -EOPNOTSUPP;
 error = handler->get(handler, dentry, inode, name, ((void*)0), 0);
 if (error < 0)
  return error;

 if (!value || (error > xattr_size)) {
  value = krealloc(*xattr_value, error + 1, flags);
  if (!value)
   return -ENOMEM;
  memset(value, 0, error + 1);
 }

 error = handler->get(handler, dentry, inode, name, value, error);
 *xattr_value = value;
 return error;
}
