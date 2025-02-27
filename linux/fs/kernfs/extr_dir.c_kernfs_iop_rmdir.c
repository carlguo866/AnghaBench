
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_syscall_ops {int (* rmdir ) (struct kernfs_node*) ;} ;
struct kernfs_node {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct kernfs_syscall_ops* syscall_ops; } ;


 int ENODEV ;
 int EPERM ;
 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 int kernfs_get_active (struct kernfs_node*) ;
 int kernfs_put_active (struct kernfs_node*) ;
 TYPE_1__* kernfs_root (struct kernfs_node*) ;
 int stub1 (struct kernfs_node*) ;

__attribute__((used)) static int kernfs_iop_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct kernfs_node *kn = kernfs_dentry_node(dentry);
 struct kernfs_syscall_ops *scops = kernfs_root(kn)->syscall_ops;
 int ret;

 if (!scops || !scops->rmdir)
  return -EPERM;

 if (!kernfs_get_active(kn))
  return -ENODEV;

 ret = scops->rmdir(kn);

 kernfs_put_active(kn);
 return ret;
}
