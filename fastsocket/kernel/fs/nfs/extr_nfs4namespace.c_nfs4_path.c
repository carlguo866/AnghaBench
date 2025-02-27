
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {char* mnt_devname; int mnt_root; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 char* nfs_path (char const*,int ,struct dentry const*,char*,int ) ;
 char* nfs_path_component (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *nfs4_path(const struct vfsmount *mnt_parent,
         const struct dentry *dentry,
         char *buffer, ssize_t buflen)
{
 const char *srvpath;
 const char *devname = mnt_parent->mnt_devname;
 const char *limit = (devname + strlen(devname));

 srvpath = nfs_path_component(devname, limit);
 if (!srvpath)
  srvpath = mnt_parent->mnt_devname;

 return nfs_path(srvpath, mnt_parent->mnt_root, dentry, buffer, buflen);
}
