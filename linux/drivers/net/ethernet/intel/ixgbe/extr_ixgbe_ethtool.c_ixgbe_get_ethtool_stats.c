
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct ixgbe_ring {TYPE_1__ stats; int syncp; } ;
struct TYPE_5__ {scalar_t__* pxoffrxc; scalar_t__* pxonrxc; scalar_t__* pxofftxc; scalar_t__* pxontxc; } ;
struct ixgbe_adapter {TYPE_2__ stats; struct ixgbe_ring** rx_ring; struct ixgbe_ring** tx_ring; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_6__ {int type; int sizeof_stat; int stat_offset; } ;


 int IXGBE_GLOBAL_STATS_LEN ;
 int IXGBE_MAX_PACKET_BUFFERS ;
 int IXGBE_NUM_RX_QUEUES ;


 struct rtnl_link_stats64* dev_get_stats (struct net_device*,struct rtnl_link_stats64*) ;
 TYPE_3__* ixgbe_gstrings_stats ;
 int ixgbe_update_stats (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void ixgbe_get_ethtool_stats(struct net_device *netdev,
        struct ethtool_stats *stats, u64 *data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct rtnl_link_stats64 temp;
 const struct rtnl_link_stats64 *net_stats;
 unsigned int start;
 struct ixgbe_ring *ring;
 int i, j;
 char *p = ((void*)0);

 ixgbe_update_stats(adapter);
 net_stats = dev_get_stats(netdev, &temp);
 for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
  switch (ixgbe_gstrings_stats[i].type) {
  case 128:
   p = (char *) net_stats +
     ixgbe_gstrings_stats[i].stat_offset;
   break;
  case 129:
   p = (char *) adapter +
     ixgbe_gstrings_stats[i].stat_offset;
   break;
  default:
   data[i] = 0;
   continue;
  }

  data[i] = (ixgbe_gstrings_stats[i].sizeof_stat ==
      sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }
 for (j = 0; j < netdev->num_tx_queues; j++) {
  ring = adapter->tx_ring[j];
  if (!ring) {
   data[i] = 0;
   data[i+1] = 0;
   i += 2;
   continue;
  }

  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   data[i] = ring->stats.packets;
   data[i+1] = ring->stats.bytes;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));
  i += 2;
 }
 for (j = 0; j < IXGBE_NUM_RX_QUEUES; j++) {
  ring = adapter->rx_ring[j];
  if (!ring) {
   data[i] = 0;
   data[i+1] = 0;
   i += 2;
   continue;
  }

  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   data[i] = ring->stats.packets;
   data[i+1] = ring->stats.bytes;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));
  i += 2;
 }

 for (j = 0; j < IXGBE_MAX_PACKET_BUFFERS; j++) {
  data[i++] = adapter->stats.pxontxc[j];
  data[i++] = adapter->stats.pxofftxc[j];
 }
 for (j = 0; j < IXGBE_MAX_PACKET_BUFFERS; j++) {
  data[i++] = adapter->stats.pxonrxc[j];
  data[i++] = adapter->stats.pxoffrxc[j];
 }
}
