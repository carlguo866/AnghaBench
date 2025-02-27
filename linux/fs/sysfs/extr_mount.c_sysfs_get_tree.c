
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_fs_context {scalar_t__ new_sb_created; } ;
struct fs_context {TYPE_2__* root; struct kernfs_fs_context* fs_private; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int s_iflags; } ;


 int SB_I_USERNS_VISIBLE ;
 int kernfs_get_tree (struct fs_context*) ;

__attribute__((used)) static int sysfs_get_tree(struct fs_context *fc)
{
 struct kernfs_fs_context *kfc = fc->fs_private;
 int ret;

 ret = kernfs_get_tree(fc);
 if (ret)
  return ret;

 if (kfc->new_sb_created)
  fc->root->d_sb->s_iflags |= SB_I_USERNS_VISIBLE;
 return 0;
}
