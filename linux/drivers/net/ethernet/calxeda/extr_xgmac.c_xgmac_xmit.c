
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xgmac_priv {int tx_irq_cnt; unsigned int tx_head; int device; struct sk_buff** tx_skbuff; struct xgmac_dma_desc* dma_tx; scalar_t__ base; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int data; } ;
struct net_device {int dummy; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int DMA_TX_RING_SZ ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETDEV_TX_OK ;
 unsigned int TXDESC_CSUM_ALL ;
 unsigned int TXDESC_FIRST_SEG ;
 unsigned int TXDESC_INTERRUPT ;
 unsigned int TXDESC_LAST_SEG ;
 scalar_t__ XGMAC_DMA_TX_POLL ;
 int desc_clear_tx_owner (struct xgmac_dma_desc*) ;
 int desc_get_buf_addr (struct xgmac_dma_desc*) ;
 int desc_get_buf_len (struct xgmac_dma_desc*) ;
 int desc_set_buf_addr_and_size (struct xgmac_dma_desc*,int ,unsigned int) ;
 int desc_set_tx_owner (struct xgmac_dma_desc*,unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 void* dma_ring_incr (unsigned int,int) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_frag_dma_map (int ,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 scalar_t__ tx_dma_ring_space (struct xgmac_priv*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static netdev_tx_t xgmac_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct xgmac_priv *priv = netdev_priv(dev);
 unsigned int entry;
 int i;
 u32 irq_flag;
 int nfrags = skb_shinfo(skb)->nr_frags;
 struct xgmac_dma_desc *desc, *first;
 unsigned int desc_flags;
 unsigned int len;
 dma_addr_t paddr;

 priv->tx_irq_cnt = (priv->tx_irq_cnt + 1) & (DMA_TX_RING_SZ/4 - 1);
 irq_flag = priv->tx_irq_cnt ? 0 : TXDESC_INTERRUPT;

 desc_flags = (skb->ip_summed == CHECKSUM_PARTIAL) ?
  TXDESC_CSUM_ALL : 0;
 entry = priv->tx_head;
 desc = priv->dma_tx + entry;
 first = desc;

 len = skb_headlen(skb);
 paddr = dma_map_single(priv->device, skb->data, len, DMA_TO_DEVICE);
 if (dma_mapping_error(priv->device, paddr)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }
 priv->tx_skbuff[entry] = skb;
 desc_set_buf_addr_and_size(desc, paddr, len);

 for (i = 0; i < nfrags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  len = skb_frag_size(frag);

  paddr = skb_frag_dma_map(priv->device, frag, 0, len,
      DMA_TO_DEVICE);
  if (dma_mapping_error(priv->device, paddr))
   goto dma_err;

  entry = dma_ring_incr(entry, DMA_TX_RING_SZ);
  desc = priv->dma_tx + entry;
  priv->tx_skbuff[entry] = skb;

  desc_set_buf_addr_and_size(desc, paddr, len);
  if (i < (nfrags - 1))
   desc_set_tx_owner(desc, desc_flags);
 }


 if (desc != first)
  desc_set_tx_owner(desc, desc_flags |
   TXDESC_LAST_SEG | irq_flag);
 else
  desc_flags |= TXDESC_LAST_SEG | irq_flag;


 wmb();
 desc_set_tx_owner(first, desc_flags | TXDESC_FIRST_SEG);

 writel(1, priv->base + XGMAC_DMA_TX_POLL);

 priv->tx_head = dma_ring_incr(entry, DMA_TX_RING_SZ);


 smp_mb();
 if (unlikely(tx_dma_ring_space(priv) <= MAX_SKB_FRAGS)) {
  netif_stop_queue(dev);

  smp_mb();
  if (tx_dma_ring_space(priv) > MAX_SKB_FRAGS)
   netif_start_queue(dev);
 }
 return NETDEV_TX_OK;

dma_err:
 entry = priv->tx_head;
 for ( ; i > 0; i--) {
  entry = dma_ring_incr(entry, DMA_TX_RING_SZ);
  desc = priv->dma_tx + entry;
  priv->tx_skbuff[entry] = ((void*)0);
  dma_unmap_page(priv->device, desc_get_buf_addr(desc),
          desc_get_buf_len(desc), DMA_TO_DEVICE);
  desc_clear_tx_owner(desc);
 }
 desc = first;
 dma_unmap_single(priv->device, desc_get_buf_addr(desc),
    desc_get_buf_len(desc), DMA_TO_DEVICE);
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
