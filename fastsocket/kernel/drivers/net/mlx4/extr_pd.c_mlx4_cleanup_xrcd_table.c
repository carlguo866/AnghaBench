
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {int xrcd_bitmap; } ;


 int mlx4_bitmap_cleanup (int *) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;

void mlx4_cleanup_xrcd_table(struct mlx4_dev *dev)
{
 mlx4_bitmap_cleanup(&mlx4_priv(dev)->xrcd_bitmap);
}
