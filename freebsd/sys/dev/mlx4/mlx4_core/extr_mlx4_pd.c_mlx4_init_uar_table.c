
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_uars; int reserved_uars; } ;
struct mlx4_dev {TYPE_2__ caps; int uar_page_shift; } ;
struct TYPE_4__ {int bitmap; } ;
struct TYPE_6__ {TYPE_1__ uar_table; } ;


 int ENODEV ;
 int mlx4_bitmap_init (int *,int,int,int ,int ) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 int mlx4_get_num_reserved_uar (struct mlx4_dev*) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;

int mlx4_init_uar_table(struct mlx4_dev *dev)
{
 int num_reserved_uar = mlx4_get_num_reserved_uar(dev);

 mlx4_dbg(dev, "uar_page_shift = %d", dev->uar_page_shift);
 mlx4_dbg(dev, "Effective reserved_uars=%d", dev->caps.reserved_uars);

 if (dev->caps.num_uars <= num_reserved_uar) {
  mlx4_err(dev, "Only %d UAR pages (need more than %d)\n",
    dev->caps.num_uars, num_reserved_uar);
  mlx4_err(dev, "Increase firmware log2_uar_bar_megabytes?\n");
  return -ENODEV;
 }

 return mlx4_bitmap_init(&mlx4_priv(dev)->uar_table.bitmap,
    dev->caps.num_uars, dev->caps.num_uars - 1,
    dev->caps.reserved_uars, 0);
}
