
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int,struct dentry*,char const*,void const*,size_t,int) ;
 int cap_inode_setxattr (struct dentry*,char const*,void const*,size_t,int) ;
 int d_backing_inode (struct dentry*) ;
 int evm_inode_setxattr (struct dentry*,char const*,void const*,size_t) ;
 int ima_inode_setxattr (struct dentry*,char const*,void const*,size_t) ;
 int inode_setxattr ;
 scalar_t__ unlikely (int ) ;

int security_inode_setxattr(struct dentry *dentry, const char *name,
       const void *value, size_t size, int flags)
{
 int ret;

 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return 0;




 ret = call_int_hook(inode_setxattr, 1, dentry, name, value, size,
    flags);

 if (ret == 1)
  ret = cap_inode_setxattr(dentry, name, value, size, flags);
 if (ret)
  return ret;
 ret = ima_inode_setxattr(dentry, name, value, size);
 if (ret)
  return ret;
 return evm_inode_setxattr(dentry, name, value, size);
}
