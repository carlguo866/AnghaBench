
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int num_tx_queues; int num_rx_queues; TYPE_3__* tx_ring; int netdev; TYPE_2__* rx_ring; TYPE_1__* pdev; int rx_ring_count; int tx_ring_count; } ;
struct TYPE_6__ {int queue_index; int reg_idx; int netdev; int * dev; int count; } ;
struct TYPE_5__ {int queue_index; int reg_idx; int netdev; int * dev; int count; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int,int,int ) ;
 int kfree (TYPE_3__*) ;

__attribute__((used)) static int ixgbevf_alloc_queues(struct ixgbevf_adapter *adapter)
{
 int i;

 adapter->tx_ring = kcalloc(adapter->num_tx_queues,
       sizeof(struct ixgbevf_ring), GFP_KERNEL);
 if (!adapter->tx_ring)
  goto err_tx_ring_allocation;

 adapter->rx_ring = kcalloc(adapter->num_rx_queues,
       sizeof(struct ixgbevf_ring), GFP_KERNEL);
 if (!adapter->rx_ring)
  goto err_rx_ring_allocation;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  adapter->tx_ring[i].count = adapter->tx_ring_count;
  adapter->tx_ring[i].queue_index = i;

  adapter->tx_ring[i].reg_idx = i;
  adapter->tx_ring[i].dev = &adapter->pdev->dev;
  adapter->tx_ring[i].netdev = adapter->netdev;
 }

 for (i = 0; i < adapter->num_rx_queues; i++) {
  adapter->rx_ring[i].count = adapter->rx_ring_count;
  adapter->rx_ring[i].queue_index = i;
  adapter->rx_ring[i].reg_idx = i;
  adapter->rx_ring[i].dev = &adapter->pdev->dev;
  adapter->rx_ring[i].netdev = adapter->netdev;
 }

 return 0;

err_rx_ring_allocation:
 kfree(adapter->tx_ring);
err_tx_ring_allocation:
 return -ENOMEM;
}
