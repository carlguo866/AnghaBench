
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_7__ {int tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct cpts {int dummy; } ;
struct cpsw_priv {scalar_t__ emac_port; scalar_t__ tx_ts_enabled; struct cpsw_common* cpsw; } ;
struct TYPE_6__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int tx_ch_num; TYPE_2__ data; TYPE_1__* txv; struct cpts* cpts; } ;
struct cpdma_chan {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_8__ {int tx_flags; } ;
struct TYPE_5__ {struct cpdma_chan* ch; } ;


 int CPSW_MIN_PACKET_SIZE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NET_XMIT_DROP ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 int cpdma_chan_submit (struct cpdma_chan*,struct sk_buff*,int ,int ,scalar_t__) ;
 scalar_t__ cpdma_check_free_tx_desc (struct cpdma_chan*) ;
 int cpsw_err (struct cpsw_priv*,int ,char*) ;
 scalar_t__ cpts_can_timestamp (struct cpts*,struct sk_buff*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_padto (struct sk_buff*,int ) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int smp_mb__after_atomic () ;
 int tx_err ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t cpsw_ndo_start_xmit(struct sk_buff *skb,
           struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 struct cpts *cpts = cpsw->cpts;
 struct netdev_queue *txq;
 struct cpdma_chan *txch;
 int ret, q_idx;

 if (skb_padto(skb, CPSW_MIN_PACKET_SIZE)) {
  cpsw_err(priv, tx_err, "packet pad failed\n");
  ndev->stats.tx_dropped++;
  return NET_XMIT_DROP;
 }

 if (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP &&
     priv->tx_ts_enabled && cpts_can_timestamp(cpts, skb))
  skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;

 q_idx = skb_get_queue_mapping(skb);
 if (q_idx >= cpsw->tx_ch_num)
  q_idx = q_idx % cpsw->tx_ch_num;

 txch = cpsw->txv[q_idx].ch;
 txq = netdev_get_tx_queue(ndev, q_idx);
 skb_tx_timestamp(skb);
 ret = cpdma_chan_submit(txch, skb, skb->data, skb->len,
    priv->emac_port + cpsw->data.dual_emac);
 if (unlikely(ret != 0)) {
  cpsw_err(priv, tx_err, "desc submit failed\n");
  goto fail;
 }




 if (unlikely(!cpdma_check_free_tx_desc(txch))) {
  netif_tx_stop_queue(txq);


  smp_mb__after_atomic();

  if (cpdma_check_free_tx_desc(txch))
   netif_tx_wake_queue(txq);
 }

 return NETDEV_TX_OK;
fail:
 ndev->stats.tx_dropped++;
 netif_tx_stop_queue(txq);


 smp_mb__after_atomic();

 if (cpdma_check_free_tx_desc(txch))
  netif_tx_wake_queue(txq);

 return NETDEV_TX_BUSY;
}
