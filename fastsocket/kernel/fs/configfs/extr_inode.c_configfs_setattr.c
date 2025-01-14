
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_gid; TYPE_1__* i_sb; } ;
struct iattr {unsigned int ia_valid; int ia_mode; void* ia_ctime; void* ia_mtime; void* ia_atime; scalar_t__ ia_gid; scalar_t__ ia_uid; } ;
struct dentry {struct configfs_dirent* d_fsdata; struct inode* d_inode; } ;
struct configfs_dirent {int s_mode; struct iattr* s_iattr; } ;
struct TYPE_2__ {int s_time_gran; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_UID ;
 int CAP_FSETID ;
 void* CURRENT_TIME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int S_ISGID ;
 int capable (int ) ;
 int in_group_p (int ) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 struct iattr* kzalloc (int,int ) ;
 void* timespec_trunc (void*,int ) ;

int configfs_setattr(struct dentry * dentry, struct iattr * iattr)
{
 struct inode * inode = dentry->d_inode;
 struct configfs_dirent * sd = dentry->d_fsdata;
 struct iattr * sd_iattr;
 unsigned int ia_valid = iattr->ia_valid;
 int error;

 if (!sd)
  return -EINVAL;

 sd_iattr = sd->s_iattr;

 error = inode_change_ok(inode, iattr);
 if (error)
  return error;

 error = inode_setattr(inode, iattr);
 if (error)
  return error;

 if (!sd_iattr) {

  sd_iattr = kzalloc(sizeof(struct iattr), GFP_KERNEL);
  if (!sd_iattr)
   return -ENOMEM;

  sd_iattr->ia_mode = sd->s_mode;
  sd_iattr->ia_uid = 0;
  sd_iattr->ia_gid = 0;
  sd_iattr->ia_atime = sd_iattr->ia_mtime = sd_iattr->ia_ctime = CURRENT_TIME;
  sd->s_iattr = sd_iattr;
 }



 if (ia_valid & ATTR_UID)
  sd_iattr->ia_uid = iattr->ia_uid;
 if (ia_valid & ATTR_GID)
  sd_iattr->ia_gid = iattr->ia_gid;
 if (ia_valid & ATTR_ATIME)
  sd_iattr->ia_atime = timespec_trunc(iattr->ia_atime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_MTIME)
  sd_iattr->ia_mtime = timespec_trunc(iattr->ia_mtime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_CTIME)
  sd_iattr->ia_ctime = timespec_trunc(iattr->ia_ctime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_MODE) {
  umode_t mode = iattr->ia_mode;

  if (!in_group_p(inode->i_gid) && !capable(CAP_FSETID))
   mode &= ~S_ISGID;
  sd_iattr->ia_mode = sd->s_mode = mode;
 }

 return error;
}
