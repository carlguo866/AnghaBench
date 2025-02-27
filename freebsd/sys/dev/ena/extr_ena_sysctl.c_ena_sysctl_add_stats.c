
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ena_stats_tx {int llq_buffer_copy; int queue_stop; int queue_wakeup; int collapse_err; int collapse; int bad_req_id; int missing_tx_comp; int doorbells; int dma_mapping_err; int prepare_ctx_err; int bytes; int cnt; } ;
struct ena_stats_rx {int empty_rx_ring; int bad_req_id; int bad_desc_num; int dma_mapping_err; int mjum_alloc_fail; int mbuf_alloc_fail; int bad_csum; int refil_partial; int bytes; int cnt; } ;
struct ena_stats_dev {int admin_q_pause; int interface_down; int interface_up; int wd_expired; } ;
struct ena_ring {struct ena_stats_rx rx_stats; struct ena_stats_tx tx_stats; } ;
struct ena_hw_stats {int rx_drops; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct ena_com_stats_admin {int no_completion; int out_of_space; int completed_cmd; int submitted_cmd; int aborted_cmd; } ;
struct ena_adapter {int num_queues; TYPE_2__* ena_dev; struct ena_stats_dev dev_stats; struct ena_hw_stats hw_stats; struct ena_ring* rx_ring; struct ena_ring* tx_ring; int pdev; } ;
typedef int device_t ;
struct TYPE_3__ {struct ena_com_stats_admin stats; } ;
struct TYPE_4__ {TYPE_1__ admin_queue; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int QUEUE_NAME_LEN ;
 int SYSCTL_ADD_COUNTER_U64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_U32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
ena_sysctl_add_stats(struct ena_adapter *adapter)
{
 device_t dev;

 struct ena_ring *tx_ring;
 struct ena_ring *rx_ring;

 struct ena_hw_stats *hw_stats;
 struct ena_stats_dev *dev_stats;
 struct ena_stats_tx *tx_stats;
 struct ena_stats_rx *rx_stats;
 struct ena_com_stats_admin *admin_stats;

 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 struct sysctl_oid *queue_node, *tx_node, *rx_node, *hw_node;
 struct sysctl_oid *admin_node;
 struct sysctl_oid_list *queue_list, *tx_list, *rx_list, *hw_list;
 struct sysctl_oid_list *admin_list;


 char namebuf[32];
 int i;

 dev = adapter->pdev;

 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);

 tx_ring = adapter->tx_ring;
 rx_ring = adapter->rx_ring;

 hw_stats = &adapter->hw_stats;
 dev_stats = &adapter->dev_stats;
 admin_stats = &adapter->ena_dev->admin_queue.stats;

 SYSCTL_ADD_COUNTER_U64(ctx, child, OID_AUTO, "wd_expired",
     CTLFLAG_RD, &dev_stats->wd_expired,
     "Watchdog expiry count");
 SYSCTL_ADD_COUNTER_U64(ctx, child, OID_AUTO, "interface_up",
     CTLFLAG_RD, &dev_stats->interface_up,
     "Network interface up count");
 SYSCTL_ADD_COUNTER_U64(ctx, child, OID_AUTO, "interface_down",
     CTLFLAG_RD, &dev_stats->interface_down,
     "Network interface down count");
 SYSCTL_ADD_COUNTER_U64(ctx, child, OID_AUTO, "admin_q_pause",
     CTLFLAG_RD, &dev_stats->admin_q_pause,
     "Admin queue pauses");

 for (i = 0; i < adapter->num_queues; ++i, ++tx_ring, ++rx_ring) {
  snprintf(namebuf, 32, "queue%d", i);

  queue_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO,
      namebuf, CTLFLAG_RD, ((void*)0), "Queue Name");
  queue_list = SYSCTL_CHILDREN(queue_node);


  tx_node = SYSCTL_ADD_NODE(ctx, queue_list, OID_AUTO,
      "tx_ring", CTLFLAG_RD, ((void*)0), "TX ring");
  tx_list = SYSCTL_CHILDREN(tx_node);

