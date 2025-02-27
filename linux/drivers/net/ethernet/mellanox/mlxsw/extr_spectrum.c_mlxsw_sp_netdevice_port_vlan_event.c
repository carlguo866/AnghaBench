
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_changeupper_info {int linking; struct net_device* upper_dev; int info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int WARN_ON (int) ;
 int mlxsw_sp_bridge_device_is_offloaded (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_bridge_has_vxlan (struct net_device*) ;
 int mlxsw_sp_bridge_vxlan_is_valid (struct net_device*,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_bridge_join (struct mlxsw_sp_port*,struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_bridge_leave (struct mlxsw_sp_port*,struct net_device*,struct net_device*) ;
 int mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_rif_macvlan_del (struct mlxsw_sp*,struct net_device*) ;
 int netdev_has_any_upper_dev (struct net_device*) ;
 struct netlink_ext_ack* netdev_notifier_info_to_extack (int *) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int netif_is_bridge_master (struct net_device*) ;
 int netif_is_macvlan (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_netdevice_port_vlan_event(struct net_device *vlan_dev,
           struct net_device *dev,
           unsigned long event, void *ptr,
           u16 vid)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct netdev_notifier_changeupper_info *info = ptr;
 struct netlink_ext_ack *extack;
 struct net_device *upper_dev;
 int err = 0;

 extack = netdev_notifier_info_to_extack(&info->info);

 switch (event) {
 case 128:
  upper_dev = info->upper_dev;
  if (!netif_is_bridge_master(upper_dev) &&
      !netif_is_macvlan(upper_dev)) {
   NL_SET_ERR_MSG_MOD(extack, "Unknown upper device type");
   return -EINVAL;
  }
  if (!info->linking)
   break;
  if (netif_is_bridge_master(upper_dev) &&
      !mlxsw_sp_bridge_device_is_offloaded(mlxsw_sp, upper_dev) &&
      mlxsw_sp_bridge_has_vxlan(upper_dev) &&
      !mlxsw_sp_bridge_vxlan_is_valid(upper_dev, extack))
   return -EOPNOTSUPP;
  if (netdev_has_any_upper_dev(upper_dev) &&
      (!netif_is_bridge_master(upper_dev) ||
       !mlxsw_sp_bridge_device_is_offloaded(mlxsw_sp,
         upper_dev))) {
   NL_SET_ERR_MSG_MOD(extack, "Enslaving a port to a device that already has an upper device is not supported");
   return -EINVAL;
  }
  if (netif_is_macvlan(upper_dev) &&
      !mlxsw_sp_rif_find_by_dev(mlxsw_sp, vlan_dev)) {
   NL_SET_ERR_MSG_MOD(extack, "macvlan is only supported on top of router interfaces");
   return -EOPNOTSUPP;
  }
  break;
 case 129:
  upper_dev = info->upper_dev;
  if (netif_is_bridge_master(upper_dev)) {
   if (info->linking)
    err = mlxsw_sp_port_bridge_join(mlxsw_sp_port,
        vlan_dev,
        upper_dev,
        extack);
   else
    mlxsw_sp_port_bridge_leave(mlxsw_sp_port,
          vlan_dev,
          upper_dev);
  } else if (netif_is_macvlan(upper_dev)) {
   if (!info->linking)
    mlxsw_sp_rif_macvlan_del(mlxsw_sp, upper_dev);
  } else {
   err = -EINVAL;
   WARN_ON(1);
  }
  break;
 }

 return err;
}
