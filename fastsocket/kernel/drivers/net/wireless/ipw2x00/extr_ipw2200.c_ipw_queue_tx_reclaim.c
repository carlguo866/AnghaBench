
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipw_priv {int net_dev; int tx_packets; } ;
struct clx2_queue {scalar_t__ n_bd; scalar_t__ last_used; scalar_t__ low_mark; int first_empty; int reg_r; } ;
struct clx2_tx_queue {struct clx2_queue q; } ;


 int IPW_ERROR (char*,scalar_t__,scalar_t__) ;
 scalar_t__ ipw_queue_inc_wrap (scalar_t__,scalar_t__) ;
 int ipw_queue_tx_free_tfd (struct ipw_priv*,struct clx2_tx_queue*) ;
 scalar_t__ ipw_read32 (struct ipw_priv*,int ) ;
 scalar_t__ ipw_tx_queue_space (struct clx2_queue*) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static int ipw_queue_tx_reclaim(struct ipw_priv *priv,
    struct clx2_tx_queue *txq, int qindex)
{
 u32 hw_tail;
 int used;
 struct clx2_queue *q = &txq->q;

 hw_tail = ipw_read32(priv, q->reg_r);
 if (hw_tail >= q->n_bd) {
  IPW_ERROR
      ("Read index for DMA queue (%d) is out of range [0-%d)\n",
       hw_tail, q->n_bd);
  goto done;
 }
 for (; q->last_used != hw_tail;
      q->last_used = ipw_queue_inc_wrap(q->last_used, q->n_bd)) {
  ipw_queue_tx_free_tfd(priv, txq);
  priv->tx_packets++;
 }
      done:
 if ((ipw_tx_queue_space(q) > q->low_mark) &&
     (qindex >= 0))
  netif_wake_queue(priv->net_dev);
 used = q->first_empty - q->last_used;
 if (used < 0)
  used += q->n_bd;

 return used;
}
