
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct devlink_health_reporter* rx_reporter; int netdev; int mdev; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;


 scalar_t__ IS_ERR (struct devlink_health_reporter*) ;
 int MLX5E_REPORTER_RX_GRACEFUL_PERIOD ;
 int PTR_ERR (struct devlink_health_reporter*) ;
 struct devlink_health_reporter* devlink_health_reporter_create (struct devlink*,int *,int ,int,struct mlx5e_priv*) ;
 int mlx5_rx_reporter_ops ;
 int netdev_warn (int ,char*,int) ;
 struct devlink* priv_to_devlink (int ) ;

int mlx5e_reporter_rx_create(struct mlx5e_priv *priv)
{
 struct devlink *devlink = priv_to_devlink(priv->mdev);
 struct devlink_health_reporter *reporter;

 reporter = devlink_health_reporter_create(devlink,
        &mlx5_rx_reporter_ops,
        MLX5E_REPORTER_RX_GRACEFUL_PERIOD,
        1, priv);
 if (IS_ERR(reporter)) {
  netdev_warn(priv->netdev, "Failed to create rx reporter, err = %ld\n",
       PTR_ERR(reporter));
  return PTR_ERR(reporter);
 }
 priv->rx_reporter = reporter;
 return 0;
}
