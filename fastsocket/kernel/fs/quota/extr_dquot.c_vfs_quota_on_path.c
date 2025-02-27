
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct path {TYPE_2__* dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {int d_inode; } ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int EXDEV ;
 int security_quota_on (TYPE_2__*) ;
 int vfs_load_quota_inode (int ,int,int,int) ;

int vfs_quota_on_path(struct super_block *sb, int type, int format_id,
        struct path *path)
{
 int error = security_quota_on(path->dentry);
 if (error)
  return error;

 if (path->mnt->mnt_sb != sb)
  error = -EXDEV;
 else
  error = vfs_load_quota_inode(path->dentry->d_inode, type,
          format_id, DQUOT_USAGE_ENABLED |
          DQUOT_LIMITS_ENABLED);
 return error;
}
