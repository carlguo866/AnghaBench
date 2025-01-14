
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_2__ {int duplex; scalar_t__ speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ SPEED_UNKNOWN ;
 scalar_t__ mlx5e_port_ptys2speed (int ,scalar_t__,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static void get_speed_duplex(struct net_device *netdev,
        u32 eth_proto_oper, bool force_legacy,
        struct ethtool_link_ksettings *link_ksettings)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 u32 speed = SPEED_UNKNOWN;
 u8 duplex = DUPLEX_UNKNOWN;

 if (!netif_carrier_ok(netdev))
  goto out;

 speed = mlx5e_port_ptys2speed(priv->mdev, eth_proto_oper, force_legacy);
 if (!speed) {
  speed = SPEED_UNKNOWN;
  goto out;
 }

 duplex = DUPLEX_FULL;

out:
 link_ksettings->base.speed = speed;
 link_ksettings->base.duplex = duplex;
}
