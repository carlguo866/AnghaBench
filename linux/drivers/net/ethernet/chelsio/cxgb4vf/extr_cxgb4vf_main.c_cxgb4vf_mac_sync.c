
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct port_info {int viid; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct hash_mac_addr {int list; int addr; } ;
struct adapter {int mac_hlist; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int cxgb4vf_set_addr_hash (struct port_info*) ;
 int ether_addr_copy (int ,int const*) ;
 int is_unicast_ether_addr (int const*) ;
 struct hash_mac_addr* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_alloc_mac_filt (struct adapter*,int ,int,int,int const**,int *,scalar_t__*,int) ;

__attribute__((used)) static int cxgb4vf_mac_sync(struct net_device *netdev, const u8 *mac_addr)
{
 struct port_info *pi = netdev_priv(netdev);
 struct adapter *adapter = pi->adapter;
 int ret;
 u64 mhash = 0;
 u64 uhash = 0;
 bool free = 0;
 bool ucast = is_unicast_ether_addr(mac_addr);
 const u8 *maclist[1] = {mac_addr};
 struct hash_mac_addr *new_entry;

 ret = t4vf_alloc_mac_filt(adapter, pi->viid, free, 1, maclist,
      ((void*)0), ucast ? &uhash : &mhash, 0);
 if (ret < 0)
  goto out;




 if (uhash || mhash) {
  new_entry = kzalloc(sizeof(*new_entry), GFP_ATOMIC);
  if (!new_entry)
   return -ENOMEM;
  ether_addr_copy(new_entry->addr, mac_addr);
  list_add_tail(&new_entry->list, &adapter->mac_hlist);
  ret = cxgb4vf_set_addr_hash(pi);
 }
out:
 return ret < 0 ? ret : 0;
}
