
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; } ;
struct queue_limits {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct request_queue* bdev_get_queue (struct block_device*) ;
 int blk_stack_limits (struct queue_limits*,int *,int ) ;
 scalar_t__ get_start_sect (struct block_device*) ;

int bdev_stack_limits(struct queue_limits *t, struct block_device *bdev,
        sector_t start)
{
 struct request_queue *bq = bdev_get_queue(bdev);

 start += get_start_sect(bdev);

 return blk_stack_limits(t, &bq->limits, start);
}
