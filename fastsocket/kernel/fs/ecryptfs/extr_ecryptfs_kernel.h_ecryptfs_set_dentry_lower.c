
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct ecryptfs_dentry_info {TYPE_1__ lower_path; } ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline void
ecryptfs_set_dentry_lower(struct dentry *dentry, struct dentry *lower_dentry)
{
 ((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path.dentry =
  lower_dentry;
}
