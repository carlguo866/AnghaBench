
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {struct net_device* netdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5e_attach_netdev (struct mlx5e_priv*) ;
 int mlx5e_create_mdev_resources (struct mlx5_core_dev*) ;
 int mlx5e_destroy_mdev_resources (struct mlx5_core_dev*) ;
 scalar_t__ netif_device_present (struct net_device*) ;

__attribute__((used)) static int mlx5e_attach(struct mlx5_core_dev *mdev, void *vpriv)
{
 struct mlx5e_priv *priv = vpriv;
 struct net_device *netdev = priv->netdev;
 int err;

 if (netif_device_present(netdev))
  return 0;

 err = mlx5e_create_mdev_resources(mdev);
 if (err)
  return err;

 err = mlx5e_attach_netdev(priv);
 if (err) {
  mlx5e_destroy_mdev_resources(mdev);
  return err;
 }

 return 0;
}
