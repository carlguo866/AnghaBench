
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_bridge_device {int vlan_enabled; int list; int mids_list; int ops; int ports_list; int mrouter; int multicast_enabled; struct net_device* dev; } ;
struct mlxsw_sp_bridge {int vlan_enabled_exists; int bridges_list; int bridge_8021d_ops; int bridge_8021q_ops; TYPE_2__* mlxsw_sp; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bus_info; } ;
struct TYPE_3__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mlxsw_sp_bridge_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int br_multicast_enabled (struct net_device*) ;
 int br_multicast_router (struct net_device*) ;
 int br_vlan_enabled (struct net_device*) ;
 int dev_err (struct device*,char*) ;
 struct mlxsw_sp_bridge_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct mlxsw_sp_bridge_device *
mlxsw_sp_bridge_device_create(struct mlxsw_sp_bridge *bridge,
         struct net_device *br_dev)
{
 struct device *dev = bridge->mlxsw_sp->bus_info->dev;
 struct mlxsw_sp_bridge_device *bridge_device;
 bool vlan_enabled = br_vlan_enabled(br_dev);

 if (vlan_enabled && bridge->vlan_enabled_exists) {
  dev_err(dev, "Only one VLAN-aware bridge is supported\n");
  return ERR_PTR(-EINVAL);
 }

 bridge_device = kzalloc(sizeof(*bridge_device), GFP_KERNEL);
 if (!bridge_device)
  return ERR_PTR(-ENOMEM);

 bridge_device->dev = br_dev;
 bridge_device->vlan_enabled = vlan_enabled;
 bridge_device->multicast_enabled = br_multicast_enabled(br_dev);
 bridge_device->mrouter = br_multicast_router(br_dev);
 INIT_LIST_HEAD(&bridge_device->ports_list);
 if (vlan_enabled) {
  bridge->vlan_enabled_exists = 1;
  bridge_device->ops = bridge->bridge_8021q_ops;
 } else {
  bridge_device->ops = bridge->bridge_8021d_ops;
 }
 INIT_LIST_HEAD(&bridge_device->mids_list);
 list_add(&bridge_device->list, &bridge->bridges_list);

 return bridge_device;
}
