
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct pcpu_sw_netstats {int syncp; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;
struct dsa_slave_priv {struct sk_buff* (* xmit ) (struct sk_buff*,struct net_device*) ;int stats64; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int deferred_xmit; int * clone; } ;


 TYPE_1__* DSA_SKB_CB (struct sk_buff*) ;
 int NETDEV_TX_OK ;
 int dsa_enqueue_skb (struct sk_buff*,struct net_device*) ;
 int dsa_skb_tx_timestamp (struct dsa_slave_priv*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 struct sk_buff* stub1 (struct sk_buff*,struct net_device*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t dsa_slave_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct pcpu_sw_netstats *s;
 struct sk_buff *nskb;

 s = this_cpu_ptr(p->stats64);
 u64_stats_update_begin(&s->syncp);
 s->tx_packets++;
 s->tx_bytes += skb->len;
 u64_stats_update_end(&s->syncp);

 DSA_SKB_CB(skb)->deferred_xmit = 0;
 DSA_SKB_CB(skb)->clone = ((void*)0);




 dsa_skb_tx_timestamp(p, skb);




 nskb = p->xmit(skb, dev);
 if (!nskb) {
  if (!DSA_SKB_CB(skb)->deferred_xmit)
   kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 return dsa_enqueue_skb(nskb, dev);
}
