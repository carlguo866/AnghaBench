
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; } ;
struct bcm_enet_priv {int tx_ring_size; int rx_ring_size; } ;


 int bcm_enet_open (struct net_device*) ;
 int bcm_enet_set_multicast_list (struct net_device*) ;
 int bcm_enet_stop (struct net_device*) ;
 int dev_close (struct net_device*) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bcm_enet_set_ringparam(struct net_device *dev,
      struct ethtool_ringparam *ering)
{
 struct bcm_enet_priv *priv;
 int was_running;

 priv = netdev_priv(dev);

 was_running = 0;
 if (netif_running(dev)) {
  bcm_enet_stop(dev);
  was_running = 1;
 }

 priv->rx_ring_size = ering->rx_pending;
 priv->tx_ring_size = ering->tx_pending;

 if (was_running) {
  int err;

  err = bcm_enet_open(dev);
  if (err)
   dev_close(dev);
  else
   bcm_enet_set_multicast_list(dev);
 }
 return 0;
}
