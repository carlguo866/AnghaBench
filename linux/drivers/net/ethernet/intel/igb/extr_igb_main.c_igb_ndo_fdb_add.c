
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; } ;


 int ENOMEM ;
 scalar_t__ igb_available_rars (struct igb_adapter*,int) ;
 scalar_t__ is_link_local_ether_addr (unsigned char const*) ;
 scalar_t__ is_unicast_ether_addr (unsigned char const*) ;
 int ndo_dflt_fdb_add (struct ndmsg*,struct nlattr**,struct net_device*,unsigned char const*,int ,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netdev_uc_count (struct net_device*) ;

__attribute__((used)) static int igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
      struct net_device *dev,
      const unsigned char *addr, u16 vid,
      u16 flags,
      struct netlink_ext_ack *extack)
{

 if (is_unicast_ether_addr(addr) || is_link_local_ether_addr(addr)) {
  struct igb_adapter *adapter = netdev_priv(dev);
  int vfn = adapter->vfs_allocated_count;

  if (netdev_uc_count(dev) >= igb_available_rars(adapter, vfn))
   return -ENOMEM;
 }

 return ndo_dflt_fdb_add(ndm, tb, dev, addr, vid, flags);
}
