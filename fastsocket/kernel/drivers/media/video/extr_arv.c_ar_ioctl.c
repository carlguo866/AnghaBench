
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ar_do_ioctl ;
 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long ar_ioctl(struct file *file, unsigned int cmd,
      unsigned long arg)
{
 return video_usercopy(file, cmd, arg, ar_do_ioctl);
}
