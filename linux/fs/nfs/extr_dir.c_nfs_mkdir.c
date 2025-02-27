
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int (* mkdir ) (struct inode*,struct dentry*,struct iattr*) ;} ;
struct TYPE_3__ {int s_id; } ;


 int ATTR_MODE ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int S_IFDIR ;
 int VFS ;
 int d_drop (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*,struct iattr*) ;
 int trace_nfs_mkdir_enter (struct inode*,struct dentry*) ;
 int trace_nfs_mkdir_exit (struct inode*,struct dentry*,int) ;

int nfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct iattr attr;
 int error;

 dfprintk(VFS, "NFS: mkdir(%s/%lu), %pd\n",
   dir->i_sb->s_id, dir->i_ino, dentry);

 attr.ia_valid = ATTR_MODE;
 attr.ia_mode = mode | S_IFDIR;

 trace_nfs_mkdir_enter(dir, dentry);
 error = NFS_PROTO(dir)->mkdir(dir, dentry, &attr);
 trace_nfs_mkdir_exit(dir, dentry, error);
 if (error != 0)
  goto out_err;
 return 0;
out_err:
 d_drop(dentry);
 return error;
}
