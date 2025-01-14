
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; int priv_flags; unsigned int needed_headroom; scalar_t__ addr_assign_type; int dev_addr; TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct net_bridge_port {int kobj; TYPE_3__* dev; int list; } ;
struct net_bridge {int ifobj; struct net_device* dev; int lock; int port_list; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {scalar_t__ ndo_start_xmit; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EBUSY ;
 int EINVAL ;
 int ELOOP ;
 int EOPNOTSUPP ;
 scalar_t__ ETH_ALEN ;
 int IFF_BRIDGE_PORT ;
 int IFF_DONT_BRIDGE ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 scalar_t__ IS_ERR (struct net_bridge_port*) ;
 int KOBJ_ADD ;
 int NETDEV_CHANGEADDR ;
 int NETDEV_JOIN ;
 scalar_t__ NET_ADDR_SET ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct net_bridge_port*) ;
 int RTM_NEWLINK ;
 int SYSFS_BRIDGE_PORT_ATTR ;
 scalar_t__ br_dev_xmit ;
 int br_fdb_delete_by_port (struct net_bridge*,struct net_bridge_port*,int ,int) ;
 scalar_t__ br_fdb_insert (struct net_bridge*,struct net_bridge_port*,int ,int ) ;
 int br_handle_frame ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_mtu_auto_adjust (struct net_bridge*) ;
 int br_netpoll_disable (struct net_bridge_port*) ;
 int br_netpoll_enable (struct net_bridge_port*) ;
 int br_set_gso_limits (struct net_bridge*) ;
 int br_stp_enable_port (struct net_bridge_port*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int br_sysfs_addif (struct net_bridge_port*) ;
 int brport_ktype ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_disable_lro (struct net_device*) ;
 int dev_pre_changeaddr_notify (struct net_device*,int ,struct netlink_ext_ack*) ;
 int dev_put (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int is_valid_ether_addr (int ) ;
 int kfree (struct net_bridge_port*) ;
 int kobject_init_and_add (int *,int *,int *,int ) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int nbp_switchdev_mark_set (struct net_bridge_port*) ;
 int nbp_update_port_count (struct net_bridge*) ;
 int nbp_vlan_init (struct net_bridge_port*,struct netlink_ext_ack*) ;
 int netdev_err (struct net_device*,char*) ;
 unsigned int netdev_get_fwd_headroom (struct net_device*) ;
 scalar_t__ netdev_master_upper_dev_get (struct net_device*) ;
 int netdev_master_upper_dev_link (struct net_device*,struct net_device*,int *,int *,struct netlink_ext_ack*) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct net_bridge_port*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int netdev_set_rx_headroom (struct net_device*,unsigned int) ;
 int netdev_update_features (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;
 scalar_t__ netdev_uses_dsa (struct net_device*) ;
 scalar_t__ netif_oper_up (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_bridge_port* new_nbp (struct net_bridge*,struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_remove_link (int ,int ) ;
 int update_headroom (struct net_bridge*,unsigned int) ;

int br_add_if(struct net_bridge *br, struct net_device *dev,
       struct netlink_ext_ack *extack)
{
 struct net_bridge_port *p;
 int err = 0;
 unsigned br_hr, dev_hr;
 bool changed_addr;







 if ((dev->flags & IFF_LOOPBACK) ||
     dev->type != ARPHRD_ETHER || dev->addr_len != ETH_ALEN ||
     !is_valid_ether_addr(dev->dev_addr) ||
     netdev_uses_dsa(dev))
  return -EINVAL;


 if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit) {
  NL_SET_ERR_MSG(extack,
          "Can not enslave a bridge to a bridge");
  return -ELOOP;
 }


 if (netdev_master_upper_dev_get(dev))
  return -EBUSY;


 if (dev->priv_flags & IFF_DONT_BRIDGE) {
  NL_SET_ERR_MSG(extack,
          "Device does not allow enslaving to a bridge");
  return -EOPNOTSUPP;
 }

 p = new_nbp(br, dev);
 if (IS_ERR(p))
  return PTR_ERR(p);

 call_netdevice_notifiers(NETDEV_JOIN, dev);

 err = dev_set_allmulti(dev, 1);
 if (err) {
  kfree(p);
  goto err1;
 }

 err = kobject_init_and_add(&p->kobj, &brport_ktype, &(dev->dev.kobj),
       SYSFS_BRIDGE_PORT_ATTR);
 if (err)
  goto err2;

 err = br_sysfs_addif(p);
 if (err)
  goto err2;

 err = br_netpoll_enable(p);
 if (err)
  goto err3;

 err = netdev_rx_handler_register(dev, br_handle_frame, p);
 if (err)
  goto err4;

 dev->priv_flags |= IFF_BRIDGE_PORT;

 err = netdev_master_upper_dev_link(dev, br->dev, ((void*)0), ((void*)0), extack);
 if (err)
  goto err5;

 err = nbp_switchdev_mark_set(p);
 if (err)
  goto err6;

 dev_disable_lro(dev);

 list_add_rcu(&p->list, &br->port_list);

 nbp_update_port_count(br);

 netdev_update_features(br->dev);

 br_hr = br->dev->needed_headroom;
 dev_hr = netdev_get_fwd_headroom(dev);
 if (br_hr < dev_hr)
  update_headroom(br, dev_hr);
 else
  netdev_set_rx_headroom(dev, br_hr);

 if (br_fdb_insert(br, p, dev->dev_addr, 0))
  netdev_err(dev, "failed insert local address bridge forwarding table\n");

 if (br->dev->addr_assign_type != NET_ADDR_SET) {



  err = dev_pre_changeaddr_notify(br->dev, dev->dev_addr, extack);
  if (err)
   goto err7;
 }

 err = nbp_vlan_init(p, extack);
 if (err) {
  netdev_err(dev, "failed to initialize vlan filtering on this port\n");
  goto err7;
 }

 spin_lock_bh(&br->lock);
 changed_addr = br_stp_recalculate_bridge_id(br);

 if (netif_running(dev) && netif_oper_up(dev) &&
     (br->dev->flags & IFF_UP))
  br_stp_enable_port(p);
 spin_unlock_bh(&br->lock);

 br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);

 if (changed_addr)
  call_netdevice_notifiers(NETDEV_CHANGEADDR, br->dev);

 br_mtu_auto_adjust(br);
 br_set_gso_limits(br);

 kobject_uevent(&p->kobj, KOBJ_ADD);

 return 0;

err7:
 list_del_rcu(&p->list);
 br_fdb_delete_by_port(br, p, 0, 1);
 nbp_update_port_count(br);
err6:
 netdev_upper_dev_unlink(dev, br->dev);
err5:
 dev->priv_flags &= ~IFF_BRIDGE_PORT;
 netdev_rx_handler_unregister(dev);
err4:
 br_netpoll_disable(p);
err3:
 sysfs_remove_link(br->ifobj, p->dev->name);
err2:
 kobject_put(&p->kobj);
 dev_set_allmulti(dev, -1);
err1:
 dev_put(dev);
 return err;
}
