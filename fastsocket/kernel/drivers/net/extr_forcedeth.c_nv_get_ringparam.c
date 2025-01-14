
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {scalar_t__ desc_ver; int tx_ring_size; int rx_ring_size; } ;
struct ethtool_ringparam {int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int rx_pending; void* tx_max_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; void* rx_max_pending; } ;


 scalar_t__ DESC_VER_1 ;
 void* RING_MAX_DESC_VER_1 ;
 void* RING_MAX_DESC_VER_2_3 ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nv_get_ringparam(struct net_device *dev, struct ethtool_ringparam* ring)
{
 struct fe_priv *np = netdev_priv(dev);

 ring->rx_max_pending = (np->desc_ver == DESC_VER_1) ? RING_MAX_DESC_VER_1 : RING_MAX_DESC_VER_2_3;
 ring->rx_mini_max_pending = 0;
 ring->rx_jumbo_max_pending = 0;
 ring->tx_max_pending = (np->desc_ver == DESC_VER_1) ? RING_MAX_DESC_VER_1 : RING_MAX_DESC_VER_2_3;

 ring->rx_pending = np->rx_ring_size;
 ring->rx_mini_pending = 0;
 ring->rx_jumbo_pending = 0;
 ring->tx_pending = np->tx_ring_size;
}
