
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {int b_sem; TYPE_1__* b_ops; } ;
struct TYPE_2__ {int (* bop_clear ) (struct nilfs_bmap*) ;} ;


 int down_write (int *) ;
 int stub1 (struct nilfs_bmap*) ;
 int up_write (int *) ;

void nilfs_bmap_clear(struct nilfs_bmap *bmap)
{
 down_write(&bmap->b_sem);
 if (bmap->b_ops->bop_clear != ((void*)0))
  bmap->b_ops->bop_clear(bmap);
 up_write(&bmap->b_sem);
}
