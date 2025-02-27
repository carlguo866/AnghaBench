
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_CSUM_MASK ;
 int NETIF_F_RXCSUM ;

__attribute__((used)) static netdev_features_t ibmveth_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 if (!(features & NETIF_F_RXCSUM))
  features &= ~NETIF_F_CSUM_MASK;

 return features;
}
