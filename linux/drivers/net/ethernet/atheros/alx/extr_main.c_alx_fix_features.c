
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;
typedef int netdev_features_t ;


 scalar_t__ ALX_MAX_TSO_PKT_SIZE ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;

__attribute__((used)) static netdev_features_t alx_fix_features(struct net_device *netdev,
       netdev_features_t features)
{
 if (netdev->mtu > ALX_MAX_TSO_PKT_SIZE)
  features &= ~(NETIF_F_TSO | NETIF_F_TSO6);

 return features;
}
