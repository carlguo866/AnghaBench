
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rtnl_link_stats64 {int dummy; } ;
struct nfp_repr {TYPE_1__* port; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int type; } ;





 scalar_t__ WARN_ON (int) ;
 int __nfp_port_get_eth_port (TYPE_1__*) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_repr_phy_port_get_stats64 (TYPE_1__*,struct rtnl_link_stats64*) ;
 int nfp_repr_vnic_get_stats64 (TYPE_1__*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void
nfp_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
 struct nfp_repr *repr = netdev_priv(netdev);

 if (WARN_ON(!repr->port))
  return;

 switch (repr->port->type) {
 case 129:
  if (!__nfp_port_get_eth_port(repr->port))
   break;
  nfp_repr_phy_port_get_stats64(repr->port, stats);
  break;
 case 130:
 case 128:
  nfp_repr_vnic_get_stats64(repr->port, stats);
 default:
  break;
 }
}
