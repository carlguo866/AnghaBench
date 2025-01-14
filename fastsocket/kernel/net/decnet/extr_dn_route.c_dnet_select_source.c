
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_ifaddr {int ifa_scope; int ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; } ;
typedef int __le16 ;


 int dev_base_lock ;
 int dn_match_addr (int ,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static __le16 dnet_select_source(const struct net_device *dev, __le16 daddr, int scope)
{
 __le16 saddr = 0;
 struct dn_dev *dn_db = dev->dn_ptr;
 struct dn_ifaddr *ifa;
 int best_match = 0;
 int ret;

 read_lock(&dev_base_lock);
 for(ifa = dn_db->ifa_list; ifa; ifa = ifa->ifa_next) {
  if (ifa->ifa_scope > scope)
   continue;
  if (!daddr) {
   saddr = ifa->ifa_local;
   break;
  }
  ret = dn_match_addr(daddr, ifa->ifa_local);
  if (ret > best_match)
   saddr = ifa->ifa_local;
  if (best_match == 0)
   saddr = ifa->ifa_local;
 }
 read_unlock(&dev_base_lock);

 return saddr;
}
