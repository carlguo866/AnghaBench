
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ice_vsi {int dummy; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ethtool_coalesce {int dummy; } ;


 int EINVAL ;
 scalar_t__ ice_get_q_coalesce (struct ice_vsi*,struct ethtool_coalesce*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
__ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
     int q_num)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;

 if (q_num < 0)
  q_num = 0;

 if (ice_get_q_coalesce(vsi, ec, q_num))
  return -EINVAL;

 return 0;
}
