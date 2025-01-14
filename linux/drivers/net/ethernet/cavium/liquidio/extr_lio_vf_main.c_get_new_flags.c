
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
typedef enum octnet_ifflags { ____Placeholder_octnet_ifflags } octnet_ifflags ;


 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 scalar_t__ MAX_OCTEON_MULTICAST_ADDR ;
 int OCTNET_IFFLAG_ALLMULTI ;
 int OCTNET_IFFLAG_BROADCAST ;
 int OCTNET_IFFLAG_MULTICAST ;
 int OCTNET_IFFLAG_PROMISC ;
 int OCTNET_IFFLAG_UNICAST ;
 scalar_t__ netdev_mc_count (struct net_device*) ;

__attribute__((used)) static enum octnet_ifflags get_new_flags(struct net_device *netdev)
{
 enum octnet_ifflags f = OCTNET_IFFLAG_UNICAST;

 if (netdev->flags & IFF_PROMISC)
  f |= OCTNET_IFFLAG_PROMISC;

 if (netdev->flags & IFF_ALLMULTI)
  f |= OCTNET_IFFLAG_ALLMULTI;

 if (netdev->flags & IFF_MULTICAST) {
  f |= OCTNET_IFFLAG_MULTICAST;




  if (netdev_mc_count(netdev) > MAX_OCTEON_MULTICAST_ADDR)
   f |= OCTNET_IFFLAG_ALLMULTI;
 }

 if (netdev->flags & IFF_BROADCAST)
  f |= OCTNET_IFFLAG_BROADCAST;

 return f;
}
