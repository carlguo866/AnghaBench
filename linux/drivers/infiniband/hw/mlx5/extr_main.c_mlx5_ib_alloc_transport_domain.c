
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int disable_local_lb_mc ;
 int disable_local_lb_uc ;
 int log_max_transport_domain ;
 int mlx5_cmd_alloc_transport_domain (int ,int *,int ) ;
 int mlx5_ib_enable_lb (struct mlx5_ib_dev*,int,int) ;
 int port_type ;

__attribute__((used)) static int mlx5_ib_alloc_transport_domain(struct mlx5_ib_dev *dev, u32 *tdn,
       u16 uid)
{
 int err;

 if (!MLX5_CAP_GEN(dev->mdev, log_max_transport_domain))
  return 0;

 err = mlx5_cmd_alloc_transport_domain(dev->mdev, tdn, uid);
 if (err)
  return err;

 if ((MLX5_CAP_GEN(dev->mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH) ||
     (!MLX5_CAP_GEN(dev->mdev, disable_local_lb_uc) &&
      !MLX5_CAP_GEN(dev->mdev, disable_local_lb_mc)))
  return err;

 return mlx5_ib_enable_lb(dev, 1, 0);
}
