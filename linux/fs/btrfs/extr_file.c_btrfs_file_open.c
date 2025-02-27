
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_NOWAIT ;
 int generic_file_open (struct inode*,struct file*) ;

__attribute__((used)) static int btrfs_file_open(struct inode *inode, struct file *filp)
{
 filp->f_mode |= FMODE_NOWAIT;
 return generic_file_open(inode, filp);
}
