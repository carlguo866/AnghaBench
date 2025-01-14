
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_fs_info {scalar_t__ policy_opened; } ;
struct policy_load_memory {int data; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct policy_load_memory* private_data; } ;
struct TYPE_2__ {struct selinux_fs_info* s_fs_info; } ;


 int BUG_ON (int) ;
 int kfree (struct policy_load_memory*) ;
 int vfree (int ) ;

__attribute__((used)) static int sel_release_policy(struct inode *inode, struct file *filp)
{
 struct selinux_fs_info *fsi = inode->i_sb->s_fs_info;
 struct policy_load_memory *plm = filp->private_data;

 BUG_ON(!plm);

 fsi->policy_opened = 0;

 vfree(plm->data);
 kfree(plm);

 return 0;
}
