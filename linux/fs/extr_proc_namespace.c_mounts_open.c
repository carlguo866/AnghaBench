
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mounts_open_common (struct inode*,struct file*,int ) ;
 int show_vfsmnt ;

__attribute__((used)) static int mounts_open(struct inode *inode, struct file *file)
{
 return mounts_open_common(inode, file, show_vfsmnt);
}
