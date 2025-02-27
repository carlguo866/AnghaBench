
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int amiflop_mutex ;
 int fd_locked_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fd_ioctl(struct block_device *bdev, fmode_t mode,
        unsigned int cmd, unsigned long param)
{
 int ret;

 mutex_lock(&amiflop_mutex);
 ret = fd_locked_ioctl(bdev, mode, cmd, param);
 mutex_unlock(&amiflop_mutex);

 return ret;
}
