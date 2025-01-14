
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct path {struct dentry* dentry; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; int ia_mode; } ;
struct device {int devt; } ;
struct dentry {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_5__ {int * i_private; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int AT_FDCWD ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int create_path (char const*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int done_path_create (struct path*,struct dentry*) ;
 int inode_lock (TYPE_1__*) ;
 int inode_unlock (TYPE_1__*) ;
 struct dentry* kern_path_create (int ,char const*,struct path*,int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int thread ;
 int vfs_mknod (TYPE_1__*,struct dentry*,int ,int ) ;

__attribute__((used)) static int handle_create(const char *nodename, umode_t mode, kuid_t uid,
    kgid_t gid, struct device *dev)
{
 struct dentry *dentry;
 struct path path;
 int err;

 dentry = kern_path_create(AT_FDCWD, nodename, &path, 0);
 if (dentry == ERR_PTR(-ENOENT)) {
  create_path(nodename);
  dentry = kern_path_create(AT_FDCWD, nodename, &path, 0);
 }
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 err = vfs_mknod(d_inode(path.dentry), dentry, mode, dev->devt);
 if (!err) {
  struct iattr newattrs;

  newattrs.ia_mode = mode;
  newattrs.ia_uid = uid;
  newattrs.ia_gid = gid;
  newattrs.ia_valid = ATTR_MODE|ATTR_UID|ATTR_GID;
  inode_lock(d_inode(dentry));
  notify_change(dentry, &newattrs, ((void*)0));
  inode_unlock(d_inode(dentry));


  d_inode(dentry)->i_private = &thread;
 }
 done_path_create(&path, dentry);
 return err;
}
