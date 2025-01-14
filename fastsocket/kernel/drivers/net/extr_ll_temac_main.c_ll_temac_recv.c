
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct temac_local {int rx_bd_ci; int rx_lock; struct cdmac_bd* rx_bd_v; struct sk_buff** rx_skb; scalar_t__ rx_bd_p; } ;
struct sk_buff {int data; int ip_summed; int protocol; struct net_device* dev; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct cdmac_bd {unsigned int app0; int app4; scalar_t__ len; int phys; } ;
typedef scalar_t__ dma_addr_t ;


 int BUFFER_ALIGN (int ) ;
 int CHECKSUM_NONE ;
 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 size_t RX_BD_NUM ;
 int RX_TAILDESC_PTR ;
 unsigned int STS_CTRL_APP0_CMPLT ;
 unsigned int STS_CTRL_APP0_IRQONEND ;
 scalar_t__ XTE_ALIGN ;
 scalar_t__ XTE_MAX_JUMBO_FRAME_SIZE ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dma_map_single (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,unsigned long,int,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int temac_dma_out32 (struct temac_local*,int ,scalar_t__) ;
 unsigned long virt_to_bus (int ) ;

__attribute__((used)) static void ll_temac_recv(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct sk_buff *skb, *new_skb;
 unsigned int bdstat;
 struct cdmac_bd *cur_p;
 dma_addr_t tail_p;
 int length;
 unsigned long skb_vaddr;
 unsigned long flags;

 spin_lock_irqsave(&lp->rx_lock, flags);

 tail_p = lp->rx_bd_p + sizeof(*lp->rx_bd_v) * lp->rx_bd_ci;
 cur_p = &lp->rx_bd_v[lp->rx_bd_ci];

 bdstat = cur_p->app0;
 while ((bdstat & STS_CTRL_APP0_CMPLT)) {

  skb = lp->rx_skb[lp->rx_bd_ci];
  length = cur_p->app4;

  skb_vaddr = virt_to_bus(skb->data);
  dma_unmap_single(ndev->dev.parent, skb_vaddr, length,
     DMA_FROM_DEVICE);

  skb_put(skb, length);
  skb->dev = ndev;
  skb->protocol = eth_type_trans(skb, ndev);
  skb->ip_summed = CHECKSUM_NONE;

  netif_rx(skb);

  ndev->stats.rx_packets++;
  ndev->stats.rx_bytes += length;

  new_skb = alloc_skb(XTE_MAX_JUMBO_FRAME_SIZE + XTE_ALIGN,
    GFP_ATOMIC);
  if (new_skb == 0) {
   dev_err(&ndev->dev, "no memory for new sk_buff\n");
   spin_unlock_irqrestore(&lp->rx_lock, flags);
   return;
  }

  skb_reserve(new_skb, BUFFER_ALIGN(new_skb->data));

  cur_p->app0 = STS_CTRL_APP0_IRQONEND;
  cur_p->phys = dma_map_single(ndev->dev.parent, new_skb->data,
          XTE_MAX_JUMBO_FRAME_SIZE,
          DMA_FROM_DEVICE);
  cur_p->len = XTE_MAX_JUMBO_FRAME_SIZE;
  lp->rx_skb[lp->rx_bd_ci] = new_skb;

  lp->rx_bd_ci++;
  if (lp->rx_bd_ci >= RX_BD_NUM)
   lp->rx_bd_ci = 0;

  cur_p = &lp->rx_bd_v[lp->rx_bd_ci];
  bdstat = cur_p->app0;
 }
 temac_dma_out32(lp, RX_TAILDESC_PTR, tail_p);

 spin_unlock_irqrestore(&lp->rx_lock, flags);
}
