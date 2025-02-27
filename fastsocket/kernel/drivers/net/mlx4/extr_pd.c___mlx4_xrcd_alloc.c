
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_priv {int xrcd_bitmap; } ;
struct mlx4_dev {int dummy; } ;


 int ENOMEM ;
 int mlx4_bitmap_alloc (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int __mlx4_xrcd_alloc(struct mlx4_dev *dev, u32 *xrcdn)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 *xrcdn = mlx4_bitmap_alloc(&priv->xrcd_bitmap);
 if (*xrcdn == -1)
  return -ENOMEM;

 return 0;
}
