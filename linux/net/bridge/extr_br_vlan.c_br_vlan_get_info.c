
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int flags; } ;
struct net_bridge_port {int dummy; } ;
struct bridge_vlan_info {int flags; scalar_t__ vid; } ;


 int ASSERT_RTNL () ;
 int BRIDGE_VLAN_INFO_PVID ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ br_get_pvid (struct net_bridge_vlan_group*) ;
 struct net_bridge_port* br_port_get_check_rtnl (struct net_device const*) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,scalar_t__) ;
 struct net_bridge_vlan_group* br_vlan_group (int ) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;
 int netdev_priv (struct net_device const*) ;
 scalar_t__ netif_is_bridge_master (struct net_device const*) ;

int br_vlan_get_info(const struct net_device *dev, u16 vid,
       struct bridge_vlan_info *p_vinfo)
{
 struct net_bridge_vlan_group *vg;
 struct net_bridge_vlan *v;
 struct net_bridge_port *p;

 ASSERT_RTNL();
 p = br_port_get_check_rtnl(dev);
 if (p)
  vg = nbp_vlan_group(p);
 else if (netif_is_bridge_master(dev))
  vg = br_vlan_group(netdev_priv(dev));
 else
  return -EINVAL;

 v = br_vlan_find(vg, vid);
 if (!v)
  return -ENOENT;

 p_vinfo->vid = vid;
 p_vinfo->flags = v->flags;
 if (vid == br_get_pvid(vg))
  p_vinfo->flags |= BRIDGE_VLAN_INFO_PVID;
 return 0;
}
