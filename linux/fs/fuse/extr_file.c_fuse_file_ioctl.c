
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long fuse_ioctl_common (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long fuse_file_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 return fuse_ioctl_common(file, cmd, arg, 0);
}
