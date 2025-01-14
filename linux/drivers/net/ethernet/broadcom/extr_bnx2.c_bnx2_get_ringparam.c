
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_jumbo_pending; int rx_pending; int rx_jumbo_max_pending; int rx_max_pending; } ;
struct bnx2 {int tx_ring_size; int rx_pg_ring_size; int rx_ring_size; } ;


 int BNX2_MAX_TOTAL_RX_DESC_CNT ;
 int BNX2_MAX_TOTAL_RX_PG_DESC_CNT ;
 int BNX2_MAX_TX_DESC_CNT ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnx2_get_ringparam(struct net_device *dev, struct ethtool_ringparam *ering)
{
 struct bnx2 *bp = netdev_priv(dev);

 ering->rx_max_pending = BNX2_MAX_TOTAL_RX_DESC_CNT;
 ering->rx_jumbo_max_pending = BNX2_MAX_TOTAL_RX_PG_DESC_CNT;

 ering->rx_pending = bp->rx_ring_size;
 ering->rx_jumbo_pending = bp->rx_pg_ring_size;

 ering->tx_max_pending = BNX2_MAX_TX_DESC_CNT;
 ering->tx_pending = bp->tx_ring_size;
}
