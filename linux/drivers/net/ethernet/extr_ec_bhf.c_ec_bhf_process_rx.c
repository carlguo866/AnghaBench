
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int protocol; } ;
struct rx_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ recv; int len; } ;
struct rx_desc {TYPE_1__ header; int * data; } ;
struct ec_bhf_priv {size_t rx_dnext; int stat_rx_bytes; int rx_dcount; struct rx_desc* rx_descs; int net_dev; } ;


 int PRIV_TO_DEV (struct ec_bhf_priv*) ;
 int RXHDR_LEN_MASK ;
 int dev_err_ratelimited (int ,char*,int) ;
 int ec_bhf_add_rx_desc (struct ec_bhf_priv*,struct rx_desc*) ;
 scalar_t__ ec_bhf_pkt_received (struct rx_desc*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int le16_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int *,int) ;

__attribute__((used)) static void ec_bhf_process_rx(struct ec_bhf_priv *priv)
{
 struct rx_desc *desc = &priv->rx_descs[priv->rx_dnext];

 while (ec_bhf_pkt_received(desc)) {
  int pkt_size = (le16_to_cpu(desc->header.len) &
          RXHDR_LEN_MASK) - sizeof(struct rx_header) - 4;
  u8 *data = desc->data;
  struct sk_buff *skb;

  skb = netdev_alloc_skb_ip_align(priv->net_dev, pkt_size);
  if (skb) {
   skb_put_data(skb, data, pkt_size);
   skb->protocol = eth_type_trans(skb, priv->net_dev);
   priv->stat_rx_bytes += pkt_size;

   netif_rx(skb);
  } else {
   dev_err_ratelimited(PRIV_TO_DEV(priv),
         "Couldn't allocate a skb_buff for a packet of size %u\n",
         pkt_size);
  }

  desc->header.recv = 0;

  ec_bhf_add_rx_desc(priv, desc);

  priv->rx_dnext = (priv->rx_dnext + 1) % priv->rx_dcount;
  desc = &priv->rx_descs[priv->rx_dnext];
 }
}