  tx_stats = &tx_ring->tx_stats;

  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "count", CTLFLAG_RD,
      &tx_stats->cnt, "Packets sent");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "bytes", CTLFLAG_RD,
      &tx_stats->bytes, "Bytes sent");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "prepare_ctx_err", CTLFLAG_RD,
      &tx_stats->prepare_ctx_err,
      "TX buffer preparation failures");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "dma_mapping_err", CTLFLAG_RD,
      &tx_stats->dma_mapping_err, "DMA mapping failures");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "doorbells", CTLFLAG_RD,
      &tx_stats->doorbells, "Queue doorbells");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "missing_tx_comp", CTLFLAG_RD,
      &tx_stats->missing_tx_comp, "TX completions missed");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "bad_req_id", CTLFLAG_RD,
      &tx_stats->bad_req_id, "Bad request id count");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
          "mbuf_collapses", CTLFLAG_RD,
          &tx_stats->collapse,
          "Mbuf collapse count");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
          "mbuf_collapse_err", CTLFLAG_RD,
          &tx_stats->collapse_err,
          "Mbuf collapse failures");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "queue_wakeups", CTLFLAG_RD,
      &tx_stats->queue_wakeup, "Queue wakeups");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "queue_stops", CTLFLAG_RD,
      &tx_stats->queue_stop, "Queue stops");
  SYSCTL_ADD_COUNTER_U64(ctx, tx_list, OID_AUTO,
      "llq_buffer_copy", CTLFLAG_RD,
      &tx_stats->llq_buffer_copy,
      "Header copies for llq transaction");


  rx_node = SYSCTL_ADD_NODE(ctx, queue_list, OID_AUTO,
      "rx_ring", CTLFLAG_RD, ((void*)0), "RX ring");
  rx_list = SYSCTL_CHILDREN(rx_node);

  rx_stats = &rx_ring->rx_stats;

  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "count", CTLFLAG_RD,
      &rx_stats->cnt, "Packets received");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "bytes", CTLFLAG_RD,
      &rx_stats->bytes, "Bytes received");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "refil_partial", CTLFLAG_RD,
      &rx_stats->refil_partial, "Partial refilled mbufs");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "bad_csum", CTLFLAG_RD,
      &rx_stats->bad_csum, "Bad RX checksum");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "mbuf_alloc_fail", CTLFLAG_RD,
      &rx_stats->mbuf_alloc_fail, "Failed mbuf allocs");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "mjum_alloc_fail", CTLFLAG_RD,
      &rx_stats->mjum_alloc_fail, "Failed jumbo mbuf allocs");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "dma_mapping_err", CTLFLAG_RD,
      &rx_stats->dma_mapping_err, "DMA mapping errors");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "bad_desc_num", CTLFLAG_RD,
      &rx_stats->bad_desc_num, "Bad descriptor count");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "bad_req_id", CTLFLAG_RD,
      &rx_stats->bad_req_id, "Bad request id count");
  SYSCTL_ADD_COUNTER_U64(ctx, rx_list, OID_AUTO,
      "empty_rx_ring", CTLFLAG_RD,
      &rx_stats->empty_rx_ring, "RX descriptors depletion count");
 }


 hw_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "hw_stats",
     CTLFLAG_RD, ((void*)0), "Statistics from hardware");
 hw_list = SYSCTL_CHILDREN(hw_node);

 SYSCTL_ADD_COUNTER_U64(ctx, hw_list, OID_AUTO, "rx_packets", CTLFLAG_RD,
     &hw_stats->rx_packets, "Packets received");
 SYSCTL_ADD_COUNTER_U64(ctx, hw_list, OID_AUTO, "tx_packets", CTLFLAG_RD,
     &hw_stats->tx_packets, "Packets transmitted");
 SYSCTL_ADD_COUNTER_U64(ctx, hw_list, OID_AUTO, "rx_bytes", CTLFLAG_RD,
     &hw_stats->rx_bytes, "Bytes received");
 SYSCTL_ADD_COUNTER_U64(ctx, hw_list, OID_AUTO, "tx_bytes", CTLFLAG_RD,
     &hw_stats->tx_bytes, "Bytes transmitted");
 SYSCTL_ADD_COUNTER_U64(ctx, hw_list, OID_AUTO, "rx_drops", CTLFLAG_RD,
     &hw_stats->rx_drops, "Receive packet drops");


 admin_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "admin_stats",
     CTLFLAG_RD, ((void*)0), "ENA Admin Queue statistics");
 admin_list = SYSCTL_CHILDREN(admin_node);

 SYSCTL_ADD_U32(ctx, admin_list, OID_AUTO, "aborted_cmd", CTLFLAG_RD,
     &admin_stats->aborted_cmd, 0, "Aborted commands");
 SYSCTL_ADD_U32(ctx, admin_list, OID_AUTO, "sumbitted_cmd", CTLFLAG_RD,
     &admin_stats->submitted_cmd, 0, "Submitted commands");
 SYSCTL_ADD_U32(ctx, admin_list, OID_AUTO, "completed_cmd", CTLFLAG_RD,
     &admin_stats->completed_cmd, 0, "Completed commands");
 SYSCTL_ADD_U32(ctx, admin_list, OID_AUTO, "out_of_space", CTLFLAG_RD,
     &admin_stats->out_of_space, 0, "Queue out of space");
 SYSCTL_ADD_U32(ctx, admin_list, OID_AUTO, "no_completion", CTLFLAG_RD,
     &admin_stats->no_completion, 0, "Commands not completed");
}
