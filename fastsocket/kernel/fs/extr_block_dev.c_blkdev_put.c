
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int __blkdev_put (struct block_device*,int ,int ) ;

int blkdev_put(struct block_device *bdev, fmode_t mode)
{
 return __blkdev_put(bdev, mode, 0);
}
