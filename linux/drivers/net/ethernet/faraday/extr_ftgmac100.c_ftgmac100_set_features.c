
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; } ;
struct ftgmac100 {scalar_t__ base; TYPE_1__* netdev; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int features; } ;


 int FTGMAC100_MACCR_RM_VLAN ;
 scalar_t__ FTGMAC100_OFFSET_MACCR ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int ftgmac100_set_features(struct net_device *netdev,
      netdev_features_t features)
{
 struct ftgmac100 *priv = netdev_priv(netdev);
 netdev_features_t changed = netdev->features ^ features;

 if (!netif_running(netdev))
  return 0;


 if (changed & NETIF_F_HW_VLAN_CTAG_RX) {
  u32 maccr;

  maccr = ioread32(priv->base + FTGMAC100_OFFSET_MACCR);
  if (priv->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
   maccr |= FTGMAC100_MACCR_RM_VLAN;
  else
   maccr &= ~FTGMAC100_MACCR_RM_VLAN;
  iowrite32(maccr, priv->base + FTGMAC100_OFFSET_MACCR);
 }

 return 0;
}
