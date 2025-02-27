
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int opencnt; struct inode* rsrc_inode; } ;


 TYPE_1__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int hfs_file_truncate (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int hfs_file_release(struct inode *inode, struct file *file)
{


 if (HFS_IS_RSRC(inode))
  inode = HFS_I(inode)->rsrc_inode;
 if (atomic_dec_and_test(&HFS_I(inode)->opencnt)) {
  inode_lock(inode);
  hfs_file_truncate(inode);




  inode_unlock(inode);
 }
 return 0;
}
