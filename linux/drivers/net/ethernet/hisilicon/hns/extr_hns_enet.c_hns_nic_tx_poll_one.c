
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct hns_nic_ring_data {int queue_index; TYPE_1__ napi; struct hnae_ring* ring; } ;
struct hns_nic_priv {int state; scalar_t__ link; } ;
struct TYPE_4__ {int tx_pkts; int tx_bytes; int restart_queue; int io_err_cnt; } ;
struct hnae_ring {int next_to_clean; int max_desc_num_per_pkt; TYPE_2__ stats; int * desc_cb; int next_to_use; scalar_t__ io_base; } ;


 int EIO ;
 int NIC_STATE_DOWN ;
 scalar_t__ RCB_REG_HEAD ;
 int hns_nic_reclaim_one_desc (struct hnae_ring*,int*,int*) ;
 scalar_t__ is_ring_empty (struct hnae_ring*) ;
 int is_valid_clean_head (struct hnae_ring*,int) ;
 int netdev_err (struct net_device*,char*,int,int ,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netdev_tx_completed_queue (struct netdev_queue*,int,int) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int prefetch (int *) ;
 int readl_relaxed (scalar_t__) ;
 int ring_space (struct hnae_ring*) ;
 int rmb () ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns_nic_tx_poll_one(struct hns_nic_ring_data *ring_data,
          int budget, void *v)
{
 struct hnae_ring *ring = ring_data->ring;
 struct net_device *ndev = ring_data->napi.dev;
 struct netdev_queue *dev_queue;
 struct hns_nic_priv *priv = netdev_priv(ndev);
 int head;
 int bytes, pkts;

 head = readl_relaxed(ring->io_base + RCB_REG_HEAD);
 rmb();

 if (is_ring_empty(ring) || head == ring->next_to_clean)
  return 0;

 if (!is_valid_clean_head(ring, head)) {
  netdev_err(ndev, "wrong head (%d, %d-%d)\n", head,
      ring->next_to_use, ring->next_to_clean);
  ring->stats.io_err_cnt++;
  return -EIO;
 }

 bytes = 0;
 pkts = 0;
 while (head != ring->next_to_clean) {
  hns_nic_reclaim_one_desc(ring, &bytes, &pkts);

  prefetch(&ring->desc_cb[ring->next_to_clean]);
 }

 ring->stats.tx_pkts += pkts;
 ring->stats.tx_bytes += bytes;

 dev_queue = netdev_get_tx_queue(ndev, ring_data->queue_index);
 netdev_tx_completed_queue(dev_queue, pkts, bytes);

 if (unlikely(priv->link && !netif_carrier_ok(ndev)))
  netif_carrier_on(ndev);

 if (unlikely(pkts && netif_carrier_ok(ndev) &&
       (ring_space(ring) >= ring->max_desc_num_per_pkt * 2))) {



  smp_mb();
  if (netif_tx_queue_stopped(dev_queue) &&
      !test_bit(NIC_STATE_DOWN, &priv->state)) {
   netif_tx_wake_queue(dev_queue);
   ring->stats.restart_queue++;
  }
 }
 return 0;
}
