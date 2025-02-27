
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_buftarg {TYPE_2__* bt_bdev; } ;
struct TYPE_4__ {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {int queue; } ;


 int queue_dma_alignment (int ) ;

__attribute__((used)) static inline int
xfs_buftarg_dma_alignment(struct xfs_buftarg *bt)
{
 return queue_dma_alignment(bt->bt_bdev->bd_disk->queue);
}
